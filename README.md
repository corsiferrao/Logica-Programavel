<<<<<<< HEAD
Logica-Programável
==================
* Instituto Mauá de Tecnologia - www.maua.br 
* Curso: Sistemas Eletrônicos Embarcados
* Aula : Desenvolvimento de Aplicações usando Lógica Programáveis com FPGAs
* Professor : Rafael Corsi - rafael.corsi@maua.br
* Encontros : Segundas 19h - 7h00 
* Sala : J309

# Descrição do Curso

Fornecer noções de desenvolvimento de aplicações lógicas em ambiente FPGA voltada para ambiente Xilinx.

## Kits de desenvolvimento e Softwares

* A placa a ser utilizada no curso é a [Nexys 4](http://www.digilentinc.com/Products/Detail.cfm?Prod=NEXYS4) :  que possui uma FPGA Artix-7 

 * FPGA : xc7a100tcsg324-1 

* O SW para desenvolvimento (EDA) é o [Xilinx Vivado](http://www.xilinx.com/products/design-tools/vivado/) que possui uma versão gratuita chamada de WebPACK.

## Bibliografia 

* (2012) Vhdl - Descrição e Síntese de Circuitos Digitais - 2ª Ed. - Roberto D´amore
* (2006) RTL Hardware Design Using VHDL Coding for Efficiency, Portability, and Scalability
* (2004) The Design Warriors Guide to FPGAs
* (2005) Rapid System Prototyping with FPGAs Accelerating the Design Process

## Links úteis 
* www.Xilinx.com
* www.altera.com
* www.opencores.org
* https://www.digilentinc.com/Products/Detail.cfm?NavPath=2,400,1184&Prod=NEXYS4

# Projetos/ Trabalhos

Devem criar uma conta no github: www.github.com, essa será a forma de envio dos trabalhos. Segue alguns tutoriais sobre git para quem não tem afinidade com a ferramenta:

 *   http://rogerdudler.github.io/git-guide/index.pt_BR.html
 *   http://git-scm.com/docs/gittutorial
 *   https://www.atlassian.com/git/tutorials/setting-up-a-repository

 Assim que tiverem uma conta no github atualizem a seguinte tabela no gdocs para que eu tenha acesso:
 
 * https://docs.google.com/spreadsheets/d/1pE2sUUtvX-qZ0zgvkEt2eh5iSvwChhCeAMc271wraOI/edit?usp=sharing

## Aula 1 - 01/10

Pesquisa tópicos relacionados a FPGA


## Aula 2 - 08/10

### Problemas

Terminar os problemas (05-VHDL-Concorrente-Problemas.pdf) inicializados em sala que abordam:

* Criar uma entidade
* trabalhar com lógicas booleanas
* tipos de dados e conversões
* lógica concorrente

Os arquivos fontes gerados durante essas atividades deverão ser salvos em um repositório no github, o caminho para o repositório deve ser informado na tabela :

* https://docs.google.com/spreadsheets/d/19uO4bsoqHaaS-s8bUku7I7dthyveukAMT_0HsnTpTKU/edit?usp=sharing

## Aula 3 - 13/10 

### Problemas

Desenvolver os problemas propostos em (07-06-VHDL-Sequencial-Problemas)  que abordam:

* lógica sequêncial
* contador

## Aula 4 - 15/10 

### Projeto 01 - Displays de 7 segementos

Projetar uma lógica digital capaz de acionar "simultâneamente" os oito  displays de sete segmentos da placa de desenvolvimento Nexys4, mostrando em cada display um valor diferente. Esse projeto faz parte da composição da nota.

* entrega dia 22/10

# Esboço do curso

## Aula 1 - 2/10
* conhecimento da topologia interna da FPGA
* discernimento das diferenças entre Dispositivos Lógicos Programáveis e Microcontroladores
* aplicações potências para uso de FPGA
* linguagens de descrição de hardware (Vhdl/ Verilog);
* workflow FPGA;
* apresentação do kit de desenvolvimento
* demonstração do workflow (com gravação na FPGA)

## Aula 2 - 8/10
* introdução VHDL - Logica combinacional (paralelo);
* tipos de dados (ieee) e conversões;
* sinais e constantes 

##Aula 3 - 13/10
* lógica sequencial;
* estado $t^{+}$ 
* variáveis
* lógica síncrona
	
## Aula 4 - 15/10
* projeto 01 - Displays de 7 segmentos

## Aula 5 - 22/10
* mapeamento de entidades
* top level 
* simulação - testbench
* memorias
*  RAM
*  ROM (inicialização)
* IP Core

## Aula 6 - 05/11
* state machine
* funções e procedures
* constrains 
* time analyses

## Aula 7 - 12/11
* Soft Processor - MicroBrazer
=======
# Padrão de pastas

## Descrição
Padronização de pastas para os projetos desenvolvidos no NSEE, para usar basta:

- Criar pasta do projeto (vaiza)
- Clonar esse repositório para a pasta recente criada
- Adicionar arquivos 
- Adicionar o novo repositório remote
- Dar um push para o repositório

Qualquer dúvida, favor contactar:

Rafael Corsi - rafael.corsi@maua.br

## Envolvidos
Uma lista dos envolvidos nesse projeto 
- Felipe 
- Bruna

## Organização das pastas

As pastas desse projeto devem ser organizadas conforme exemplo a seguir:

- Como : Toda documentação gerada e coletada que pode ser usada para compreenção e descrição do projeto

- Materiais : Todo formato de material desenvolvido no projeto, inclui softwares, esquemáticos, fotos, etc..

Árvore de arquivos :
```
├── Como
│   ├── Apresentações
│   ├── Datasheets
│   ├── Estudos
│   ├── Manuais
│   ├── Referências
│   │   └── Artigos
│   │       └── Bibliografia
│   └── Wiki
├──  Materiais
│   ├── Arquivos
│   │   └── Orçamentos
│   ├── Códigos
│   │   ├── Altera
│   │   ├── Arduino
│   │   ├── Atmel
│   │   ├── C
│   │   ├── Comsol
│   │   ├── Labview
│   │   ├── Matlab
│   │   └── Xilinx
│   ├── Fotos
│   ├── Mecânica
│   └── PCB

```



>>>>>>> 5e805ec179ae696bffc7f562c3652d3d0454a807
