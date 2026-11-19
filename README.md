# 🐾 PetShop Online — E-commerce de Produtos para Animais

Um sistema de e-commerce completo desenvolvido para a venda de produtos para animais de estimação (rações, brinquedos, acessórios e medicamentos), com foco em gestão de catálogo, cadastro de clientes e fluxo dinâmico de carrinho de compras.

---

## 📋 Funcionalidades

- **Gestão de Usuários:** Cadastro e autenticação de clientes com armazenamento seguro de senhas.
- **Endereços de Entrega:** Cadastro de CEP, logradouro e número vinculados ao perfil do cliente.
- **Catálogo de Produtos:** Listagem de itens com controle de preço e disponibilidade em estoque.
- **Carrinho de Compras Dinâmico:**
  - Adição de novos produtos ao carrinho.
  - Incremento automático de quantidade caso o produto já esteja selecionado.
  - Cálculo em tempo real do subtotal por item.
  - Remoção de itens do carrinho.

---

## 🗄️ Estrutura do Banco de Dados

O banco de dados relacional (`loja`) foi modelado para garantir a integridade dos dados utilizando chaves primárias (`PRIMARY KEY`) e estrangeiras (`FOREIGN KEY`):

- **`usuarios`**: Armazena as credenciais de acesso (`idusuario`, `usuario`, `senha`).
- **`cep`**: Guarda os endereços de entrega vinculados a cada usuário (`idcep`, `idusuario`, `cep`, `endereco`, `numero`).
- **`produtos`**: Catálogo do pet shop com controle de estoque (`idproduto`, `nome_produto`, `preco`, `estoque`).
- **`carrinhos`**: Associa um carrinho ativo a um cliente específico (`idcarrinho`, `idusuario`).
- **`itens_carrinho`**: Tabela intermediária que relaciona os produtos escolhidos ao carrinho e suas respectivas quantidades (`iditem`, `idcarrinho`, `idproduto`, `quantidade`).

---

## 🚀 Como executar o Banco de Dados

1. Certifique-se de ter um servidor **MySQL** ou **MariaDB** instalado e em execução.
2. Abra o seu gerenciador de banco de dados (MySQL Workbench, DBeaver, phpMyAdmin ou terminal).
3. Execute o script de criação das tabelas disponível na pasta `/database/schema.sql` (ou copie o código SQL do projeto) para gerar o banco `loja` e suas relações.

---

## 🛠️ Tecnologias Utilizadas

- **Banco de Dados:** MySQL / SQL
- **Backend:** *(Insira aqui a sua linguagem, ex: Node.js / PHP / Python / Java)*
- **Frontend:** *(Insira aqui o que está usando, ex: HTML5, CSS3, JavaScript / React)*

---

## 📁 Estrutura de Pastas (Sugestão)

```text
├── database/
│   └── schema.sql        # Script de criação das tabelas e consultas
├── src/
│   ├── controllers/      # Lógica do carrinho e produtos
│   ├── models/           # Conexão com o banco de dados
│   └── views/            # Telas do e-commerce
└── README.md
```

---

## 🤝 Contribuição

Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir uma *issue* ou enviar um *pull request* com melhorias.
