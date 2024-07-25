# Database using Active Record

The created database implements four classes: Cliente (Client), Endereco (Address), Produto (Product), and Pedido (Order).

- Each client has one (has_one) address, and the address belongs to (belongs_to) a client, implementing a 1x1 (one-to-one) relationship.
- Each client has many (has_many) orders, and the orders belong to (belongs_to) a client, implementing a 1xn (one-to-many) relationship.
- Each product is in many orders, and each order contains many products, implementing an nxn (many-to-many) relationship.

## Getting Started

To start the program, run the command:

```sh
sh criaTudo.sh
```

This command will create the tables for each class and then initialize some records in each table.

To make changes to the database, run the main program:

```sh
ruby main.rb
```

## Commands

### Insert

To insert a client, type:

```sh
insere clientes cpf="..." nome="..." sobrenome="..." logradouro="..." cep="..."
```

- The CPF field is mandatory, unique, and must contain 11 digits.
- The Nome (Name) and Sobrenome (Surname) fields are mandatory and must contain between 2 and 50 characters.
- The Logradouro (Address) and CEP (Postal Code) fields, from the Endereco class, are mandatory.
- The CEP field must contain 8 digits.

To insert a product, type:

```sh
insere produtos nome="..." preco="..." estoque="..." pedidos="...,..."
```

- The Nome (Name) field is mandatory and must be unique.
- The Preco (Price) field is mandatory and must be a number.
- The Estoque (Stock) field is optional.
- The Pedidos (Orders) field is optional, but if included, it must contain the codes of the orders in which the product should be included, separated by commas. 

To insert an order, type:

```sh
insere pedidos cpf="..." codigo="..." produtos="...,..."
```

- The CPF field is mandatory and must contain the CPF of the client to whom the order belongs.
- The Codigo (Code) field is mandatory, unique, and must contain 4 digits.
- The Produtos (Products) field is optional, but if included, it must contain the names of the products to be included in the order, separated by commas.

### Update

To update a client, type:

```sh
altera clientes cliente="..." cpf="..." nome="..." sobrenome="..." logradouro="..." cep="..."
```

- The Cliente (Client) field must contain the CPF of the client to be updated.
- The other fields are optional and indicate the attribute to be updated in the client.

To update a product, type:

```sh
altera produtos produto="..." nome="..." preco="..."
```

- The Produto (Product) field must contain the name of the product to be updated.
- The other fields are optional and indicate the attribute to be updated in the product.

To update an order, type:

```sh
altera pedidos pedido="..." cpf="..." codigo="..."
```

- The Pedido (Order) field must contain the code of the order to be updated.
- The other fields are optional and indicate the attribute to be updated in the order.

### Delete

To delete a client, type:

```sh
exclui clientes cpf="..."
```

The CPF field contains the CPF of the client to be deleted.

To delete a product, type:

```sh
exclui produtos nome="..."
```

The Nome (Name) field contains the name of the product to be deleted.

To delete an order, type:

```sh
exclui pedidos codigo="..."
```

The Codigo (Code) field contains the code of the order to be deleted.

### List

To list the clients, type:

```sh
lista clientes
```

To list the orders, type:

```sh
lista pedidos
```

To list the products, type:

```sh
lista produtos
```

To list the relationship between orders and products, type:

```sh
lista pedidos produtos
```

## Details
- When deleting a client, their address and orders are also deleted. However, deleting an order does not delete the client.
- When deleting a product, the product is removed from the orders that contain it. When deleting an order, the order is removed from the related orders list for a product.
