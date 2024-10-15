# Análise de Dados - Analista Informações Gerenciais Pleno
 
## Parte 1 - Cenários I e II da Atividade

- Script do Case 1 (SQL)
- Estudo Case 2 (PDF)

## Parte 2 - Análise Preditiva de Conversão de Leads

## Descrição do Projeto

Este projeto visa realizar uma análise preditiva para prever a taxa de conversão de leads com base em dados históricos. Utilizando bibliotecas de machine learning e manipulação de dados, o objetivo é estimar a probabilidade de um lead avançar em diferentes etapas, desde o início até a negociação final. O modelo final prioriza leads com maior probabilidade de conversão.

## Estrutura do Projeto

1. **Importação de Bibliotecas**:
    - `pandas`: Para manipulação de dados.
    - `sklearn`: Para a construção de modelos de machine learning.
    - `RandomForestClassifier`: Para o treinamento do modelo de classificação.
    - `LabelEncoder`: Para converter variáveis categóricas em numéricas.

2. **Carregamento e Limpeza de Dados**:
    - Os dados são carregados de um arquivo CSV e processados. Colunas irrelevantes são removidas, valores nulos são tratados, e variáveis categóricas são convertidas para um formato numérico adequado.

3. **Pré-processamento**:
    - Conversão de colunas que contêm números representados como strings com vírgulas decimais para o formato float.
    - Uso de `LabelEncoder` para variáveis categóricas como `Status_Meta`.

4. **Modelagem**:
    - O modelo de machine learning escolhido é o **RandomForestClassifier**, com ajuste de hiperparâmetros via `GridSearchCV`.
    - Outras abordagens como **Regressão Logística** e **XGBoost** também foram testadas para comparar o desempenho.

5. **Avaliação**:
    - O desempenho do modelo foi avaliado usando **Mean Squared Error (MSE)** e o **R² Score** para determinar a eficácia das previsões.

## Resultados

- O **XGBoost** obteve o melhor desempenho com **MSE: 0.228815** e **R²: 0.994783**, superando o RandomForest e a Regressão Logística.
- O modelo pode ser utilizado para prever a taxa de conversão de leads e ajudar na priorização de esforços comerciais.

## Como Executar o Projeto

1. Clone o repositório para sua máquina local:
    ```bash
    git clone https://github.com/marcelobarbugli/portoDataCase
    ```

2. Instale as dependências necessárias:
    ```bash
    pip install -r requirements.txt
    ```

3. Execute o notebook no ambiente Jupyter ou Google Colab.

4. Os dados de entrada devem estar no formato CSV, com as colunas especificadas no notebook.

## Bibliotecas Utilizadas

- `pandas`
- `scikit-learn`
- `xgboost`
- `matplotlib` (para visualizações, se necessário)

## Melhorias Futuras

- Explorar mais técnicas de balanceamento de dados, caso haja desbalanceamento de classes significativo.
- Ajustar hiperparâmetros com métodos como `RandomSearchCV` para otimização mais eficiente.
- Integrar visualizações gráficas para facilitar a interpretação dos resultados.


Desenvolvido por: Marcelo Dozzi Barbugli - 15/10/2024
