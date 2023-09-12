class Turma
    attr_accessor :nome_turma, :numero_sala, :professor, 
    
    private
    attr_writer :alunos

    def initialize(nome_turma, numero_sala, professor)
        @nome_turma = nome_turma
        @numero_sala = numero_sala
        @professor = professor
        @alunos = []
    end

    def adiciona_aluno(aluno)
        alunos << aluno
    end

    def total_aluno()
        cont = 0

        for aluno in alunos do
            cont = cont + 1
        end

        puts cont
    end
end