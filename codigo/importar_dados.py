import pandas as pd
from sqlalchemy import create_engine


# Caminho para o arquivo CSV.
file_path = 'tabela/hoteis_munnar - tabela.csv'

# Carregar o arquivo CSV em um DataFrame.
df = pd.read_csv(file_path)

# Configurações de conexão com o banco de dados MySQL.
user = 'CHANGE-ME'
password = 'CHANGE-ME'
database = 'sua_base_de_dados'
host = 'localhost'  # Altere se o banco de dados estiver em outro host
port = '3306'  # A porta padrão do MySQL é 3306

# Crie a URL de conexão
url = f'mysql+pymysql://{user}:{password}@{host}:{port}/{database}'

# Crie a conexão com o banco de dados
engine = create_engine(url)

# Nome da tabela no banco de dados MySQL
table_name = 'hoteis'

# Escreva os dados no banco de dados
df.to_sql(name=table_name, con=engine, if_exists='append', index=False)
