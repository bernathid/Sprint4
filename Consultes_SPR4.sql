# Exercici 1

select count(transactions.id), user_id, name, surname
from transactions
join users on users.id = transactions.user_id
group by user_id
having count(transactions.id) > 30
order by count(transactions.id) desc
;

# Exercici 2
select iban, avg(amount), company_name
from credit_cards
join transactions on transactions.card_id = credit_cards.id
join companies on transactions.business_id = companies.company_id
group by iban, company_name
having companies.company_name = 'Donec Ltd';

# Exercici 3
/*Crea una nova taula que reflecteixi l'estat de les targetes de crèdit basat
 en si les últimes tres transaccions van ser declinades i genera la següent consulta:

Exercici 1
Quantes targetes estan actives?*/
create table tarj(
codi varchar(25) not null
);

select distinct transactions.id
into tarj
from transactions;