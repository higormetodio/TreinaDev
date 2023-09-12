require_relative 'cliente'

class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
            return true
        else
            puts "Não foi possível realizar a operação, saldo insuficiente"
            return false
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(outra_conta, valor)
        if sacar(valor)
            outra_conta.depositar(valor)
        end
    end
end