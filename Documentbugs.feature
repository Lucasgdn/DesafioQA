# language: pt

Funcionalidade: Cadastro de Usuário

  Contexto:
    Dado que o usuário acessa a página de cadastro de usuários

  Cenário: Cadastro bem-sucedido
    Quando o usuário preencher os campos obrigatórios corretamente:
      | Campo           | Valor                  |
      | Nome Completo   | João Silva             |
      | E-mail          | joao.silva@email.com   |
      | Senha           | senha123               |
      | Confirmar Senha | senha123               |
    E clicar no botão "Cadastrar"
    Então o sistema deve exibir a mensagem: "Cadastro realizado com sucesso!"

  Cenário: Cadastro com erro
    Quando o usuário preencher os campos obrigatórios com dados inválidos:
      | Campo           | Valor                  |
      | Nome Completo   | João                   |
      | E-mail          | joao.email.com         |
      | Senha           | 123                    |
      | Confirmar Senha | 1234                   |
    E clicar no botão "Cadastrar"
    Então o sistema deve exibir uma mensagem de erro informando o problema ocorrido

# Bug Report
# 
# Título do Bug: Cadastro de usuário não exibe mensagem de sucesso ou erro
# 
# Severidade: Alta
# 
# Descrição:
# Ao tentar cadastrar um novo usuário preenchendo corretamente todos os campos do formulário e clicando no botão "Cadastrar", o sistema não responde. Nenhuma mensagem de sucesso ou erro é exibida, deixando o usuário sem feedback sobre a ação realizada.
# 
# Passos para Reproduzir:
# 
# Acessar a página de cadastro de usuários.
# 
# Preencher os seguintes campos corretamente:
# 
# Nome Completo
# 
# E-mail (formato válido)
# 
# Senha (mínimo 6 caracteres)
# 
# Confirmar Senha (igual à senha digitada anteriormente)
# 
# Clicar no botão "Cadastrar".
# 
# Comportamento Esperado:
# 
# Se o cadastro for bem-sucedido, exibir a mensagem: "Cadastro realizado com sucesso!".
# 
# Se houver erro, o sistema deve informar o usuário sobre o problema ocorrido.
# 
# Comportamento Atual:
# 
# Nenhuma mensagem de sucesso ou erro é exibida após o clique no botão "Cadastrar".
# 
# O sistema não dá nenhum feedback ao usuário, deixando a ação sem resposta aparente.
# 
# Impacto:
# 
# O usuário não sabe se seu cadastro foi realizado com sucesso ou se ocorreu algum erro.
# 
# Pode levar a múltiplas tentativas de cadastro, gerando cadastros duplicados.
# 
# Redução da usabilidade e frustração do usuário.
# 
# Recomendações:
# 
# Implementar mensagens adequadas para feedback ao usuário.
# 
# Garantir que o backend esteja respondendo corretamente às requisições de cadastro.
# 
# Verificar logs para identificar possíveis falhas no processamento da requisição.
