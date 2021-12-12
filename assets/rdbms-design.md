# RDBMS Design

- Create data structures to support your use cases
- Write future-proof use cases

## RDBMS Features

- [ ] ACID Properties
- [ ] DB Transactions
- [ ] Data Modelling using Normalization techniques
- [ ] Constraints, within table FD and outside of table as RELATIONSHIPS
- [ ] View
- [ ] Triggers, Hooks, Functions
- [ ] Access Control, Security Layer
- [ ] Datawarehouses > DataMarts > OLTP, OLAP, Star-Schema

## Questions

- does cascade delete remove the entire foreign key records?
  - No, only the Fk mapping
- [ENUMS vs LOOUP-TABLEs in db? Which one?](https://stackoverflow.com/questions/4293476/sql-advantages-of-an-enum-vs-a-one-to-many-relationship)
  - ENUMS are NOT-STANDARD, cannot change to other RDBMS
  - ENUMS reduces the cost of joins operation and Fk constrains
- [why are joins expensive?](https://stackoverflow.com/questions/173726/when-and-why-are-database-joins-expensive)
  - [cost of a join](https://www.brianlikespostgres.com/cost-of-a-join.html)
- How to design groupings in DB?
- How to design a authentication and authorization system in db?
- Dynamic schema generation for new content types
- Polymorphic Association and Bridge Tables, OLAP - Star Schema implementation

## POstgres SQL

- custom TYPES like with ENUMS
