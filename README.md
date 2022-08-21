# Instalação:

https://www.r-project.org/

https://vps.fmvz.usp.br/CRAN/

Manual/documentação:
https://cran.r-project.org/manuals.html



## Ubuntu e derivados

add key:
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9


Add repository (num arquivo separado em /etc/apt/source.list.d/) ou use o comando:

sudo add-apt-repository 'deb [arch=amd64,i386] https://.......'

Substitua o .... pela versão do seu Ubuntu ;-)

deb https://cloud.r-project.org/bin/linux/ubuntu eoan-cran35/

deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/

deb https://cloud.r-project.org/bin/linux/ubuntu cosmic-cran35/

deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/

deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/

deb https://cloud.r-project.org/bin/linux/ubuntu trusty-cran35/


Por fim, 
`sudo apt-get install r-base

## Debian e derivados

Add chave:
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

Add repositorio:
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/'

Instalar:
sudo apt update
sudo apt install r-base


finish him:

`R --version`



## Testando



Testando o acesso ao console do R:

sudo -i R



Dentro do console do R, você pode instalar pacotes via CRAN (CRAN é para o R, assim como o pip é para o python, npm é para o node ou o cpan é para o Perl) - ok nem tanto, resumo: um quase gerenciador de pacotes.

No console do R:
> install.packages('txtplot')

O txtplot é uma biblioteca que gera gráficos ASCII, incluindo gráficos de dispersão, plotagem de linhas, plotagem de densidade, acf e gráficos de barras.

Depois de instalado, podemos carrega-lo:
> library('txtplot')


E gerar um exemplo:
> txtplot(cars[,1], cars[,2], xlab = "velocidade", ylab = "distancia")

Outro pacote para primeiros codigos com R:
> install.packages("stringr")

> library(stringr)

criando um vetor simples de caracteres chamado 'tutorial':
> tutorial <- c("How", "to", "Install", "R")

Todas as funções do string possuem o prefixo `str_`
> str_length(tutorial)
> str_to_lower(tutorial)
> str_to_upper(tutorial)
> str_to_title(tutorial)

Caso esqueça o nome de uma função, basta digitar stringr::str_ e apertar TAB para ver quais são as opções.


# IDE

Melhores IDE's para R:

Ok, não há muitas, então fica fácil escolher...

- Vim
- VisualCode
- RStudio
- Atom
