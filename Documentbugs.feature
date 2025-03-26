# Bug Report: Cadastro de Usuário

## Contexto:
- **Dado** que o usuário acessa a página de cadastro de usuários.

## Cenário Esperado: Cadastro bem-sucedido
- **Quando** o usuário preencher os campos obrigatórios corretamente:
  - **Campo**: Nome Completo | **Valor**: Lucas Moraes
  - **Campo**: E-mail        | **Valor**: Lucas.moraes@swfast.com.br
  - **Campo**: Senha         | **Valor**: Senha123!
  - **Campo**: Confirmar Senha | **Valor**: Senha123!
- **E** clicar no botão "Cadastrar".
- **Então** o sistema deve exibir a mensagem: "Cadastro realizado com sucesso!".

## Cenário Esperado: Cadastro com erro
- **Quando** o usuário preencher os campos obrigatórios com dados inválidos:
  - **Campo**: Nome Completo | **Valor**: Lucas
  - **Campo**: E-mail        | **Valor**: Lucas.swfast.com.br
  - **Campo**: Senha         | **Valor**: 123
  - **Campo**: Confirmar Senha | **Valor**: 1234
- **E** clicar no botão "Cadastrar".
- **Então** o sistema deve exibir uma mensagem de erro informando o problema ocorrido.

---

# Bug Report

## Título do Bug:
Cadastro de usuário não exibe mensagem de sucesso ou erro.

## Severidade:
Alta.

## Descrição:
Ao tentar cadastrar um novo usuário preenchendo corretamente todos os campos do formulário e clicando no botão "Cadastrar", o sistema não responde. Nenhuma mensagem de sucesso ou erro é exibida, deixando o usuário sem feedback sobre a ação realizada.

## Passos para Reproduzir:
1. Acessar a página de cadastro de usuários.
2. Preencher os seguintes campos corretamente:
   - Nome Completo.
   - E-mail (formato válido).
   - Senha (mínimo 6 caracteres).
   - Confirmar Senha (igual à senha digitada anteriormente).
3. Clicar no botão "Cadastrar".

## Comportamento Esperado:
- Se o cadastro for bem-sucedido, exibir a mensagem: "Cadastro realizado com sucesso!".
- Se houver erro, o sistema deve informar o usuário sobre o problema ocorrido.

## Comportamento Atual:
Nenhuma mensagem de sucesso ou erro é exibida após o clique no botão "Cadastrar". O sistema não dá nenhum feedback ao usuário, deixando a ação sem resposta aparente.

## Impacto:
- O usuário não sabe se seu cadastro foi realizado com sucesso ou se ocorreu algum erro.
- Pode levar a múltiplas tentativas de cadastro, gerando cadastros duplicados.
- Redução da usabilidade e frustração do usuário.

## Ambiente de Teste:
- **Sistema Operacional:** Windows 11 Pro (64-bit).
- **Navegador:** Google Chrome 121.0.0.0 (64-bit).
- **Ambiente:** Homologação.
- **Conexão:** Rede corporativa.

## Impacto Adicional:
- O bug é **bloqueador**, pois impede o usuário de confirmar se o cadastro foi concluído corretamente.
- Afeta **todos os usuários** que tentam se cadastrar na plataforma.
