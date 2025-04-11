# Atividade Avaliativa - Git Colaborativo com Portugol

## Integrantes do grupo
- Andrei Miguel
- Erick Fukumoto
- Gabriel Casarini

## Objetivo
Desenvolver colaborativamente um algoritmo em Portugol com um menu de operadores matemáticos.

## Etapas realizadas por cada membro (Algoritmo)

1 - Primeira Etapa: Erick realizou a criação inicial do menu onde também fez a operação de soma e subtração no código.

2 - Segunda Etapa: Gabriel adicionou algumas mudanças no código (loop e uma opção para sair no menu), e acrescentou a operação de divisão e outra exibindo o resto.

3 - Terceira Etapa: Andrei realizou a modificação do texto de saida do programa, além disso adicionou a operação de multiplicação ao código (Outras modificações menores também ocorreram).

### Gabriel Casarini
- Como criou?
  Realizei a criação do repositório no GitHub e em seguida adicionei os demais integrantes da equipe como colaboradores. Após isso, no repositório, criei os dois 
  arquivos (ReadMe e algoritmo.por) onde nós realizamos as modificações conforme o desenvolvimento. 
- Como Configurou o Git? não deixe exposto sua chave.
  Para configurar o Git precisei inicialmente adicionar meu nome e email. Em seguida realizei a listagem das chaves SSH e removi para assim criar uma chave SSH e poder conectar com o GitHub.
- Adicionou lógica das operaçoes de divisão e divisão apresentando o resto, além disso coloquei um loop para que as opçoes tivessem um intervalo de 1 a 5 e 0 para sair.


### Erick Fukumoto
- Como Configurou o Git? não deixe exposto sua chave
  Coloquei o meu nome e o meu email, após isso removi as chaves, gerei uma nova chave, iniciei o agente, adicionei a chave ssh ao agente, copiei a chave ssh e colei na GitHub.
- Fez `git pull` após o commit de Fulano.
  Realizei um git pull no começo antes de editar, e mais dois git pull após o commit dos dois membros do meu grupo
- Criou o arquivo `algoritmo.pg` com a estrutura inicial:

  programa {
  funcao inicio() {
    inteiro op, num1, num2
    escreva("------Menu-------\n")
    escreva("1 - Soma\n")
    escreva("2 - Subtração\n")
    escreva("3 - Multiplicação\n")
    escreva("4 - Divisão\n")
    leia(op)
    
    escreva("Informe dois números: ")
    leia(num1)
    leia(num2)

    escolha(op){
      caso 1: escreva(num1, " + ", num2, " = ", num1 + num2)
      caso 2: escreva(num1, " - ", num2, " = ", num1 - num2)
    }

  }
}


 
### Andrei
- Como Configurou o Git? não deixe exposto sua chave.
  conferi se o meu nome e o email, apaguei as antigas SHH eu criei uma nova SHH e copiei no meu github. Após isso,  eu clonei o repositório e conferi se deu certo a clonagem, no intuito de fazer a minha parte das modificações, atualizando a cada mudança minha e de meus colegas no algoritmo.

- Fez `git pull` após o commit de Ciclana.
eu fiz o gitpull após o Gabriel ter feito o commit da mudança do código
- Finalizou o algoritmo com lógica . . .
- programa {
  funcao inicio() {
    inteiro op
    real num1, num2, resto

    // loop principal do menu
    enquanto (verdadeiro) {
      escreva("-----Menu Calculadora-----\n")
      escreva("1 - Soma\n")
      escreva("2 - Subtração\n")
      escreva("3 - Multiplicação\n")
      escreva("4 - Divisão\n")
      escreva("5 - Divisão (Visualizar o resto)\n")
      escreva("0 - Sair\n")

      escreva("Escolha uma opção: ")
      leia(op)

      se (op == 0) {
        escreva("Saindo do programa...\n")
        pare
      }

      se (op >= 1 e op <= 5) {
        escreva("\n--- Informe dois números ---\n")
        escreva("Primeiro numero: ")
        leia(num1)
        escreva("Segundo número: ")
        leia(num2)

        escolha(op){
          caso 1: 
            escreva(num1, " + ", num2, " = ", num1 + num2, "\n") // Soma
            pare

          caso 2: 
            escreva(num1, " - ", num2, " = ", num1 - num2, "\n") // Subtração
            pare

          caso 3:
            escreva(num1, " * ", num2, " = ", num1 * num2, "\n" ) // Multiplicação
            pare

          caso 4: 
            se (num2 != 0) {
              escreva(num1, " / ", num2, " = ", num1 / num2, "\n") // Divisão normal
            } senao {
              escreva("Erro! Divisão por zero não permitida.\n")
            }
            pare

          caso 5: // Divisão apresentando o resto
            se (num2 != 0) {
              resto = num1 % num2
              escreva(num1, " / ", num2, " = ", num1 / num2)
              escreva("\nO resto é ", resto, "\n")
            } senao {
              escreva("Erro! Divisão por zero não permitida.\n")
            }
            pare

          caso contrario:
            escreva("Erro! Informe um valor presente no menu.\n")
        }
      } senao {
        escreva("Operação invalida!\n")
      }

      escreva("\n")
    }
  }
}


## Comandos utilizados
Todos os comandos foram executados via terminal utilizando chave SSH:
### Comandos de Gabriel Casarini
compuni@Lab6m37 MINGW64 ~
$ rm -f ~/.ssh/id_rsa*

compuni@Lab6m37 MINGW64 ~
$ ssh-keygen -t rsa -b 4096 -C "gabrielcasarini@edu.unifil.br"
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/compuni/.ssh/id_rsa):
Enter passphrase for "/c/Users/compuni/.ssh/id_rsa" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/compuni/.ssh/id_rsa
Your public key has been saved in /c/Users/compuni/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:lyK9Kh+Ux3YF3Rgfaey9Aj0jQBc+AzEYv6V7HDL0lkk gabrielcasarini@edu.unifil.br
The key's randomart image is:
+---[RSA 4096]----+
|       .+=o+o=.. |
|       ...=.o.=. |
|         o.Eoo.. |
|       +. *==+. .|
|      + S=+*o o .|
|     . + =* .. . |
|      . .. o  .  |
|    .  o  .      |
|     oo          |
+----[SHA256]-----+

compuni@Lab6m37 MINGW64 ~
$ eval "$(ssh-agent -s)"
Agent pid 1431

compuni@Lab6m37 MINGW64 ~
$ ssh-add ~/.ssh/id_rsa
Identity added: /c/Users/compuni/.ssh/id_rsa (gabrielcasarini@edu.unifil.br)

compuni@Lab6m37 MINGW64 ~
$ clip < ~/.ssh/id_rsa.pub

compuni@Lab6m37 MINGW64 ~
$
ssh -T git@github.com
Hi Gabrielhnc07! You've successfully authenticated, but GitHub does not provide shell access.

compuni@Lab6m37 MINGW64 ~
$ git clone git@github.com:Gabrielhnc07/atividade_git_final.git
fatal: destination path 'atividade_git_final' already exists and is not an empty
 directory.

compuni@Lab6m37 MINGW64 ~
$ git clone git@github.com:Gabrielhnc07/atividade_git_final.git
Cloning into 'atividade_git_final'...
remote: Enumerating objects: 30, done.
remote: Counting objects: 100% (30/30), done.
remote: Compressing objects: 100% (26/26), done.
remote: Total 30 (delta 5), reused 9 (delta 1), pack-reused 0 (from 0)
Receiving objects: 100% (30/30), 11.96 KiB | 532.00 KiB/s, done.
Resolving deltas: 100% (5/5), done.

compuni@Lab6m37 MINGW64 ~
$ cd atividade_git_final

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 493 bytes | 4.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   24163a5..890a241  main       -> origin/main
Updating 24163a5..890a241
Fast-forward
 algoritmo.por | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   algoritmo.por

no changes added to commit (use "git add" and/or "git commit -a")

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git add .
warning: in the working copy of 'algoritmo.por', LF will be replaced by CRLF the
 next time Git touches it

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   algoritmo.por


compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git commit -m "Alteração do código (Gabriel)"
[main 5187bac] Alteração do código (Gabriel)
 1 file changed, 65 insertions(+), 16 deletions(-)

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git pull
Already up to date.

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 898 bytes | 449.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:Gabrielhnc07/atividade_git_final.git
   890a241..5187bac  main -> main

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 401 bytes | 4.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   5187bac..f7db18e  main       -> origin/main
Updating 5187bac..f7db18e
Fast-forward
 algoritmo.por | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$ git pull
Already up to date.

compuni@Lab6m37 MINGW64 ~/atividade_git_final (main)
$


### Comandos de Erick Fukumoto


compuni@Lab6m36 MINGW64 ~
$ git config --global user.name "Erick"

compuni@Lab6m36 MINGW64 ~
$ git config --global user.email "eshinfuku@gmail.com"

compuni@Lab6m36 MINGW64 ~
$ git config --global user.name
Erick

compuni@Lab6m36 MINGW64 ~
$ git config --global user.email
eshinfuku@gmail.com

compuni@Lab6m36 MINGW64 ~
$ rm -f ~/.ssh/id_rsa*

compuni@Lab6m36 MINGW64 ~
$ ssh-keygen -t rsa -b 4096 -C "eshinfuku@gmail.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/compuni/.ssh/id_rsa):
Enter passphrase for "/c/Users/compuni/.ssh/id_rsa" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/compuni/.ssh/id_rsa
Your public key has been saved in /c/Users/compuni/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:vKGWkSIHwABhBsjVm94mfTPuqO6mltLiqzeKsaMZCm8 eshinfuku@gmail.com
The key's randomart image is:
+---[RSA 4096]----+
|&+...            |
|++   .           |
|  .   o          |
|   . o o         |
|  . + = S        |
|   o + B *       |
|+ . . * + o      |
|=OE+ o  ..       |
|%B*o=+....       |
+----[SHA256]-----+

compuni@Lab6m36 MINGW64 ~
$ eval "$(ssh-agent -s)"
Agent pid 765

compuni@Lab6m36 MINGW64 ~
$ ssh-add ~/.ssh/id_rsa
Identity added: /c/Users/compuni/.ssh/id_rsa (eshinfuku@gmail.com)

compuni@Lab6m36 MINGW64 ~
$ clip < ~/.ssh/id_rsa.pub

compuni@Lab6m36 MINGW64 ~
$ git clone git@github.com:Erick8002/git@github.com:Gabrielhnc07/atividade_git_final.git
Cloning into 'atividade_git_final'...
fatal: remote error:
  is not a valid repository name
Visit https://support.github.com/ for help

compuni@Lab6m36 MINGW64 ~
$ git clone git@github.com:Erick8002/atividade_git_final
Cloning into 'atividade_git_final'...
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

compuni@Lab6m36 MINGW64 ~
$ git clone git@github.com:Gabrielhnc07/atividade_git_final.git                 Cloning into 'atividade_git_final'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (6/6), done.

compuni@Lab6m36 MINGW64 ~
$ cd atividade_git_final

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
Already up to date.

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ ^C


compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   algoritmo.por

no changes added to commit (use "git add" and/or "git commit -a")

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)









Aborting commit due to empty commit message.

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git commit -m "Modificação do arquivo portugol"
[main 890a241] Modificação do arquivo portugol
 1 file changed, 20 insertions(+)

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 513 bytes | 171.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:Gabrielhnc07/atividade_git_final.git
   24163a5..890a241  main -> main

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 878 bytes | 7.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   890a241..5187bac  main       -> origin/main
Updating 890a241..5187bac
Fast-forward
 algoritmo.por | 81 +++++++++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 65 insertions(+), 16 deletions(-)

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git pull origin mais
fatal: couldn't find remote ref mais

compuni@Lab6m36 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 401 bytes | 4.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   5187bac..f7db18e  main       -> origin/main
Updating 5187bac..f7db18e
Fast-forward
 algoritmo.por | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

### Comandos de Andrei
compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git config --global user.name
Andrei

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git config --global user.email
andrei.aguilar@edu.unifil.br

compuni@Lab6m38 MINGW64 ~
$ rm -f ~/.ssh/id_rsa*

compuni@Lab6m38 MINGW64 ~
$ ssh-keygen -t rsa -b 4096 -C "andrei.aguilar@edu.unifil.br"
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/compuni/.ssh/id_rsa):
Enter passphrase for "/c/Users/compuni/.ssh/id_rsa" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/compuni/.ssh/id_rsa
Your public key has been saved in /c/Users/compuni/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:CkNI07MVDvIwW0t/6eLMryqbdZRKjjx5wqKhatVg/00 andrei.aguilar@edu.unifil.br
The key's randomart image is:
+---[RSA 4096]----+
|  *.+ ..         |
| . @o=.  .       |
|  o ++o o        |
|   +.  +         |
|  . B + S        |
| o * @ o E       |
|o O = B o        |
|o+.* . o .       |
|* oo.....        |
+----[SHA256]-----+

compuni@Lab6m38 MINGW64 ~
$ eval "$(ssh-agent -s)"
Agent pid 1183

compuni@Lab6m38 MINGW64 ~
$ ssh-add ~/.ssh/id_rsa
Identity added: /c/Users/compuni/.ssh/id_rsa (andrei.aguilar@edu.unifil.br)

compuni@Lab6m38 MINGW64 ~
$ clip < ~/.ssh/id_rsa.pub

compuni@Lab6m38 MINGW64 ~
$ ssh -T git@github.com
Hi andreiMiguel945! You've successfully authenticated, but GitHub does not provide shell access.

compuni@Lab6m38 MINGW64 ~
$ git clone git@github.com:Gabrielhnc07/atividade_git_final.git
Cloning into 'atividade_git_final'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (6/6), done.

compuni@Lab6m38 MINGW64 ~
$ cd atividade_git_final

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
Already up to date.

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 493 bytes | 3.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   24163a5..890a241  main       -> origin/main
Updating 24163a5..890a241
Fast-forward
 algoritmo.por | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 878 bytes | 8.00 KiB/s, done.
From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
   890a241..5187bac  main       -> origin/main
Updating 890a241..5187bac
Fast-forward
 algoritmo.por | 81 +++++++++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 65 insertions(+), 16 deletions(-)

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   algoritmo.por

no changes added to commit (use "git add" and/or "git commit -a")

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git add .

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   algoritmo.por


compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git commit -m "Alteração do código(Andrei)"
[main f7db18e] Alteração do código(Andrei)
 1 file changed, 5 insertions(+), 3 deletions(-)

compuni@Lab6m38 MINGW64 ~/atividade_git_final (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 421 bytes | 140.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:Gabrielhnc07/atividade_git_final.git
   5187bac..f7db18e  main -> main

From github.com:Gabrielhnc07/atividade_git_final
 * branch            main       -> FETCH_HEAD
Already up to date.


## Observações
Cada etapa foi realizada por apenas um integrante por vez, respeitando a ordem de commits e a integridade do código.

