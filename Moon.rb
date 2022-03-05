# ----------------- MOON APP DEVELOPING -----------------
require 'date'
require "tty-prompt"
require "tty-spinner"
require "pastel"
pastel = Pastel.new
prompt = TTY::Prompt.new

date = Date.today 
desenho = <<~EOF 
----╭━╮╭━╮--------╭━━━╮--------
----┃┃╰╯┃┃--------┃╭━╮┃--------
----┃╭╮╭╮┣━━┳━━┳━╮┃┃-┃┣━━┳━━╮--
----┃┃┃┃┃┃╭╮┃╭╮┃╭╮┫╰━╯┃╭╮┃╭╮┃--
----┃┃┃┃┃┃╰╯┃╰╯┃┃┃┃╭━╮┃╰╯┃╰╯┃--
----╰╯╰╯╰┻━━┻━━┻╯╰┻╯ ╰┫╭━┫╭━╯--
----------------------┃┃-┃┃----
----------------------╰╯-╰╯----
EOF
puts desenho

# ----------------- INÍCIO DA APLICAÇÃO ----------------- 
puts pastel.cyan(":*:･ﾟ★,｡･:*:･ﾟ☆　　 ｡･:*:･ﾟ★,｡･:*:☆")
puts pastel.magenta("*･༓☾ OLÁ, SEJA BEM VINDA ☽༓･*˚⁺")
puts pastel.cyan(":*:･ﾟ★,｡･:*:･ﾟ☆　　 ｡･:*:･ﾟ★,｡･:*:☆")
puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "

puts "Qual é o seu nome?" 
puts pastel.bold.red("(Por favor, seja verdadeira em sua resposta)")
print "Digite seu nome aqui: "
nome = gets.chomp.capitalize
puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "

print "Hmm, então seu nome é "
print pastel.magenta.inverse(nome)
sleep(0.5)
puts ", certo?"
sleep(0.3)
print "Digite sua resposta "
print pastel.magenta("[S/N]")
print ":"
resposta = gets.chomp.capitalize
puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "

#  -- Se a Resposta for SIM e for a Luana --
if resposta == "S" && (nome === "Luana" || nome === "Lua")  #==============================================================================
    
    puts "Okay, só pra eu conferir uma coisa"
    print "Digite um sobrenome: "
    sobrenome = gets.chomp.capitalize
    puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "

    # -- Se o SOBRENOME estiver CORRETO
    if sobrenome == "Santiago" || sobrenome == "Claricy" || sobrenome == "Ferreira" || sobrenome == "Claricy Santiago Ferreira" || sobrenome == "Galeno"
        
        # -- Pré Carregamento da Carta
        print "Olá "
        print pastel.bold.magenta("Luana Santiago")
        puts ", estavamos esperando por você"
        sleep(1.4)
        puts "recebemos uma carta de um astronauta"
        sleep(1.3)
        puts "dizem que foi ele que nos desenvolveu..."
        sleep(1.1)
        puts " "
        puts "vamos abrir pra você, só um instante..."
        sleep(1)
        puts ".・。.・゜✭・.・✫・゜・。..・。.・"
        sleep(0.8)
        
        # -- Carregamento Final da Carta
        spinner = TTY::Spinner.new("[:spinner] Buscando Dados ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Concluído)"))

        spinner = TTY::Spinner.new("[:spinner] Estabilizando Sistema Solar ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Concluído)"))
        
        spinner = TTY::Spinner.new("[:spinner] Extraindo Hexadecinal dos #{pastel.inverse.magenta("Roxos")} ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Concluído)"))

        spinner = TTY::Spinner.new("[:spinner] Procurando Carta ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Carta Encontrada!)"))

        spinner = TTY::Spinner.new("[:spinner] Abrindo Carta ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.red("(Carta Bloqueada)"))
        puts ".・。.・゜✭・.・✫・゜・。..・。.・"
        puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "
        sleep(2)
        
        # -- Digite a SENHA
        cadeado = false
        while cadeado == false
            print "Digite a Senha: "
            senha = gets.chomp
            if senha == "21082021" || senha == "210821"
                cadeado = true
                puts pastel.green.inverse("Senha Correta")
                puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "
                spinner = TTY::Spinner.new("[:spinner] Abrindo Carta ")
                spinner.auto_spin
                sleep(2)
                spinner.success(pastel.bold.green("(Concluído)"))
                puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "
            else
                puts pastel.red.inverse("Senha Incorreta")
                puts "Ele disse que você provavelmente saberia a senha"
                puts "tente novamente"
                puts "━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ "
            end  
        end


        # -- LEITURA DA CARTA
        puts " "
        puts pastel.bold.yellow("------------------------------------")
        puts pastel.bold.yellow("--- AUTOR: GUILHERME GALENO      ---")
        sleep(1)
        puts pastel.bold.yellow("--- DATA: #{date}             ---")
        sleep(1)
        puts pastel.bold.yellow("--- DESTINARÁRIO: LUANA SANTIAGO ---")
        sleep(1)
        puts pastel.bold.yellow("------------------------------------")
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
        spinner.success(pastel.bold.red("(Download Interrompido)"))
        puts " "
        
        puts "perdão kkk arquivo errado"
        sleep(2)
        puts "só um segundo" 
        puts " "
        
        spinner = TTY::Spinner.new("[:spinner] Abrindo Vortex Temporal ")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Espaço-Tempo Estabilizado)"))
        spinner = TTY::Spinner.new("[:spinner] Ativando Dimensão Infinita")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Modo Eternização Ativada)"))
        sleep(1)
        pastel.bold.green("(Modo Eternização Ativada)")
        sleep(2)
        
        puts " "
        puts pastel.bold.blue("--- EU PRECISO TE DIZER QUE: ---")
        
        puts "- eu te #{pastel.bold.magenta("amo")}"
        sleep(2)
        puts "- você #{pastel.bold.magenta("é")} a mulher com quem vou me #{pastel.bold.magenta("casar")}"
        sleep(2)
        puts "- teremos uma #{pastel.bold.magenta("família")}"
        sleep(2)
        puts "- #{pastel.bold.magenta("prometo")} te ajudar com literalmente todos os seus #{pastel.bold.magenta("sonhos")}"
        sleep(2)
        puts "- #{pastel.bold.magenta("vamos")} ser muito #{pastel.bold.magenta("felizes")} ainda mais do que já somos"
        sleep(2)
        puts "- eu tenho #{pastel.bold.magenta("muito orgulho")} da mulher que você é"
        sleep(2)
        puts "- você é #{pastel.bold.magenta("forte")}"
        sleep(2)
        puts "- você é #{pastel.bold.magenta("linda")}"
        sleep(2)
        puts "- você é a #{pastel.bold.magenta("melhor namorada do mundo")}"
        sleep(2)
        puts "- você é meu #{pastel.bold.magenta("roxo")}"
        sleep(2)
        puts "- você é meu #{pastel.bold.magenta("mundo cor de rosa")}"
        sleep(2)
        puts "- você é #{pastel.bold.magenta("meu")} motivo pra digitar #{pastel.bold.magenta("+ de 250 linhas")} de código só pra tirar um #{pastel.bold.magenta("sorriso")} seu"
        sleep(2)
        puts "- você é #{pastel.bold.magenta("minha inspiração")}"
        sleep(2)
        puts "- você é #{pastel.bold.magenta("tudo")}"
        sleep(2)
        puts "- você é a #{pastel.bold.magenta("minha lua que tem luz própria")}"
        sleep(2)
        puts "- luz essa que me cativou de tal forma"
        sleep(2)
        puts "- que me faz enxerga-la mesmo daqui"
        sleep(2)
        puts "- em outro planeta"
        sleep(2)
        puts "- à 130km de distância kkk"
        sleep(2)
        puts "- #{pastel.bold.magenta("eu te amo")}"
        sleep(2)
        puts "- #{pastel.bold.magenta("obrigado por tudo")}"
        sleep(2)
        puts "com amor, #{pastel.bold.magenta("seu Astronauta")}"
        sleep(2)
        puts ".・。.・゜✭・.・✫・゜・。..・。.・"
        sleep(2)
        #-- FINAL DA APLICAÇÂO
        spinner = TTY::Spinner.new("[:spinner] Fechando Carta")
        spinner.auto_spin
        sleep(2)
        spinner.success(pastel.bold.green("(Concluído)"))
        sleep(2)
        puts ""
        puts ".・。.・゜✭・.・✫・゜・。..・。.・"
        puts pastel.inverse.magenta("Tchauzinho ^^")
        puts ".・。.・゜✭・.・✫・゜・。..・。.・"

    # -- Se o SOBRENOME não for o CERTO
    else

        puts "Desculpa, você definitivamente não é a pessoa que eu estava procurando"

    end

# -- Se a Resposta For SIM mas NÃO é a Luana
elsif resposta == "S" && (nome != "Luana" || nome != "Lua")  #==============================================================================
    
    puts "Desculpa, você definitivamente não é a pessoa que eu estava procurando"

# -- Se a Resposta For NÃO
elsif resposta == "N"

    puts "Presta atenção parcero"
    puts "bota teu nome de maneira correta fzd favor?"
    puts "Obgd. 🤨"

# -- Se a Resposta Não For Nem Sim Nem Não
elsif (resposta != "S") && (resposta != "N")

    puts "ce é lelé parcero? 🤨"
        
end
