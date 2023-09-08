system("sudo clear")
# logo
puts "--------------------------------------------------------------"
puts "|     ##       ##   ##      ##   ##  ##    #####     #####   |"
puts "|    ####      ##   ##    ##  #      ##    ##       ##   ##  |"
puts "|   ##  ##     ##   ##    ##     ##  ##    #####    ##  ##   |"
puts "|  ## ## ##    ##   ##  #  ##    ##  ##    ##       ## ##    |"
puts "| ##      ##   #######   ###     ##  ####  #####    ##  ##   |" 
puts "--------------------------------------------------------------"
puts "------------------"
puts "Devs"
print "Discord: "
puts  "keeb.tar"
print "Criado por: "
puts "keeb"
puts "------------------"
# barra de carregamento simulada
def barra_de_carregamento
    total = 3  # Define o total de unidades na barra de carregamento
    progresso = 0  # Inicializa o progresso como 0
  
    while progresso <= total
      percentagem = (progresso.to_f / total * 100).to_i
      barra = "#" * (progresso * 20 / total)
      espacos = " " * (20 - barra.length)
  
      print "\r[#{barra}#{espacos}] #{percentagem}%"
      $stdout.flush  # Limpa o buffer de saída para exibir imediatamente
  
      sleep(0.1)  # Adiciona um pequeno atraso para a animação
  
      progresso += 1
    end
  
    puts "\nCarregamento completo"
  end
  print "-Load script: "
  puts "ausiler.rb"
  barra_de_carregamento
  puts "------------------"
  # script
  puts "Escolha uma opção"
  puts "1: deb"
  puts "2: apt"
  puts "3: tar"
  puts "4: mv (renomear)"
  puts "5: cp"
  puts "6: mkdir"
  puts "7: ssh"
  puts "8: Desinstalar"
  puts "9: exit"
  print "Escolha: "
    escolha = gets.chomp

    if escolha.to_i == 1
      system("ls -a")
      system("pwd")
      print "Informe o nome do .deb: "
      arquivo = gets.chomp
      puts "--------------------------------------------------------------"
      print "Preparando: "
      puts "Instalação"
      barra_de_carregamento
      system("sudo dpkg -i #{arquivo}")
      puts "--------------------------------------------------------------"
      system("ruby ausiler.rb")
    else

      if escolha.to_i == 2
        print "Informe o nome do apt: "
        arquivo = gets.chomp
        puts "--------------------------------------------------------------"
        print "Preparando: "
        puts "Instalação"
        barra_de_carregamento
        system("sudo apt-get install #{arquivo} -y")
        puts "--------------------------------------------------------------"
        system("ruby ausiler.rb")
        else

        if escolha.to_i == 3
          system("ls -a")
          system("pwd")
          print "Informe o nome do arquivo: "
          arquivo = gets.chomp
          puts "--------------------------------------------------------------"
          print "Preparando: "
          puts "Extração"
          barra_de_carregamento
          system("tar -xf #{arquivo}")
          puts "--------------------------------------------------------------"
          system("ruby ausiler.rb")
        else

          if escolha.to_i == 4
          system("ls -a")
          system("pwd")
          print "Informe o nome do arquivo para renomear: "
          arquivo = gets.chomp
          puts "--------------------------------------------------------------"
          print "Preparando: "
          puts "renome"
          barra_de_carregamento
          system("mv #{arquivo}")
          puts "--------------------------------------------------------------"
          system("ruby ausiler.rb")
          else

            if escolha.to_i == 5 
              system("ls -a")
              system("pwd")
              print "Informe o arquivo e o diretorio que será copiado: "
              arquivo = gets.chomp
              puts "--------------------------------------------------------------"
              print "Preparando: "
              puts "Mover"
              barra_de_carregamento
              system("cp #{arquivo}")
              puts "--------------------------------------------------------------"
              system("ruby ausiler.rb")
              else

            if escolha.to_i == 6
              system("ls -a")
              system("pwd")
              print "Informe o nome da pasta que será criada: "
              arquivo = gets.chomp
              puts "--------------------------------------------------------------"
              print "Preparando: "
              puts "pasta"
              barra_de_carregamento
              system("mkdir #{arquivo}")
              puts "--------------------------------------------------------------"
              system("ruby ausiler.rb")  
            else
            
              if escolha.to_i == 7
                print "Informe a conexão e a porta: "
                arquivo = gets.chomp
                puts "--------------------------------------------------------------"
                print "Preparando: "
                puts "SSH"
                barra_de_carregamento
                exec("ssh #{arquivo}")
                puts "--------------------------------------------------------------"
              else

          if escolha.to_i == 8
            print "Informe o nome da aplicação: "
            desinstalar = gets.chomp
            puts "--------------------------------------------------------------"
            print "Preparando: "
            puts "Desinstalação"
            barra_de_carregamento
            system("sudo apt-get remove #{desinstalar} -y")
            puts "--------------------------------------------------------------"
            system("ruby ausiler.rb")
          else

            if escolha.to_i == 9
              puts "Saindo..."
              system("exit")
              else
                
                if escolha.to_i <= 9
                else
                  system("ruby ausiler.rb")
                   end
                  end
                end
              end
            end
          end
        end
      end
    end
  end