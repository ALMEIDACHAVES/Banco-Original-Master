@tag
Feature: Abertura de Conta
  
@PF
  Scenario: Abertura de Conta Pessoa Fisica
  Given que o usuario acesse a url "https://www.original.com.br/"
And selecionar o botao abrir conta
And selecionar o botao abrir conta para voce
#When preencher o formulario de abertura de conta
And preencher o campo com o nome "<nome>"
And preencher o campo com o email "<email>"
And preencher o campo com o cpf "<cpf>"
And preencher o campo com o telefone "<telefone>"
And selecionar o botao quero ser cliente
Then  sera exibido o texto falta pouco

							Examples:
								|nome		|email							|cpf					|telefone		|
								|Samuel	|teste@teste.com.br	|01422214060	|11111111111|
								|joao		|teste@teste.com.br	|27786240071	|11111111111|

@PJ
  Scenario: Abertura de Conta Pessoa Jurica
  Given que o usuario acesse a url "https://www.original.com.br/"
And selecionar o botao abrir conta
And selecionar o botao abrir conta para sua empresa
And Selecionar o botao abrir conta pessoa unica 
When preencher o formulario de abertura de conta
And selecionar o botao enviar
Then  sera exibido o texto pronto