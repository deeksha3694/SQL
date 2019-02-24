/*usage of multiple JOIN and self JOIN in SQL*/
/*here is the famous ceo and there new projecta nd its competitors*/

CREATE TABLE ceo (id INTEGER PRIMARY KEY AUTOINCREMENT, first_name TEXT, last_name TEXT, company TEXT);
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Tim', 'Cook', 'Apple');
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Elon', 'Musk', 'Tesla');
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Steven', 'Mollenkopf', 'Qualcomm');
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Rami', 'Rahim', 'Juniper');
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Hyoung', 'Keun Lee', 'KIA Motors');
INSERT INTO ceo ( first_name, last_name, company) VALUES ( 'Rajeev', 'Suri', 'NOKIA');

CREATE TABLE com_current_invest(id INTEGER PRIMARY KEY, com_id INTEGER, project TEXT);
INSERT INTO com_current_invest (com_id, project) VALUES (1, "Air Power wireless Charger pad);
INSERT INTO com_current_invest (com_id, project) VALUES (2, "Semi truck electric truck");
INSERT INTO com_current_invest (com_id, project) VALUES (3, "Fingerprint sensor technology");
INSERT INTO com_current_invest (com_id, project) VALUES (4, "Modular LED automatic human sensor");
INSERT INTO com_current_invest (com_id, project) VALUES (5, "air balloon with high safety accident prevention");
INSERT INTO com_current_invest (com_id, project) VALUES (6, "3D touch screen phone");

CREATE TABLE competitors(id INTEGER PRIMARY KEY, comp_1 INTEGER, comp_2 INTEGER );
INSERT INTO competitors (comp_1, comp_2) VALUES (1,6);
INSERT INTO competitors (comp_1, comp_2) VALUES (2,5);
INSERT INTO competitors (comp_1, comp_2) VALUES (3,4);

SELECT ceo.first_name, ceo.last_name, ceo.company, com_current_invest.project FROM ceo JOIN com_current_invest ON ceo.id = com_current_invest.com_id;

SELECT a.company, b.company FROM competitors JOIN ceo a ON competitors.comp_1 = a.id JOIN ceo b ON competitors.comp_2=b.id;
