#!/bin/bash

echo Atualizando repositórios..
if ! apt-get update && apt-get upgrade
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"

if ! apt-get install default-jdk
then
    echo "Não foi possível instalar o jdk"
    exit 1
fi

if ! add-apt-repository ppa:webupd8team/java
then
    echo "Não foi possivel adicionar o repositorio ppa:webupd8team/java"
    exit 1
fi

echo "Instalação finalizada"

if ! apt-get update && apt-get upgrade
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

if ! apt-get install software-properties-common
then
    echo "Não foi possível instalar pacotes necessários"
    exit 1
fi
echo "Atualização feita com sucesso"

if ! apt-get install oracle-java8-installer
then
    echo "Não foi possível instalar o java8"
    exit 1
fi
echo "Instalação finalizada"

if ! apt-get update && apt-get upgrade
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"

if ! apt-get install maven
then
    echo "Não foi possível instalar o mave"
    exit 1
fi
echo "Instalação finalizada"

if ! apt-get install nodejs
then
    echo "Não foi possível instalar o nodejs"
    exit 1
fi
echo "Instalação finalizada"

if ! apt-get install npm
then
    echo "Não foi possível instalar o npm"
    exit 1
fi
echo "Instalação finalizada"

if ! npm cache clean -f
then
    exit 1
fi

if ! npm install -g n
then
    echo "Não foi possível instalar o pacote n do npm"
    exit 1
fi
echo "Instalação finalizada"

if ! n stable
then
    exit 1
fi

if ! apt-get update && apt-get upgrade
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"

if ! npm install -g angular-cli
then
    echo "Não foi possível instalar o angular-cli"
    exit 1
fi
echo "Instalação finalizada"

if ! apt-get install postgresql postgresql-contrib
then
    echo "Não foi possível instalar o postgres"
    exit 1
fi
echo "Instalação finalizada"

if ! apt-get update && apt-get upgrade
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"

if ! curl -s "https://get.sdkman.io" | bash
then
    echo "Não foi possível encontrar o link"
    exit 1
fi

if ! source "$HOME/.sdkman/bin/sdkman-init.sh"
then
    echo "Não foi possível instalar o SDK"
    exit 1
fi
echo "Instalação finalizada"

if ! sdk install springboot
then
    echo "Não foi possível instalar o springboot"
    exit 1
fi
echo "Instalação finalizada"
