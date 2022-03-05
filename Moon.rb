require 'date'
require "tty-prompt"
require "tty-spinner"     # =========== GEMS USADAS
require "pastel"

cor = Pastel.new
prompt = TTY::Prompt.new        #============== DEFININDO VARIÁVEIS
date = Date.today 
nome_confirmado = false
line = cor.yellow("----------------------------------------------")
moon_app = <<~EOF 
----╭━╮╭━╮--------╭━━━╮--------
----┃┃╰╯┃┃--------┃╭━╮┃--------
----┃╭╮╭╮┣━━┳━━┳━╮┃┃-┃┣━━┳━━╮--
----┃┃┃┃┃┃╭╮┃╭╮┃╭╮┫╰━╯┃╭╮┃╭╮┃--
----┃┃┃┃┃┃╰╯┃╰╯┃┃┃┃╭━╮┃╰╯┃╰╯┃--
----╰╯╰╯╰┻━━┻━━┻╯╰┻╯ ╰┫╭━┫╭━╯--
----------------------┃┃-┃┃----
----------------------╰╯-╰╯----
EOF

puts moon_app
puts cor.cyan(":*:･ﾟ★,｡･:*:･ﾟ☆　　 ｡･:*:･ﾟ★,｡･:*:☆")
puts cor.magenta("*･༓☾ OLÁ, SEJA BEM VINDA ☽༓･*˚⁺")
puts cor.cyan(":*:･ﾟ★,｡･:*:･ﾟ☆　　 ｡･:*:･ﾟ★,｡･:*:☆")
puts line

while nome_confirmado == false
    print "Qual é o seu nome? " 
    puts cor.yellow("(Por favor, seja verdadeira em sua resposta)")
    print "Digite seu nome aqui: "
    nome = gets.chomp.capitalize
    puts line
    
    #-- Confirmação de Nome
    puts "Hmm, então seu nome é #{cor.magenta.inverse(nome)}, certo?"
    sleep(0.3)
    print "Digite sua resposta "
    print "#{cor.magenta("[S/N]")}:"
    resposta = gets.chomp.capitalize
    puts line
    sleep(1)

    #-- Se Tudo certo
    if resposta == "S" && (nome === "Luana" || nome === "Lua") 
        nome_confirmado = true
        
        # -- Se a Resposta For SIM mas NÃO é a Luana
    elsif resposta == "S" && (nome != "Luana" || nome != "Lua")  #==============================================================================
        puts cor.red("Desculpa, você definitivamente não é a pessoa que eu estava procurando")
        puts line
        
        # -- Se a Resposta For NÃO
    elsif resposta == "N"
        puts "Presta atenção parcero"
        puts cor.red("bota teu nome de maneira correta fzd favor?")
        puts "Obgd. 🤨"
        puts line
        
        # -- Se a Resposta Não For Nem Sim Nem Não
    elsif (resposta != "S") && (resposta != "N")
        puts cor.red("ce é lelé parcero? 🤨, digita um valor válido ai nmrlzinha" )          
        puts line
    end
end

#  -- Se a Resposta for SIM e for a Luana --
if resposta == "S" && (nome === "Luana" || nome === "Lua")  #==============================================================================
    
    puts "Okay, só pra eu conferir uma coisa"
    print "Digite um sobrenome: "
    sobrenome = gets.chomp.capitalize
    puts line

    # -- Se o SOBRENOME estiver CORRETO
    if sobrenome == "Santiago" || sobrenome == "Claricy" || sobrenome == "Ferreira" || sobrenome == "Claricy Santiago Ferreira" || sobrenome == "Galeno"
        nome_completo = "#{nome} #{sobrenome}"
        # -- Pré Carregamento da Carta
        puts "Olá #{cor.bold.magenta(nome_completo)}, estavamos esperando por você"
        sleep(2)
        puts "recebemos uma carta de um astronauta"
        sleep(2)
        puts "dizem que foi ele que nos desenvolveu..."
        sleep(2)
        puts "Vamos abri-la para você, só um instante..."
        sleep(1)
        puts cor.cyan(".・。.・゜✭・.・✫・゜・。..・。.・")
        sleep(1)
        
        # -- Carregamento Final da Carta
        spinner = TTY::Spinner.new("[:spinner] Buscando Dados ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Concluído)"))

        spinner = TTY::Spinner.new("[:spinner] Estabilizando Sistema Solar ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Concluído)"))
        
        spinner = TTY::Spinner.new("[:spinner] Extraindo Hexadecinal dos #{cor.inverse.magenta("Roxos")} ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Concluído)"))

        spinner = TTY::Spinner.new("[:spinner] Procurando Carta ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Carta Encontrada!)"))

        spinner = TTY::Spinner.new("[:spinner] Abrindo Carta ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.red("(Carta Bloqueada)"))
        puts cor.cyan(".・。.・゜✭・.・✫・゜・。..・。.・")
        puts line
        sleep(2)
        
        # -- Digite a SENHA
        cadeado = false
        while cadeado == false
            print "Digite a Senha: "
            senha = gets.chomp
            if senha == "21082021" || senha == "210821"
                cadeado = true
                puts cor.green.inverse("Senha Correta")
                puts line
                spinner = TTY::Spinner.new("[:spinner] Abrindo Carta ")
                spinner.auto_spin
                sleep(2)
                spinner.success(cor.bold.green("(Concluído)"))
                puts line
            else
                puts cor.red.inverse("Senha Incorreta")
                puts "Ele disse que você provavelmente saberia a senha"
                puts cor.yellow("Tente Novamente")
                puts line
            end  
        end

        # -- LEITURA DA CARTA
        puts " "
        puts cor.inverse.yellow("------------------------------------")
        puts cor.inverse.yellow("--- AUTOR: GUILHERME GALENO      ---")
        sleep(1)
        puts cor.inverse.yellow("--- DATA: #{date}             ---")
        sleep(1)
        puts cor.inverse.yellow("--- DESTINARÁRIO: LUANA SANTIAGO ---")
        sleep(1)
        puts cor.inverse.yellow("------------------------------------")
        puts " "
        puts "Oi kkk tudo bem gatinha? Essa aqui é uma carta atemporal,"
        sleep(3)
        puts "ela é válida pra toda a eternidade."
        sleep(3)
        puts "eu só, precisava te contar algumas coisas que"
        sleep(3)
        puts "sinto que mereciam ser eternizadas aqui pra você"
        sleep(3)
        puts "só um instante"
        sleep(3)
        puts " "

        spinner = TTY::Spinner.new("[:spinner] Abrindo Lista de Defeitos ")
        spinner.auto_spin
        sleep(3)
        spinner.success(cor.bold.red("(Download Interrompido)"))

        puts " "
        puts "perdão kkk arquivo errado"
        sleep(2)
        puts "só um segundo" 
        puts " "
        
        spinner = TTY::Spinner.new("[:spinner] Abrindo Vortex Temporal ")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Espaço-Tempo Estabilizado)"))
        spinner = TTY::Spinner.new("[:spinner] Ativando Dimensão Infinita")
        spinner.auto_spin
        sleep(2)
        spinner.success(cor.bold.green("(Modo Eternização Ativada)"))
        sleep(1)
        cor.bold.green("(Modo Eternização Ativada)")
        sleep(2)
        puts line

        print "Você, #{nome_completo}, deseja ler a carta? [S/N]: "
        confirma_leitura = gets.chomp.capitalize
        if confirma_leitura == "S" 
            spinner = TTY::Spinner.new("[:spinner] Carregando Lista")
            spinner.auto_spin
            sleep(2)
            spinner.success(cor.bold.green("(Concluído)"))
            puts " "
            puts line
            puts cor.bold.blue("--- EU PRECISO TE DIZER QUE: ---")
            puts "- eu te #{cor.bold.magenta("amo")}"
            sleep(2)
            puts "- você #{cor.bold.magenta("é")} a mulher com quem vou me #{cor.bold.magenta("casar")}"
            sleep(2)
            puts "- teremos uma #{cor.bold.magenta("família")}"
            sleep(2)
            puts "- #{cor.bold.magenta("prometo")} te ajudar com literalmente todos os seus #{cor.bold.magenta("sonhos")}"
            sleep(2)
            puts "- #{cor.bold.magenta("vamos")} ser muito #{cor.bold.magenta("felizes")} ainda mais do que já somos"
            sleep(2)
            puts "- eu tenho #{cor.bold.magenta("muito orgulho")} da mulher que você é"
            sleep(2)
            puts "- você é #{cor.bold.magenta("forte")}"
            sleep(2)
            puts "- você é #{cor.bold.magenta("linda")}"
            sleep(2)
            puts "- você é a #{cor.bold.magenta("melhor namorada do mundo")}"
            sleep(2)
            puts "- você é meu #{cor.bold.magenta("roxo")}"
            sleep(2)
            puts "- você é meu #{cor.bold.magenta("mundo cor de rosa")}"
            sleep(2)
            puts "- você é #{cor.bold.magenta("meu")} motivo pra digitar #{cor.bold.magenta("+ de 250 linhas")} de código só pra tirar um #{cor.bold.magenta("sorriso")} seu"
            sleep(2)
            puts "- você é #{cor.bold.magenta("minha inspiração")}"
            sleep(2)
            puts "- você é #{cor.bold.magenta("tudo")}"
            sleep(2)
            print "- você é a #{cor.bold.magenta("minha lua que tem luz própria")}"
            sleep(2)
            print ", luz essa que me cativou de tal forma"
            sleep(2)
            print " que me faz enxerga-la mesmo daqui"
            sleep(2)
            print " em outro planeta"
            sleep(2)
            puts " à 130km de distância kkk"
            sleep(2)
            puts "- #{cor.bold.magenta("eu te amo")}"
            sleep(2)
            puts "- #{cor.bold.magenta("obrigado por tudo")}"
            sleep(2)
            puts "com amor, #{cor.bold.magenta("seu Astronauta")}"
            sleep(2)
            puts cor.cyan(".・。.・゜✭・.・✫・゜・。..・。.・")
            sleep(2)
            spinner = TTY::Spinner.new("[:spinner] Fechando Carta")
            spinner.auto_spin
            sleep(2)
            spinner.success(cor.bold.green("(Concluído)"))
            sleep(2)
            puts line
            puts cor.cyan("・。・゜✭・.・✫・゜・。・゜✭・.・✫・゜・。..・。.・")
            puts "#{cor.bold("~ Estarei sempre aqui")}#{cor.bold.magenta(" PRA você e POR você")}..."
            puts cor.cyan("・。・゜✭・.・✫・゜・。・゜✭・.・✫・゜・。..・。.・")
        else
            puts line
            puts "só pela gracinha vai fazê tudo denovo, voltar e marcar que sim"
            puts "osh, n passei 3 dias desenvolvendo o bang p tu n ler kkkkk"
        end
    # -- Se o SOBRENOME não for o CERTO
    else
        puts "Desculpa, você definitivamente não é a pessoa que eu estava procurando"
    end
end
