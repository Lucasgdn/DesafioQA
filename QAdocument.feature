# language: pt

Funcionalidade: Login

  Contexto: O usuário deseja acessar o sistema
  Cenário: CT-001 - Tentativa de login com e-mail inválido
    Dado   que o usuário está na página de "login"
    Quando o usuário insere um e-mail "usuario.com"
    E      insere uma senha "senha123"
    E      clica no botão "Entrar"
    Então  o sistema deve exibir uma mensagem de erro "E-mail inválido"
    E      o login não deve ocorrer

  Cenário: CT-002 - Tentativa de login com senha curta
    Dado   que o usuário está na página de "login"
    Quando o usuário insere um e-mail "usuario@email.com"
    E      insere uma senha "1234"
    E      clica no botão "Entrar"
    Então  o sistema deve exibir uma mensagem de erro "A senha deve ter no mínimo 6 caracteres"
    E      o login não deve ocorrer

  Cenário: CT-003 - Login bem-sucedido
    Dado   que o usuário está na página de "login"
    Quando o usuário insere um e-mail "usuario@email.com"
    E      insere uma senha "senha123"
    E      clica no botão "Entrar"
    Então  o usuário deve ser autenticado com sucesso
    E      deve ser redirecionado para a página inicial

  Cenário: CT-004 - Tentativa de login sem preencher os campos obrigatórios
    Dado   que o usuário está na página de "login"
    Quando o usuário insere um e-mail ""
    E      insere uma senha ""
    E      clica no botão "Entrar"
    Então  o sistema deve exibir uma mensagem de erro "Os campos de E-mail deve ser preenchido"
    E      o login não deve ocorrer

  Cenário: CT-005 - Acessar página de recuperação de senha
    Dado   que o usuário está na página de "login"
    Quando o usuário clica no botão "Esqueci minha senha"
    Então  o sistema deve redirecioná-lo para a página de "recuperação de senha"
    Quando o usuário insere um e-mail "usuario@email.com"
    E      clica no botão "redefinir senha"
    Então  o sistema deve exibir uma mensagem "O link de recuperação de senha foi enviado para seu E-mail"

  Cenário: CT-006 – Recuperação de senha com E-mail inválido
    Dado   que o usuário está na página de "recuperação de senha"
    Quando o usuário insere um e-mail "usuário.email.com"
    E      clica no botão "redefinir senha"
    Então  o sistema deve exibir uma mensagem "Desculpe, mas não conseguimos localizar nenhum usuário associado ao e-mail que você forneceu. Por favor, verifique o e-mail e tente novamente"
