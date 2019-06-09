require "blockcypher"

class Address
  def initialize
    @token = "COLOQUE O TOKEN AQUI"
    @address = "COLOQUE O ENDEREÇO AQUI"
    @block_cypher = BlockCypher::Api.new(currency:BlockCypher::BCY, network:BlockCypher::TEST_NET, api_token: @token)
  end

  # Transfere BCY para o endereço @address
  #
  # Params:
  # amount: quantidade a ser enviada em BCY
  #
  # Retorna boolean indicando se a transferência foi realizada com sucesso
  def transfer(amount)
    puts "\n\nEnviando " + amount.to_s + " BCY para " + @address

    begin
      response = @block_cypher.faucet(@address, amount)
      puts "Transferência realizada, tx_ref:" + response["tx_ref"]
    rescue Exception => ex
      puts "Erro ao enviar"
      puts ex

      return false
    end

    puts "Concluído"
    return true
  end

  # Retorna o balanço final
  def getFinalBalance()
    response = @block_cypher.address_balance(@address)
    return response["final_balance"]
  end
end
