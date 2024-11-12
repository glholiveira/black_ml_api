# Use uma imagem base do Python
FROM python:3.12

# Define o diretório de trabalho
WORKDIR /black_ml_api

# Instala as dependências do Poetry
RUN pip install uv

# Copia os arquivos do projeto
COPY pyproject.toml uv.lock ./

# Instala as dependências do projeto
RUN uv sync

# Copia o restante do código do Django
COPY . .

# Exponha a porta que o Gunicorn vai usar
EXPOSE 8000

# Comando para iniciar o Gunicorn
CMD ["uv", "run", "gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]
