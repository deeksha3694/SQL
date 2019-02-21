CREATE TABLE store (id INTEGER PRIMARY KEY, item TEXT, price INTEGER, ailse INTEGER, quatity INTEGER );

INSERT INTO store VALUES(1,"chess",30,2,30);
INSERT INTO store VALUES(2,"ludo",25,2,20);
INSERT INTO store VALUES(3,"business",23,2,31);
INSERT INTO store VALUES(4,"SnakeAndLadder",24,2,23);
INSERT INTO store VALUES(5,"bicycle",100,5,15);
INSERT INTO store VALUES(6,"swimsuit",19,4,20);
INSERT INTO store VALUES(7,"gaugoles",12,4,13);
INSERT INTO store VALUES(8,"Swimcap",13,4,12);
INSERT INTO store VALUES(9,"fins",21,4,32);
INSERT INTO store VALUES(10,"tyres",23,5,12);
INSERT INTO store VALUES(11,"athlete Tracks",21,3,21);
INSERT INTO store VALUES(12,"shoes",25,1,100);
INSERT INTO store VALUES(13,"athelte T-shirt",13,3,25);
INSERT INTO store VALUES(14,"Cycle spike",24,5,25);
INSERT INTO store VALUES(15,"Air pumps",21,5,67);

SELECT * FROM store ORDER BY price;
SELECT item, SUM(quatity) FROM store GROUP BY item;
