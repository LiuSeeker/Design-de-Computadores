(PT-BR)

## Processador compatível com MIPS DLX

Este projeto será a implementação de um processador RISC de 32 bits. Ele deverá executar um dos dois subconjuntos, mostrados abaixo, das instruções do MIPS DLX.

O subconjunto **"A"** é formado pelas instruções abaixo:

- As instruções de referência à memória:

  - Carrega palavra (load word: lw);
  - Armazena palavra (store word: sw).

- As instruções lógico-aritméticas:

  - Soma (add);
  - Subtração (sub);
  - E lógico (AND);
  - OU lógico (OR);
  - Comparação menor que (set if less than: slt).

- As instruções de desvio:

  - Desvio se igual (branch equal: beq);
  - Salto incondicional (jump: j).

O subconjunto **"B"** possui as instruções do subconjunto **"A"** e adiciona as listadas abaixo:

- A instrução de carga:

  - Carrega imediato para 16 bits MSB (load upper immediate: lui).
  
- As instruções lógico-aritméticas:

  - Soma com imediato (addi);
  - E lógico com imediato (ANDI);
  - OU lógico com imediato (ORI);
  - Comparação menor que imediato (set if less than: slti).

- As instruções de desvio:

  - Desvio se não igual (branch not equal: bne);
  - Salto e conecta (jump and link: jal);
  - Salto por registrador (jump register: jr).

---------------------------------------------------------------

O projeto deverá implementar uma das seguintes funcionalidades:

**(1) MIPS single cycle:**

- Executando as instruções dos subconjuntos **A** e **B**;

Nota máxima: limitada ao C+.

**(2) MIPS com pipeline (Escolhido pelo grupo):**

- - [x] Executando todas instruções do subconjunto **A**;

Nota máxima: limitada ao B.

Caso sejam adicionadas as instruções abaixo, o limite da nota será B+.

- - [ ] Salto e conecta (jump and link: jal);

- - [ ] Salto por registrador (jump register: jr).

**(3) MIPS com pipeline:**

- Executando as instruções dos subconjuntos **A** e **B**;

Nota máxima: sem limite (A+).

---

(EN-US)

## Processor compatible with MIPS DLX

This project will be the implementation of a 32-bit RISC processor. It must execute one of the two subsets, shown below, of the MIPS DLX instructions.

The subset **"A"** is formed by the instructions below:

- Memory refence instructions:

  - Load word: lw;
  - Store word: sw.

- Logical-arithmetic instructions:

  - Add;
  - Sub;
  - Logical AND;
  - Logical OR;
  - Set if less than: slt.

- Branch instructions:

  - Branch equal: beq;
  - Jump: j.

The subset **"B"** has the instructions from subset **"A"** and add the instructions listed below:

- Load instruction:

  - Load upper immediate: lui.
  
-Logical-arithmetic instructions:

  - Add with immediate (addi);
  - Logical AND with immediate (ANDI);
  - Logical OR with immediate (ORI);
  - Set if less than immediate: slti.

- Branch instructions:

  - Branch not equal: bne;
  - Jump and link: jal;
  - Jump register: jr.

---------------------------------------------------------------

The project should implement one of the following features:

**(1) MIPS single cycle:**

- Execute the instructions from subsets **A** and **B**;

Max grade: limited to C+.

**(2) MIPS with pipeline (chosen by the group):**

- - [x] Execute the instructions from subset **A**;

Max grade: limited to B.

If the instructions below are added, the grade limit will be B

- - [ ] Jump and link: jal;

- - [ ] Jump register: jr.

**(3) MIPS with pipeline:**

- Execute the instructions from subsets **A** and **B**;

Max grade: no limit (A+).
