--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2746

CREATE TABLE virus (
  id INTEGER,
  name VARCHAR(255)
);


INSERT INTO virus(id, name)
VALUES 
      (1, 'H1RT'),
      (2, 'H7H1'),
      (3, 'HUN8'),
      (4, 'XH1HX'),
      (5, 'XXXX');

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE virus; --


select * from virus;

-- UPDATE virus SET name = regexp_replace(name, 'H1', 'X'); Não pode ser utilizado
--update virus set name = replace(name, 'H1', 'X'); Não pode ser utilizado

select replace(name, 'H1', 'X') from virus;