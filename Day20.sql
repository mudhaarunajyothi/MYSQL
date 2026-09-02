Day-20:
*********
(02/09/26)

E-R Diagrams or E-R Models:
--------------------------------
E-R stands for entity relationship.
in er diagrams  attributes are representated in elipse
in er diagrams to establish the relationships we use rhombus or diamond 
in er diagrams we use line to connect 

Entity:
-------------
entity is nothing but a table.
it is represent in rectangle.

we have 2 kinds of entities. they are
1.tangable 
it can be seen and touched
eg: car,mobile,person

2.intangable entity
it cannot be seen and touched.
eg: bank account

Types of entities:(2types)
------------------------------
1. strong entity/strong table
when a table that contains primary key then it is said to strong entity
and it represents by  single rectangle.

2.weak entity:
when a table that doesn't contain primary key then it is said to weak entity.
and it represented by double rectangle.(rectangle inside another rectangle)


Attributes:
-------------
attributes nothing but columns 
and it represented by elipse
the entity contain one or more attributes

types of attributes:
----------------------
1.simple attribute:
the attributes that cannot be sub-divided.
it represents in elipse
eg: age,dob

2.composite attribute:
the attribute can be sub-divided 
eg: name (divides like first_name,last-name)

3.singlevalue attribute:
the row contain single value
eg: name,adhaar id

4.multivalue attribute:
the attribute contains more then one value.
it represents in double elipse.(elipse inside another elipse)
eg: mobile no,email

5.key attribute:
the attribute contain primary key.
the is represented by elipse underline.(elipse inside underline)
 
6.derivied attribute:
the attribute that depends on another attribute.
and it represents in doted elipse.
eg: age


relationships:
----------------
the relationships are used for establishing the relationships between tables.

types of relationships:
---------------------------
1.unary relationship:
the relationship associated with one 

2.binary relationship.
the relationships between the two tables.

3.ternary relationship:
the relationship between the three tables.

4.n relationship:
the relationships between  more than one table.

types of relationships association:
-------------------------------------
1.one-one relationship
One record in Table A is related to only one record in Table B.
eg:One person → One passport

2.one-many relationship
One record in Table A can be related to many records in Table B.
eg:One department → Many employees

3.many-one relationship
Many records in Table A can be related to one record in Table B.
eg:Many employees → One department

4.many-many relationship
Many records in Table A can be related to many records in Table B.
eg:Many students → Many courses

