# README

Pré-requisitos

* Ruby version '2.7.0'

Tecnologias

* Database Mysql

* Ruby on rails

* Rspec

* capybara

Usabilidade

Criar cliente

# POST  Url: 

http://localhost:3000/api/v1/requesters

Exemplo de requisição:

{
    "nome":"Lima Silva",
    "cnpj":"92192378000152",
    "telefone":"41 98676654",
    "telefone2":"",
    "nascimento":"12/04/1983",
    "endereco":"Alexandre Salata",
    "endereco2":"",
    "numero":"23",
    "uf": "PR" 
}

Exemplo de retorno:

{
    "status": "SUCCESS",
    "message": "Saved client",
    "data": {
        "id": 28,
        "nome": "Lima Silva",
        "cnpj": "92192378000152",
        "telefone": "41 98676654",
        "telefone2": "41 98676654",
        "nascimento": "12/04/1983",
        "endereco": "Alexandre Salata",
        "endereco2": "Alexandre Salata",
        "numero": 23,
        "uf": "PR",
        "created_at": 2021-03-10 13:59:00.839527,
        "updated_at": 2021-03-10 13:59:00.839527
    }
}


2) Criar crédito

# POST   Url:

http://localhost:3000/api/v1/credits

Exemplo de requisição:

{
   "valor": "3000.00",
   "requester_id": "28"
}

Exemplo de retorno:

{
    "status": "SUCCESS",
    "message": "Saved credit",
    "data": {
        "id": 7,
        "valor": "3000.0",
        "aceitar": "s",
        "data_credito": "2021-03-11",
        "requester_id": 28,
        "created_at": "2021-03-11T14:09:14.291Z",
        "updated_at": "2021-03-11T14:09:14.291Z"
    }
}


3) Criar emprestimo

# POST  Url:

http://localhost:3000/api/v1/loans

Exemplo de requisição:
 
{
    "valor": "3000.00",
    "prazo": 5,
    "taxa": 0.015,
    "credit_id": 7
}

Exemplo de retorno:


{
    "status": "SUCCESS",
    "message": "Saved loan",
    "data": "103"
}


4) Visualizar parcelas

# GET   Url:

http://localhost:3000/api/v1/loans/103

Exemplo de retorno:

{
    "status": "SUCCESS",
    "message": "Loaded article",
    "data": [
        {
            "id": 36,
            "parcela": 1,
            "valorParcela": "627.27",
            "pago": "a",
            "vencimento": "2021-04-11",
            "loan_id": 103,
            "created_at": "2021-03-11T14:10:05.397Z",
            "updated_at": "2021-03-11T14:10:05.397Z"
        },
        {
            "id": 37,
            "parcela": 2,
            "valorParcela": "627.27",
            "pago": "a",
            "vencimento": "2021-05-11",
            "loan_id": 103,
            "created_at": "2021-03-11T14:10:05.851Z",
            "updated_at": "2021-03-11T14:10:05.851Z"
        },
        {
            "id": 38,
            "parcela": 3,
            "valorParcela": "627.27",
            "pago": "a",
            "vencimento": "2021-06-11",
            "loan_id": 103,
            "created_at": "2021-03-11T14:10:06.461Z",
            "updated_at": "2021-03-11T14:10:06.461Z"
        },
        {
            "id": 39,
            "parcela": 4,
            "valorParcela": "627.27",
            "pago": "a",
            "vencimento": "2021-07-11",
            "loan_id": 103,
            "created_at": "2021-03-11T14:10:06.714Z",
            "updated_at": "2021-03-11T14:10:06.714Z"
        },
        {
            "id": 40,
            "parcela": 5,
            "valorParcela": "627.27",
            "pago": "a",
            "vencimento": "2021-08-11",
            "loan_id": 103,
            "created_at": "2021-03-11T14:10:06.883Z",
            "updated_at": "2021-03-11T14:10:06.883Z"
        }
    ]

