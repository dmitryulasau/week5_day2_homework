# MOVIE THEATER ERD

## Tables

- Customer
- Ticket
- Concession
- Movie
- Payment
- Seat

## ERD Cardinality

- ----------|- &nbsp;&nbsp;One
- ----------<- &nbsp;Many
- ---------||- &nbsp;&nbsp;&nbsp;One (and only one)
- --------O-|- &nbsp;&nbsp;Zero or one
- ---------|<- &nbsp;&nbsp;One or many
- ---------O<- &nbsp;Zero or many

## RELATIONS

[Customer] -||------O<- [Ticket] /&nbsp;[1 : many] &nbsp; (customer can have 0 or many tickets, ticket could have one and only one customer)

[Customer] ->O------O<- [Concession] &nbsp;[many : many] &nbsp; (customer can buy 0 or many of concessions and concessions could have 0 or many customers)

[Customer] -||------O<- [Payment] &nbsp;[1 : many] &nbsp; (customer can make 0 or many payments (book a ticket online, buy popcorn inside, etc.), payment could have one and only customer)

[Movie] -||------|<- [Ticket] [1 : many] (movie can have 1 or many tickets, ticket could have one and only one movie )

[Ticket] -|--------|- [Seat] [1 : 1] (ticket can have only one seat, seat belongs to only one ticket)

[Ticket] -|--------|- [Payment] [1 : 1] (ticket can have only one payment, payment belongs to only one ticket)

## License

Dmitry Ulasau
