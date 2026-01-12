# Banco de Dados ESCOLA

Projeto acadêmico desenvolvido como trabalho final da disciplina de Banco de Dados,
com o objetivo de praticar modelagem relacional, criação de tabelas, relacionamentos
entre entidades e consultas SQL.

## Objetivo do projeto
O projeto consiste na criação de um banco de dados denominado *ESCOLA*, desenvolvido
do zero, utilizando SQL, a partir de regras de negócio definidas em sala de aula.
O foco principal foi:
- Criação de entidades e seus relacionamentos
- Uso de chaves primárias e estrangeiras
- Implementação de regras de negócio
- Desenvolvimento de consultas SQL

Todos os dados utilizados no projeto são *fictícios* e foram criados exclusivamente
para fins acadêmicos.

## Estrutura do projeto
O repositório está organizado da seguinte forma:

- Pasta sql/: contém todos os arquivos SQL do projeto, divididos por etapas do desenvolvimento.

### Arquivos SQL
- *parte1.sql*  
  Criação do banco de dados ESCOLA, das tabelas ALUNO e PROFESSOR, além da inserção
  de dados fictícios nessas tabelas.

- *parte2.sql*  
  Criação das tabelas DEPARTAMENTO, CURSO e DISCIPLINA, inserção de dados e
  implementação dos relacionamentos entre as entidades, incluindo:
  - Departamento com um professor chefe
  - Relacionamento entre professores e disciplinas (N:N)

- *consultas.sql*  
  Contém todas as consultas SQL solicitadas no trabalho, utilizando JOIN, filtros
  e agregações.

## Entidades modeladas
O banco de dados é composto pelas seguintes entidades principais:
- ALUNO
- PROFESSOR
- DEPARTAMENTO
- CURSO
- DISCIPLINA
- TURMA
- HISTORICO

## Regras de negócio implementadas
- Cada departamento possui um professor como chefe
- Professores podem lecionar uma ou mais disciplinas
- Disciplinas podem possuir um ou mais professores
- Criação de turmas associadas a professores
- Registro de histórico escolar dos alunos, contendo:
  - Disciplina
  - Nota final
  - Frequência
  - Situação (Aprovado/Reprovado)

## Consultas SQL desenvolvidas
Entre as consultas implementadas no projeto, destacam-se:
- Consulta ao histórico escolar de um aluno, com totalização da carga horária cumprida
- Listagem de professores sem turma
- Listagem de professores sem disciplina
- Disciplinas que possuem professores não associados a elas
- Quantidade de alunos por cidade
- Quantidade de professores por cidade
- Alunos que moram no mesmo bairro de outros alunos
- Professores que moram no mesmo bairro de alunos
- Verificação de alunos que moram na mesma cidade de um professor de uma turma existente

## Observação final
Os dados originalmente utilizados em sala de aula foram baseados em planilhas Excel
fornecidas pelo professor. No entanto, para fins de versionamento e publicação no GitHub,
foram utilizados apenas dados fictícios, de forma a preservar a estrutura e o
funcionamento do banco de dados.
