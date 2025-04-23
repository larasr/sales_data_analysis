# Análise de Dados de Vendas

## Objetivo Principal
Criar um painel interativo com as informações de vendas, a fim de extrair insights valiosos sobre as movimentações realizadas.

## Descrição
Este projeto é uma análise de dados que utiliza **Excel**, **SQL** e **Power BI** para tratar, extrair e visualizar dados. O uso dessas ferramentas permite criar um fluxo de trabalho completo de análise de dados, desde a coleta até a visualização dos resultados.

## Conjunto de Dados
O conjunto de dados escolhido pode ser acessado no Kaggle: [Sales Data](https://www.kaggle.com/datasets/jehanzaibbhatti/sales-data?resource=download)

## O que este projeto faz
- Trata, limpa os dados e cria análises mais simples utilizando **Excel**.
- Cria e executa consultas **SQL** para análises mais elaboradas.
- Cria relatório interativo com **Power BI**.

## Ferramentas Utilizadas
- **Python**: Download do conjunto de dados e transformação para arquivo .xlsx (formato Excel).
- **Excel**: Carregamento, tratamento, limpeza de dados e análises rápidas.
- **PostgreSQL**: Carregamento para o banco de dados e execução de consultas SQL.
- **Power BI**: Criação de relatório interativo e visualizações.

## Como Usar
### 1. Python
- O arquivo `extract_data.py` contém o código necessário para baixar os dados via Kaggle e transformar em arquivo .xlsx.

### 2. Excel
- O arquivo `raw_data.xlsx` extraído via Python contém os dados originais.
- O arquivo `cleaned_data.xlsx` contém os dados tratados, que podem ser abertos no Excel.

### 3. SQL
- As consultas SQL podem ser executadas em um editor de SQL como pgAdmin ou DBeaver.
- O arquivo `queries.sql` contém todas as consultas necessárias para informações mais relevantes.

### 4. Power BI
- O arquivo `report.pbix` pode ser aberto no Power BI Desktop para visualizar o relatórios interativo e os gráficos.

## Estrutura do Repositório:
- **data/**: Dados brutos e tratados.
  - `raw_data.csv`: Dados originais no formato csv.
  - `raw_data.xlsx`: Dados originais no formato xlsx.
  - `cleaned_data.xlsx`: Dados tratados no formato xlsx.
- **sql/**: Consultas SQL utilizadas no projeto.
  - `queries.sql`: Consultas SQL para extrair os dados.
- **powerbi/**: Relatórios do Power BI.
  - `report.pbix`: Relatório Power BI com visualizações.
