class Professor < Funcionario
    attr_accessor :disciplina, :data_inicio, :data_fim

    def initialize(nome, codigo_funcionario, disciplina)
        super(nome, codigo_funcionario)
        @disciplina = disciplina
    end

    def inicia_ferias()
        @data_inicio = Time.now()
        @data_fim = '2023-10-12'
        @ferias = true
    end

    def finaliza_ferias()
        @data_inicio = '2023-10-12'
        @data_fim = Time.now()
        @ferias = false
    end

    def imprime()
        super()
        puts("Disciplina: #{@disciplina}")
    end
end

