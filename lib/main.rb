require "blockcypher"

class Main
  def initialize
    @token = "COLOQUE O TOKEN AQUI"
    @address = "COLOQUE O ENDERECO AQUI"
  end

  # Transfere BCY para o endereço @address
  #
  # Params:
  # amount: quantidade a ser enviada em BCY
  #
  def transfer(amount)
    puts "\n\nEnviando " + amount.to_s + " BCY para " + @address
    block_cypher = BlockCypher::Api.new(currency:BlockCypher::BCY, network:BlockCypher::TEST_NET, api_token: @token)
    block_cypher.faucet(@address, amount)
    puts "Concluído"
  end
end

main = Main.new
main.transfer(1)
