Logica-Programavel
==================

* Curso: Sistemas Eletrônicos Embarcados
* Aula : Desenvolvimento de Aplicações usando Lógica Programáveis com FPGAs
* Professor : Rafael Corsi - rafael.corsi@maua.br
* Encontros : Quarta-Feira 19h - 22h30 
* Sala : J309

# Descrição do Curso

Fornecer noções de desenvolvimento de aplicações lógicas em ambiente FPGA voltada para ambiente Xilinx.

## Kits de desenvolvimento e Softwares

* A placa a ser utilizada no curso é a [Nexys 4](http://www.digilentinc.com/Products/Detail.cfm?Prod=NEXYS4) :  que possui uma FPGA Artix-7 

* O SW para desenvolvimento (EDA) é o [Xilinx Vivado](http://www.xilinx.com/products/design-tools/vivado/) que possui uma versão gratuita chamada de WebPACK.

* FPGA : xc7a100tcsg324-1 

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

## Aula 1 - 01/10

### GIT

Devem criar uma conta no github: www.github.com, essa será a forma de envio dos trabalhos. Segue alguns tutoriais sobre git para quem não tem afinidade com a ferramenta:

 *   http://rogerdudler.github.io/git-guide/index.pt_BR.html
 *   http://git-scm.com/docs/gittutorial
 *   https://www.atlassian.com/git/tutorials/setting-up-a-repository

O repositório (privado) da disciplina é : http://corsiferrao.github.io/Logica-Programavel/ porém para terem acesso aos arquivos é preciso que eu cadastre vocês, portanto, assim que tiverem uma conta no github atualizem a seguinte tabela no gdocs para que eu adicione no sistema:

 *   https://docs.google.com/spreadsheets/d/19uO4bsoqHaaS-s8bUku7I7dthyveukAMT_0HsnTpTKU/edit?usp=sharing

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

# Esboço do curso

## Aula 1 - 2/10
* conhecimento da topologia interna da FPGA
* discernimento das diferenças entre Dispositivos Lógicos Programáveis e Microcontroladores
* aplicações potências para uso de FPGA
* linguagens de descrição de hardware (Vhdl/ Verilog);
* workflow FPGA;
* apresentar o kit de desenvolvimento
* demonstração do workflow (com simulação)	

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

## Aula 5 
* state machine
* 	memorias
* 		RAM
* 		ROM (inicialização)
* 	testbench
* 	exemplo de projeto
* 		testbench
* 		implementar
* 	funções e procedures

## Aula 6
* 	constrains 
* 	time analyses
* 	exemplo de projeto completo
* 		qual exemplo ? usar megawizard
* 	Packages
* 	IP cores
* 	exemplo OpenCore

## Aula 7
* Processador MicroBlazer

