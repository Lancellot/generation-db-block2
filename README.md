<div align="center">
<img src="./.github/assets/generation-bg.png" alt="Logo" height="100" />
</div>

  <h2 align="center"><strong>Bootcamp Generation – Banco de Dados</strong></h2>

## generation-db-block2

Este repositório é um espaço de estudo e prática para quem está aprendendo bancos de dados (SQL, modelagem e operações). Contém atividades e exercícios organizados por atividade (Bloco 2 do Bootcamp Generation) para que você possa abrir, executar e estudar os exemplos com facilidade.

**Objetivo:**
- Fornecer exercícios práticos para consolidar conceitos de modelagem, consultas SQL, manipulação de dados e boas práticas de banco de dados.

**Estrutura do repositório:**
- `atividade-01/`: scripts e exercícios da primeira atividade. Exemplos: `db_atividade_01.sql`, `db_atividade_02.sql`, `db_atividade_03.sql`.
- `atividade-02/`: scripts e exercícios da segunda atividade. Exemplos: `db_generation_game_online.sql`, `db_pizzaria_legal.sql`.

**Dicas de estudo (práticas e objetivas)**
- **Entenda o modelo:**: desenhe o diagrama ER antes de criar tabelas; pense em entidades, relacionamentos e cardinalidade.
- **Escreva consultas aos poucos:**: comece com `SELECT *` para entender os dados, depois filtre (`WHERE`), agrupe (`GROUP BY`) e otimize colunas retornadas.
- **Pratique normalização:**: identifique redundâncias e transforme em 1ª/2ª/3ª forma normal quando fizer sentido.
- **Use dados reais ou simulados:**: importe pequenos datasets (CSV) para explorar joins, agregações e índices.
- **Verifique planos de execução:**: aprenda a usar `EXPLAIN` (MySQL/Postgres) para entender performance.
- **Teste índices com cuidado:**: crie índices para consultas frequentes e meça impacto em escrita/consulta.
- **Versione seus scripts:**: mantenha todos os `.sql` no Git e documente alterações; scripts idempotentes ajudam (usar `DROP TABLE IF EXISTS`).
- **Comente seu SQL:**: inclua trechos comentados explicando decisões de modelagem ou consultas complexas.
- **Use ferramentas visuais:**: experimente DBeaver, MySQL Workbench ou PgAdmin para visualizar esquemas e dados.
- **Resolva exercícios regularmente:**: fixe uma meta pequena (30min/dia) e resolva/otimize uma query por sessão.

**Boas práticas para os arquivos deste repositório**
- Nomeie scripts com propósito claro (`create_tables.sql`, `seed_data.sql`, `queries_exercicio_01.sql`).
- Separe criação de schema, inserção de dados e queries de análise em arquivos distintos.

**Contribuindo**
- Abra uma issue ou envie um pull request com correções, sugestões de exercícios ou novas soluções comentadas.

Se quiser, eu posso também:
- adicionar um `CONTRIBUTING.md` com regras rápidas;
- criar scripts de exemplo para carregar os bancos automaticamente;
- ou traduzir o README para outro idioma.

---

Arquivo gerado/atualizado: `README.md`
