# Análise de Dados de Vendas

## Objetivo Principal
Criar um painel interativo com as informações de vendas de uma loja de produtos relacionados ao ciclismo, a fim de extrair insights valiosos sobre as movimentações realizadas.

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

**OBS:** na pasta em que ambos os arquivos estão, contém outros dois arquivos .csv de mesmo nome. Qual a finalidade?
- O arquivo `raw_data.csv` é o que foi baixado originalmente do kaggle.
- O arquivo `cleaned_data.csv` foi necessário para carregar os dados na tabela no banco de dados, dado que não suporta a extensão .xlsx para a carga.

### 3. SQL
- As consultas SQL podem ser executadas em um editor de SQL como pgAdmin ou DBeaver.
- O arquivo `create_table.sql` contém a estrutura de criação da tabela necessária para carregar e armazenar os dados no banco.
- O arquivo `load_data.sql` contém uma linha de comando via PSQL para carregar os dados da planilha para a tabela criada (necessário usar o arquivo final .csv).
- O arquivo `queries.sql` contém algumas consultas a fim de obter informações relevantes e complexas sobre os dados. Estas consultas podem ser utilizadas na própria visualização de dados, assim como servir de base para pensar em quais gráficos e tabelas que devem ser inseridos, para que seja proporcionado um dashboard interativo que agregue valor ao negócio.

### 4. Power BI
- O arquivo `sales_data_report.pbit` pode ser aberto no Power BI Desktop para visualizar o relatório de forma interativa.
- O arquivo `sales_data_report.png` representa a visão final do dashboard construído.
- O arquivo `template_dashboard_vendas.svg` contém o template que foi usado como plano de fundo no dashboard.

## Estrutura do Repositório
- **data/**: Dados brutos e tratados.
  - `extract_data`: Código de extração em python.
  - `raw_data.csv`: Dados originais no formato csv.
  - `raw_data.xlsx`: Dados originais no formato xlsx.
  - `cleaned_data.csv`: Dados tratados no formato csv.
  - `cleaned_data.xlsx`: Dados tratados no formato xlsx.
- **sql/**: Consultas SQL utilizadas no projeto.
  - `create_table.sql`: Criação da tabela.
  - `load_data.sql`: Carregando dos dados para a tabela.
  - `queries.sql`: Consultas SQL para extrair informações.
- **powerbi/**: Relatórios do Power BI.
  - `sales_data_report.pbit`: Relatório Power BI.
  - `sales_data_report.png`: Imagem do dashboard.
  - `template_dashboard_vendas.svg`: Template usado no dashboard.
- Demais arquivos: .gitignore e requirements.txt. **Qual o uso?** Ambos os arquivos foram inseridos para denotar o uso de um ambiente virtual python. É perceptível que a abrangência deste projeto, não necessita de um ambiente virtual, porém para fins de aprendizado, foi criado para exercitar a criação, uso e manutenção. Caso deseje usar (opcional), crie seu ambiente virtual e baixe as bibliotecas que constam no arquivo .txt. Caso não use, tenha a importação das bibliotecas localmente.
 
## Considerações
- O uso do Python para realizar o download do conjunto de dados e convertê-lo de .csv para .xlsx é devido a facilidade.
- Houve poucos tratamentos no Excel, visto que os dados já estavam, originalmente, bem adequados para análise. A fins de facilitação, as colunas finais foram renomeadas e a coluna `Age_Grup` foi transformada, removendo o intervalo de indicação do grupo. Para tal, considera-se:
  - Youth: menor que 25 anos;
  - Young Adults: entre 25 e 34 anos;
  - Adults: entre 35 anos e 63;
  - Seniors: acima de 64 anos;
- De tal modo, as análises mais detalhadas foram realizadas mediante queries via SQL, devido a possibilidade de agrupar e limitar a quantidade de produtos.
- No dashboard, foi utilizada a moeda dólar (Estados Unidos), devido ao formato original do conjunto de dados.

## Conclusões
A ideia inicial deste projeto era exercitar algumas ferramentas comumente utilizadas em projetos de Análise de Dados, e propositalmente, foi escolhido um conjunto de dados mais simples. De tal modo, destaco alguns pontos durante seu desenvolvimento:
- O Excel foi pouco utilizado, dado que não houve a necessidade de adicionar colunas de métricas mais simples ou realizar algum tipo de tratamento, pois os dados já estavam bem apropriados para tal;
- As queries desenvolvidas não foram precisadamente utilizadas - como views, por exemplo - no dashboard, mas auxiliaram na compreensão de alguns padrões em relação as vendas e aos grupos;
- Pelo dashboard, é possível extrair alguns insights bem evidentes em relação as vendas realizadas:

  1. Acontecem quase que 50% pelos Adultos;
  2. Há pouca compra realizada pelos Idosos (menos de 1%), o que trás duas questões de negócios
     - Esse comportamento é esperado, devido aos produtos que são vendidos e não associam a uma prática desta categoria?
     - Os produtos vendidos não abrangem as reais necessidades desta categoria?
  3. O gênero masculino realiza mais compras que o feminino;
  4. A categoria mais vendida é a de Acessório;
  5. Os Estados Unidos é o país de maior faturamento;
  6. A categoria mais faturada é a de Bicicleta;
  7. O ano de 2015 foi o de maior faturamento e lucro;

- Demais insights e análises precisas de negócios podem ser extraídas mediante o uso dos filtros e a interação completa do dashbord.
- Para tal, finaliza-se a descrição deste projeto com um breve vídeo de demonstração em relação ao uso do dashboard (com alguns filtros e modos de uso):

  [Demonstração - Dashboard de Vendas no Power BI](https://youtu.be/-utswoOCIGY)

## Contato 
Se quiser dar um feedback, sugestões de melhorias, tirar uma dúvida ou simplesmente conversar sobre o mundo de Análise de Dados, sinta-se a vontade para entrar em contato comigo:
📩 larasrodrigues19@gmail.com 
