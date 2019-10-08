operacoes = {
    "rxd": "0000",
    "zer": "0001",
    "cmp": "0010",
    "jnz": "0011",
    "inc": "0100",
    "wrt": "0110",
    "ldi": "0111",
    "jmp": "1000"
}

regs = {
    "REG0": "0000",
    "REG1": "0001",
    "REG2": "0010",
    "REG3": "0011",
    "REG4": "0100",
    "REG5": "0101",
    "REGA": "0110",
    "REGB": "0111"
}

perifs = {
    "FLFP": "0000",
    "DSP0": "0001",
    "DSP1": "0010",
    "DSP2": "0011",
    "DSP3": "0100",
    "DSP4": "0101",
    "DSP5": "0110",
    "BMUD": "0111",
    "BIMI": "1000",
    "BIHR": "1001",
    "ZFLF": "1010",
    "ZBIM": "1100",
    "ZBIH": "1101",
}

def faz_4bits(numero):
    bina = bin(numero)[2:]
    if len(bina) < 4:
        devolve = '0'*(4-len(bina))+bina
        return devolve
    else:
        return bina

def faz_8bits(numero):
    bina = bin(numero)[2:]
    if len(bina) < 8:
        devolve = '0'*(8-len(bina))+bina
        return devolve
    else:
        return bina

saida = open(r"saida.mif","w")

saida.write("WIDTH=16;\n")
saida.write("DEPTH=256;\n")
saida.write("ADDRESS_RADIX=DEC;\n")
saida.write("DATA_RADIX=BIN;\n\n")
saida.write("CONTENT BEGIN\n\n")

linhas = []
with open("assemblycompacto.txt") as f:
    for l in f:
        l = l.replace("\n", "")
        encontra = l.find("--")
        if encontra >= 0:
            l = l[:encontra-1]
        palavras = l.split(" ")
        linhas.append(palavras)

jumps = {}
count = 0

for i in linhas:
    for p in i:
        if p.find(":") >= 0:
            p = p.replace(":", "")
            jumps[p] = faz_8bits(count)
    count += 1

count = 0
for i in linhas:
    opcode = ""
    saidastr = ""
    for p in i:
        if p.find(":") >= 0:
            p = p.replace(":", "")
            i.remove(i[0])

        if p.find(",") >= 0:
            p = p.replace(",", "")
            i[1] = p

    opcode = i[0]
    try:
        if opcode == "rxd":
            string = "00000000"+ perifs[i[1]] + regs[i[2]] + ";"
            saidastr = "   {} : {}\n".format(count, string)
        
        elif opcode == "zer":
            string = "000100000000"+ regs[i[1]] + ";"
            saidastr = "   {} : {}\n".format(count, string)

        elif opcode == "cmp":
            string = "00100000"+ regs[i[1]] + faz_4bits(int(i[2][1:])) + ";"
            saidastr = "   {} : {}\n".format(count, string)
        
        elif opcode == "jnz":
            string = "0011" + jumps[i[1]] + "0000" + ";"
            saidastr = "   {} : {}\n".format(count, string)

        elif opcode == "inc":
            string = "01000000" + regs[i[1]] + "0000" + ";"
            saidastr = "   {} : {}\n".format(count, string)

        elif opcode == "wrt":
            string = "01100000" + regs[i[1]] + perifs[i[2]] + ";"
            saidastr = "   {} : {}\n".format(count, string)
        
        elif opcode == "ldi":
            string = "01110000" + regs[i[1]] + faz_4bits(int(i[2][1:])) + ";"
            saidastr = "   {} : {}\n".format(count, string)

        elif opcode == "jmp":
            string = "1000" + jumps[i[1]] + "0000" + ";"
            saidastr = "   {} : {}\n".format(count, string)
        saida.write(saidastr)
    
    except:
        print("Encontramos uma irregularidade na instrução: " + str(count))
    count += 1

fim = "   [{}..255] : {}\n".format(count, "1000111111110000;")
saida.write(fim)
saida.write("\nEND;")