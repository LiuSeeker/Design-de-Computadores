

with open("assemblycompacto.txt", "r") as fp:
    linhas = fp.readlines()

opcodes = ["rxd", "zer", "cmp", "jnz", "inc", "ind", "wrt", "ldi", "jmp"]

jumps = {}
binarios = []

for i in range(len(linhas)):
    palavras = linhas[i].split(" ")
    binario = ""
    for f in range(len(palavras)):
        if f == 0:
            # Tratamento de label
            if palavras[f][-1:] == ":":
                if palavras[f][:-1].isupper():
                    jumps[palavras[f][:-1]] = f
                else:
                    raise SyntaxError("Label nao em upper")

            elif len(palavras[f]) != 3:
                raise SyntaxError("Opcode tem que ter 3 letras")
            
            elif not palavras[f].islower():
                raise SyntaxError("Opcode nao em lower")

            elif palavras[f] not in opcodes:
                raise SyntaxError("Opcode não reconhecido")

            elif palavras[f] == "rxd":
                binario = binario + "0000"

            elif palavras[f] == "zer":
                binario = binario + "0001"

            elif palavras[f] == "cmp":
                binario = binario + "0010"
            
            elif palavras[f] == "jnz":
                binario = binario + "0011"
            
            elif palavras[f] == "inc":
                binario = binario + "0100"
            
            elif palavras[f] == "ind":
                binario = binario + "0101"
            
            elif palavras[f] == "wrt":
                binario = binario + "0110"
            
            elif palavras[f] == "ldi":
                binario = binario + "0111"
            
            elif palavras[f] == "jmp":
                binario = binario + "1000"
            
        else:
            