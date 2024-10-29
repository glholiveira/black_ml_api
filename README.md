
# Django Core - Ecossistema de Micro Serviços

Este projeto constitui o **núcleo** do ecossistema de micro serviços desenvolvido para a Black, com a estrutura básica de configuração para um projeto Django. Ele inclui:
- Configurações de idioma e localização;
- Configurações de conexão ao banco de dados PostgreSQL.

---

## Pré-requisitos

Para rodar este projeto, você precisará das seguintes ferramentas instaladas:

- Python 3.8+
- Django (versão especificada no `requirements.txt`)
- PostgreSQL
- Docker e Docker Compose (opcional, para deploy containerizado)

### Instalação do Django e Dependências

Certifique-se de instalar as dependências antes de executar o projeto:

```bash
pip install -r requirements.txt
```

---

## Configuração do Banco de Dados

No arquivo de configuração Django (`settings.py`), você encontrará as seguintes configurações para o PostgreSQL:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'nome_do_banco',
        'USER': 'seu_usuario',
        'PASSWORD': 'sua_senha',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
```

> **Nota**: Substitua `nome_do_banco`, `seu_usuario` e `sua_senha` pelas credenciais apropriadas do banco de dados.

### Configurações de Idioma e Localização

Este projeto possui as seguintes configurações de idioma e localização:

```python
LANGUAGE_CODE = 'pt-br'
TIME_ZONE = 'America/Sao_Paulo'
USE_I18N = True
USE_L10N = True
USE_TZ = True
```

Essas configurações garantem que o sistema opere no fuso horário e idioma brasileiros.

---

## Como Executar

Para rodar o servidor localmente, utilize o comando:

```bash
python manage.py runserver
```

Se estiver usando Docker, suba o contêiner com:

```bash
docker-compose up -d
```

> Certifique-se de que o PostgreSQL está configurado corretamente no Docker Compose, caso deseje usar uma abordagem containerizada.

---

## Executando Migrações

Para preparar o banco de dados, execute as migrações com o comando:

```bash
python manage.py migrate
```

---

## Estrutura do Projeto

- **Django Core**: Contém a configuração principal do Django, incluindo `settings.py` e o `manage.py`.
- **Micro Serviços**: Este core permite a integração fácil com outros micro serviços do ecossistema.

---

## Referências

- [Documentação do Django](https://docs.djangoproject.com/)
- [Documentação do PostgreSQL](https://www.postgresql.org/docs/)

---

Feito com ❤️ para simplificar o desenvolvimento de um ecossistema modular e escalável.
