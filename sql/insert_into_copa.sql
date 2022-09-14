USE copa;
INSERT INTO GRUPOS (NOME) VALUES
						('A'), ('B'),
						('C'), ('D'),
						('E'), ('F'),
						('G'), ('H');

SELECT * FROM GRUPOS;

-- FALTA COLOCAR OS NOMES
INSERT INTO TIMES (NOME, ABREVIAÇÃO, SCORE, FK_ID_GRUPOS)
				  VALUES ('CAT',1442.0,1), ('EQU',1463.7,1),
                         ('HOL',1679.4,1), ('SEN',1584.6,1),
                         ('EUA',1635.0,2), ('ING',1737.5,2),
                         ('IRA',1558.6,2), ('GAL',1582.1,2),
						 ('ARG',1770.7,3), ('AUS',1483.7,4), 
                         ('ALE',1659.0,5), ('BEL',1821.9,6),
                         ('BRA',1837.6,7), ('COR',1526.0,8),
						 ('DIN',1665.5,4), ('COS',1500.1,5),
                         ('CAN',1473.8,6), ('CAM',1485.0,7),
                         ('GAN',1393.5,8), ('MEX',1649.6,3), 
                         ('FRA',1764.9,4), ('ESP',1716.9,5),
                         ('CRO',1632.2,6), ('SUI',1621.4,7),
                         ('POR',1678.7,8), ('POL',1546.2,3), 
                         ('TUN',1507.9,4), ('JAP',1554.7,5),
                         ('MAR',1558.4,6), ('SER',1549.5,7),
                         ('URU',1641.0,8), ('ARA',1435.7,3);
                         
SELECT * FROM Times;

SELECT g.NOME AS Grupo, t.NOME AS Selecao, t.SCORE AS Pontuacao 
		FROM GRUPOS AS g INNER JOIN TIMES AS t 
        ON (g.FK_ID_GRUPOS = t.ID) 
        ORDER BY SCORE DESC;
                         