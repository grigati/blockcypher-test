require_relative './address'

# Faz a transferência
address = Address.new
address.transfer(1)

# Printa o balanço final
begin
  puts "\n\nBalanço final para o endereço: " + address.getFinalBalance().to_s
rescue
  puts "\n\nNão foi possível obter o balanço para o endereço informado."
end
