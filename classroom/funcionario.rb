class Funcionario
    attr_accessor :nome, :codigo_funcionario
    attr_reader :ferias

    def initialize(nome, codigo_funcionario)
        @nome = nome
        @codigo_funcionario = codigo_funcionario
        @ferias = false
    end

    def imprime()
        puts("Nome: #{@nome} - Código do Funcionário: #{@codigo_funcionario}")
    end
end