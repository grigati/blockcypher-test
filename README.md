# Blockcypher::Test


Este programa envia 1 BCY para um endereço a ser definido e mostra o balanço final desse endereço.

## Configuração

Para fazer a transferência, é necessário alterar o token da API e o endereço no arquivo `lib/adress.rb`. Procure as seguintes linhas e faça as substituições necessárias:

```
@token = "COLOQUE O TOKEN AQUI"
@address = "COLOQUE O ENDEREÇO AQUI"
```

## Executando o código

Após obter o código deste repositório, execute o seguinte para instalar as dependências:

```
run `bin/setup`
```

A função principal pode ser executada com o comando `ruby lib/main.rb` ou ainda:

```
rake
```

Os testes podem ser executados com o comando `ruby test/main_test.rb` ou com:

```
rake test
```
