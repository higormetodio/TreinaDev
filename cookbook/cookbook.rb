INCLUIR_ITEM_RECEITA = 1
LISTAR_ITEM_RECEITA = 2
SAIR = 3

itens = []

teste = true

def menu()
    puts "*********** MENU ***********"
    puts "1 - Incluir item na receita."
    puts "2 - Listar itens da receita"
    puts "3 - Sair"
    puts
    print "Digite uma opção: "
    numero = gets.chomp().to_i()
    puts

    return numero
end

def incluir_item()
    puts "Digite o nome da receita"
    nome = gets.chomp()
    puts "Digite o tipo da receita"
    tipo = gets.chomp()

    receitas = {nome: nome, tipo: tipo}

    puts
    
    return receitas
end

def listar_item(itens)
    puts "***** LISTAGEM DOS ITENS *******"
    if itens.empty?
        puts "IMPORTANTE: Lista dos intes está vazia."
    else
        itens.each do |item|
            puts "#{item[:nome]} - #{item[:tipo]}"
        end
    end
    puts
end

while (teste) do
    case menu()
    when INCLUIR_ITEM_RECEITA
        itens << incluir_item()
    when LISTAR_ITEM_RECEITA
        listar_item(itens)
    when SAIR
        teste = false
    else
        puts "Opção inválida"
        puts
    end
end