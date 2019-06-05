# IA369Z - Verificação de método de compressão para imagens Dicom

# FEEC Unicamp - Pós Graduação
# RA 262097 - Adriano da Silva
# Profa. Leticia Rittner
# Projeto para disciplina Reprodutibilidade em pesquisa computacional (IA369Z).

# IA369Z - Verificação de método de compressão para imagens Dicom

Este projeto tem finalidade apenas para estudos.

# Licenças

Os códigos deste projeto estão licenciados sob a licença GNU. Uma cópia desta licença encontra-se na pasta raíz do projeto.
Os dados desde projeto estão licenciados sob a licença Creative Commons CC0. Uma cópia desta licença encontra-se na pasta images deste projeto.

# Introdução

O propósito deste projeto é a produção de um artigo executável e uma pesquisa reproduzível. A pesquisa busca demonstrar métodos de compressão de imagens DICOM que não interfiram na visualização humana das imagens.

# Ambiente
O ambiente para este trabalho é composto das seguintes ferramentas:
 - Anaconda 1.9.7
 - Jupyter Notebook versão 5.7.4
 - Python 3.7.1 (default, Dec 14 2018, 19:28:38)
 - nbconvert
 - Sistema Operacional GNU Linux Ubuntu SMP Kernel 4.15.0-50-generic x86_64
 - rdesktop versão 1.8.3
 - Docker-CE versão 18.09.6
 - Bibliotecas: 
	- pydicom
	- pickle
	- numpy
	- matplotlib
	- skimage
	- PIL
	- sys

# A estrutura de diretorios
A estrutura de diretorios é disposta da seguinte maneira:
	/data     : Contém os dados em que o sistema armazena pesquisas
	/dev      : Contém as pastas de desenvolvimento
	/deliver  : Contém os arquivos do artigo executável, incluíndo o .ipynb principal, além dos arquivos .tex e .pdf
	/images   : Contém as imagens utilizadas na experiência
	/var      : Contém as variáveis sereializadas utilizadas pela experiência

# Instruções básicas:

Para executar o exeperimento, execute os seguintes passos: 

	- Instale o cliente docker-ce versão 18.09.6 ou superior;
	- clone o repositório do projeto;
	- dentro do diretório "env", baixe a imagem, crie e rode o container com o seguinte comando:
		docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -p 3389:3389 -p 2200:22 ia369z:v0.5
	** IMPORTANTE ** Caso a porta 3389 esteja ocupada no computador onde será executado o experimento, será necessário alterar o mapeamento da porta durante a execução deste comando, ainda na primeira vez que for executar. Por exemplo, caso queira mapear para a porta 5555 (desde que esta esteja livre para uso), modifique o conteúdo do parâmentro -p da seguinte maneira:
		onde estava: -p3389:3389
		ficará     : -p5555:3389
	- utilize um cliente de desktop remoto baseado em protocolo RDP (Remote Desktop Protocol) para acesso ao sistema.


A porta TCP 3389 deverá estar disponível para uso do experimento. Caso ela não esteja disponível, é necessário mapear outra porta na hora de montar o container.

Faça acesso ao sistema através de um cliente de desktop remoto compatível com o protocolo MS-RDP. Em sistemas Linux existem vários aplicativos disponíveis compatíveis com esse protocolo, como o rdesktop, Freerdp e o remina. No caso de sistemas MS-Windows, utilize o cliente nativo do sistema operacional, qual seja o denominado "Área de Trabalho Remota", ou ainda "mstsc".

# Cliente de desktop remoto
Utilize um cliente de desktop remoto que utilize o protocolo padrão Microsoft RDP, acessando o endereço localhost (127.0.0.1) e a porta TCP 3389, ou outra que tenha sido configurado diferente, se for o caso.

Para acesso ao sistema, utilize o usuário ra262097 e a senha unicamp2019.

## Para ambientes Linux
Qualquer cliente de desktop remoto que utiliza protocolo padrão Microsoft RDP.

### rdesktop
Esta experiência foi feita utilizando o aplicativo rdesktop no sistema operacional Linux.
Para instalar o rdesktop no Linux Debian, Ubuntu e derivados utilize o seguinte comando:
	apt-get install rdesktop
O comando para conectar o sistema atravéz do aplicativo rdesktop é:
	rdesktop 127.0.0.1:<porta TCP> -g <colunas>x<linhas> -u ra262097 &
Exemplo prático:
	rdesktop 127.0.0.1:3389 -g 1400x900 -u ra262097 &
	Utilize a senha unicamp2019

## Para ambientes MS-Windows
Utilize o cliente nativo do sistema operacional denominado "Área de Trabalho Remota", ou simplesmente "mstsc".
	No campo "Computador" digite o endereço 127.0.0.1:<porta TCP>
Exemplo prático:
	Computador: 127.0.0.1:3389
	Nome do usuário: ra262097
	Senha: unicamp2019
	- Clicar no botão "Conectar"


