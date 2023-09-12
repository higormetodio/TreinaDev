require_relative 'conta'

class ContaCorrente < Conta
    attr_accessor :limite

    def initialize(numero, titular, saldo, limite)
        super(numero, titular, saldo)
        @limite = limite
    end

    def sacar(valor)
        if (self.saldo + limite) >= valor
            self.saldo -= valor
            return true
        else
            puts "Não foi possível realizar a operação, saldo insuficiente"
            return false
        end
    end
end
