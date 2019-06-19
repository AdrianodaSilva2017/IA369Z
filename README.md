#### IA369Z - Verificação de método de compressão para imagens Dicom

#### FEEC Unicamp - Pós Graduação
#### RA 262097 - Adriano da Silva
#### Profa. Leticia Rittner
#### Projeto para disciplina Reprodutibilidade em pesquisa computacional (IA369Z).

#### IA369Z - Verificação de método de compressão para imagens Dicom

Este projeto tem finalidade apenas para estudos.

# Licenças

Os códigos deste projeto estão licenciados sob a licença GNU. Uma cópia desta licença encontra-se na pasta raíz do projeto.
Os dados desde projeto estão licenciados sob a licença Creative Commons CC0. Uma cópia desta licença encontra-se na pasta images deste projeto.

# Introdução

O propósito deste projeto é a produção de um artigo executável e uma pesquisa reproduzível. A pesquisa busca demonstrar métodos de compressão de imagens DICOM que não interfiram na visualização humana das imagens.

# Ambiente
O ambiente para as experiências foi composto das seguintes ferramentas: <br>
 - Anaconda 1.9.7 <br>
 - Jupyter Notebook versão 5.7.4 <br>
 - Python 3.7.1 (default, Dec 14 2018, 19:28:38) <br>
 - nbconvert <br>
 - Sistema Operacional GNU Linux Ubuntu SMP Kernel 4.15.0-50-generic x86_64 <br>
 - rdesktop versão 1.8.3 <br>
 - Docker-CE versão 18.09.6 <br>
 - Bibliotecas:  <br>
	- pydicom v1.2.2 <br>
	- numpy v1.15.4 <br>
	- matplotlib v3.0.2 <br>
	- PIL (Pillow v5.3.0) <br>

# A estrutura de diretorios
A estrutura de diretorios é disposta da seguinte maneira:<br>
	/data     : Contém os dados em que o sistema armazena pesquisas<br>
	/dev      : Contém as pastas de desenvolvimento<br>
	/deliver  : Contém os arquivos do artigo executável, incluíndo o .ipynb principal, além dos arquivos .tex e .pdf<br>
	/env      : Contém os arquivos de configuração do ambiente para execução dos experimentos.<br>
	/images   : Contém as imagens utilizadas na experiência<br>
	/var      : Contém as variáveis sereializadas utilizadas pela experiência<br>

# Instruções básicas:

Para executar o exeperimento, execute os seguintes passos: 

	- Instale o cliente docker-ce versão 18.09.6 ou superior;
		* No caso de sistema operacional Microsoft Windows ou MAC, procure por Docker Desktop.
		* Para saber detalhes de como baixar e instalar o docker, acesse os endereços abaixo:
			https://docs.docker.com/install/
			https://docs.docker.com/docker-for-windows/install/
			https://docs.docker.com/docker-for-mac/install/

			
	- instale um cliente git e clone o repositório do projeto. Mais informações sobre como baixar o cliente git neste link: 
		https://git-scm.com/downloads

	- se preferir, poderá apenas baixar o repósitório como arquivo zip e descompactar o arquivo em um diretório;

	- Em uma janela de terminal (ou no prompt de comandos do Windows), entre dentro do diretório criado ao clonar o repositório ou ao descompactar o arquivo zip, onde haverá uma estrutura de sub-diretórios e arquivos;

	- Entre no sub-diretório "env", baixe a imagem Docker, crie e rode o container com o seguinte comando:
		docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -p 3389:3389 -p 2200:22 adriano1977/ia369z:v0.5
	** IMPORTANTE ** Caso a porta 3389 esteja ocupada no computador onde será executado o experimento, será necessário alterar o mapeamento da porta durante a execução deste comando, ainda na primeira vez que for executar. Por exemplo, caso queira mapear para a porta 5555 (desde que esta esteja livre para uso), modifique o conteúdo do parâmentro -p da seguinte maneira:
		onde estava: -p3389:3389
		ficará     : -p5555:3389

	- Caso precise, por qualquer motivo, apagar o container gerado com o comando acima, utilize os seguintes comandos:
		docker stop IA369Z01
		docker rm IA369Z01
		* O primeiro comando serve para parar o funcionamento do container e o segundo serve para apagar o container. Utilize estes comandos apenas em caso de precisar apagar o container gerado para criar novamente com outros parâmetros, modificar a porta ou outra configuração.

	- Após rodar o container docker pela primeira vez, o container irá baixar e inicializar arquivos de configuração e para isso o computador deverá ter acesso à internet. Levará alguns minutos (5 minutos aproximadamente, dependendo do ambiente) até que o sistema esteja defintivamente pronto para ser acessado. Até lá, a tentativa de acesso ao experimento poderá não ser bem sucedida. Portanto, aguarde alguns minutos.

	- Utilize um aplicativo cliente de área de trabalho remota para acesso ao sistema. No caso de estar usando o Microsoft Windows, poderá ser o aplicativo nativo do sistema operancional. Em caso de qualquer outro sistema operacional, utilize algum aplicativo cliente que faça acesso à área de trabalho remota seguindo o padrão de comunicação da Microsoft conhecido como RDP (Remote Desktop Protocol). Abaixo está sugerido alguns exemplos destes aplicativos e onde encontra-los, para cada sistema operacional.

A porta TCP 3389 deverá estar disponível para uso do experimento. Caso ela não esteja disponível, é necessário mapear outra porta, antes de acessar a área de trabalho, ainda no momento de "rodar" o container com o comando "docker run" descrito acima.

Após acessar a área de trabalho pela primeira vez, aparecerá uma janela de boas vindas ao primeiro início do painel, pedidno para escolher qual configuração você quer para a primeira inicialização. Escolha "Usar configuração padrão".

O próximo passo é fazer acesso ao aplicativo "Emulador de Terminal". Este acesso é necessário uma única vez para a criação do ícone referente ao experimento na área de trabalho. Após o ícone do aplicativo "jupyter" nomeado como "Verification Of Compression Method For Dicom Images" do experimento aparecer na área de trabalho, o aplicativo "Emulador de Terminal" poderá ser fechado e não será mais necessário para a realização do experimento.

# Área de trabalho para reprodução da experiência
Para acessar a área de trabalho da pesquisa, utilize um cliente de área de trabalho remota que utilize o padrão Microsoft RDP, acessando o endereço localhost (127.0.0.1) e a porta TCP 3389, ou outra que tenha sido configurado diferente, se for o caso.

Para acesso ao sistema, utilize o usuário ra262097 e a senha "unicamp2019" (sem aspas).

## Para ambientes Linux
Utilize qualquer cliente de desktop remoto baseado no padrão RDP da Microsoft para acessar a área de trabalho da pesquisa. Em sistemas Linux existem vários aplicativos disponíveis compatíveis com esse padrão, como o "rdesktop", "Freerdp" e o "remina".

### o aplicativo rdesktop para ambientes Linux
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

## Para ambientes MAC-OS
Existem alguns clientes de desktop remoto que utilizam o protocolo padrão Microsoft RDP para o MAC-OS. Você pode encontrá-los no MAC App Store.
Você pode utilizar, por exemplo, o cliente para área de trabalho remota da Microsoft para MAC.
Alternativamente você pode utilizar o aplicativo Cord, que pode ser acessado no endereço: http://cord.sourceforge.net/

# Execução do Artigo
Após acessar a área de trabalho e executar todos os procedimentos preliminares descritos nas instruções básicas, haverá um ícone na área de trabalho denominado "Verification Of Compression Method For Dicom Images". Este ícone deverá ser acessado para o início da experiência, ele dará acesso a estrutura de diretórios da experiência.

Estando então no Jupyter Notebook, dentro da estrutura de diretórios da experiência IA369Z, acesse através dele a pasta "deliver" e abra o arquivo principal da experiência que é denominado "VerificationOfCompressionMethodForDicomImages.ipynb".
Execute então as células deste artigo duas vezes e veja os resultados.

# Modificando parâmetros
Através deste artigo é possível também modificar alguns parâmetros para testes.
Exemplo:
	- Modificando a variável "teste_jpeg" você poderá fazer diferentes análises aumentando ou diminuindo a qualidade da imagem na compressão jpeg e também poderá modificar a região que deseja ampliar para uma análise mais aprofundada.
	O parâmetro original desta variável é atribuído da seguinte maneira:
	teste_jpeg=[80,53,28,20,20]
	Assim, modificando o primeiro valor do parâmetro de 80 para 50, será possível obter uma imagem com 50% de qualidade JPEG. Exemplo prático de como fazer:
	teste_jpeg=[50,53,28,20,20]
	Os demais valores do parâmetro referem-se às coordenadas para a criação do retângulo de recorte, de onde será ampliada a imagem para uma análise mais detalhada da qualidade. 
	Estas coordenadas são baseadas na porcentagem do tamanho da imagem. Asssim, o segundo valor do parâmetro refere-se à porcentagem do total de colunas da imagem, enquanto o terceiro valor do parâmetro refere-se à porcentagem do total de linhas da imagem. Estes dois valores (segundo e terceiro) formam a coordenada que indica o ponto inicial do retângulo do recorte. Assim, os quarto e quinto parâmetros, referem-se ao percentual de colunas e linhas da imagem que serão incrementadas para formarem a coordedada final do retângulo do recorte, respectivamente.
	Portanto, se quizermos um retângulo que se inicie na coluna equivalente a 75% das colunas da imagem, deveremos modificar o segundo parâmetro para 75. E se quizermos que este mesmo retângulo tenha a largura equivalente a 25% da imagem, deveremos colocar o valor 25 no quarto parâmetro e então executarmos novamente a célula. Exemplo:
	teste_jpeg=[50,75,28,25,20]

## Substituindo a imagem para testes
Através deste artigo é possível também realizar testes com um arquvo DICOM externo (do próprio leitor). Para tal, é necessário criar um container com mapeamento externo, o que requer apontar o caminho para uma pasta especifica criada ou existente no computador onde o leitor estiver executando a experiencia.<br>
	- Remova o container original para evitar conflitos com os seguintes comandos:<br>
		docker stop IA369Z01<br>
		docker rm IA369Z01<br>
	- Adicione o seguinte parâmetro no comando para criacao do container, trocando [origem] pelo caminho completo da pasta onde está armazenado o arquivo DICOM a ser analisado:<br>
		-v [origem]:/externo<br>
	Exemplo de como ficaria o comando para a criação do container:<br>
		docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -v /home/adriano/container:/externo -p 3389:3389 -p 2200:22 adriano1977/ia369z:v0.5<br>

Após a criação do container, acesse a área de trabalho para a reprodução da experiência da mesma maneira como desctrito nas seções anteriores.<br>

Algumas variáveis definidas nas células de código do arquivo .ipynb principal, encontrado no diretório "deliver", precisarão ser alteradas. São elas:<br>
	- arquivo_dicom;<br>
	- caminho;<br>
	
	Na variável "arquivo_dicom", coloque o nome do arquivo de imagens DICOM que deseja testar:

		arquivo_dicom="nome_do_arquivo_para_testar.dcm"

	Na variável "caminho" contida em outra célula, coloque exatamente o seguinte conteúdo:
		caminho="/externo/"

Após tais alterações, execute a experiência e veja os resultados.


