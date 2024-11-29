# Sistema de Controle de Cerimonial de Formatura

## Descrição do Projeto
Este projeto é um sistema de gerenciamento para uma firma especializada em cerimônias de formatura. O sistema organiza informações relacionadas a formaturas, eventos, profissionais, buffets, cardápios e aperitivos, proporcionando uma administração eficiente e consultas otimizadas.

O projeto foi desenvolvido como parte do trabalho prático da disciplina de Banco de Dados da Pontifícia Universidade Católica de Minas Gerais.

## Funcionalidades Principais
- **Gerenciamento de Formaturas**:
  - Registro do curso, faculdade, chefe da turma (nome e telefone), forma de pagamento e valor do pagamento.
- **Controle de Eventos**:
  - Registro de data, descrição, local, número de convidados e duração.
- **Administração de Profissionais**:
  - Cadastro de nome, matrícula, telefone, tipo, salário e horas trabalhadas em eventos específicos.
- **Gestão de Buffets**:
  - Registro de nome, CNPJ, endereço, tempo de parceria e cardápios associados.
- **Controle de Cardápios e Aperitivos**:
  - Gestão de cardápios associados a eventos e detalhes dos aperitivos (nome, tipo e preço por pessoa).

## Estrutura do Projeto
O projeto é composto pelas seguintes etapas:

### Parte I - Diagrama Entidade-Relacionamento (DER)
O diagrama ER detalha as relações entre as entidades principais do sistema, como `Firma`, `Formatura`, `Evento`, `Profissional`, `Buffet`, `Cardápio` e `Aperitivo`. O DER está disponível no arquivo [Controle_Formatura_DER.pdf](diagramas/Controle_Formatura_DER.pdf).

### Parte II - Modelo Relacional (MR)
O modelo relacional traduz o DER para tabelas relacionais com suas respectivas chaves primárias e estrangeiras. O MR está disponível no arquivo [Controle_Formatura_MR.pdf](diagramas/Controle_Formatura_MR.pdf).

### Parte III - Implementação SQL-DDL
Inclui:
- **Criação de Tabelas**: Scripts para criar as tabelas com as chaves primárias e estrangeiras, disponíveis em [setup.sql](scripts/setup.sql).
- **Povoamento das Tabelas**: Scripts para inserir registros nas tabelas, disponíveis em [fill.sql](scripts/fill.sql).
- **Índices**: Scripts para otimização de consultas.
- **Visões**: Duas visões criadas para simplificar consultas frequentes.

### Parte IV - Comandos SQL-DML
Inclui 10 consultas SQL criativas, abordando:
- Junções complexas (com filtros, operadores e funções agregadas).
- Subconsultas (correlacionadas e não correlacionadas).
- Agrupamento e filtros avançados.  
As consultas estão documentadas no arquivo [selects.sql](scripts/selects.sql).

## Configuração e Execução
1. Configure o banco de dados relacional (PostgreSQL ou MySQL recomendado).
2. Execute o script [setup.sql](scripts/setup.sql) para criar as tabelas.
3. Utilize o script [fill.sql](scripts/fill.sql) para popular as tabelas com dados.
4. Explore os dados com as consultas disponíveis em [selects.sql](scripts/selects.sql).

## Requisitos do Sistema
- Banco de dados relacional (PostgreSQL ou MySQL preferencialmente).
- Ambiente de desenvolvimento com suporte a SQL (e.g., DBeaver, pgAdmin, MySQL Workbench).

## Estrutura dos Arquivos
- `diagramas/`: Contém os diagramas DER e MR do projeto.
- `scripts/`: Contém os scripts SQL para criação de tabelas, índices, visões e consultas.
  - `setup.sql`: Criação das tabelas e índices.
  - `fill.sql`: Inserção de dados nas tabelas.
  - `selects.sql`: Consultas SQL-DML.
  
## Contribuidores
Projeto desenvolvido por estudantes da disciplina de Banco de Dados sob orientação do Professor Rodrigo Baroni.

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/alvimdev/">
        <img src="https://avatars.githubusercontent.com/u/83983141" width="100px;" alt="alvimdev"/><br>
        <sub><b>alvimdev</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/marcosffp/">
        <img src="https://avatars.githubusercontent.com/u/159904717" width="100px;" alt="marcosffp"/><br>
        <sub><b>marcosffp</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/pazzutti/">
        <img src="https://avatars.githubusercontent.com/u/160603029?v=4" width="100px;" alt="pazzutti"/><br>
        <sub><b>pazzutti</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/VitorCostaVianna/">
        <img src="https://avatars.githubusercontent.com/u/164224028?v=4" width="100px;" alt="VitorCostaVianna"/><br>
        <sub><b>VitorCostaVianna</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/ArthurAstolfi/">
        <img src="https://avatars.githubusercontent.com/u/166446640?v=4" width="100px;" alt="VitorCostaVianna"/><br>
        <sub><b>ArthurAstolfi</b></sub>
      </a>
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="https://github.com/gabrielpdiniz/">
        <img src="https://avatars.githubusercontent.com/u/161521731?v=4" width="100px;" alt="gabrielpdiniz"/><br>
        <sub><b>gabrielpdiniz</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/JoaquimGCVS/">
        <img src="https://avatars.githubusercontent.com/u/160603058?v=4" width="100px;" alt="JoaquimGCVS"/><br>
        <sub><b>JoaquimGCVS</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/ArlindoSPJr/">
        <img src="https://avatars.githubusercontent.com/u/164196737?v=4" width="100px;" alt="ArlindoSPJr"/><br>
        <sub><b>ArlindoSPJr</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/V1niciusSena/">
        <img src="https://avatars.githubusercontent.com/u/132425029?v=4" width="100px;" alt="V1niciusSena"/><br>
        <sub><b>V1niciusSena</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/geelio/">
        <img src="https://avatars.githubusercontent.com/u/150765447?v=4" width="100px;" alt="V1niciusSena"/><br>
        <sub><b>geelio</b></sub>
      </a>
    </td>
  </tr>
</table>

---
[⬆ Voltar ao topo](#sistema-de-controle-de-cerimonial-de-formatura)<br>
