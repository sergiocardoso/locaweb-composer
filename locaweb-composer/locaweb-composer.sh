#!/bin/bash
PHP_VERSAO=$1
echo ""
echo "---------------------------------------------------------------"
echo "------ COMPOSER INSTALLER for LOCAWEB SHARED HOSTS ------------"
echo "------ por Sergio Cardoso <contato@sergiocardoso.org> ---------"
echo "---------------------------------------------------------------"
echo "------ requisitos: PHP > 5.3 --------------------------------- "
echo "---------------------------------------------------------------"
#pasta usuario
if [ -z "$PHP_VERSAO" ];
then
        echo "---->ERROR: [ Insira a versão do seu binario do PHP como parametro ]";
else
        echo "-----> PASSO 1 [ INSTALANDO COMPOSER ]"
        mkdir ~/bin
        cd ~/bin
        curl -sS https://getcomposer.org/installer | $PHP_VERSAO -c ~/php.ini
        echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
        echo 'alias composer='\"$PHP_VERSAO' -c ~/php.ini ~/bin/composer.phar $@"' >> ~/.bash_profile
        echo 'alias lss="ls $@ --color -hla"' >> ~/.bash_profile
        echo 'alias lsd="ls -la | sort -k 1"' >> ~/.bash_profile
        echo "-----> COMPOSER INSTALADO [ ex: composer install vendor/package ] "
        echo "-----> adicionado os alias (comandos):"
        echo "--------> lss [Listagem colorida em formato humano]"
        echo "--------> lsd [lista primeiro os diretorios e depois os arquivos]"
        echo "-----------------------------------------------------------------"
        echo "-------- | REINICIE O TERMINAL | --------------------------------";
        echo "-----------------------------------------------------------------";

fi
