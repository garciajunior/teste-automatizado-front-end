# Projeto de automação de front-end realizado no site da [Submarino](https://www.submarino.com.br/)
## Definições do Projeto
  > O objetivo do teste de automação de front-end foi entrar no site verificar a homepage preencher o caixa de diálogo  e realizar os procedimento para a compra de um notebook. 
  
  > OBS.: Não foi necessário criar uma conta no site.

  - Linguagem de programação: Ruby
  - Linguagem de escrita dos cenários de teste: Cucumber/Gherkin-pt
  - Pattern: PageObject -

### Configuração no Windows:
  - Entrar no site [rubyinstaller](https://rubyinstaller.org/downloads/) baixar a versão 2.7.1.1 correspondente ao seu OS (x86/x64)

    > Fechar todos janelas do prompt ou similares

    > Seguir os passos de instalação do wizard

    > Manter todas as configurações padrões 

    > Após a conclusão da instalação  verificar a versão do ruby  no prompt `ruby --version`

    > Rodar o seguinte comando `ridk install` e escolher a opção `3`

    > Instalar a gem `gem install bundler`

    > Habilitar o firewall caso acuse permissão

### Configuração linux:
  - Caso possua OS diferente do Ubuntu/Debian acesse [ruby-lang](https://www.ruby-lang.org/pt/documentation/installation/#apt)
  - Executar os seguintes comandos:
    > `sudo apt update`

    > `sudo apt install ruby-full`

    > Habilitar comando para desenvolvedor `sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev`

    > Habilitar permissao `sudo gem update --system --no-user-install`

    > Instalar a gem `gem install bundler`

    > Atualizar e baixar as gems para o projeto  `bundle update --bundler`

### Instalar os driver dos navegadores
  - http://chromedriver.chromium.org/downloads
  - https://github.com/mozilla/geckodriver/releases

### Execução dos testes
  - Por padrão da definição do projeto o testes usarão o driver do chrome e ambiente de homolog caso deseje mudar essas opções modificar o arquivo `cucumber.yml`

  -  Para rodar o testes na raiz do projeto executar o seguinte comando:

  > `cucumber`

