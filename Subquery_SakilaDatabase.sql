### Doing a subquery using Sakila Database 

## The objective is show only payment registries where amount is bigger than the amount average

# First, we have to sinalyze what database we want to use: 

use sakila;

# Now we can setup the query:

select * from payment
where amount > (
select avg(amount) 
from payment
);

# Just to verify the amount avarage:

select avg(amount) from payment;

 








