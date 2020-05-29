CREATE DATABASE empresaBeta;

 

USE empresaBeta;

 

CREATE TABLE cargos (

                codCargo             smallint NOT NULL,

                cargo                     varchar(30),

                CONSTRAINT cargosPK PRIMARY KEY (codCargo)

    );

 

                -- CREATE NONCLUSTERED INDEX idxCargo ON cargos (cargo);

                -- drop index cargos.idxCargo

 

CREATE TABLE estados(

 

                codEstado           smallint NOT NULL,

                estado                  varchar(40) NOT NULL,

                sigla                       char(2) NOT NULL,

                habitantes          int NOT NULL DEFAULT 0,

                codIBGE                              char(2),

                CONSTRAINT estadosPK PRIMARY KEY (codEstado)

    );

 

-- CREATE INDEX idxEstado ON estados (estado);

 

CREATE TABLE cidades(

                codCidade          int          NOT NULL,

                codEstado           smallint,

                cidade                  varchar(50),

                habitantes          int,

                codIBGE                              char(5),

                CONSTRAINT cidadesPK PRIMARY KEY (codCidade)

    );

 

ALTER TABLE cidades ADD CONSTRAINT estadosFK FOREIGN KEY (codEstado)

REFERENCES estados (codEstado);

 

-- CREATE NONCLUSTERED INDEX idxCodEstado ON cidades (codEstado);

-- CREATE UNIQUE INDEX unqCodIBGE ON cidades (codIBGE)

 

CREATE TABLE empregados (

                re                                           int NOT NULL,

                codCidade          int,

                codCargo             smallint,

                nomeEmpregado            varchar(50),

                salario                   decimal(10,2),

                CONSTRAINT empregadosPK PRIMARY KEY (re)

    );

 

ALTER TABLE empregados ADD CONSTRAINT cidadesFK FOREIGN KEY (codCidade)

REFERENCES cidades (codCidade);

 

-- ver o q eh isso

-- CREATE NONCLUSTERED INDEX idxCodCidade ON empregados (codCidade);

-- CREATE NONCLUSTERED INDEX idxCodCargo ON empregados (codCargo);

 

 

ALTER TABLE empregados ADD CONSTRAINT cargosFK FOREIGN KEY (codCargo)

REFERENCES cargos (codCargo);

 

INSERT INTO cargos (codCargo, cargo)

VALUES (1, 'Gerente Administrativo'),

                               (2, 'Assistente Administrativo'),

                               (3, 'Auxiliar de Produção'),

                               (4, 'Engenheiro de Produção'),

                               (5, 'Supervisor de Qualidade'),

                               (6, 'Analista de Suporte'),

                               (7, 'Analista de Sistemas');

 

-- DELETE FROM estados;

 

INSERT INTO estados (codEstado, estado, sigla, codIBGE)

VALUES (1, 'ACRE', 'AC', '12'),

                               (2, 'ALAGOAS', 'AL', '27'),

                               (3, 'AMAZONAS', 'AM', '13'),

                               (4, 'AMAPÁ', 'AP', '16'),

                               (5, 'BAHIA', 'BA', '29'),

                               (6, 'CEARA', 'CE', '23'),

                               (7, 'DISTRITO FEDERAL', 'DF', '53'),

                               (8, 'ESPIRITO SANTO', 'ES', '32'),

                               (9, 'GOIAS', 'GO', '52'),

                               (10, 'MARANHAO', 'MA', '21'),

                               (11, 'MINAS GERAIS', 'MG', '31'),

                               (12, 'MATO GROSSO DO SUL', 'MS', '50'),

                               (13, 'MATO GROSSO', 'MT', '51'),

                               (14, 'PARA', 'PA', '15'),

                               (15, 'PARAIBA', 'PB', '25'),

                               (16, 'PERNAMBUCO', 'PE', '26'),

                               (17, 'PIAUI', 'PI', '22'),

                               (18, 'PARANA', 'PR', '41'),

                               (19, 'RIO DE JANEIRO', 'RJ', '33'),

                               (20, 'RIO GRANDE DO NORTE', 'RN', '24'),

                               (21, 'RONDONIA', 'RO', '11'),

                               (22, 'RORAIMA', 'RR', '14'),

                               (23, 'RIO GRANDE DO SUL', 'RS', '43'),

                               (24, 'SANTA CATARINA', 'SC', '42'),

                               (25, 'SERGIPE', 'SE', '28'),

                               (26, 'SÃO PAULO', 'SP', '35'),

                               (27, 'TOCANTINS', 'TO', '17');

       

INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

VALUES                (1, 21, 'Alta Floresta D Oeste', 706550, '00015'),

                                               (2, 21, 'Alto Alegre dos Parecis', 923503, '00379'),

                                               (3, 21, 'Alto Paraíso', 443142, '00403'),

                                               (4, 21, 'Alvorada D Oeste', 390853, '00346'),

                                               (5, 21, 'Ariquemes', 1820963, '00023'),

                                               (6, 21, 'Buritis', 1386014, '00452'),

                                               (7, 21, 'Cabixi', 649735, '00031'),

                                               (8, 21, 'Cacaulândia', 1650879, '00601'),

                                               (9, 21, 'Cacoal', 598837, '00049'),

                                               (10, 21, 'Campo Novo de Rondônia', 1404195, '00700'),

                                               (11, 21, 'Candeias do Jamari', 1261340, '00809'),

                                               (12, 21, 'Castanheiras', 1436917, '00908'),

                                               (13, 21, 'Cerejeiras', 979704, '00056'),

                                               (14, 21, 'Chupinguaia', 49260, '00924'),

                                               (15, 21, 'Colorado do Oeste', 112790, '00064'),

                                               (16, 21, 'Corumbiara', 1712598, '00072'),

                                               (17, 21, 'Costa Marques', 1671525, '00080'),

                                               (18, 21, 'Cujubim', 288363, '00940'),

                                               (19, 21, 'Espigão D Oeste', 1805363, '00098'),

                                               (20, 21, 'Governador Jorge Teixeira', 1175886, '01005'),

                                               (21, 21, 'Guajará-Mirim', 1179193, '00106'),

                                               (22, 21, 'Itapuã do Oeste', 1566553, '01104'),

                                               (23, 21, 'Jaru', 1817810, '00114'),

                                               (24, 21, 'Ji-Paraná', 688683, '00122'),

                                               (25, 21, 'Machadinho D Oeste', 1634003, '00130'),

                                               (26, 21, 'Ministro Andreazza', 36085, '01203'),

                                               (27, 21, 'Mirante da Serra', 55176, '01302'),

                                               (28, 21, 'Monte Negro', 489003, '01401'),

                                               (29, 21, 'Nova Brasilândia D Oeste', 537669, '00148'),

                                               (30, 21, 'Nova Mamoré', 1766720, '00338'),

                                               (31, 21, 'Nova União', 1281706, '01435'),

                                               (32, 21, 'Novo Horizonte do Oeste', 757972, '00502'),

                                               (33, 21, 'Ouro Preto do Oeste', 1383194, '00155'),

                                               (34, 21, 'Parecis', 990884, '01450'),

                                               (35, 21, 'Pimenta Bueno', 183770, '00189'),

                                               (36, 21, 'Pimenteiras do Oeste', 1742801, '01468'),

                                               (37, 21, 'Porto Velho', 1916782, '00205'),

                                               (38, 21, 'Presidente Médici', 466820, '00254'),

                                               (39, 21, 'Primavera de Rondônia', 441861, '01476'),

                                               (40, 21, 'Rio Crespo', 1268579, '00262'),

                                               (41, 21, 'Rolim de Moura', 387966, '00288'),

                                               (42, 21, 'Santa Luzia D Oeste', 1966437, '00296'),

                                                (43, 21, 'São Felipe D Oeste', 1904617, '01484'),

                                               (44, 21, 'São Francisco do Guaporé', 817442, '01492'),

                                               (45, 21, 'São Miguel do Guaporé', 1500841, '00320'),

                                               (46, 21, 'Seringueiras', 144410, '01500'),

                                               (47, 21, 'Teixeirópolis', 1313790, '01559'),

                                               (48, 21, 'Theobroma', 660767, '01609'),

                                               (49, 21, 'Urupá', 516947, '01708'),

                                               (50, 21, 'Vale do Anari', 1572846, '01757'),

                                               (51, 21, 'Vale do Paraíso', 808133, '01807'),

                                               (52, 21, 'Vilhena', 503681, '00304'),

                                               (53, 1, 'Acrelândia', 540100, '00013'),

                                               (54, 1, 'Assis Brasil', 1758343, '00054'),

                                               (55, 1, 'Brasiléia', 576126, '00104'),

                                               (56, 1, 'Bujari', 728128, '00138'),

                                               (57, 1, 'Capixaba', 667680, '00179'),

                                               (58, 1, 'Cruzeiro do Sul', 467062, '00203'),

                                               (59, 1, 'Epitaciolândia', 754674, '00252'),

                                               (60, 1, 'Feijó', 1659568, '00302'),

                                               (61, 1, 'Jordão', 789899, '00328'),

                                               (62, 1, 'Mâncio Lima', 1261032, '00336'),

                                               (63, 1, 'Manoel Urbano', 1824315, '00344'),

                                               (64, 1, 'Marechal Thaumaturgo', 1923398, '00351'),

                                               (65, 1, 'Plácido de Castro', 354811, '00385'),

                                               (66, 1, 'Porto Acre', 416751, '00807'),

                                               (67, 1, 'Porto Walter', 481147, '00393'),

                                               (68, 1, 'Rio Branco', 1039194, '00401'),

                                               (69, 1, 'Rodrigues Alves', 1237068, '00427'),

                                               (70, 1, 'Santa Rosa do Purus', 1332766, '00435'),

                                               (71, 1, 'Sena Madureira', 1301375, '00500'),

                                               (72, 1, 'Senador Guiomard', 356351, '00450'),

                                               (73, 1, 'Tarauacá', 215954, '00609'),

                                               (74, 1, 'Xapuri', 675630, '00708'),

                                               (75, 3, 'Alvarães', 198620, '00029'),

                                               (76, 3, 'Amaturá', 95979, '00060'),

                                               (77, 3, 'Anamã', 1972053, '00086'),

                                               (78, 3, 'Anori', 317176, '00102'),

                                               (79, 3, 'Apuí', 311898, '00144'),

                                               (80, 3, 'Atalaia do Norte', 731160, '00201'),

                                               (81, 3, 'Autazes', 1195084, '00300'),

                                               (82, 3, 'Barcelos', 820311, '00409'),

                                               (83, 3, 'Barreirinha', 342241, '00508'),

                                               (84, 3, 'Benjamin Constant', 1974974, '00607'),

                                               (85, 3, 'Beruri', 1305658, '00631'),

                                               (86, 3, 'Boa Vista do Ramos', 1534311, '00680'),

                                               (87, 3, 'Boca do Acre', 1842937, '00706'),

                                               (88, 3, 'Borba', 990299, '00805'),

                                               (89, 3, 'Caapiranga', 1479394, '00839'),

                                               (90, 3, 'Canutama', 1334291, '00904'),

                                               (91, 3, 'Carauari', 152157, '01001'),

                                               (92, 3, 'Careiro', 167053, '01100'),

                                               (93, 3, 'Careiro da Várzea', 305996, '01159'),

                                               (94, 3, 'Coari', 14401, '01209'),

                                               (95, 3, 'Codajás', 790321, '01308'),

                                               (96, 3, 'Eirunepé', 1319729, '01407'),

                                               (97, 3, 'Envira', 1905004, '01506'),

                                               (98, 3, 'Fonte Boa', 545398, '01605'),

                                               (99, 3, 'Guajará', 962046, '01654'),

                                               (100, 3, 'Humaitá', 1527163, '01704'),

                                               (101, 3, 'Ipixuna', 477679, '01803'),

                                               (102, 3, 'Iranduba', 842893, '01852'),

                                               (103, 3, 'Itacoatiara', 628243, '01902'),

                                               (104, 3, 'Itamarati', 658245, '01951'),

                                               (105, 3, 'Itapiranga', 10774, '02009'),

                                               (106, 3, 'Japurá', 342746, '02108'),

                                               (107, 3, 'Juruá', 1202034, '02207'),

                                               (108, 3, 'Jutaí', 433430, '02306'),

                                               (109, 3, 'Lábrea', 24592, '02405'),

                                               (110, 3, 'Manacapuru', 17791, '02504'),

                                               (111, 3, 'Manaquiri', 1013132, '02553'),

                                               (112, 3, 'Manaus', 1391222, '02603'),

                                               (113, 3, 'Manicoré', 420023, '02702'),

                                               (114, 3, 'Maraã', 830562, '02801'),

                                               (115, 3, 'Maués', 993632, '02900'),

                                               (116, 3, 'Nhamundá', 1802329, '03007'),

                                               (117, 3, 'Nova Olinda do Norte', 578583, '03106'),

                                               (118, 3, 'Novo Airão', 1882910, '03205'),

                                               (119, 3, 'Novo Aripuanã', 1350817, '03304'),

                                               (120, 3, 'Parintins', 1453118, '03403'),

                                               (121, 3, 'Pauini', 238756, '03502'),

                                               (122, 3, 'Presidente Figueiredo', 1181221, '03536'),

                                               (123, 3, 'Rio Preto da Eva', 1215094, '03569'),

                                               (124, 3, 'Santa Isabel do Rio Negro', 599629, '03601'),

                                               (125, 3, 'Santo Antônio do Içá', 1925531, '03700'),

                                               (126, 3, 'São Gabriel da Cachoeira', 480900, '03809'),

                                               (127, 3, 'São Paulo de Olivença', 1655980, '03908'),

                                               (128, 3, 'São Sebastião do Uatumã', 438865, '03957'),

                                               (129, 3, 'Silves', 1162103, '04005'),

                                               (130, 3, 'Tabatinga', 921376, '04062'),

                                               (131, 3, 'Tapauá', 1559285, '04104'),

                                               (132, 3, 'Tefé', 1860990, '04203'),

                                               (133, 3, 'Tonantins', 1321136, '04237'),

                                               (134, 3, 'Uarini', 1010048, '04260'),

                                               (135, 3, 'Urucará', 736945, '04302'),

                                               (136, 3, 'Urucurituba', 111490, '04401'),

                                               (137, 22, 'Alto Alegre', 226650, '00050'),

                                               (138, 22, 'Amajari', 440246, '00027'),

                                               (139, 22, 'Boa Vista', 18597, '00100'),

                                               (140, 22, 'Bonfim', 470608, '00159'),

                                               (141, 22, 'Cantá', 909151, '00175'),

                                               (142, 22, 'Caracaraí', 1243269, '00209'),

                                               (143, 22, 'Caroebe', 206800, '00233'),

                                               (144, 22, 'Iracema', 1142239, '00282'),

                                               (145, 22, 'Mucajaí', 1615215, '00308'),

                                               (146, 22, 'Normandia', 127817, '00407'),

                                               (147, 22, 'Pacaraima', 1543246, '00456'),

                                               (148, 22, 'Rorainópolis', 1764264, '00472'),

                                               (149, 22, 'São João da Baliza', 774638, '00506'),

                                               (150, 22, 'São Luiz', 749668, '00605'),

                                               (151, 22, 'Uiramutã', 1222038, '00704'),

                                               (152, 14, 'Abaetetuba', 1070447, '00107'),

                                               (153, 14, 'Abel Figueiredo', 452282, '00131'),

                                               (154, 14, 'Acará', 1958129, '00206'),

                                               (155, 14, 'Afuá', 218980, '00305'),

                                               (156, 14, 'Água Azul do Norte', 1535883, '00347'),

                                               (157, 14, 'Alenquer', 128374, '00404'),

                                               (158, 14, 'Almeirim', 634813, '00503'),

                                               (159, 14, 'Altamira', 1669027, '00602'),

                                               (160, 14, 'Anajás', 1315724, '00701'),

                                               (161, 14, 'Ananindeua', 1714295, '00800'),

                                               (162, 14, 'Anapu', 656907, '00859'),

                                               (163, 14, 'Augusto Corrêa', 216190, '00909'),

                                               (164, 14, 'Aurora do Pará', 1307249, '00958'),

                                               (165, 14, 'Aveiro', 1824426, '01006'),

                                               (166, 14, 'Bagre', 748346, '01105'),

                                               (167, 14, 'Baião', 1329400, '01204'),

                                               (168, 14, 'Bannach', 1404671, '01253'),

                                               (169, 14, 'Barcarena', 1342572, '01303'),

                                               (170, 14, 'Belém', 1855721, '01402'),

                                               (171, 14, 'Belterra', 1635503, '01451'),

                                               (172, 14, 'Benevides', 1871211, '01501'),

                                               (173, 14, 'Bom Jesus do Tocantins', 1974454, '01576'),

                                               (174, 14, 'Bonito', 464478, '01600'),

                                               (175, 14, 'Bragança', 1325343, '01709'),

                                               (176, 14, 'Brasil Novo', 999840, '01725'),

                                               (177, 14, 'Brejo Grande do Araguaia', 449463, '01758'),

                                               (178, 14, 'Breu Branco', 989976, '01782'),

                                               (179, 14, 'Breves', 32211, '01808'),

                                               (180, 14, 'Bujaru', 464717, '01907'),

                                               (181, 14, 'Cachoeira do Arari', 1500667, '02004'),

                                               (182, 14, 'Cachoeira do Piriá', 1062020, '01956'),

                                               (183, 14, 'Cametá', 310598, '02103'),

                                               (184, 14, 'Canaã dos Carajás', 31740, '02152'),

                                               (185, 14, 'Capanema', 1342596, '02202'),

                                               (186, 14, 'Capitão Poço', 1831944, '02301'),

                                               (187, 14, 'Castanhal', 1646255, '02400'),

                                               (188, 14, 'Chaves', 907486, '02509'),

                                               (189, 14, 'Colares', 1032815, '02608'),

                                               (190, 14, 'Conceição do Araguaia', 216580, '02707'),

                                               (191, 14, 'Concórdia do Pará', 1821107, '02756'),

                                               (192, 14, 'Cumaru do Norte', 891552, '02764'),

                                               (193, 14, 'Curionópolis', 895473, '02772'),

                                               (194, 14, 'Curralinho', 412673, '02806'),

                                               (195, 14, 'Curuá', 1679418, '02855'),

                                               (196, 14, 'Curuçá', 1891035, '02905'),

                                               (197, 14, 'Dom Eliseu', 1090715, '02939'),

                                               (198, 14, 'Eldorado dos Carajás', 1546211, '02954'),

                                               (199, 14, 'Faro', 1318722, '03002'),

                                               (200, 14, 'Floresta do Araguaia', 1480709, '03044'),

                                               (201, 14, 'Garrafão do Norte', 1194662, '03077'),

                                               (202, 14, 'Goianésia do Pará', 164379, '03093'),

                                               (203, 14, 'Gurupá', 86224, '03101'),

                                               (204, 14, 'Igarapé-Açu', 473153, '03200'),

                                               (205, 14, 'Igarapé-Miri', 1426875, '03309'),

                                               (206, 14, 'Inhangapi', 1633454, '03408'),

                                               (207, 14, 'Ipixuna do Pará', 728715, '03457'),

                                               (208, 14, 'Irituia', 852215, '03507'),

                                               (209, 14, 'Itaituba', 355673, '03606'),

                                               (210, 14, 'Itupiranga', 1544835, '03705'),

                                               (211, 14, 'Jacareacanga', 1271514, '03754'),

                                               (212, 14, 'Jacundá', 145560, '03804'),

                                               (213, 14, 'Juruti', 194877, '03903'),

                                               (214, 14, 'Limoeiro do Ajuru', 1432324, '04000'),

                                               (215, 14, 'Mãe do Rio', 569105, '04059'),

                                               (216, 14, 'Magalhães Barata', 1247964, '04109'),

                                               (217, 14, 'Marabá', 827997, '04208'),

                                               (218, 14, 'Maracanã', 425616, '04307'),

                                               (219, 14, 'Marapanim', 1289666, '04406'),

                                               (220, 14, 'Marituba', 440163, '04422'),

                                               (221, 14, 'Medicilândia', 1717869, '04455'),

                                               (222, 14, 'Melgaço', 171772, '04505'),

                                               (223, 14, 'Mocajuba', 1708572, '04604'),

                                               (224, 14, 'Moju', 123857, '04703'),

                                               (225, 14, 'Monte Alegre', 1551449, '04802'),

                                               (226, 14, 'Muaná', 1372214, '04901'),

                                               (227, 14, 'Nova Esperança do Piriá', 913304, '04950'),

                                               (228, 14, 'Nova Ipixuna', 1606568, '04976'),

                                               (229, 14, 'Nova Timboteua', 1171492, '05007'),

                                               (230, 14, 'Novo Progresso', 1233537, '05031'),

                                               (231, 14, 'Novo Repartimento', 644744, '05064'),

                                               (232, 14, 'Óbidos', 147484, '05106'),

                                               (233, 14, 'Oeiras do Pará', 535326, '05205'),

                                               (234, 14, 'Oriximiná', 1179844, '05304'),

                                               (235, 14, 'Ourém', 190832, '05403'),

                                               (236, 14, 'Ourilândia do Norte', 248488, '05437'),

                                               (237, 14, 'Pacajá', 724325, '05486'),

                                               (238, 14, 'Palestina do Pará', 1616963, '05494'),

                                               (239, 14, 'Paragominas', 1283560, '05502'),

                                               (240, 14, 'Parauapebas', 695169, '05536'),

                                               (241, 14, 'Pau D Arco', 1889967, '05551'),

                                               (242, 14, 'Peixe-Boi', 1532863, '05601'),

                                               (243, 14, 'Piçarra', 1468310, '05635'),

                                               (244, 14, 'Placas', 139457, '05650'),

                                               (245, 14, 'Ponta de Pedras', 448380, '05700'),

                                               (246, 14, 'Portel', 1950258, '05809'),

                                               (247, 14, 'Porto de Moz', 1609328, '05908'),

                                               (248, 14, 'Prainha', 1072562, '06005'),

                                               (249, 14, 'Primavera', 1130194, '06104'),

                                               (250, 14, 'Quatipuru', 588908, '06112'),

                                               (251, 14, 'Redenção', 1961441, '06138'),

                                               (252, 14, 'Rio Maria', 1642747, '06161'),

                                               (253, 14, 'Rondon do Pará', 257852, '06187'),

                                               (254, 14, 'Rurópolis', 828480, '06195'),

                                               (255, 14, 'Salinópolis', 1331227, '06203'),

                                               (256, 14, 'Salvaterra', 1440787, '06302'),

                                               (257, 14, 'Santa Bárbara do Pará', 861913, '06351'),

                                               (258, 14, 'Santa Cruz do Arari', 838190, '06401'),

                                               (259, 14, 'Santa Isabel do Pará', 715803, '06500'),

                                               (260, 14, 'Santa Luzia do Pará', 1506667, '06559'),

                                               (261, 14, 'Santa Maria das Barreiras', 186405, '06583'),

                                               (262, 14, 'Santa Maria do Pará', 659515, '06609'),

                                               (263, 14, 'Santana do Araguaia', 155261, '06708'),

                                               (264, 14, 'Santarém', 873772, '06807'),

                                               (265, 14, 'Santarém Novo', 1116204, '06906'),

                                               (266, 14, 'Santo Antônio do Tauá', 284803, '07003'),

                                               (267, 14, 'São Caetano de Odivelas', 594433, '07102'),

                                               (268, 14, 'São Domingos do Araguaia', 64084, '07151'),

                                               (269, 14, 'São Domingos do Capim', 1072740, '07201'),

                                               (270, 14, 'São Félix do Xingu', 60433, '07300'),

                                               (271, 14, 'São Francisco do Pará', 1754532, '07409'),

                                               (272, 14, 'São Geraldo do Araguaia', 1716920, '07458'),

                                               (273, 14, 'São João da Ponta', 593026, '07466'),

                                               (274, 14, 'São João de Pirabas', 628691, '07474'),

                                               (275, 14, 'São João do Araguaia', 692626, '07508'),

                                               (276, 14, 'São Miguel do Guamá', 1546576, '07607'),

                                                (277, 14, 'São Sebastião da Boa Vista', 368399, '07706'),

                                               (278, 14, 'Sapucaia', 460797, '07755'),

                                               (279, 14, 'Senador José Porfírio', 1463147, '07805'),

                                               (280, 14, 'Soure', 285589, '07904'),

                                               (281, 14, 'Tailândia', 916860, '07953'),

                                               (282, 14, 'Terra Alta', 1086221, '07961'),

                                               (283, 14, 'Terra Santa', 1913785, '07979'),

                                               (284, 14, 'Tomé-Açu', 31454, '08001'),

                                               (285, 14, 'Tracuateua', 1719187, '08035'),

                                               (286, 14, 'Trairão', 255112, '08050'),

                                               (287, 14, 'Tucumã', 1661804, '08084'),

                                               (288, 14, 'Tucuruí', 1531458, '08100'),

                                               (289, 14, 'Ulianópolis', 1089953, '08126'),

                                               (290, 14, 'Uruará', 196672, '08159'),

                                               (291, 14, 'Vigia', 265211, '08209'),

                                               (292, 14, 'Viseu', 290975, '08308'),

                                               (293, 14, 'Vitória do Xingu', 1089795, '08357'),

                                               (294, 14, 'Xinguara', 850980, '08407'),

                                               (295, 4, 'Amapá', 1597449, '00105'),

                                               (296, 4, 'Calçoene', 1624998, '00204'),

                                               (297, 4, 'Cutias', 914789, '00212'),

                                               (298, 4, 'Ferreira Gomes', 1974550, '00238'),

                                               (299, 4, 'Itaubal', 290028, '00253'),

                                               (300, 4, 'Laranjal do Jari', 399616, '00279'),

                                               (301, 4, 'Macapá', 1820458, '00303'),

                                               (302, 4, 'Mazagão', 367873, '00402'),

                                               (303, 4, 'Oiapoque', 1941192, '00501'),

                                               (304, 4, 'Pedra Branca do Amapari', 781617, '00154'),

                                               (305, 4, 'Porto Grande', 98210, '00535'),

                                               (306, 4, 'Pracuúba', 683733, '00550'),

                                               (307, 4, 'Santana', 471082, '00600'),

                                               (308, 4, 'Serra do Navio', 614621, '00055'),

                                               (309, 4, 'Tartarugalzinho', 747251, '00709'),

                                               (310, 4, 'Vitória do Jari', 1417059, '00808'),

                                               (311, 27, 'Abreulândia', 643379, '00251'),

                                               (312, 27, 'Aguiarnópolis', 874516, '00301'),

                                               (313, 27, 'Aliança do Tocantins', 1006383, '00350'),

                                               (314, 27, 'Almas', 987389, '00400'),

                                               (315, 27, 'Alvorada', 1096551, '00707'),

                                               (316, 27, 'Ananás', 1572224, '01002'),

                                               (317, 27, 'Angico', 398129, '01051'),

                                               (318, 27, 'Aparecida do Rio Negro', 41233, '01101'),

                                               (319, 27, 'Aragominas', 1824561, '01309'),

                                               (320, 27, 'Araguacema', 136748, '01903'),

                                               (321, 27, 'Araguaçu', 206633, '02000'),

                                               (322, 27, 'Araguaína', 1852713, '02109'),

                                               (323, 27, 'Araguanã', 503678, '02158'),

                                               (324, 27, 'Araguatins', 528372, '02208'),

                                               (325, 27, 'Arapoema', 735801, '02307'),

                                               (326, 27, 'Arraias', 1930866, '02406'),

                                               (327, 27, 'Augustinópolis', 382852, '02554'),

                                               (328, 27, 'Aurora do Tocantins', 709748, '02703'),

                                               (329, 27, 'Axixá do Tocantins', 1660484, '02901'),

                                               (330, 27, 'Babaçulândia', 1046725, '03008'),

                                               (331, 27, 'Bandeirantes do Tocantins', 952987, '03057'),

                                               (332, 27, 'Barra do Ouro', 245330, '03073'),

                                               (333, 27, 'Barrolândia', 971695, '03107'),

                                               (334, 27, 'Bernardo Sayão', 1765601, '03206'),

                                               (335, 27, 'Bom Jesus do Tocantins', 1047402, '03305'),

                                               (336, 27, 'Brasilândia do Tocantins', 142663, '03602'),

                                               (337, 27, 'Brejinho de Nazaré', 1122889, '03701'),

                                               (338, 27, 'Buriti do Tocantins', 1482295, '03800'),

                                               (339, 27, 'Cachoeirinha', 726779, '03826'),

                                               (340, 27, 'Campos Lindos', 166064, '03842'),

                                               (341, 27, 'Cariri do Tocantins', 1395737, '03867'),

                                               (342, 27, 'Carmolândia', 1758322, '03883'),

                                               (343, 27, 'Carrasco Bonito', 453581, '03891'),

                                               (344, 27, 'Caseara', 1365174, '03909'),

                                               (345, 27, 'Centenário', 1075805, '04105'),

                                               (346, 27, 'Chapada da Natividade', 1175786, '05102'),

                                               (347, 27, 'Chapada de Areia', 522070, '04600'),

                                               (348, 27, 'Colinas do Tocantins', 1731207, '05508'),

                                               (349, 27, 'Colméia', 1182625, '16703'),

                                               (350, 27, 'Combinado', 881931, '05557'),

                                               (351, 27, 'Conceição do Tocantins', 419037, '05607'),

                                               (352, 27, 'Couto Magalhães', 33251, '06001'),

                                               (353, 27, 'Cristalândia', 1400089, '06100'),

                                               (354, 27, 'Crixás do Tocantins', 856874, '06258'),

                                               (355, 27, 'Darcinópolis', 1579958, '06506'),

                                               (356, 27, 'Dianópolis', 1817626, '07009'),

                                               (357, 27, 'Divinópolis do Tocantins', 1080735, '07108'),

                                               (358, 27, 'Dois Irmãos do Tocantins', 625938, '07207'),

                                               (359, 27, 'Dueré', 59468, '07306'),

                                               (360, 27, 'Esperantina', 1013691, '07405'),

                                               (361, 27, 'Fátima', 23193, '07553'),

                                               (362, 27, 'Figueirópolis', 1331905, '07652'),

                                               (363, 27, 'Filadélfia', 1111286, '07702'),

                                               (364, 27, 'Formoso do Araguaia', 1352190, '08205'),

                                               (365, 27, 'Fortaleza do Tabocão', 477954, '08254'),

                                               (366, 27, 'Goianorte', 98988, '08304'),

                                               (367, 27, 'Goiatins', 1427573, '09005'),

                                               (368, 27, 'Guaraí', 1881188, '09302'),

                                               (369, 27, 'Gurupi', 1307649, '09500'),

                                               (370, 27, 'Ipueiras', 687330, '09807'),

                                               (371, 27, 'Itacajá', 1509699, '10508'),

                                               (372, 27, 'Itaguatins', 1275135, '10706'),

                                               (373, 27, 'Itapiratins', 722485, '10904'),

                                               (374, 27, 'Itaporã do Tocantins', 798238, '11100'),

                                               (375, 27, 'Jaú do Tocantins', 1799448, '11506'),

                                               (376, 27, 'Juarina', 794192, '11803'),

                                               (377, 27, 'Lagoa da Confusão', 1513699, '11902'),

                                               (378, 27, 'Lagoa do Tocantins', 1693446, '11951'),

                                               (379, 27, 'Lajeado', 503157, '12009'),

                                               (380, 27, 'Lavandeira', 261791, '12157'),

                                               (381, 27, 'Lizarda', 1258075, '12405'),

                                               (382, 27, 'Luzinópolis', 1316377, '12454'),

                                               (383, 27, 'Marianópolis do Tocantins', 297272, '12504'),

                                               (384, 27, 'Mateiros', 679461, '12702'),

                                               (385, 27, 'Maurilândia do Tocantins', 201449, '12801'),

                                               (386, 27, 'Miracema do Tocantins', 1020832, '13205'),

                                               (387, 27, 'Miranorte', 1062898, '13304'),

                                               (388, 27, 'Monte do Carmo', 426189, '13601'),

                                               (389, 27, 'Monte Santo do Tocantins', 1355536, '13700'),

                                               (390, 27, 'Muricilândia', 1929303, '13957'),

                                               (391, 27, 'Natividade', 1101960, '14203'),

                                               (392, 27, 'Nazaré', 1199147, '14302'),

                                               (393, 27, 'Nova Olinda', 1165718, '14880'),

                                               (394, 27, 'Nova Rosalândia', 1657592, '15002'),

                                               (395, 27, 'Novo Acordo', 1372016, '15101'),

                                               (396, 27, 'Novo Alegre', 507495, '15150'),

                                               (397, 27, 'Novo Jardim', 1741180, '15259'),

                                               (398, 27, 'Oliveira de Fátima', 1445213, '15507'),

                                               (399, 27, 'Palmas', 1776896, '21000'),

                                               (400, 27, 'Palmeirante', 1248324, '15705'),

                                               (401, 27, 'Palmeiras do Tocantins', 1620590, '13809');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (402, 27, 'Palmeirópolis', 984931, '15754'),

                                               (403, 27, 'Paraíso do Tocantins', 653578, '16109'),

                                               (404, 27, 'Paranã', 1343855, '16208'),

                                               (405, 27, 'Pau D Arco', 705779, '16307'),

                                               (406, 27, 'Pedro Afonso', 1499945, '16505'),

                                               (407, 27, 'Peixe', 1959305, '16604'),

                                               (408, 27, 'Pequizeiro', 297516, '16653'),

                                               (409, 27, 'Pindorama do Tocantins', 267037, '17008'),

                                               (410, 27, 'Piraquê', 1275652, '17206'),

                                               (411, 27, 'Pium', 37116, '17503'),

                                               (412, 27, 'Ponte Alta do Bom Jesus', 1356140, '17800'),

                                               (413, 27, 'Ponte Alta do Tocantins', 343275, '17909'),

                                               (414, 27, 'Porto Alegre do Tocantins', 1338642, '18006'),

                                               (415, 27, 'Porto Nacional', 1344361, '18204'),

                                               (416, 27, 'Praia Norte', 1205792, '18303'),

                                               (417, 27, 'Presidente Kennedy', 144472, '18402'),

                                               (418, 27, 'Pugmil', 1405206, '18451'),

                                               (419, 27, 'Recursolândia', 1556680, '18501'),

                                               (420, 27, 'Riachinho', 1175956, '18550'),

                                               (421, 27, 'Rio da Conceição', 161203, '18659'),

                                               (422, 27, 'Rio dos Bois', 1811572, '18709'),

                                               (423, 27, 'Rio Sono', 1734561, '18758'),

                                               (424, 27, 'Sampaio', 1412608, '18808'),

                                               (425, 27, 'Sandolândia', 102417, '18840'),

                                               (426, 27, 'Santa Fé do Araguaia', 1301675, '18865'),

                                               (427, 27, 'Santa Maria do Tocantins', 1423312, '18881'),

                                               (428, 27, 'Santa Rita do Tocantins', 1813189, '18899'),

                                               (429, 27, 'Santa Rosa do Tocantins', 1299095, '18907'),

                                               (430, 27, 'Santa Tereza do Tocantins', 1105243, '19004'),

                                               (431, 27, 'Santa Terezinha do Tocantins', 489545, '20002'),

                                               (432, 27, 'São Bento do Tocantins', 747322, '20101'),

                                               (433, 27, 'São Félix do Tocantins', 1604245, '20150'),

                                               (434, 27, 'São Miguel do Tocantins', 775668, '20200'),

                                               (435, 27, 'São Salvador do Tocantins', 1022930, '20259'),

                                               (436, 27, 'São Sebastião do Tocantins', 1549499, '20309'),

                                               (437, 27, 'São Valério', 118027, '20499'),

                                               (438, 27, 'Silvanópolis', 652396, '20655'),

                                               (439, 27, 'Sítio Novo do Tocantins', 743984, '20804'),

                                               (440, 27, 'Sucupira', 127771, '20853'),

                                               (441, 27, 'Taguatinga', 972424, '20903'),

                                               (442, 27, 'Taipas do Tocantins', 848401, '20937'),

                                               (443, 27, 'Talismã', 1479275, '20978'),

                                               (444, 27, 'Tocantínia', 329892, '21109'),

                                               (445, 27, 'Tocantinópolis', 939238, '21208'),

                                               (446, 27, 'Tupirama', 863644, '21257'),

                                               (447, 27, 'Tupiratins', 173112, '21307'),

                                               (448, 27, 'Wanderlândia', 504860, '22081'),

                                               (449, 27, 'Xambioá', 1220992, '22107'),

                                               (450, 10, 'Açailândia', 1185131, '00055'),

                                               (451, 10, 'Afonso Cunha', 153317, '00105'),

                                               (452, 10, 'Água Doce do Maranhão', 251762, '00154'),

                                               (453, 10, 'Alcântara', 884920, '00204'),

                                               (454, 10, 'Aldeias Altas', 877012, '00303'),

                                               (455, 10, 'Altamira do Maranhão', 17473, '00402'),

                                               (456, 10, 'Alto Alegre do Maranhão', 1411450, '00436'),

                                               (457, 10, 'Alto Alegre do Pindaré', 730440, '00477'),

                                               (458, 10, 'Alto Parnaíba', 1392930, '00501'),

                                               (459, 10, 'Amapá do Maranhão', 1414880, '00550'),

                                               (460, 10, 'Amarante do Maranhão', 839267, '00600'),

                                               (461, 10, 'Anajatuba', 902954, '00709'),

                                               (462, 10, 'Anapurus', 751337, '00808'),

                                               (463, 10, 'Apicum-Açu', 911358, '00832'),

                                               (464, 10, 'Araguanã', 654872, '00873'),

                                               (465, 10, 'Araioses', 583890, '00907'),

                                               (466, 10, 'Arame', 1120323, '00956'),

                                               (467, 10, 'Arari', 1992919, '01004'),

                                               (468, 10, 'Axixá', 508700, '01103'),

                                               (469, 10, 'Bacabal', 444053, '01202'),

                                               (470, 10, 'Bacabeira', 339408, '01251'),

                                               (471, 10, 'Bacuri', 632880, '01301'),

                                               (472, 10, 'Bacurituba', 404023, '01350'),

                                               (473, 10, 'Balsas', 76575, '01400'),

                                               (474, 10, 'Barão de Grajaú', 360689, '01509'),

                                               (475, 10, 'Barra do Corda', 237051, '01608'),

                                               (476, 10, 'Barreirinhas', 852297, '01707'),

                                               (477, 10, 'Bela Vista do Maranhão', 1710258, '01772'),

                                               (478, 10, 'Belágua', 1833592, '01731'),

                                               (479, 10, 'Benedito Leite', 1171032, '01806'),

                                               (480, 10, 'Bequimão', 1035195, '01905'),

                                               (481, 10, 'Bernardo do Mearim', 1198235, '01939'),

                                               (482, 10, 'Boa Vista do Gurupi', 1299301, '01970'),

                                               (483, 10, 'Bom Jardim', 605705, '02002'),

                                               (484, 10, 'Bom Jesus das Selvas', 790125, '02036'),

                                               (485, 10, 'Bom Lugar', 966072, '02077'),

                                               (486, 10, 'Brejo', 849410, '02101'),

                                               (487, 10, 'Brejo de Areia', 1277513, '02150'),

                                               (488, 10, 'Buriti', 772844, '02200'),

                                               (489, 10, 'Buriti Bravo', 576275, '02309'),

                                               (490, 10, 'Buriticupu', 109566, '02325'),

                                               (491, 10, 'Buritirana', 1700807, '02358'),

                                               (492, 10, 'Cachoeira Grande', 135481, '02374'),

                                               (493, 10, 'Cajapió', 1069450, '02408'),

                                               (494, 10, 'Cajari', 1333563, '02507'),

                                               (495, 10, 'Campestre do Maranhão', 1655442, '02556'),

                                               (496, 10, 'Cândido Mendes', 1252550, '02606'),

                                               (497, 10, 'Cantanhede', 443124, '02705'),

                                               (498, 10, 'Capinzal do Norte', 562021, '02754'),

                                               (499, 10, 'Carolina', 605645, '02804'),

                                               (500, 10, 'Carutapera', 22941, '02903'),

                                               (501, 10, 'Caxias', 1561393, '03000'),

                                               (502, 10, 'Cedral', 60121, '03109'),

                                               (503, 10, 'Central do Maranhão', 236977, '03125'),

                                               (504, 10, 'Centro do Guilherme', 185239, '03158'),

                                               (505, 10, 'Centro Novo do Maranhão', 1143296, '03174'),

                                               (506, 10, 'Chapadinha', 112445, '03208'),

                                               (507, 10, 'Cidelândia', 103957, '03257'),

                                               (508, 10, 'Codó', 1108131, '03307'),

                                               (509, 10, 'Coelho Neto', 1213286, '03406'),

                                               (510, 10, 'Colinas', 830965, '03505'),

                                               (511, 10, 'Conceição do Lago-Açu', 32284, '03554'),

                                               (512, 10, 'Coroatá', 864270, '03604'),

                                               (513, 10, 'Cururupu', 1706036, '03703'),

                                               (514, 10, 'Davinópolis', 1912400, '03752'),

                                               (515, 10, 'Dom Pedro', 1203869, '03802'),

                                               (516, 10, 'Duque Bacelar', 1382779, '03901'),

                                               (517, 10, 'Esperantinópolis', 1496236, '04008'),

                                               (518, 10, 'Estreito', 646829, '04057'),

                                               (519, 10, 'Feira Nova do Maranhão', 1408105, '04073'),

                                               (520, 10, 'Fernando Falcão', 1346654, '04081'),

                                               (521, 10, 'Formosa da Serra Negra', 408263, '04099'),

                                               (522, 10, 'Fortaleza dos Nogueiras', 507313, '04107'),

                                               (523, 10, 'Fortuna', 622654, '04206'),

                                               (524, 10, 'Godofredo Viana', 1582302, '04305'),

                                               (525, 10, 'Gonçalves Dias', 64841, '04404'),

                                               (526, 10, 'Governador Archer', 486247, '04503'),

                                               (527, 10, 'Governador Edison Lobão', 1860232, '04552'),

                                               (528, 10, 'Governador Eugênio Barros', 275760, '04602'),

                                               (529, 10, 'Governador Luiz Rocha', 480588, '04628'),

                                               (530, 10, 'Governador Newton Bello', 1895976, '04651'),

                                               (531, 10, 'Governador Nunes Freire', 1833826, '04677'),

                                               (532, 10, 'Graça Aranha', 1483589, '04701'),

                                               (533, 10, 'Grajaú', 692507, '04800'),

                                               (534, 10, 'Guimarães', 181334, '04909'),

                                               (535, 10, 'Humberto de Campos', 1320764, '05005'),

                                               (536, 10, 'Icatu', 142792, '05104'),

                                               (537, 10, 'Igarapé do Meio', 1352283, '05153'),

                                               (538, 10, 'Igarapé Grande', 583980, '05203'),

                                               (539, 10, 'Imperatriz', 1241433, '05302'),

                                               (540, 10, 'Itaipava do Grajaú', 1397116, '05351'),

                                               (541, 10, 'Itapecuru Mirim', 1250139, '05401'),

                                               (542, 10, 'Itinga do Maranhão', 1522965, '05427'),

                                               (543, 10, 'Jatobá', 1580605, '05450'),

                                               (544, 10, 'Jenipapo dos Vieiras', 1107042, '05476'),

                                               (545, 10, 'João Lisboa', 1041239, '05500'),

                                               (546, 10, 'Joselândia', 1498860, '05609'),

                                               (547, 10, 'Junco do Maranhão', 827201, '05658'),

                                               (548, 10, 'Lago da Pedra', 1136489, '05708'),

                                               (549, 10, 'Lago do Junco', 1836935, '05807'),

                                               (550, 10, 'Lago dos Rodrigues', 861262, '05948'),

                                               (551, 10, 'Lago Verde', 133020, '05906'),

                                               (552, 10, 'Lagoa do Mato', 1145945, '05922'),

                                               (553, 10, 'Lagoa Grande do Maranhão', 1835267, '05963'),

                                               (554, 10, 'Lajeado Novo', 829767, '05989'),

                                               (555, 10, 'Lima Campos', 316231, '06003'),

                                               (556, 10, 'Loreto', 1109237, '06102'),

                                               (557, 10, 'Luís Domingues', 1758314, '06201'),

                                               (558, 10, 'Magalhães de Almeida', 1673720, '06300'),

                                               (559, 10, 'Maracaçumé', 667532, '06326'),

                                               (560, 10, 'Marajá do Sena', 289601, '06359'),

                                               (561, 10, 'Maranhãozinho', 976041, '06375'),

                                               (562, 10, 'Mata Roma', 1176333, '06409'),

                                               (563, 10, 'Matinha', 147432, '06508'),

                                               (564, 10, 'Matões', 1582206, '06607'),

                                               (565, 10, 'Matões do Norte', 1967717, '06631'),

                                               (566, 10, 'Milagres do Maranhão', 1252213, '06672'),

                                               (567, 10, 'Mirador', 535483, '06706'),

                                               (568, 10, 'Miranda do Norte', 1051033, '06755'),

                                               (569, 10, 'Mirinzal', 1146824, '06805'),

                                               (570, 10, 'Monção', 1881339, '06904'),

                                               (571, 10, 'Montes Altos', 83355, '07001'),

                                               (572, 10, 'Morros', 937600, '07100'),

                                               (573, 10, 'Nina Rodrigues', 1667498, '07209'),

                                               (574, 10, 'Nova Colinas', 170082, '07258'),

                                               (575, 10, 'Nova Iorque', 591452, '07308'),

                                               (576, 10, 'Nova Olinda do Maranhão', 886323, '07357'),

                                               (577, 10, 'Olho d Água das Cunhãs', 608135, '07407'),

                                               (578, 10, 'Olinda Nova do Maranhão', 290971, '07456'),

                                               (579, 10, 'Paço do Lumiar', 1099108, '07506'),

                                               (580, 10, 'Palmeirândia', 1009719, '07605'),

                                               (581, 10, 'Paraibano', 533633, '07704'),

                                               (582, 10, 'Parnarama', 840099, '07803'),

                                               (583, 10, 'Passagem Franca', 1684683, '07902'),

                                               (584, 10, 'Pastos Bons', 1691812, '08009'),

                                               (585, 10, 'Paulino Neves', 1749344, '08058'),

                                               (586, 10, 'Paulo Ramos', 608888, '08108'),

                                               (587, 10, 'Pedreiras', 233499, '08207'),

                                               (588, 10, 'Pedro do Rosário', 1379446, '08256'),

                                               (589, 10, 'Penalva', 1337225, '08306'),

                                               (590, 10, 'Peri Mirim', 61020, '08405'),

                                               (591, 10, 'Peritoró', 782632, '08454'),

                                               (592, 10, 'Pindaré-Mirim', 1374964, '08504'),

                                               (593, 10, 'Pinheiro', 226294, '08603'),

                                               (594, 10, 'Pio XII', 1145793, '08702'),

                                               (595, 10, 'Pirapemas', 1062634, '08801'),

                                               (596, 10, 'Poção de Pedras', 580806, '08900'),

                                               (597, 10, 'Porto Franco', 301395, '09007'),

                                               (598, 10, 'Porto Rico do Maranhão', 412058, '09056'),

                                               (599, 10, 'Presidente Dutra', 116083, '09106'),

                                               (600, 10, 'Presidente Juscelino', 751830, '09205'),

                                               (601, 10, 'Presidente Médici', 1072615, '09239'),

                                               (602, 10, 'Presidente Sarney', 1775582, '09270'),

                                               (603, 10, 'Presidente Vargas', 709137, '09304'),

                                               (604, 10, 'Primeira Cruz', 396569, '09403'),

                                               (605, 10, 'Raposa', 244880, '09452'),

                                               (606, 10, 'Riachão', 1420023, '09502'),

                                               (607, 10, 'Ribamar Fiquene', 132399, '09551'),

                                               (608, 10, 'Rosário', 1218311, '09601'),

                                               (609, 10, 'Sambaíba', 1023401, '09700'),

                                               (610, 10, 'Santa Filomena do Maranhão', 687429, '09759'),

                                               (611, 10, 'Santa Helena', 680511, '09809'),

                                               (612, 10, 'Santa Inês', 687573, '09908'),

                                               (613, 10, 'Santa Luzia', 1585580, '10005'),

                                               (614, 10, 'Santa Luzia do Paruá', 1941432, '10039'),

                                               (615, 10, 'Santa Quitéria do Maranhão', 1585265, '10104'),

                                               (616, 10, 'Santa Rita', 284608, '10203'),

                                               (617, 10, 'Santana do Maranhão', 1117973, '10237'),

                                               (618, 10, 'Santo Amaro do Maranhão', 1035756, '10278'),

                                               (619, 10, 'Santo Antônio dos Lopes', 560020, '10302'),

                                               (620, 10, 'São Benedito do Rio Preto', 1369446, '10401'),

                                               (621, 10, 'São Bento', 1045432, '10500'),

                                               (622, 10, 'São Bernardo', 641244, '10609'),

                                               (623, 10, 'São Domingos do Azeitão', 927830, '10658'),

                                               (624, 10, 'São Domingos do Maranhão', 162973, '10708'),

                                               (625, 10, 'São Félix de Balsas', 416803, '10807'),

                                               (626, 10, 'São Francisco do Brejão', 264636, '10856'),

                                               (627, 10, 'São Francisco do Maranhão', 1414683, '10906'),

                                               (628, 10, 'São João Batista', 42289, '11003'),

                                               (629, 10, 'São João do Carú', 964601, '11029'),

                                               (630, 10, 'São João do Paraíso', 1195415, '11052'),

                                               (631, 10, 'São João do Soter', 398306, '11078'),

                                               (632, 10, 'São João dos Patos', 1549741, '11102'),

                                               (633, 10, 'São José de Ribamar', 925829, '11201'),

                                               (634, 10, 'São José dos Basílios', 756881, '11250'),

                                               (635, 10, 'São Luís', 811520, '11300'),

                                               (636, 10, 'São Luís Gonzaga do Maranhão', 1162108, '11409'),

                                               (637, 10, 'São Mateus do Maranhão', 1387118, '11508'),

                                               (638, 10, 'São Pedro da Água Branca', 1760302, '11532'),

                                               (639, 10, 'São Pedro dos Crentes', 73967, '11573'),

                                               (640, 10, 'São Raimundo das Mangabeiras', 1952199, '11607'),

                                               (641, 10, 'São Raimundo do Doca Bezerra', 544983, '11631'),

                                               (642, 10, 'São Roberto', 312569, '11672'),

                                               (643, 10, 'São Vicente Ferrer', 1909944, '11706'),

                                               (644, 10, 'Satubinha', 30962, '11722'),

                                               (645, 10, 'Senador Alexandre Costa', 1091634, '11748'),

                                               (646, 10, 'Senador La Rocque', 926677, '11763'),

                                               (647, 10, 'Serrano do Maranhão', 557219, '11789'),

                                               (648, 10, 'Sítio Novo', 696925, '11805'),

                                               (649, 10, 'Sucupira do Norte', 1190811, '11904'),

                                               (650, 10, 'Sucupira do Riachão', 391033, '11953'),

                                               (651, 10, 'Tasso Fragoso', 721901, '12001'),

                                               (652, 10, 'Timbiras', 94353, '12100'),

                                               (653, 10, 'Timon', 310412, '12209'),

                                               (654, 10, 'Trizidela do Vale', 1742588, '12233'),

                                               (655, 10, 'Tufilândia', 1603021, '12274'),

                                               (656, 10, 'Tuntum', 324704, '12308'),

                                               (657, 10, 'Turiaçu', 273102, '12407'),

                                               (658, 10, 'Turilândia', 1975982, '12456'),

                                               (659, 10, 'Tutóia', 172946, '12506'),

                                               (660, 10, 'Urbano Santos', 782178, '12605'),

                                               (661, 10, 'Vargem Grande', 883597, '12704'),

                                               (662, 10, 'Viana', 354708, '12803'),

                                               (663, 10, 'Vila Nova dos Martírios', 1365655, '12852'),

                                               (664, 10, 'Vitória do Mearim', 856091, '12902'),

                                               (665, 10, 'Vitorino Freire', 1638955, '13009'),

                                               (666, 10, 'Zé Doca', 1567604, '14007'),

                                               (667, 17, 'Acauã', 622075, '00053'),

                                               (668, 17, 'Agricolândia', 407360, '00103'),

                                               (669, 17, 'Água Branca', 1871544, '00202'),

                                               (670, 17, 'Alagoinha do Piauí', 1394952, '00251'),

                                               (671, 17, 'Alegrete do Piauí', 366641, '00277'),

                                               (672, 17, 'Alto Longá', 540880, '00301'),

                                               (673, 17, 'Altos', 1071394, '00400'),

                                               (674, 17, 'Alvorada do Gurguéia', 1644583, '00459'),

                                               (675, 17, 'Amarante', 1821403, '00509'),

                                               (676, 17, 'Angical do Piauí', 1216911, '00608'),

                                               (677, 17, 'Anísio de Abreu', 1328416, '00707'),

                                               (678, 17, 'Antônio Almeida', 1568977, '00806'),

                                               (679, 17, 'Aroazes', 554239, '00905'),

                                               (680, 17, 'Aroeiras do Itaim', 1354903, '00954'),

                                               (681, 17, 'Arraial', 207582, '01002'),

                                               (682, 17, 'Assunção do Piauí', 1175604, '01051'),

                                               (683, 17, 'Avelino Lopes', 1636775, '01101'),

                                               (684, 17, 'Baixa Grande do Ribeiro', 406072, '01150'),

                                               (685, 17, 'Barra D Alcântara', 1716679, '01176'),

                                               (686, 17, 'Barras', 460287, '01200'),

                                               (687, 17, 'Barreiras do Piauí', 1782468, '01309'),

                                               (688, 17, 'Barro Duro', 1976720, '01408'),

                                               (689, 17, 'Batalha', 997276, '01507'),

                                               (690, 17, 'Bela Vista do Piauí', 78933, '01556'),

                                               (691, 17, 'Belém do Piauí', 923848, '01572'),

                                               (692, 17, 'Beneditinos', 600818, '01606'),

                                               (693, 17, 'Bertolínia', 566039, '01705'),

                                               (694, 17, 'Betânia do Piauí', 1784911, '01739'),

                                               (695, 17, 'Boa Hora', 1239170, '01770'),

                                               (696, 17, 'Bocaina', 564707, '01804'),

                                               (697, 17, 'Bom Jesus', 1423659, '01903'),

                                               (698, 17, 'Bom Princípio do Piauí', 419187, '01919'),

                                               (699, 17, 'Bonfim do Piauí', 1932035, '01929'),

                                               (700, 17, 'Boqueirão do Piauí', 339052, '01945'),

                                               (701, 17, 'Brasileira', 1732315, '01960'),

                                               (702, 17, 'Brejo do Piauí', 1253052, '01988'),

                                               (703, 17, 'Buriti dos Lopes', 102694, '02000'),

                                               (704, 17, 'Buriti dos Montes', 288884, '02026'),

                                               (705, 17, 'Cabeceiras do Piauí', 1047878, '02059'),

                                               (706, 17, 'Cajazeiras do Piauí', 1460856, '02075'),

                                               (707, 17, 'Cajueiro da Praia', 1522387, '02083'),

                                               (708, 17, 'Caldeirão Grande do Piauí', 760506, '02091'),

                                               (709, 17, 'Campinas do Piauí', 1697725, '02109'),

                                               (710, 17, 'Campo Alegre do Fidalgo', 1529611, '02117'),

                                               (711, 17, 'Campo Grande do Piauí', 1181341, '02133'),

                                               (712, 17, 'Campo Largo do Piauí', 884423, '02174'),

                                               (713, 17, 'Campo Maior', 436717, '02208'),

                                               (714, 17, 'Canavieira', 1566902, '02251'),

                                               (715, 17, 'Canto do Buriti', 916282, '02307'),

                                               (716, 17, 'Capitão de Campos', 101201, '02406'),

                                               (717, 17, 'Capitão Gervásio Oliveira', 1650703, '02455'),

                                                (718, 17, 'Caracol', 292235, '02505'),

                                               (719, 17, 'Caraúbas do Piauí', 734418, '02539'),

                                               (720, 17, 'Caridade do Piauí', 989807, '02554'),

                                               (721, 17, 'Castelo do Piauí', 1541881, '02604'),

                                               (722, 17, 'Caxingó', 55024, '02653'),

                                               (723, 17, 'Cocal', 82074, '02703'),

                                               (724, 17, 'Cocal de Telha', 481354, '02711'),

                                               (725, 17, 'Cocal dos Alves', 411886, '02729'),

                                               (726, 17, 'Coivaras', 1309121, '02737'),

                                               (727, 17, 'Colônia do Gurguéia', 1146170, '02752'),

                                               (728, 17, 'Colônia do Piauí', 139248, '02778'),

                                               (729, 17, 'Conceição do Canindé', 556571, '02802'),

                                               (730, 17, 'Coronel José Dias', 1649472, '02851'),

                                               (731, 17, 'Corrente', 357469, '02901'),

                                               (732, 17, 'Cristalândia do Piauí', 1998847, '03008'),

                                               (733, 17, 'Cristino Castro', 1314080, '03107'),

                                               (734, 17, 'Curimatá', 476580, '03206'),

                                               (735, 17, 'Currais', 749998, '03230'),

                                               (736, 17, 'Curral Novo do Piauí', 903897, '03271'),

                                               (737, 17, 'Curralinhos', 1971601, '03255'),

                                               (738, 17, 'Demerval Lobão', 414830, '03305'),

                                               (739, 17, 'Dirceu Arcoverde', 416808, '03354'),

                                               (740, 17, 'Dom Expedito Lopes', 1009609, '03404'),

                                               (741, 17, 'Dom Inocêncio', 196086, '03453'),

                                               (742, 17, 'Domingos Mourão', 944363, '03420'),

                                               (743, 17, 'Elesbão Veloso', 1439479, '03503'),

                                               (744, 17, 'Eliseu Martins', 1830459, '03602'),

                                               (745, 17, 'Esperantina', 1882797, '03701'),

                                               (746, 17, 'Fartura do Piauí', 1451045, '03750'),

                                               (747, 17, 'Flores do Piauí', 876520, '03800'),

                                               (748, 17, 'Floresta do Piauí', 1106191, '03859'),

                                               (749, 17, 'Floriano', 968136, '03909'),

                                               (750, 17, 'Francinópolis', 907643, '04006'),

                                               (751, 17, 'Francisco Ayres', 1249548, '04105'),

                                               (752, 17, 'Francisco Macedo', 753503, '04154'),

                                               (753, 17, 'Francisco Santos', 1306407, '04204'),

                                               (754, 17, 'Fronteiras', 47258, '04303'),

                                               (755, 17, 'Geminiano', 773062, '04352'),

                                               (756, 17, 'Gilbués', 430858, '04402'),

                                               (757, 17, 'Guadalupe', 874016, '04501'),

                                               (758, 17, 'Guaribas', 918535, '04550'),

                                               (759, 17, 'Hugo Napoleão', 1710089, '04600'),

                                               (760, 17, 'Ilha Grande', 972131, '04659'),

                                               (761, 17, 'Inhuma', 88848, '04709'),

                                               (762, 17, 'Ipiranga do Piauí', 1959903, '04808'),

                                               (763, 17, 'Isaías Coelho', 878353, '04907'),

                                               (764, 17, 'Itainópolis', 1595159, '05003'),

                                               (765, 17, 'Itaueira', 826431, '05102'),

                                               (766, 17, 'Jacobina do Piauí', 377453, '05151'),

                                               (767, 17, 'Jaicós', 293578, '05201'),

                                               (768, 17, 'Jardim do Mulato', 1379392, '05250'),

                                               (769, 17, 'Jatobá do Piauí', 879041, '05276'),

                                               (770, 17, 'Jerumenha', 1649222, '05300'),

                                               (771, 17, 'João Costa', 1258821, '05359'),

                                               (772, 17, 'Joaquim Pires', 1077582, '05409'),

                                               (773, 17, 'Joca Marques', 1043968, '05458'),

                                               (774, 17, 'José de Freitas', 134270, '05508'),

                                               (775, 17, 'Juazeiro do Piauí', 634981, '05516'),

                                               (776, 17, 'Júlio Borges', 121299, '05524');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (777, 17, 'Jurema', 680095, '05532'),

                                                (778, 17, 'Lagoa Alegre', 920301, '05557'),

                                               (779, 17, 'Lagoa de São Francisco', 851133, '05573'),

                                               (780, 17, 'Lagoa do Barro do Piauí', 18304, '05565'),

                                               (781, 17, 'Lagoa do Piauí', 1872860, '05581'),

                                               (782, 17, 'Lagoa do Sítio', 251350, '05599'),

                                               (783, 17, 'Lagoinha do Piauí', 1529531, '05540'),

                                               (784, 17, 'Landri Sales', 185886, '05607'),

                                               (785, 17, 'Luís Correia', 1872787, '05706'),

                                               (786, 17, 'Luzilândia', 401135, '05805'),

                                               (787, 17, 'Madeiro', 1239065, '05854'),

                                               (788, 17, 'Manoel Emídio', 703094, '05904'),

                                               (789, 17, 'Marcolândia', 1822573, '05953'),

                                               (790, 17, 'Marcos Parente', 541988, '06001'),

                                               (791, 17, 'Massapê do Piauí', 1918845, '06050'),

                                               (792, 17, 'Matias Olímpio', 1212666, '06100'),

                                               (793, 17, 'Miguel Alves', 913167, '06209'),

                                               (794, 17, 'Miguel Leão', 1330462, '06308'),

                                               (795, 17, 'Milton Brandão', 520518, '06357'),

                                               (796, 17, 'Monsenhor Gil', 697700, '06407'),

                                               (797, 17, 'Monsenhor Hipólito', 571090, '06506'),

                                               (798, 17, 'Monte Alegre do Piauí', 1640545, '06605'),

                                               (799, 17, 'Morro Cabeça no Tempo', 822983, '06654'),

                                               (800, 17, 'Morro do Chapéu do Piauí', 1311525, '06670'),

                                               (801, 17, 'Murici dos Portelas', 57842, '06696'),

                                               (802, 17, 'Nazaré do Piauí', 217170, '06704'),

                                               (803, 17, 'Nazária ', 926547, '06720'),

                                               (804, 17, 'Nossa Senhora de Nazaré', 480596, '06753'),

                                               (805, 17, 'Nossa Senhora dos Remédios', 265374, '06803'),

                                               (806, 17, 'Nova Santa Rita', 1899361, '07959'),

                                               (807, 17, 'Novo Oriente do Piauí', 646127, '06902'),

                                               (808, 17, 'Novo Santo Antônio', 1280229, '06951'),

                                               (809, 17, 'Oeiras', 1217762, '07009'),

                                               (810, 17, 'Olho D Água do Piauí', 1882648, '07108'),

                                               (811, 17, 'Padre Marcos', 1224548, '07207'),

                                               (812, 17, 'Paes Landim', 1176163, '07306'),

                                               (813, 17, 'Pajeú do Piauí', 19193, '07355'),

                                               (814, 17, 'Palmeira do Piauí', 872023, '07405'),

                                               (815, 17, 'Palmeirais', 892618, '07504'),

                                               (816, 17, 'Paquetá', 843030, '07553'),

                                               (817, 17, 'Parnaguá', 578660, '07603'),

                                               (818, 17, 'Parnaíba', 586430, '07702'),

                                               (819, 17, 'Passagem Franca do Piauí', 971681, '07751'),

                                               (820, 17, 'Patos do Piauí', 433203, '07777'),

                                               (821, 17, 'Pau D Arco do Piauí', 862590, '07793'),

                                               (822, 17, 'Paulistana', 990037, '07801'),

                                               (823, 17, 'Pavussu', 1121920, '07850'),

                                               (824, 17, 'Pedro II', 1421614, '07900'),

                                               (825, 17, 'Pedro Laurentino', 423887, '07934'),

                                               (826, 17, 'Picos', 577857, '08007'),

                                               (827, 17, 'Pimenteiras', 1915891, '08106'),

                                               (828, 17, 'Pio IX', 830568, '08205'),

                                               (829, 17, 'Piracuruca', 486533, '08304'),

                                               (830, 17, 'Piripiri', 89541, '08403'),

                                               (831, 17, 'Porto', 252617, '08502'),

                                                (832, 17, 'Porto Alegre do Piauí', 395442, '08551'),

                                               (833, 17, 'Prata do Piauí', 1614042, '08601'),

                                               (834, 17, 'Queimada Nova', 1332551, '08650'),

                                               (835, 17, 'Redenção do Gurguéia', 566375, '08700'),

                                               (836, 17, 'Regeneração', 695817, '08809'),

                                                (837, 17, 'Riacho Frio', 224934, '08858'),

                                               (838, 17, 'Ribeira do Piauí', 1621659, '08874'),

                                               (839, 17, 'Ribeiro Gonçalves', 525505, '08908'),

                                               (840, 17, 'Rio Grande do Piauí', 708277, '09005'),

                                               (841, 17, 'Santa Cruz do Piauí', 1763074, '09104'),

                                               (842, 17, 'Santa Cruz dos Milagres', 1664900, '09153'),

                                               (843, 17, 'Santa Filomena', 1700198, '09203'),

                                               (844, 17, 'Santa Luz', 1702861, '09302'),

                                               (845, 17, 'Santa Rosa do Piauí', 548575, '09377'),

                                               (846, 17, 'Santana do Piauí', 789786, '09351'),

                                               (847, 17, 'Santo Antônio de Lisboa', 1650974, '09401'),

                                               (848, 17, 'Santo Antônio dos Milagres', 1804428, '09450'),

                                               (849, 17, 'Santo Inácio do Piauí', 1698696, '09500'),

                                               (850, 17, 'São Braz do Piauí', 1810864, '09559'),

                                               (851, 17, 'São Félix do Piauí', 646897, '09609'),

                                               (852, 17, 'São Francisco de Assis do Piauí', 1960355, '09658'),

                                               (853, 17, 'São Francisco do Piauí', 449469, '09708'),

                                               (854, 17, 'São Gonçalo do Gurguéia', 1044504, '09757'),

                                               (855, 17, 'São Gonçalo do Piauí', 1157023, '09807'),

                                               (856, 17, 'São João da Canabrava', 1553318, '09856'),

                                               (857, 17, 'São João da Fronteira', 1684431, '09872'),

                                               (858, 17, 'São João da Serra', 1692728, '09906'),

                                               (859, 17, 'São João da Varjota', 1127792, '09955'),

                                               (860, 17, 'São João do Arraial', 1720400, '09971'),

                                               (861, 17, 'São João do Piauí', 955225, '10003'),

                                               (862, 17, 'São José do Divino', 331984, '10052'),

                                               (863, 17, 'São José do Peixe', 482269, '10102'),

                                               (864, 17, 'São José do Piauí', 1128042, '10201'),

                                               (865, 17, 'São Julião', 1834681, '10300'),

                                               (866, 17, 'São Lourenço do Piauí', 840662, '10359'),

                                               (867, 17, 'São Luis do Piauí', 1686806, '10375'),

                                               (868, 17, 'São Miguel da Baixa Grande', 813159, '10383'),

                                               (869, 17, 'São Miguel do Fidalgo', 1005194, '10391'),

                                               (870, 17, 'São Miguel do Tapuio', 1080920, '10409'),

                                               (871, 17, 'São Pedro do Piauí', 56967, '10508'),

                                               (872, 17, 'São Raimundo Nonato', 356376, '10607'),

                                               (873, 17, 'Sebastião Barros', 1405346, '10623'),

                                               (874, 17, 'Sebastião Leal', 421702, '10631'),

                                               (875, 17, 'Sigefredo Pacheco', 1383897, '10656'),

                                               (876, 17, 'Simões', 378060, '10706'),

                                               (877, 17, 'Simplício Mendes', 1417490, '10805'),

                                               (878, 17, 'Socorro do Piauí', 765916, '10904'),

                                               (879, 17, 'Sussuapara', 1397231, '10938'),

                                               (880, 17, 'Tamboril do Piauí', 204239, '10953'),

                                               (881, 17, 'Tanque do Piauí', 1201534, '10979'),

                                               (882, 17, 'Teresina', 619699, '11001'),

                                               (883, 17, 'União', 1491195, '11100'),

                                               (884, 17, 'Uruçuí', 691560, '11209'),

                                               (885, 17, 'Valença do Piauí', 1149301, '11308'),

                                               (886, 17, 'Várzea Branca', 45392, '11357'),

                                               (887, 17, 'Várzea Grande', 1915522, '11407'),

                                               (888, 17, 'Vera Mendes', 78578, '11506'),

                                               (889, 17, 'Vila Nova do Piauí', 1799499, '11605'),

                                               (890, 17, 'Wall Ferraz', 1988184, '11704'),

                                               (891, 6, 'Abaiara', 1032568, '00101'),

                                               (892, 6, 'Acarape', 1663720, '00150'),

                                               (893, 6, 'Acaraú', 977224, '00200'),

                                               (894, 6, 'Acopiara', 917637, '00309'),

                                               (895, 6, 'Aiuaba', 169769, '00408'),

                                               (896, 6, 'Alcântaras', 1877407, '00507'),

                                               (897, 6, 'Altaneira', 1597749, '00606'),

                                               (898, 6, 'Alto Santo', 1778486, '00705'),

                                               (899, 6, 'Amontada', 664498, '00754'),

                                               (900, 6, 'Antonina do Norte', 1706490, '00804'),

                                               (901, 6, 'Apuiarés', 1066237, '00903'),

                                               (902, 6, 'Aquiraz', 1471194, '01000'),

                                               (903, 6, 'Aracati', 130353, '01109'),

                                               (904, 6, 'Aracoiaba', 475591, '01208'),

                                               (905, 6, 'Ararendá', 1927075, '01257'),

                                               (906, 6, 'Araripe', 258254, '01307'),

                                               (907, 6, 'Aratuba', 39567, '01406'),

                                               (908, 6, 'Arneiroz', 498301, '01505'),

                                               (909, 6, 'Assaré', 1523276, '01604'),

                                               (910, 6, 'Aurora', 183113, '01703'),

                                               (911, 6, 'Baixio', 27687, '01802'),

                                               (912, 6, 'Banabuiú', 863346, '01851'),

                                               (913, 6, 'Barbalha', 657754, '01901'),

                                               (914, 6, 'Barreira', 340157, '01950'),

                                               (915, 6, 'Barro', 796814, '02008'),

                                               (916, 6, 'Barroquinha', 1703861, '02057'),

                                               (917, 6, 'Baturité', 1736554, '02107'),

                                               (918, 6, 'Beberibe', 1728570, '02206'),

                                               (919, 6, 'Bela Cruz', 1189641, '02305'),

                                               (920, 6, 'Boa Viagem', 785097, '02404'),

                                               (921, 6, 'Brejo Santo', 802569, '02503'),

                                               (922, 6, 'Camocim', 570633, '02602'),

                                               (923, 6, 'Campos Sales', 1717356, '02701'),

                                               (924, 6, 'Canindé', 257385, '02800'),

                                               (925, 6, 'Capistrano', 1401465, '02909'),

                                               (926, 6, 'Caridade', 713836, '03006'),

                                               (927, 6, 'Cariré', 245085, '03105'),

                                               (928, 6, 'Caririaçu', 610349, '03204'),

                                               (929, 6, 'Cariús', 1972937, '03303'),

                                               (930, 6, 'Carnaubal', 1527615, '03402'),

                                               (931, 6, 'Cascavel', 1332724, '03501'),

                                               (932, 6, 'Catarina', 1648661, '03600'),

                                               (933, 6, 'Catunda', 1357690, '03659'),

                                               (934, 6, 'Caucaia', 1264993, '03709'),

                                               (935, 6, 'Cedro', 1861451, '03808'),

                                               (936, 6, 'Chaval', 181706, '03907'),

                                               (937, 6, 'Choró', 1096682, '03931'),

                                               (938, 6, 'Chorozinho', 475231, '03956'),

                                               (939, 6, 'Coreaú', 640452, '04004'),

                                               (940, 6, 'Crateús', 834373, '04103'),

                                               (941, 6, 'Crato', 497171, '04202'),

                                               (942, 6, 'Croatá', 279622, '04236'),

                                               (943, 6, 'Cruz', 292889, '04251'),

                                               (944, 6, 'Deputado Irapuan Pinheiro', 1834826, '04269'),

                                               (945, 6, 'Ererê', 843534, '04277'),

                                               (946, 6, 'Eusébio', 1282456, '04285'),

                                               (947, 6, 'Farias Brito', 282933, '04301'),

                                               (948, 6, 'Forquilha', 1835711, '04350'),

                                               (949, 6, 'Fortaleza', 1304590, '04400'),

                                               (950, 6, 'Fortim', 1497479, '04459'),

                                               (951, 6, 'Frecheirinha', 1573259, '04509'),

                                               (952, 6, 'General Sampaio', 349575, '04608'),

                                               (953, 6, 'Graça', 1917808, '04657'),

                                               (954, 6, 'Granja', 998721, '04707'),

                                               (955, 6, 'Granjeiro', 1206532, '04806'),

                                               (956, 6, 'Groaíras', 226477, '04905'),

                                               (957, 6, 'Guaiúba', 1228699, '04954'),

                                               (958, 6, 'Guaraciaba do Norte', 1781619, '05001'),

                                               (959, 6, 'Guaramiranga', 1802223, '05100'),

                                               (960, 6, 'Hidrolândia', 427652, '05209'),

                                               (961, 6, 'Horizonte', 436191, '05233'),

                                               (962, 6, 'Ibaretama', 1133352, '05266'),

                                               (963, 6, 'Ibiapina', 806483, '05308'),

                                               (964, 6, 'Ibicuitinga', 507802, '05332'),

                                               (965, 6, 'Icapuí', 1203576, '05357'),

                                               (966, 6, 'Icó', 1258260, '05407'),

                                               (967, 6, 'Iguatu', 1534506, '05506'),

                                               (968, 6, 'Independência', 576972, '05605'),

                                               (969, 6, 'Ipaporanga', 310162, '05654'),

                                               (970, 6, 'Ipaumirim', 985479, '05704'),

                                               (971, 6, 'Ipu', 221531, '05803'),

                                               (972, 6, 'Ipueiras', 1731819, '05902'),

                                               (973, 6, 'Iracema', 1823130, '06009'),

                                               (974, 6, 'Irauçuba', 771555, '06108'),

                                               (975, 6, 'Itaiçaba', 1700229, '06207'),

                                               (976, 6, 'Itaitinga', 658717, '06256'),

                                               (977, 6, 'Itapagé', 1936380, '06306'),

                                               (978, 6, 'Itapipoca', 932038, '06405'),

                                               (979, 6, 'Itapiúna', 809573, '06504'),

                                               (980, 6, 'Itarema', 407697, '06553'),

                                               (981, 6, 'Itatira', 967055, '06603'),

                                               (982, 6, 'Jaguaretama', 1112721, '06702'),

                                               (983, 6, 'Jaguaribara', 820677, '06801'),

                                               (984, 6, 'Jaguaribe', 26042, '06900'),

                                               (985, 6, 'Jaguaruana', 1323736, '07007'),

                                               (986, 6, 'Jardim', 972751, '07106'),

                                               (987, 6, 'Jati', 1963563, '07205'),

                                               (988, 6, 'Jijoca de Jericoacoara', 1627232, '07254'),

                                               (989, 6, 'Juazeiro do Norte', 1900039, '07304'),

                                               (990, 6, 'Jucás', 925517, '07403'),

                                               (991, 6, 'Lavras da Mangabeira', 106001, '07502'),

                                               (992, 6, 'Limoeiro do Norte', 1802291, '07601'),

                                               (993, 6, 'Madalena', 11324, '07635'),

                                               (994, 6, 'Maracanaú', 1359792, '07650'),

                                               (995, 6, 'Maranguape', 936648, '07700'),

                                               (996, 6, 'Marco', 1249501, '07809'),

                                               (997, 6, 'Martinópole', 930141, '07908'),

                                               (998, 6, 'Massapê', 1259505, '08005'),

                                               (999, 6, 'Mauriti', 1566206, '08104'),

                                               (1000, 6, 'Meruoca', 990986, '08203'),

                                               (1001, 6, 'Milagres', 581657, '08302'),

                                               (1002, 6, 'Milhã', 1342337, '08351'),

                                               (1003, 6, 'Miraíma', 1064592, '08377'),

                                               (1004, 6, 'Missão Velha', 209642, '08401'),

                                               (1005, 6, 'Mombaça', 831455, '08500'),

                                               (1006, 6, 'Monsenhor Tabosa', 894144, '08609'),

                                               (1007, 6, 'Morada Nova', 1096461, '08708'),

                                               (1008, 6, 'Moraújo', 799369, '08807'),

                                               (1009, 6, 'Morrinhos', 872465, '08906'),

                                               (1010, 6, 'Mucambo', 1876516, '09003'),

                                               (1011, 6, 'Mulungu', 1502352, '09102'),

                                               (1012, 6, 'Nova Olinda', 1995165, '09201'),

                                               (1013, 6, 'Nova Russas', 43548, '09300'),

                                               (1014, 6, 'Novo Oriente', 1611164, '09409'),

                                               (1015, 6, 'Ocara', 41863, '09458'),

                                               (1016, 6, 'Orós', 862551, '09508'),

                                               (1017, 6, 'Pacajus', 70008, '09607'),

                                               (1018, 6, 'Pacatuba', 292330, '09706'),

                                               (1019, 6, 'Pacoti', 1753180, '09805'),

                                               (1020, 6, 'Pacujá', 894304, '09904'),

                                               (1021, 6, 'Palhano', 1428764, '10001'),

                                               (1022, 6, 'Palmácia', 849165, '10100'),

                                               (1023, 6, 'Paracuru', 11078, '10209'),

                                               (1024, 6, 'Paraipaba', 1486341, '10258'),

                                               (1025, 6, 'Parambu', 954843, '10308'),

                                               (1026, 6, 'Paramoti', 1842287, '10407'),

                                               (1027, 6, 'Pedra Branca', 1307071, '10506'),

                                               (1028, 6, 'Penaforte', 1204869, '10605'),

                                               (1029, 6, 'Pentecoste', 909180, '10704'),

                                               (1030, 6, 'Pereiro', 891035, '10803'),

                                               (1031, 6, 'Pindoretama', 1795551, '10852'),

                                               (1032, 6, 'Piquet Carneiro', 53590, '10902'),

                                               (1033, 6, 'Pires Ferreira', 169411, '10951'),

                                               (1034, 6, 'Poranga', 835907, '11009'),

                                               (1035, 6, 'Porteiras', 1586011, '11108'),

                                               (1036, 6, 'Potengi', 1119730, '11207'),

                                               (1037, 6, 'Potiretama', 1929754, '11231'),

                                               (1038, 6, 'Quiterianópolis', 847010, '11264'),

                                               (1039, 6, 'Quixadá', 1341125, '11306'),

                                               (1040, 6, 'Quixelô', 1705579, '11355'),

                                               (1041, 6, 'Quixeramobim', 1686670, '11405'),

                                               (1042, 6, 'Quixeré', 1839448, '11504'),

                                               (1043, 6, 'Redenção', 98499, '11603'),

                                               (1044, 6, 'Reriutaba', 1192882, '11702'),

                                                (1045, 6, 'Russas', 1840256, '11801'),

                                               (1046, 6, 'Saboeiro', 1328041, '11900'),

                                               (1047, 6, 'Salitre', 994472, '11959'),

                                               (1048, 6, 'Santa Quitéria', 1227280, '12205'),

                                               (1049, 6, 'Santana do Acaraú', 1980550, '12007'),

                                               (1050, 6, 'Santana do Cariri', 70317, '12106'),

                                               (1051, 6, 'São Benedito', 1364514, '12304'),

                                               (1052, 6, 'São Gonçalo do Amarante', 1452345, '12403'),

                                               (1053, 6, 'São João do Jaguaribe', 1704533, '12502'),

                                               (1054, 6, 'São Luís do Curu', 1634606, '12601'),

                                               (1055, 6, 'Senador Pompeu', 685981, '12700'),

                                               (1056, 6, 'Senador Sá', 1456375, '12809'),

                                               (1057, 6, 'Sobral', 1280980, '12908'),

                                               (1058, 6, 'Solonópole', 892767, '13005'),

                                               (1059, 6, 'Tabuleiro do Norte', 1535597, '13104'),

                                               (1060, 6, 'Tamboril', 1825297, '13203'),

                                               (1061, 6, 'Tarrafas', 133965, '13252'),

                                               (1062, 6, 'Tauá', 915103, '13302'),

                                               (1063, 6, 'Tejuçuoca', 1305240, '13351'),

                                               (1064, 6, 'Tianguá', 548517, '13401'),

                                               (1065, 6, 'Trairi', 1407688, '13500'),

                                               (1066, 6, 'Tururu', 1272710, '13559'),

                                               (1067, 6, 'Ubajara', 1763550, '13609'),

                                               (1068, 6, 'Umari', 1506916, '13708'),

                                               (1069, 6, 'Umirim', 1618046, '13757'),

                                               (1070, 6, 'Uruburetama', 754393, '13807'),

                                               (1071, 6, 'Uruoca', 70008, '13906'),

                                               (1072, 6, 'Varjota', 1493647, '13955'),

                                               (1073, 6, 'Várzea Alegre', 1106075, '14003'),

                                               (1074, 6, 'Viçosa do Ceará', 1690192, '14102'),

                                               (1075, 20, 'Acari', 1153947, '00109'),

                                               (1076, 20, 'Açu', 68696, '00208'),

                                               (1077, 20, 'Afonso Bezerra', 1321488, '00307'),

                                               (1078, 20, 'Água Nova', 1990539, '00406'),

                                               (1079, 20, 'Alexandria', 1336951, '00505'),

                                               (1080, 20, 'Almino Afonso', 731994, '00604'),

                                               (1081, 20, 'Alto do Rodrigues', 1431639, '00703'),

                                               (1082, 20, 'Angicos', 217680, '00802'),

                                               (1083, 20, 'Antônio Martins', 1392704, '00901'),

                                               (1084, 20, 'Apodi', 874112, '01008'),

                                               (1085, 20, 'Areia Branca', 1226746, '01107'),

                                               (1086, 20, 'Arês', 978939, '01206'),

                                               (1087, 20, 'Augusto Severo', 754249, '01305'),

                                               (1088, 20, 'Baía Formosa', 1274902, '01404'),

                                               (1089, 20, 'Baraúna', 1826806, '01453'),

                                               (1090, 20, 'Barcelona', 130597, '01503'),

                                               (1091, 20, 'Bento Fernandes', 289455, '01602'),

                                               (1092, 20, 'Bodó', 1183518, '01651'),

                                               (1093, 20, 'Bom Jesus', 1619103, '01701'),

                                               (1094, 20, 'Brejinho', 421408, '01800'),

                                               (1095, 20, 'Caiçara do Norte', 337407, '01859'),

                                               (1096, 20, 'Caiçara do Rio do Vento', 1698511, '01909'),

                                               (1097, 20, 'Caicó', 1764914, '02006'),

                                               (1098, 20, 'Campo Redondo', 942113, '02105'),

                                               (1099, 20, 'Canguaretama', 808662, '02204'),

                                               (1100, 20, 'Caraúbas', 651913, '02303'),

                                               (1101, 20, 'Carnaúba dos Dantas', 1208178, '02402'),

                                               (1102, 20, 'Carnaubais', 1336860, '02501'),

                                               (1103, 20, 'Ceará-Mirim', 1790533, '02600'),

                                               (1104, 20, 'Cerro Corá', 1696645, '02709'),

                                               (1105, 20, 'Coronel Ezequiel', 732619, '02808'),

                                               (1106, 20, 'Coronel João Pessoa', 69141, '02907'),

                                               (1107, 20, 'Cruzeta', 13778, '03004'),

                                               (1108, 20, 'Currais Novos', 1052273, '03103'),

                                               (1109, 20, 'Doutor Severiano', 1869987, '03202'),

                                               (1110, 20, 'Encanto', 76414, '03301'),

                                               (1111, 20, 'Equador', 1364664, '03400'),

                                               (1112, 20, 'Espírito Santo', 422498, '03509'),

                                               (1113, 20, 'Extremoz', 900368, '03608'),

                                               (1114, 20, 'Felipe Guerra', 158857, '03707'),

                                               (1115, 20, 'Fernando Pedroza', 601846, '03756'),

                                               (1116, 20, 'Florânia', 1989165, '03806'),

                                               (1117, 20, 'Francisco Dantas', 709232, '03905'),

                                               (1118, 20, 'Frutuoso Gomes', 1365860, '04002'),

                                               (1119, 20, 'Galinhos', 563550, '04101'),

                                               (1120, 20, 'Goianinha', 575925, '04200'),

                                               (1121, 20, 'Governador Dix-Sept Rosado', 1705959, '04309'),

                                                (1122, 20, 'Grossos', 1923466, '04408'),

                                               (1123, 20, 'Guamaré', 1982066, '04507'),

                                               (1124, 20, 'Ielmo Marinho', 361510, '04606'),

                                               (1125, 20, 'Ipanguaçu', 1900698, '04705'),

                                               (1126, 20, 'Ipueira', 888172, '04804'),

                                               (1127, 20, 'Itajá', 1491218, '04853'),

                                               (1128, 20, 'Itaú', 1185015, '04903'),

                                               (1129, 20, 'Jaçanã', 679330, '05009'),

                                               (1130, 20, 'Jandaíra', 1128570, '05108'),

                                               (1131, 20, 'Janduís', 1195005, '05207'),

                                               (1132, 20, 'Januário Cicco', 357777, '05306'),

                                               (1133, 20, 'Japi', 1975012, '05405'),

                                               (1134, 20, 'Jardim de Angicos', 1358061, '05504'),

                                               (1135, 20, 'Jardim de Piranhas', 1922337, '05603'),

                                               (1136, 20, 'Jardim do Seridó', 1111011, '05702'),

                                               (1137, 20, 'João Câmara', 616736, '05801'),

                                               (1138, 20, 'João Dias', 91704, '05900'),

                                               (1139, 20, 'José da Penha', 809691, '06007'),

                                               (1140, 20, 'Jucurutu', 720351, '06106'),

                                               (1141, 20, 'Jundiá', 712144, '06155'),

                                               (1142, 20, 'Lagoa d Anta', 498423, '06205'),

                                               (1143, 20, 'Lagoa de Pedras', 1129942, '06304'),

                                               (1144, 20, 'Lagoa de Velhos', 684567, '06403'),

                                               (1145, 20, 'Lagoa Nova', 1835166, '06502'),

                                               (1146, 20, 'Lagoa Salgada', 1362029, '06601'),

                                               (1147, 20, 'Lajes', 1561215, '06700'),

                                               (1148, 20, 'Lajes Pintadas', 1469893, '06809'),

                                               (1149, 20, 'Lucrécia', 1996050, '06908'),

                                               (1150, 20, 'Luís Gomes', 201118, '07005'),

                                               (1151, 20, 'Macaíba', 1389349, '07104');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (1152, 20, 'Macau', 810395, '07203'),

                                               (1153, 20, 'Major Sales', 1573352, '07252'),

                                               (1154, 20, 'Marcelino Vieira', 330522, '07302'),

                                               (1155, 20, 'Martins', 1636159, '07401'),

                                               (1156, 20, 'Maxaranguape', 908759, '07500'),

                                               (1157, 20, 'Messias Targino', 1669890, '07609'),

                                               (1158, 20, 'Montanhas', 436427, '07708'),

                                               (1159, 20, 'Monte Alegre', 588646, '07807'),

                                               (1160, 20, 'Monte das Gameleiras', 182529, '07906'),

                                               (1161, 20, 'Mossoró', 560010, '08003'),

                                               (1162, 20, 'Natal', 1199108, '08102'),

                                               (1163, 20, 'Nísia Floresta', 1468609, '08201'),

                                               (1164, 20, 'Nova Cruz', 1586061, '08300'),

                                               (1165, 20, 'Olho-d Água do Borges', 418181, '08409'),

                                               (1166, 20, 'Ouro Branco', 1417433, '08508'),

                                               (1167, 20, 'Paraná', 231179, '08607'),

                                               (1168, 20, 'Paraú', 48021, '08706'),

                                               (1169, 20, 'Parazinho', 577627, '08805'),

                                               (1170, 20, 'Parelhas', 238903, '08904'),

                                               (1171, 20, 'Parnamirim', 866970, '03251'),

                                               (1172, 20, 'Passa e Fica', 654633, '09100'),

                                               (1173, 20, 'Passagem', 1110346, '09209'),

                                               (1174, 20, 'Patu', 228411, '09308'),

                                               (1175, 20, 'Pau dos Ferros', 1971266, '09407'),

                                               (1176, 20, 'Pedra Grande', 922126, '09506'),

                                               (1177, 20, 'Pedra Preta', 15026, '09605'),

                                               (1178, 20, 'Pedro Avelino', 1255118, '09704'),

                                               (1179, 20, 'Pedro Velho', 161570, '09803'),

                                               (1180, 20, 'Pendências', 1565327, '09902'),

                                               (1181, 20, 'Pilões', 33189, '10009'),

                                               (1182, 20, 'Poço Branco', 977211, '10108'),

                                               (1183, 20, 'Portalegre', 1430184, '10207'),

                                               (1184, 20, 'Porto do Mangue', 1100154, '10256'),

                                               (1185, 20, 'Presidente Juscelino', 831338, '10306'),

                                               (1186, 20, 'Pureza', 1383677, '10405'),

                                               (1187, 20, 'Rafael Fernandes', 1686815, '10504'),

                                               (1188, 20, 'Rafael Godeiro', 1226205, '10603'),

                                               (1189, 20, 'Riacho da Cruz', 1580777, '10702'),

                                               (1190, 20, 'Riacho de Santana', 127216, '10801'),

                                               (1191, 20, 'Riachuelo', 505399, '10900'),

                                               (1192, 20, 'Rio do Fogo', 1440262, '08953'),

                                               (1193, 20, 'Rodolfo Fernandes', 1000338, '11007'),

                                               (1194, 20, 'Ruy Barbosa', 301161, '11106'),

                                               (1195, 20, 'Santa Cruz', 1836192, '11205'),

                                               (1196, 20, 'Santa Maria', 648754, '09332'),

                                               (1197, 20, 'Santana do Matos', 1424697, '11403'),

                                               (1198, 20, 'Santana do Seridó', 1947114, '11429'),

                                               (1199, 20, 'Santo Antônio', 1815287, '11502'),

                                               (1200, 20, 'São Bento do Norte', 834940, '11601'),

                                               (1201, 20, 'São Bento do Trairí', 1702952, '11700'),

                                               (1202, 20, 'São Fernando', 434101, '11809'),

                                               (1203, 20, 'São Francisco do Oeste', 1153394, '11908'),

                                               (1204, 20, 'São Gonçalo do Amarante', 1278454, '12005'),

                                               (1205, 20, 'São João do Sabugi', 1211133, '12104'),

                                               (1206, 20, 'São José de Mipibu', 1998574, '12203'),

                                               (1207, 20, 'São José do Campestre', 477005, '12302'),

                                               (1208, 20, 'São José do Seridó', 94145, '12401'),

                                               (1209, 20, 'São Miguel', 687344, '12500'),

                                               (1210, 20, 'São Miguel do Gostoso', 1640664, '12559'),

                                               (1211, 20, 'São Paulo do Potengi', 569682, '12609'),

                                               (1212, 20, 'São Pedro', 1660766, '12708'),

                                               (1213, 20, 'São Rafael', 675589, '12807'),

                                               (1214, 20, 'São Tomé', 1161402, '12906'),

                                               (1215, 20, 'São Vicente', 965759, '13003'),

                                               (1216, 20, 'Senador Elói de Souza', 214002, '13102'),

                                               (1217, 20, 'Senador Georgino Avelino', 1849997, '13201'),

                                               (1218, 20, 'Serra de São Bento', 1983201, '13300'),

                                               (1219, 20, 'Serra do Mel', 1145151, '13359'),

                                               (1220, 20, 'Serra Negra do Norte', 1225513, '13409'),

                                               (1221, 20, 'Serrinha', 1677099, '13508'),

                                               (1222, 20, 'Serrinha dos Pintos', 950100, '13557'),

                                               (1223, 20, 'Severiano Melo', 1520420, '13607'),

                                               (1224, 20, 'Sítio Novo', 505903, '13706'),

                                               (1225, 20, 'Taboleiro Grande', 323407, '13805'),

                                               (1226, 20, 'Taipu', 1165675, '13904'),

                                               (1227, 20, 'Tangará', 1959375, '14001'),

                                               (1228, 20, 'Tenente Ananias', 1378537, '14100'),

                                               (1229, 20, 'Tenente Laurentino Cruz', 284133, '14159'),

                                               (1230, 20, 'Tibau', 1214371, '11056'),

                                               (1231, 20, 'Tibau do Sul', 687182, '14209'),

                                               (1232, 20, 'Timbaúba dos Batistas', 1161210, '14308'),

                                               (1233, 20, 'Touros', 1939341, '14407'),

                                               (1234, 20, 'Triunfo Potiguar', 1642459, '14456'),

                                               (1235, 20, 'Umarizal', 1556758, '14506'),

                                               (1236, 20, 'Upanema', 1413356, '14605'),

                                               (1237, 20, 'Várzea', 1145949, '14704'),

                                               (1238, 20, 'Venha-Ver', 1800797, '14753'),

                                               (1239, 20, 'Vera Cruz', 810760, '14803'),

                                               (1240, 20, 'Viçosa', 895183, '14902'),

                                               (1241, 20, 'Vila Flor', 865665, '15008'),

                                               (1242, 15, 'Água Branca', 1679881, '00106'),

                                               (1243, 15, 'Aguiar', 479925, '00205'),

                                               (1244, 15, 'Alagoa Grande', 155062, '00304'),

                                               (1245, 15, 'Alagoa Nova', 1390391, '00403'),

                                               (1246, 15, 'Alagoinha', 957326, '00502'),

                                               (1247, 15, 'Alcantil', 578929, '00536'),

                                               (1248, 15, 'Algodão de Jandaíra', 1823156, '00577'),

                                               (1249, 15, 'Alhandra', 695246, '00601'),

                                               (1250, 15, 'Amparo', 66650, '00734'),

                                               (1251, 15, 'Aparecida', 164746, '00775'),

                                               (1252, 15, 'Araçagi', 1818588, '00809'),

                                               (1253, 15, 'Arara', 32659, '00908'),

                                               (1254, 15, 'Araruna', 208713, '01005'),

                                               (1255, 15, 'Areia', 961022, '01104'),

                                               (1256, 15, 'Areia de Baraúnas', 364111, '01153'),

                                               (1257, 15, 'Areial', 1277281, '01203'),

                                               (1258, 15, 'Aroeiras', 1355287, '01302'),

                                               (1259, 15, 'Assunção', 1300312, '01351'),

                                               (1260, 15, 'Baía da Traição', 1524308, '01401'),

                                               (1261, 15, 'Bananeiras', 1968337, '01500'),

                                               (1262, 15, 'Baraúna', 244287, '01534'),

                                               (1263, 15, 'Barra de Santa Rosa', 575852, '01609'),

                                               (1264, 15, 'Barra de Santana', 25808, '01575'),

                                               (1265, 15, 'Barra de São Miguel', 1138069, '01708'),

                                               (1266, 15, 'Bayeux', 932481, '01807'),

                                               (1267, 15, 'Belém', 1525881, '01906'),

                                               (1268, 15, 'Belém do Brejo do Cruz', 1754007, '02003'),

                                               (1269, 15, 'Bernardino Batista', 1775519, '02052'),

                                               (1270, 15, 'Boa Ventura', 562832, '02102'),

                                               (1271, 15, 'Boa Vista', 292397, '02151'),

                                               (1272, 15, 'Bom Jesus', 1707894, '02201'),

                                               (1273, 15, 'Bom Sucesso', 1101742, '02300'),

                                               (1274, 15, 'Bonito de Santa Fé', 804855, '02409'),

                                               (1275, 15, 'Boqueirão', 1903162, '02508'),

                                               (1276, 15, 'Borborema', 1053281, '02706'),

                                               (1277, 15, 'Brejo do Cruz', 1751942, '02805'),

                                               (1278, 15, 'Brejo dos Santos', 1533331, '02904'),

                                               (1279, 15, 'Caaporã', 219583, '03001'),

                                               (1280, 15, 'Cabaceiras', 73927, '03100'),

                                               (1281, 15, 'Cabedelo', 733129, '03209'),

                                               (1282, 15, 'Cachoeira dos Índios', 1074430, '03308'),

                                               (1283, 15, 'Cacimba de Areia', 1614877, '03407'),

                                               (1284, 15, 'Cacimba de Dentro', 285801, '03506'),

                                               (1285, 15, 'Cacimbas', 1119810, '03555'),

                                               (1286, 15, 'Caiçara', 1411977, '03605'),

                                               (1287, 15, 'Cajazeiras', 1343906, '03704'),

                                               (1288, 15, 'Cajazeirinhas', 663099, '03753'),

                                               (1289, 15, 'Caldas Brandão', 16179, '03803'),

                                               (1290, 15, 'Camalaú', 1555270, '03902'),

                                               (1291, 15, 'Campina Grande', 927542, '04009'),

                                               (1292, 15, 'Tacima', 144664, '16409'),

                                               (1293, 15, 'Capim', 431414, '04033'),

                                               (1294, 15, 'Caraúbas', 21614, '04074'),

                                               (1295, 15, 'Carrapateira', 1858425, '04108'),

                                               (1296, 15, 'Casserengue', 1223731, '04157'),

                                               (1297, 15, 'Catingueira', 1483274, '04207'),

                                               (1298, 15, 'Catolé do Rocha', 983126, '04306'),

                                               (1299, 15, 'Caturité', 652183, '04355'),

                                               (1300, 15, 'Conceição', 800793, '04405'),

                                               (1301, 15, 'Condado', 1868713, '04504'),

                                               (1302, 15, 'Conde', 405177, '04603'),

                                               (1303, 15, 'Congo', 1454987, '04702'),

                                               (1304, 15, 'Coremas', 717897, '04801'),

                                               (1305, 15, 'Coxixola', 1545231, '04850'),

                                               (1306, 15, 'Cruz do Espírito Santo', 1768464, '04900'),

                                               (1307, 15, 'Cubati', 1274169, '05006'),

                                               (1308, 15, 'Cuité', 489187, '05105'),

                                               (1309, 15, 'Cuité de Mamanguape', 1249032, '05238'),

                                               (1310, 15, 'Cuitegi', 588537, '05204'),

                                               (1311, 15, 'Curral de Cima', 347599, '05279'),

                                               (1312, 15, 'Curral Velho', 1162190, '05303'),

                                               (1313, 15, 'Damião', 581640, '05352'),

                                               (1314, 15, 'Desterro', 334016, '05402'),

                                               (1315, 15, 'Diamante', 52130, '05600'),

                                               (1316, 15, 'Dona Inês', 1679869, '05709'),

                                               (1317, 15, 'Duas Estradas', 1891084, '05808'),

                                               (1318, 15, 'Emas', 94662, '05907'),

                                               (1319, 15, 'Esperança', 1260657, '06004'),

                                               (1320, 15, 'Fagundes', 1831546, '06103'),

                                               (1321, 15, 'Frei Martinho', 673626, '06202'),

                                               (1322, 15, 'Gado Bravo', 1902166, '06251'),

                                               (1323, 15, 'Guarabira', 1297782, '06301'),

                                               (1324, 15, 'Gurinhém', 57121, '06400'),

                                               (1325, 15, 'Gurjão', 739600, '06509'),

                                               (1326, 15, 'Ibiara', 631855, '06608'),

                                               (1327, 15, 'Igaracy', 919010, '02607'),

                                               (1328, 15, 'Imaculada', 1779864, '06707'),

                                               (1329, 15, 'Ingá', 1046452, '06806'),

                                               (1330, 15, 'Itabaiana', 983865, '06905'),

                                               (1331, 15, 'Itaporanga', 1557917, '07002'),

                                               (1332, 15, 'Itapororoca', 700356, '07101'),

                                               (1333, 15, 'Itatuba', 873238, '07200'),

                                               (1334, 15, 'Jacaraú', 661359, '07309'),

                                               (1335, 15, 'Jericó', 561733, '07408'),

                                               (1336, 15, 'João Pessoa', 832113, '07507'),

                                               (1337, 15, 'Juarez Távora', 189485, '07606'),

                                               (1338, 15, 'Juazeirinho', 435151, '07705'),

                                               (1339, 15, 'Junco do Seridó', 1154356, '07804'),

                                               (1340, 15, 'Juripiranga', 1658897, '07903'),

                                               (1341, 15, 'Juru', 933878, '08000'),

                                               (1342, 15, 'Lagoa', 1151288, '08109'),

                                               (1343, 15, 'Lagoa de Dentro', 1738073, '08208'),

                                               (1344, 15, 'Lagoa Seca', 1218346, '08307'),

                                               (1345, 15, 'Lastro', 1377499, '08406'),

                                               (1346, 15, 'Livramento', 1709656, '08505'),

                                               (1347, 15, 'Logradouro', 1805885, '08554'),

                                               (1348, 15, 'Lucena', 337990, '08604'),

                                               (1349, 15, 'Mãe d Água', 1685018, '08703'),

                                               (1350, 15, 'Malta', 1268854, '08802'),

                                               (1351, 15, 'Mamanguape', 777523, '08901'),

                                               (1352, 15, 'Manaíra', 1068210, '09008'),

                                               (1353, 15, 'Marcação', 829991, '09057'),

                                               (1354, 15, 'Mari', 1553360, '09107'),

                                               (1355, 15, 'Marizópolis', 320661, '09156'),

                                               (1356, 15, 'Massaranduba', 30915, '09206'),

                                               (1357, 15, 'Mataraca', 980400, '09305'),

                                               (1358, 15, 'Matinhas', 1155320, '09339'),

                                               (1359, 15, 'Mato Grosso', 290859, '09370'),

                                               (1360, 15, 'Maturéia', 460040, '09396'),

                                               (1361, 15, 'Mogeiro', 1305425, '09404'),

                                               (1362, 15, 'Montadas', 1067923, '09503'),

                                               (1363, 15, 'Monte Horebe', 164256, '09602'),

                                               (1364, 15, 'Monteiro', 951974, '09701'),

                                               (1365, 15, 'Mulungu', 1092822, '09800'),

                                               (1366, 15, 'Natuba', 16368, '09909'),

                                               (1367, 15, 'Nazarezinho', 1280356, '10006'),

                                               (1368, 15, 'Nova Floresta', 75665, '10105'),

                                               (1369, 15, 'Nova Olinda', 719997, '10204'),

                                               (1370, 15, 'Nova Palmeira', 1073067, '10303'),

                                               (1371, 15, 'Olho d Água', 247684, '10402'),

                                               (1372, 15, 'Olivedos', 300006, '10501'),

                                               (1373, 15, 'Ouro Velho', 1847221, '10600'),

                                               (1374, 15, 'Parari', 1069028, '10659'),

                                               (1375, 15, 'Passagem', 1307210, '10709'),

                                               (1376, 15, 'Patos', 1966639, '10808'),

                                               (1377, 15, 'Paulista', 664841, '10907'),

                                               (1378, 15, 'Pedra Branca', 1033690, '11004'),

                                               (1379, 15, 'Pedra Lavrada', 912676, '11103'),

                                               (1380, 15, 'Pedras de Fogo', 1044029, '11202'),

                                               (1381, 15, 'Pedro Régis', 664750, '12721'),

                                               (1382, 15, 'Piancó', 95707, '11301'),

                                               (1383, 15, 'Picuí', 1930791, '11400'),

                                               (1384, 15, 'Pilar', 29745, '11509'),

                                               (1385, 15, 'Pilões', 1013360, '11608'),

                                               (1386, 15, 'Pilõezinhos', 882648, '11707'),

                                               (1387, 15, 'Pirpirituba', 1587582, '11806'),

                                               (1388, 15, 'Pitimbu', 705270, '11905'),

                                               (1389, 15, 'Pocinhos', 610046, '12002'),

                                               (1390, 15, 'Poço Dantas', 595414, '12036'),

                                               (1391, 15, 'Poço de José de Moura', 547375, '12077'),

                                               (1392, 15, 'Pombal', 151114, '12101'),

                                               (1393, 15, 'Prata', 1685446, '12200'),

                                               (1394, 15, 'Princesa Isabel', 1920112, '12309'),

                                               (1395, 15, 'Puxinanã', 1890946, '12408'),

                                               (1396, 15, 'Queimadas', 1638327, '12507'),

                                               (1397, 15, 'Quixabá', 111427, '12606'),

                                               (1398, 15, 'Remígio', 736125, '12705'),

                                               (1399, 15, 'Riachão', 1680103, '12747'),

                                               (1400, 15, 'Riachão do Bacamarte', 1553875, '12754'),

                                               (1401, 15, 'Riachão do Poço', 881139, '12762'),

                                               (1402, 15, 'Riacho de Santo Antônio', 1738146, '12788'),

                                               (1403, 15, 'Riacho dos Cavalos', 246538, '12804'),

                                               (1404, 15, 'Rio Tinto', 1867045, '12903'),

                                               (1405, 15, 'Salgadinho', 1942400, '13000'),

                                               (1406, 15, 'Salgado de São Félix', 236834, '13109'),

                                               (1407, 15, 'Santa Cecília', 46981, '13158'),

                                               (1408, 15, 'Santa Cruz', 1755116, '13208'),

                                               (1409, 15, 'Santa Helena', 811529, '13307'),

                                               (1410, 15, 'Santa Inês', 229761, '13356'),

                                               (1411, 15, 'Santa Luzia', 1985267, '13406'),

                                               (1412, 15, 'Santa Rita', 404001, '13703'),

                                               (1413, 15, 'Santa Teresinha', 1876435, '13802'),

                                               (1414, 15, 'Santana de Mangueira', 110264, '13505'),

                                               (1415, 15, 'Santana dos Garrotes', 535881, '13604'),

                                               (1416, 15, 'Joca Claudino', 1353312, '13653'),

                                               (1417, 15, 'Santo André', 906023, '13851'),

                                               (1418, 15, 'São Bentinho', 951074, '13927'),

                                               (1419, 15, 'São Bento', 39015, '13901'),

                                               (1420, 15, 'São Domingos', 1504434, '13968'),

                                               (1421, 15, 'São Domingos do Cariri', 1529471, '13943'),

                                               (1422, 15, 'São Francisco', 1119170, '13984'),

                                               (1423, 15, 'São João do Cariri', 1769138, '14008'),

                                               (1424, 15, 'São João do Rio do Peixe', 1892381, '00700'),

                                               (1425, 15, 'São João do Tigre', 1823282, '14107'),

                                               (1426, 15, 'São José da Lagoa Tapada', 773741, '14206'),

                                               (1427, 15, 'São José de Caiana', 1984351, '14305'),

                                               (1428, 15, 'São José de Espinharas', 230276, '14404'),

                                               (1429, 15, 'São José de Piranhas', 1282349, '14503'),

                                               (1430, 15, 'São José de Princesa', 917358, '14552'),

                                               (1431, 15, 'São José do Bonfim', 554014, '14602'),

                                               (1432, 15, 'São José do Brejo do Cruz', 1285063, '14651'),

                                               (1433, 15, 'São José do Sabugi', 36519, '14701'),

                                               (1434, 15, 'São José dos Cordeiros', 755895, '14800'),

                                               (1435, 15, 'São José dos Ramos', 1822662, '14453'),

                                               (1436, 15, 'São Mamede', 162833, '14909'),

                                               (1437, 15, 'São Miguel de Taipu', 1930529, '15005'),

                                               (1438, 15, 'São Sebastião de Lagoa de Roça', 252884, '15104'),

                                               (1439, 15, 'São Sebastião do Umbuzeiro', 1799813, '15203'),

                                               (1440, 15, 'Sapé', 1238649, '15302'),

                                               (1441, 15, 'Seridó', 309252, '15401'),

                                               (1442, 15, 'Serra Branca', 1537550, '15500'),

                                               (1443, 15, 'Serra da Raiz', 1824824, '15609'),

                                               (1444, 15, 'Serra Grande', 1636225, '15708'),

                                               (1445, 15, 'Serra Redonda', 132087, '15807'),

                                               (1446, 15, 'Serraria', 913122, '15906'),

                                               (1447, 15, 'Sertãozinho', 1654921, '15930'),

                                               (1448, 15, 'Sobrado', 1811364, '15971'),

                                               (1449, 15, 'Solânea', 1624706, '16003'),

                                               (1450, 15, 'Soledade', 1894493, '16102'),

                                               (1451, 15, 'Sossêgo', 1257769, '16151'),

                                               (1452, 15, 'Sousa', 207024, '16201'),

                                               (1453, 15, 'Sumé', 989382, '16300'),

                                               (1454, 15, 'Taperoá', 320701, '16508'),

                                               (1455, 15, 'Tavares', 1608654, '16607'),

                                               (1456, 15, 'Teixeira', 512290, '16706'),

                                               (1457, 15, 'Tenório', 83113, '16755'),

                                               (1458, 15, 'Triunfo', 743347, '16805'),

                                               (1459, 15, 'Uiraúna', 1187948, '16904'),

                                               (1460, 15, 'Umbuzeiro', 452405, '17001'),

                                               (1461, 15, 'Várzea', 392165, '17100'),

                                               (1462, 15, 'Vieirópolis', 483678, '17209'),

                                               (1463, 15, 'Vista Serrana', 951598, '05501'),

                                               (1464, 15, 'Zabelê', 1824531, '17407'),

                                               (1465, 16, 'Abreu e Lima', 924996, '00054'),

                                               (1466, 16, 'Afogados da Ingazeira', 873795, '00104'),

                                               (1467, 16, 'Afrânio', 1378913, '00203'),

                                               (1468, 16, 'Agrestina', 1342197, '00302'),

                                               (1469, 16, 'Água Preta', 1577858, '00401'),

                                               (1470, 16, 'Águas Belas', 704859, '00500'),

                                               (1471, 16, 'Alagoinha', 1969491, '00609'),

                                               (1472, 16, 'Aliança', 1681956, '00708'),

                                               (1473, 16, 'Altinho', 623720, '00807'),

                                               (1474, 16, 'Amaraji', 1954717, '00906'),

                                               (1475, 16, 'Angelim', 1275671, '01003'),

                                               (1476, 16, 'Araçoiaba', 23285, '01052'),

                                               (1477, 16, 'Araripina', 1407979, '01102'),

                                               (1478, 16, 'Arcoverde', 230316, '01201'),

                                               (1479, 16, 'Barra de Guabiraba', 1499295, '01300'),

                                               (1480, 16, 'Barreiros', 1270087, '01409'),

                                               (1481, 16, 'Belém de Maria', 271839, '01508'),

                                               (1482, 16, 'Belém do São Francisco', 641908, '01607'),

                                               (1483, 16, 'Belo Jardim', 1399270, '01706'),

                                               (1484, 16, 'Betânia', 382564, '01805'),

                                               (1485, 16, 'Bezerros', 854823, '01904'),

                                               (1486, 16, 'Bodocó', 1329321, '02001'),

                                               (1487, 16, 'Bom Conselho', 1146806, '02100'),

                                               (1488, 16, 'Bom Jardim', 370291, '02209'),

                                               (1489, 16, 'Bonito', 1476850, '02308'),

                                               (1490, 16, 'Brejão', 998515, '02407'),

                                               (1491, 16, 'Brejinho', 192725, '02506'),

                                               (1492, 16, 'Brejo da Madre de Deus', 1739692, '02605'),

                                               (1493, 16, 'Buenos Aires', 260293, '02704'),

                                               (1494, 16, 'Buíque', 1222232, '02803'),

                                               (1495, 16, 'Cabo de Santo Agostinho', 1333964, '02902'),

                                               (1496, 16, 'Cabrobó', 1258022, '03009'),

                                               (1497, 16, 'Cachoeirinha', 839077, '03108'),

                                               (1498, 16, 'Caetés', 795059, '03207'),

                                               (1499, 16, 'Calçado', 1518709, '03306'),

                                               (1500, 16, 'Calumbi', 1182344, '03405'),

                                               (1501, 16, 'Camaragibe', 862683, '03454');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (1502, 16, 'Camocim de São Félix', 271005, '03504'),

                                               (1503, 16, 'Camutanga', 274153, '03603'),

                                               (1504, 16, 'Canhotinho', 1992323, '03702'),

                                               (1505, 16, 'Capoeiras', 320850, '03801'),

                                               (1506, 16, 'Carnaíba', 896127, '03900'),

                                               (1507, 16, 'Carnaubeira da Penha', 696019, '03926'),

                                               (1508, 16, 'Carpina', 1568001, '04007'),

                                               (1509, 16, 'Caruaru', 1706830, '04106'),

                                               (1510, 16, 'Casinhas', 146243, '04155'),

                                               (1511, 16, 'Catende', 917980, '04205'),

                                               (1512, 16, 'Cedro', 1399708, '04304'),

                                               (1513, 16, 'Chã de Alegria', 586579, '04403'),

                                               (1514, 16, 'Chã Grande', 444480, '04502'),

                                               (1515, 16, 'Condado', 1160886, '04601'),

                                               (1516, 16, 'Correntes', 1214902, '04700'),

                                               (1517, 16, 'Cortês', 605871, '04809'),

                                               (1518, 16, 'Cumaru', 784682, '04908'),

                                               (1519, 16, 'Cupira', 779015, '05004'),

                                               (1520, 16, 'Custódia', 1519028, '05103'),

                                               (1521, 16, 'Dormentes', 399775, '05152'),

                                               (1522, 16, 'Escada', 1540461, '05202'),

                                               (1523, 16, 'Exu', 701054, '05301'),

                                               (1524, 16, 'Feira Nova', 111023, '05400'),

                                               (1525, 16, 'Fernando de Noronha', 1226512, '05459'),

                                               (1526, 16, 'Ferreiros', 1747504, '05509'),

                                               (1527, 16, 'Flores', 549529, '05608'),

                                               (1528, 16, 'Floresta', 849177, '05707'),

                                               (1529, 16, 'Frei Miguelinho', 1649535, '05806'),

                                               (1530, 16, 'Gameleira', 973259, '05905'),

                                               (1531, 16, 'Garanhuns', 931191, '06002'),

                                               (1532, 16, 'Glória do Goitá', 793039, '06101'),

                                               (1533, 16, 'Goiana', 368805, '06200'),

                                               (1534, 16, 'Granito', 1973524, '06309'),

                                               (1535, 16, 'Gravatá', 1169829, '06408'),

                                               (1536, 16, 'Iati', 844121, '06507'),

                                               (1537, 16, 'Ibimirim', 1451516, '06606'),

                                               (1538, 16, 'Ibirajuba', 1226990, '06705'),

                                               (1539, 16, 'Igarassu', 1053946, '06804'),

                                               (1540, 16, 'Iguaraci', 1320923, '06903'),

                                               (1541, 16, 'Ilha de Itamaracá', 178076, '07604'),

                                               (1542, 16, 'Inajá', 1028731, '07000'),

                                               (1543, 16, 'Ingazeira', 1319996, '07109'),

                                               (1544, 16, 'Ipojuca', 369560, '07208'),

                                               (1545, 16, 'Ipubi', 373796, '07307'),

                                               (1546, 16, 'Itacuruba', 709140, '07406'),

                                               (1547, 16, 'Itaíba', 1270702, '07505'),

                                               (1548, 16, 'Itambé', 352181, '07653'),

                                               (1549, 16, 'Itapetim', 349083, '07703'),

                                               (1550, 16, 'Itapissuma', 1537755, '07752'),

                                               (1551, 16, 'Itaquitinga', 1645160, '07802'),

                                               (1552, 16, 'Jaboatão dos Guararapes', 1081169, '07901'),

                                               (1553, 16, 'Jaqueira', 1843490, '07950'),

                                               (1554, 16, 'Jataúba', 600954, '08008'),

                                               (1555, 16, 'Jatobá', 1711882, '08057'),

                                               (1556, 16, 'João Alfredo', 263071, '08107'),

                                               (1557, 16, 'Joaquim Nabuco', 1274930, '08206'),

                                               (1558, 16, 'Jucati', 507418, '08255'),

                                               (1559, 16, 'Jupi', 263739, '08305'),

                                               (1560, 16, 'Jurema', 1467153, '08404'),

                                               (1561, 16, 'Lagoa do Carro', 1622244, '08453'),

                                               (1562, 16, 'Lagoa de Itaenga', 556878, '08503'),

                                               (1563, 16, 'Lagoa do Ouro', 623652, '08602'),

                                               (1564, 16, 'Lagoa dos Gatos', 447192, '08701'),

                                               (1565, 16, 'Lagoa Grande', 71113, '08750'),

                                               (1566, 16, 'Lajedo', 1282613, '08800'),

                                               (1567, 16, 'Limoeiro', 1770153, '08909'),

                                               (1568, 16, 'Macaparana', 77227, '09006'),

                                               (1569, 16, 'Machados', 1762377, '09105'),

                                               (1570, 16, 'Manari', 236534, '09154'),

                                               (1571, 16, 'Maraial', 1369594, '09204'),

                                               (1572, 16, 'Mirandiba', 978740, '09303'),

                                               (1573, 16, 'Moreilândia', 937969, '14303'),

                                               (1574, 16, 'Moreno', 389763, '09402'),

                                               (1575, 16, 'Nazaré da Mata', 1564323, '09501'),

                                               (1576, 16, 'Olinda', 1735474, '09600'),

                                               (1577, 16, 'Orobó', 1394561, '09709'),

                                               (1578, 16, 'Orocó', 750502, '09808'),

                                               (1579, 16, 'Ouricuri', 507922, '09907'),

                                               (1580, 16, 'Palmares', 1655721, '10004'),

                                               (1581, 16, 'Palmeirina', 899914, '10103'),

                                               (1582, 16, 'Panelas', 423573, '10202'),

                                               (1583, 16, 'Paranatama', 75867, '10301'),

                                               (1584, 16, 'Parnamirim', 454327, '10400'),

                                               (1585, 16, 'Passira', 760607, '10509'),

                                               (1586, 16, 'Paudalho', 1075719, '10608'),

                                               (1587, 16, 'Paulista', 1385248, '10707'),

                                               (1588, 16, 'Pedra', 557024, '10806'),

                                               (1589, 16, 'Pesqueira', 1529726, '10905'),

                                               (1590, 16, 'Petrolândia', 1618560, '11002'),

                                               (1591, 16, 'Petrolina', 618753, '11101'),

                                               (1592, 16, 'Poção', 1642829, '11200'),

                                               (1593, 16, 'Pombos', 1750955, '11309'),

                                               (1594, 16, 'Primavera', 260793, '11408'),

                                               (1595, 16, 'Quipapá', 1854757, '11507'),

                                               (1596, 16, 'Quixaba', 1351339, '11533'),

                                               (1597, 16, 'Recife', 1195250, '11606'),

                                               (1598, 16, 'Riacho das Almas', 557780, '11705'),

                                               (1599, 16, 'Ribeirão', 521411, '11804'),

                                               (1600, 16, 'Rio Formoso', 508298, '11903'),

                                               (1601, 16, 'Sairé', 1018731, '12000'),

                                               (1602, 16, 'Salgadinho', 1615845, '12109'),

                                               (1603, 16, 'Salgueiro', 1301189, '12208'),

                                               (1604, 16, 'Saloá', 1029911, '12307'),

                                               (1605, 16, 'Sanharó', 1147356, '12406'),

                                               (1606, 16, 'Santa Cruz', 1277355, '12455'),

                                               (1607, 16, 'Santa Cruz da Baixa Verde', 590523, '12471'),

                                               (1608, 16, 'Santa Cruz do Capibaribe', 1861282, '12505'),

                                               (1609, 16, 'Santa Filomena', 1881461, '12554'),

                                               (1610, 16, 'Santa Maria da Boa Vista', 789291, '12604'),

                                               (1611, 16, 'Santa Maria do Cambucá', 437097, '12703'),

                                               (1612, 16, 'Santa Terezinha', 1646111, '12802'),

                                               (1613, 16, 'São Benedito do Sul', 50053, '12901'),

                                               (1614, 16, 'São Bento do Una', 1015183, '13008'),

                                               (1615, 16, 'São Caitano', 1144266, '13107'),

                                               (1616, 16, 'São João', 1862048, '13206'),

                                               (1617, 16, 'São Joaquim do Monte', 393597, '13305'),

                                               (1618, 16, 'São José da Coroa Grande', 1739528, '13404'),

                                               (1619, 16, 'São José do Belmonte', 1800426, '13503'),

                                               (1620, 16, 'São José do Egito', 522706, '13602'),

                                               (1621, 16, 'São Lourenço da Mata', 1688587, '13701'),

                                               (1622, 16, 'São Vicente Ferrer', 1176233, '13800'),

                                               (1623, 16, 'Serra Talhada', 276379, '13909'),

                                               (1624, 16, 'Serrita', 1095423, '14006'),

                                               (1625, 16, 'Sertânia', 1261859, '14105'),

                                               (1626, 16, 'Sirinhaém', 924152, '14204'),

                                               (1627, 16, 'Solidão', 1699086, '14402'),

                                               (1628, 16, 'Surubim', 1057107, '14501'),

                                               (1629, 16, 'Tabira', 1313077, '14600'),

                                               (1630, 16, 'Tacaimbó', 1806991, '14709'),

                                               (1631, 16, 'Tacaratu', 400519, '14808'),

                                               (1632, 16, 'Tamandaré', 338281, '14857'),

                                               (1633, 16, 'Taquaritinga do Norte', 630860, '15003'),

                                               (1634, 16, 'Terezinha', 1908753, '15102'),

                                               (1635, 16, 'Terra Nova', 640331, '15201'),

                                               (1636, 16, 'Timbaúba', 1386940, '15300'),

                                               (1637, 16, 'Toritama', 1506870, '15409'),

                                               (1638, 16, 'Tracunhaém', 760664, '15508'),

                                               (1639, 16, 'Trindade', 956058, '15607'),

                                               (1640, 16, 'Triunfo', 1117562, '15706'),

                                               (1641, 16, 'Tupanatinga', 939625, '15805'),

                                               (1642, 16, 'Tuparetama', 355108, '15904'),

                                               (1643, 16, 'Venturosa', 1369650, '16001'),

                                               (1644, 16, 'Verdejante', 1557029, '16100'),

                                               (1645, 16, 'Vertente do Lério', 923074, '16183'),

                                               (1646, 16, 'Vertentes', 646109, '16209'),

                                               (1647, 16, 'Vicência', 1807893, '16308'),

                                               (1648, 16, 'Vitória de Santo Antão', 1198656, '16407'),

                                               (1649, 16, 'Xexéu', 1531553, '16506'),

                                               (1650, 2, 'Água Branca', 245467, '00102'),

                                               (1651, 2, 'Anadia', 1758370, '00201'),

                                               (1652, 2, 'Arapiraca', 1996509, '00300'),

                                               (1653, 2, 'Atalaia', 759602, '00409'),

                                               (1654, 2, 'Barra de Santo Antônio', 1455973, '00508'),

                                               (1655, 2, 'Barra de São Miguel', 134339, '00607'),

                                               (1656, 2, 'Batalha', 142244, '00706'),

                                               (1657, 2, 'Belém', 1503337, '00805'),

                                               (1658, 2, 'Belo Monte', 278533, '00904'),

                                               (1659, 2, 'Boca da Mata', 445270, '01001'),

                                               (1660, 2, 'Branquinha', 1590812, '01100'),

                                               (1661, 2, 'Cacimbinhas', 258017, '01209'),

                                               (1662, 2, 'Cajueiro', 198070, '01308'),

                                               (1663, 2, 'Campestre', 1197371, '01357'),

                                               (1664, 2, 'Campo Alegre', 1688739, '01407'),

                                               (1665, 2, 'Campo Grande', 1240770, '01506'),

                                               (1666, 2, 'Canapi', 634621, '01605'),

                                               (1667, 2, 'Capela', 218224, '01704'),

                                               (1668, 2, 'Carneiros', 1343479, '01803'),

                                               (1669, 2, 'Chã Preta', 168073, '01902'),

                                               (1670, 2, 'Coité do Nóia', 246460, '02009'),

                                               (1671, 2, 'Colônia Leopoldina', 39802, '02108'),

                                               (1672, 2, 'Coqueiro Seco', 1556855, '02207'),

                                               (1673, 2, 'Coruripe', 1640433, '02306'),

                                               (1674, 2, 'Craíbas', 127093, '02355'),

                                               (1675, 2, 'Delmiro Gouveia', 1518264, '02405'),

                                               (1676, 2, 'Dois Riachos', 1317160, '02504'),

                                               (1677, 2, 'Estrela de Alagoas', 1073967, '02553'),

                                               (1678, 2, 'Feira Grande', 1753588, '02603'),

                                               (1679, 2, 'Feliz Deserto', 695709, '02702'),

                                               (1680, 2, 'Flexeiras', 833101, '02801'),

                                               (1681, 2, 'Girau do Ponciano', 1052822, '02900'),

                                               (1682, 2, 'Ibateguara', 1795804, '03007'),

                                               (1683, 2, 'Igaci', 1853151, '03106'),

                                                (1684, 2, 'Igreja Nova', 964764, '03205'),

                                               (1685, 2, 'Inhapi', 1051045, '03304'),

                                               (1686, 2, 'Jacaré dos Homens', 1285327, '03403'),

                                               (1687, 2, 'Jacuípe', 1319162, '03502'),

                                               (1688, 2, 'Japaratinga', 1115310, '03601'),

                                               (1689, 2, 'Jaramataia', 326064, '03700'),

                                               (1690, 2, 'Jequiá da Praia', 1832338, '03759'),

                                               (1691, 2, 'Joaquim Gomes', 1503720, '03809'),

                                               (1692, 2, 'Jundiá', 896404, '03908'),

                                               (1693, 2, 'Junqueiro', 293699, '04005'),

                                               (1694, 2, 'Lagoa da Canoa', 1953812, '04104'),

                                               (1695, 2, 'Limoeiro de Anadia', 714409, '04203'),

                                               (1696, 2, 'Maceió', 1589095, '04302'),

                                               (1697, 2, 'Major Isidoro', 1157453, '04401'),

                                               (1698, 2, 'Mar Vermelho', 277340, '04906'),

                                               (1699, 2, 'Maragogi', 749011, '04500'),

                                               (1700, 2, 'Maravilha', 473111, '04609'),

                                               (1701, 2, 'Marechal Deodoro', 1309407, '04708'),

                                               (1702, 2, 'Maribondo', 1462070, '04807'),

                                               (1703, 2, 'Mata Grande', 1195070, '05002'),

                                               (1704, 2, 'Matriz de Camaragibe', 175620, '05101'),

                                               (1705, 2, 'Messias', 1865180, '05200'),

                                               (1706, 2, 'Minador do Negrão', 1268574, '05309'),

                                               (1707, 2, 'Monteirópolis', 1393208, '05408'),

                                               (1708, 2, 'Murici', 304988, '05507'),

                                               (1709, 2, 'Novo Lino', 1903009, '05606'),

                                               (1710, 2, 'Olho d Água das Flores', 1990456, '05705'),

                                               (1711, 2, 'Olho d Água do Casado', 1363943, '05804'),

                                               (1712, 2, 'Olho d Água Grande', 846204, '05903'),

                                               (1713, 2, 'Olivença', 551564, '06000'),

                                               (1714, 2, 'Ouro Branco', 1591802, '06109'),

                                               (1715, 2, 'Palestina', 1878180, '06208'),

                                               (1716, 2, 'Palmeira dos Índios', 1883831, '06307'),

                                               (1717, 2, 'Pão de Açúcar', 1559416, '06406'),

                                               (1718, 2, 'Pariconha', 1537669, '06422'),

                                               (1719, 2, 'Paripueira', 1192396, '06448'),

                                               (1720, 2, 'Passo de Camaragibe', 517137, '06505'),

                                               (1721, 2, 'Paulo Jacinto', 1094463, '06604'),

                                               (1722, 2, 'Penedo', 1469689, '06703'),

                                               (1723, 2, 'Piaçabuçu', 1980884, '06802'),

                                               (1724, 2, 'Pilar', 548033, '06901'),

                                               (1725, 2, 'Pindoba', 1884315, '07008'),

                                               (1726, 2, 'Piranhas', 912482, '07107'),

                                               (1727, 2, 'Poço das Trincheiras', 1264211, '07206'),

                                               (1728, 2, 'Porto Calvo', 1410605, '07305'),

                                               (1729, 2, 'Porto de Pedras', 1867151, '07404'),

                                               (1730, 2, 'Porto Real do Colégio', 43902, '07503'),

                                               (1731, 2, 'Quebrangulo', 49093, '07602'),

                                               (1732, 2, 'Rio Largo', 143634, '07701'),

                                               (1733, 2, 'Roteiro', 1432242, '07800'),

                                               (1734, 2, 'Santa Luzia do Norte', 437419, '07909'),

                                               (1735, 2, 'Santana do Ipanema', 72394, '08006'),

                                               (1736, 2, 'Santana do Mundaú', 1490940, '08105'),

                                               (1737, 2, 'São Brás', 1650334, '08204'),

                                               (1738, 2, 'São José da Laje', 1262294, '08303'),

                                               (1739, 2, 'São José da Tapera', 219361, '08402'),

                                               (1740, 2, 'São Luís do Quitunde', 1348522, '08501'),

                                               (1741, 2, 'São Miguel dos Campos', 585531, '08600'),

                                               (1742, 2, 'São Miguel dos Milagres', 1027825, '08709'),

                                               (1743, 2, 'São Sebastião', 72585, '08808'),

                                               (1744, 2, 'Satuba', 1163173, '08907'),

                                               (1745, 2, 'Senador Rui Palmeira', 402500, '08956'),

                                               (1746, 2, 'Tanque d Arca', 472393, '09004'),

                                               (1747, 2, 'Taquarana', 1575495, '09103'),

                                               (1748, 2, 'Teotônio Vilela', 318798, '09152'),

                                               (1749, 2, 'Traipu', 757035, '09202'),

                                               (1750, 2, 'União dos Palmares', 253006, '09301'),

                                               (1751, 2, 'Viçosa', 153193, '09400'),

                                               (1752, 25, 'Amparo de São Francisco', 135214, '00100'),

                                               (1753, 25, 'Aquidabã', 101982, '00209'),

                                               (1754, 25, 'Aracaju', 1620381, '00308'),

                                               (1755, 25, 'Arauá', 643094, '00407'),

                                               (1756, 25, 'Areia Branca', 1529329, '00506'),

                                               (1757, 25, 'Barra dos Coqueiros', 831404, '00605'),

                                               (1758, 25, 'Boquim', 559360, '00670'),

                                               (1759, 25, 'Brejo Grande', 1012812, '00704'),

                                               (1760, 25, 'Campo do Brito', 1088139, '01009'),

                                               (1761, 25, 'Canhoba', 952388, '01108'),

                                               (1762, 25, 'Canindé de São Francisco', 462106, '01207'),

                                               (1763, 25, 'Capela', 612773, '01306'),

                                               (1764, 25, 'Carira', 994577, '01405'),

                                               (1765, 25, 'Carmópolis', 1339762, '01504'),

                                               (1766, 25, 'Cedro de São João', 1889524, '01603'),

                                               (1767, 25, 'Cristinápolis', 1998157, '01702'),

                                               (1768, 25, 'Cumbe', 741903, '01900'),

                                               (1769, 25, 'Divina Pastora', 350493, '02007'),

                                               (1770, 25, 'Estância', 1786046, '02106'),

                                               (1771, 25, 'Feira Nova', 1243870, '02205'),

                                               (1772, 25, 'Frei Paulo', 1405299, '02304'),

                                               (1773, 25, 'Gararu', 842378, '02403'),

                                               (1774, 25, 'General Maynard', 1051138, '02502'),

                                               (1775, 25, 'Gracho Cardoso', 596888, '02601'),

                                               (1776, 25, 'Ilha das Flores', 1603177, '02700'),

                                               (1777, 25, 'Indiaroba', 1057281, '02809'),

                                               (1778, 25, 'Itabaiana', 492425, '02908'),

                                               (1779, 25, 'Itabaianinha', 110553, '03005'),

                                               (1780, 25, 'Itabi', 1865804, '03104'),

                                               (1781, 25, 'Itaporanga d Ajuda', 777073, '03203'),

                                               (1782, 25, 'Japaratuba', 1888396, '03302'),

                                               (1783, 25, 'Japoatã', 485168, '03401'),

                                               (1784, 25, 'Lagarto', 643540, '03500'),

                                               (1785, 25, 'Laranjeiras', 1125051, '03609'),

                                               (1786, 25, 'Macambira', 1265494, '03708'),

                                               (1787, 25, 'Malhada dos Bois', 658801, '03807'),

                                               (1788, 25, 'Malhador', 1490516, '03906'),

                                               (1789, 25, 'Maruim', 1088880, '04003'),

                                               (1790, 25, 'Moita Bonita', 885201, '04102'),

                                               (1791, 25, 'Monte Alegre de Sergipe', 1552653, '04201'),

                                               (1792, 25, 'Muribeca', 842554, '04300'),

                                               (1793, 25, 'Neópolis', 1972847, '04409'),

                                               (1794, 25, 'Nossa Senhora Aparecida', 677787, '04458'),

                                               (1795, 25, 'Nossa Senhora da Glória', 1195427, '04508'),

                                               (1796, 25, 'Nossa Senhora das Dores', 1380446, '04607'),

                                               (1797, 25, 'Nossa Senhora de Lourdes', 598479, '04706'),

                                               (1798, 25, 'Nossa Senhora do Socorro', 212380, '04805'),

                                               (1799, 25, 'Pacatuba', 1519733, '04904'),

                                               (1800, 25, 'Pedra Mole', 1682643, '05000'),

                                               (1801, 25, 'Pedrinhas', 526184, '05109'),

                                               (1802, 25, 'Pinhão', 1081462, '05208'),

                                               (1803, 25, 'Pirambu', 275524, '05307'),

                                               (1804, 25, 'Poço Redondo', 569470, '05406'),

                                               (1805, 25, 'Poço Verde', 1364115, '05505'),

                                               (1806, 25, 'Porto da Folha', 1734688, '05604'),

                                               (1807, 25, 'Propriá', 1694176, '05703'),

                                               (1808, 25, 'Riachão do Dantas', 130775, '05802'),

                                               (1809, 25, 'Riachuelo', 1611378, '05901'),

                                               (1810, 25, 'Ribeirópolis', 1356290, '06008'),

                                               (1811, 25, 'Rosário do Catete', 1992218, '06107'),

                                               (1812, 25, 'Salgado', 396832, '06206'),

                                               (1813, 25, 'Santa Luzia do Itanhy', 449582, '06305'),

                                               (1814, 25, 'Santa Rosa de Lima', 1012199, '06503'),

                                               (1815, 25, 'Santana do São Francisco', 1504764, '06404'),

                                               (1816, 25, 'Santo Amaro das Brotas', 638387, '06602'),

                                               (1817, 25, 'São Cristóvão', 1740325, '06701'),

                                               (1818, 25, 'São Domingos', 1713520, '06800'),

                                               (1819, 25, 'São Francisco', 1561407, '06909'),

                                               (1820, 25, 'São Miguel do Aleixo', 1552571, '07006'),

                                               (1821, 25, 'Simão Dias', 1748844, '07105'),

                                               (1822, 25, 'Siriri', 125808, '07204'),

                                               (1823, 25, 'Telha', 79502, '07303'),

                                               (1824, 25, 'Tobias Barreto', 1043081, '07402'),

                                               (1825, 25, 'Tomar do Geru', 319130, '07501'),

                                               (1826, 25, 'Umbaúba', 1591295, '07600'),

                                               (1827, 5, 'Abaíra', 1571361, '00108'),

                                               (1828, 5, 'Abaré', 291690, '00207'),

                                               (1829, 5, 'Acajutiba', 52958, '00306'),

                                               (1830, 5, 'Adustina', 685193, '00355'),

                                               (1831, 5, 'Água Fria', 394087, '00405'),

                                               (1832, 5, 'Aiquara', 1488211, '00603'),

                                               (1833, 5, 'Alagoinhas', 1091189, '00702'),

                                               (1834, 5, 'Alcobaça', 865732, '00801'),

                                               (1835, 5, 'Almadina', 632735, '00900'),

                                               (1836, 5, 'Amargosa', 1394911, '01007'),

                                               (1837, 5, 'Amélia Rodrigues', 1090992, '01106'),

                                               (1838, 5, 'América Dourada', 1592739, '01155'),

                                               (1839, 5, 'Anagé', 1138015, '01205'),

                                               (1840, 5, 'Andaraí', 463573, '01304'),

                                               (1841, 5, 'Andorinha', 1538977, '01353'),

                                               (1842, 5, 'Angical', 970868, '01403'),

                                               (1843, 5, 'Anguera', 616005, '01502'),

                                               (1844, 5, 'Antas', 845933, '01601'),

                                               (1845, 5, 'Antônio Cardoso', 163428, '01700'),

                                               (1846, 5, 'Antônio Gonçalves', 784683, '01809'),

                                               (1847, 5, 'Aporá', 962259, '01908'),

                                               (1848, 5, 'Apuarema', 1227409, '01957'),

                                               (1849, 5, 'Araças', 521036, '02054'),

                                               (1850, 5, 'Aracatu', 127629, '02005'),

                                               (1851, 5, 'Araci', 432892, '02104'),

                                               (1852, 5, 'Aramari', 715296, '02203'),

                                               (1853, 5, 'Arataca', 436738, '02252'),

                                               (1854, 5, 'Aratuípe', 1434101, '02302'),

                                               (1855, 5, 'Aurelino Leal', 1646143, '02401'),

                                               (1856, 5, 'Baianópolis', 1263634, '02500'),

                                               (1857, 5, 'Baixa Grande', 1865871, '02609'),

                                               (1858, 5, 'Banzaê', 907997, '02658'),

                                               (1859, 5, 'Barra', 1148084, '02708'),

                                               (1860, 5, 'Barra da Estiva', 1309555, '02807'),

                                               (1861, 5, 'Barra do Choça', 1890004, '02906'),

                                               (1862, 5, 'Barra do Mendes', 1865403, '03003'),

                                               (1863, 5, 'Barra do Rocha', 1290046, '03102'),

                                               (1864, 5, 'Barreiras', 428889, '03201'),

                                               (1865, 5, 'Barro Alto', 1804637, '03235'),

                                               (1866, 5, 'Barro Preto', 702407, '03300'),

                                               (1867, 5, 'Barrocas', 1964187, '03276'),

                                               (1868, 5, 'Belmonte', 1616474, '03409'),

                                               (1869, 5, 'Belo Campo', 299743, '03508'),

                                               (1870, 5, 'Biritinga', 1134743, '03607'),

                                               (1871, 5, 'Boa Nova', 177385, '03706'),

                                               (1872, 5, 'Boa Vista do Tupim', 653215, '03805'),

                                               (1873, 5, 'Bom Jesus da Lapa', 205872, '03904'),

                                               (1874, 5, 'Bom Jesus da Serra', 1398778, '03953'),

                                               (1875, 5, 'Boninal', 1202735, '04001'),

                                               (1876, 5, 'Bonito', 258697, '04050'),

                                               (1877, 5, 'Boquira', 476571, '04100'),

                                               (1878, 5, 'Botuporã', 1947955, '04209'),

                                               (1879, 5, 'Brejões', 1740769, '04308'),

                                               (1880, 5, 'Brejolândia', 1154524, '04407'),

                                               (1881, 5, 'Brotas de Macaúbas', 897402, '04506'),

                                               (1882, 5, 'Brumado', 1387246, '04605'),

                                               (1883, 5, 'Buerarema', 1152337, '04704'),

                                               (1884, 5, 'Buritirama', 763228, '04753'),

                                               (1885, 5, 'Caatiba', 560636, '04803'),

                                               (1886, 5, 'Cabaceiras do Paraguaçu', 436320, '04852'),

                                               (1887, 5, 'Cachoeira', 170733, '04902'),

                                               (1888, 5, 'Caculé', 1695165, '05008'),

                                               (1889, 5, 'Caém', 1856400, '05107'),

                                               (1890, 5, 'Caetanos', 1630764, '05156'),

                                               (1891, 5, 'Caetité', 703269, '05206'),

                                               (1892, 5, 'Cafarnaum', 1307353, '05305'),

                                               (1893, 5, 'Cairu', 1504548, '05404'),

                                               (1894, 5, 'Caldeirão Grande', 425093, '05503'),

                                               (1895, 5, 'Camacan', 1819815, '05602'),

                                               (1896, 5, 'Camaçari', 1890847, '05701'),

                                               (1897, 5, 'Camamu', 1889229, '05800'),

                                               (1898, 5, 'Campo Alegre de Lourdes', 390521, '05909'),

                                               (1899, 5, 'Campo Formoso', 1130692, '06006'),

                                               (1900, 5, 'Canápolis', 1947920, '06105'),

                                               (1901, 5, 'Canarana', 1760014, '06204');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (1902, 5, 'Canavieiras', 1007609, '06303'),

                                               (1903, 5, 'Candeal', 449587, '06402'),

                                               (1904, 5, 'Candeias', 1278258, '06501'),

                                               (1905, 5, 'Candiba', 272584, '06600'),

                                               (1906, 5, 'Cândido Sales', 849817, '06709'),

                                               (1907, 5, 'Cansanção', 1460004, '06808'),

                                               (1908, 5, 'Canudos', 333260, '06824'),

                                               (1909, 5, 'Capela do Alto Alegre', 1599588, '06857'),

                                               (1910, 5, 'Capim Grosso', 310357, '06873'),

                                               (1911, 5, 'Caraíbas', 1014850, '06899'),

                                               (1912, 5, 'Caravelas', 1766627, '06907'),

                                               (1913, 5, 'Cardeal da Silva', 373206, '07004'),

                                               (1914, 5, 'Carinhanha', 1692259, '07103'),

                                               (1915, 5, 'Casa Nova', 1610107, '07202'),

                                               (1916, 5, 'Castro Alves', 1239548, '07301'),

                                               (1917, 5, 'Catolândia', 857414, '07400'),

                                               (1918, 5, 'Catu', 1843043, '07509'),

                                               (1919, 5, 'Caturama', 138250, '07558'),

                                               (1920, 5, 'Central', 1563559, '07608'),

                                               (1921, 5, 'Chorrochó', 729827, '07707'),

                                               (1922, 5, 'Cícero Dantas', 1682139, '07806'),

                                               (1923, 5, 'Cipó', 681620, '07905'),

                                               (1924, 5, 'Coaraci', 1407517, '08002'),

                                               (1925, 5, 'Cocos', 1686232, '08101'),

                                               (1926, 5, 'Conceição da Feira', 1719347, '08200'),

                                               (1927, 5, 'Conceição do Almeida', 1864631, '08309'),

                                               (1928, 5, 'Conceição do Coité', 311788, '08408'),

                                               (1929, 5, 'Conceição do Jacuípe', 1491107, '08507'),

                                               (1930, 5, 'Conde', 700706, '08606'),

                                               (1931, 5, 'Condeúba', 1220673, '08705'),

                                               (1932, 5, 'Contendas do Sincorá', 283789, '08804'),

                                               (1933, 5, 'Coração de Maria', 41464, '08903'),

                                               (1934, 5, 'Cordeiros', 1594027, '09000'),

                                               (1935, 5, 'Coribe', 1327394, '09109'),

                                               (1936, 5, 'Coronel João Sá', 1660446, '09208'),

                                               (1937, 5, 'Correntina', 1355981, '09307'),

                                               (1938, 5, 'Cotegipe', 1895166, '09406'),

                                               (1939, 5, 'Cravolândia', 572233, '09505'),

                                               (1940, 5, 'Crisópolis', 322980, '09604'),

                                               (1941, 5, 'Cristópolis', 201732, '09703'),

                                               (1942, 5, 'Cruz das Almas', 1697988, '09802'),

                                               (1943, 5, 'Curaçá', 1085150, '09901'),

                                               (1944, 5, 'Dário Meira', 1302355, '10008'),

                                               (1945, 5, 'Dias d Ávila', 1520513, '10057'),

                                               (1946, 5, 'Dom Basílio', 327849, '10107'),

                                               (1947, 5, 'Dom Macedo Costa', 1062189, '10206'),

                                               (1948, 5, 'Elísio Medrado', 572519, '10305'),

                                               (1949, 5, 'Encruzilhada', 1245192, '10404'),

                                               (1950, 5, 'Entre Rios', 484863, '10503'),

                                               (1951, 5, 'Érico Cardoso', 638871, '00504'),

                                               (1952, 5, 'Esplanada', 400953, '10602'),

                                               (1953, 5, 'Euclides da Cunha', 1353687, '10701'),

                                               (1954, 5, 'Eunápolis', 1526859, '10727'),

                                               (1955, 5, 'Fátima', 29453, '10750'),

                                               (1956, 5, 'Feira da Mata', 481720, '10776'),

                                               (1957, 5, 'Feira de Santana', 1344704, '10800'),

                                               (1958, 5, 'Filadélfia', 989273, '10859'),

                                               (1959, 5, 'Firmino Alves', 1578251, '10909'),

                                               (1960, 5, 'Floresta Azul', 730728, '11006'),

                                               (1961, 5, 'Formosa do Rio Preto', 758353, '11105'),

                                               (1962, 5, 'Gandu', 1563929, '11204'),

                                               (1963, 5, 'Gavião', 1025403, '11253'),

                                               (1964, 5, 'Gentio do Ouro', 1323242, '11303'),

                                               (1965, 5, 'Glória', 844994, '11402'),

                                               (1966, 5, 'Gongogi', 1253681, '11501'),

                                               (1967, 5, 'Governador Mangabeira', 1253206, '11600'),

                                               (1968, 5, 'Guajeru', 94443, '11659'),

                                               (1969, 5, 'Guanambi', 618005, '11709'),

                                               (1970, 5, 'Guaratinga', 656720, '11808'),

                                               (1971, 5, 'Heliópolis', 1783782, '11857'),

                                               (1972, 5, 'Iaçu', 1579115, '11907'),

                                               (1973, 5, 'Ibiassucê', 1174981, '12004'),

                                               (1974, 5, 'Ibicaraí', 1490171, '12103'),

                                               (1975, 5, 'Ibicoara', 654784, '12202'),

                                               (1976, 5, 'Ibicuí', 504504, '12301'),

                                               (1977, 5, 'Ibipeba', 1982436, '12400'),

                                               (1978, 5, 'Ibipitanga', 1429116, '12509'),

                                               (1979, 5, 'Ibiquera', 908974, '12608'),

                                               (1980, 5, 'Ibirapitanga', 1929291, '12707'),

                                               (1981, 5, 'Ibirapuã', 1057782, '12806'),

                                               (1982, 5, 'Ibirataia', 930363, '12905'),

                                               (1983, 5, 'Ibitiara', 683092, '13002'),

                                               (1984, 5, 'Ibititá', 1053208, '13101'),

                                               (1985, 5, 'Ibotirama', 840544, '13200'),

                                               (1986, 5, 'Ichu', 166708, '13309'),

                                               (1987, 5, 'Igaporã', 315243, '13408'),

                                               (1988, 5, 'Igrapiúna', 1212524, '13457'),

                                               (1989, 5, 'Iguaí', 767204, '13507'),

                                               (1990, 5, 'Ilhéus', 963359, '13606'),

                                               (1991, 5, 'Inhambupe', 176008, '13705'),

                                               (1992, 5, 'Ipecaetá', 1663165, '13804'),

                                               (1993, 5, 'Ipiaú', 715423, '13903'),

                                               (1994, 5, 'Ipirá', 288524, '14000'),

                                               (1995, 5, 'Ipupiara', 1670987, '14109'),

                                               (1996, 5, 'Irajuba', 837503, '14208'),

                                               (1997, 5, 'Iramaia', 1821846, '14307'),

                                               (1998, 5, 'Iraquara', 914613, '14406'),

                                               (1999, 5, 'Irará', 1826736, '14505'),

                                               (2000, 5, 'Irecê', 992622, '14604'),

                                               (2001, 5, 'Itabela', 1659502, '14653'),

                                               (2002, 5, 'Itaberaba', 287618, '14703'),

                                               (2003, 5, 'Itabuna', 528771, '14802'),

                                               (2004, 5, 'Itacaré', 1149332, '14901'),

                                               (2005, 5, 'Itaeté', 652459, '15007'),

                                               (2006, 5, 'Itagi', 1828809, '15106'),

                                               (2007, 5, 'Itagibá', 351685, '15205'),

                                               (2008, 5, 'Itagimirim', 1582961, '15304'),

                                               (2009, 5, 'Itaguaçu da Bahia', 1229964, '15353'),

                                               (2010, 5, 'Itaju do Colônia', 75128, '15403'),

                                               (2011, 5, 'Itajuípe', 1071827, '15502'),

                                               (2012, 5, 'Itamaraju', 150753, '15601'),

                                               (2013, 5, 'Itamari', 114080, '15700'),

                                               (2014, 5, 'Itambé', 1361374, '15809'),

                                               (2015, 5, 'Itanagra', 1843037, '15908'),

                                               (2016, 5, 'Itanhém', 1744326, '16005'),

                                               (2017, 5, 'Itaparica', 20685, '16104'),

                                               (2018, 5, 'Itapé', 1864891, '16203'),

                                               (2019, 5, 'Itapebi', 679207, '16302'),

                                               (2020, 5, 'Itapetinga', 347521, '16401'),

                                               (2021, 5, 'Itapicuru', 268000, '16500'),

                                               (2022, 5, 'Itapitanga', 732478, '16609'),

                                               (2023, 5, 'Itaquara', 243480, '16708'),

                                               (2024, 5, 'Itarantim', 568785, '16807'),

                                               (2025, 5, 'Itatim', 518531, '16856'),

                                               (2026, 5, 'Itiruçu', 1037935, '16906'),

                                               (2027, 5, 'Itiúba', 799660, '17003'),

                                               (2028, 5, 'Itororó', 274426, '17102'),

                                               (2029, 5, 'Ituaçu', 761357, '17201'),

                                               (2030, 5, 'Ituberá', 1052725, '17300'),

                                               (2031, 5, 'Iuiú', 848128, '17334'),

                                               (2032, 5, 'Jaborandi', 378650, '17359'),

                                               (2033, 5, 'Jacaraci', 846178, '17409'),

                                               (2034, 5, 'Jacobina', 1474713, '17508'),

                                               (2035, 5, 'Jaguaquara', 777250, '17607'),

                                               (2036, 5, 'Jaguarari', 845383, '17706'),

                                               (2037, 5, 'Jaguaripe', 798469, '17805'),

                                               (2038, 5, 'Jandaíra', 84412, '17904'),

                                               (2039, 5, 'Jequié', 1474103, '18001'),

                                               (2040, 5, 'Jeremoabo', 538040, '18100'),

                                               (2041, 5, 'Jiquiriçá', 667848, '18209'),

                                               (2042, 5, 'Jitaúna', 1061783, '18308'),

                                               (2043, 5, 'João Dourado', 1362414, '18357'),

                                               (2044, 5, 'Juazeiro', 1836190, '18407'),

                                               (2045, 5, 'Jucuruçu', 1035318, '18456'),

                                               (2046, 5, 'Jussara', 1822817, '18506'),

                                               (2047, 5, 'Jussari', 1788650, '18555'),

                                               (2048, 5, 'Jussiape', 746086, '18605'),

                                               (2049, 5, 'Lafaiete Coutinho', 318350, '18704'),

                                               (2050, 5, 'Lagoa Real', 1708868, '18753'),

                                               (2051, 5, 'Laje', 1536414, '18803'),

                                               (2052, 5, 'Lajedão', 638537, '18902'),

                                               (2053, 5, 'Lajedinho', 139688, '19009'),

                                               (2054, 5, 'Lajedo do Tabocal', 1903896, '19058'),

                                               (2055, 5, 'Lamarão', 1703023, '19108'),

                                               (2056, 5, 'Lapão', 1686902, '19157'),

                                               (2057, 5, 'Lauro de Freitas', 136795, '19207'),

                                               (2058, 5, 'Lençóis', 1963007, '19306'),

                                               (2059, 5, 'Licínio de Almeida', 1226119, '19405'),

                                               (2060, 5, 'Livramento de Nossa Senhora', 1947452, '19504'),

                                               (2061, 5, 'Luís Eduardo Magalhães', 890862, '19553'),

                                               (2062, 5, 'Macajuba', 800148, '19603'),

                                               (2063, 5, 'Macarani', 740639, '19702'),

                                               (2064, 5, 'Macaúbas', 571253, '19801'),

                                               (2065, 5, 'Macururé', 1156256, '19900'),

                                               (2066, 5, 'Madre de Deus', 960690, '19926'),

                                               (2067, 5, 'Maetinga', 383953, '19959'),

                                               (2068, 5, 'Maiquinique', 1865012, '20007'),

                                               (2069, 5, 'Mairi', 1787069, '20106'),

                                               (2070, 5, 'Malhada', 939836, '20205'),

                                               (2071, 5, 'Malhada de Pedras', 1257972, '20304'),

                                               (2072, 5, 'Manoel Vitorino', 1706323, '20403'),

                                               (2073, 5, 'Mansidão', 1027946, '20452'),

                                               (2074, 5, 'Maracás', 1633624, '20502'),

                                               (2075, 5, 'Maragogipe', 1717786, '20601'),

                                               (2076, 5, 'Maraú', 431466, '20700'),

                                               (2077, 5, 'Marcionílio Souza', 924927, '20809'),

                                               (2078, 5, 'Mascote', 394656, '20908'),

                                               (2079, 5, 'Mata de São João', 646278, '21005'),

                                               (2080, 5, 'Matina', 1274658, '21054'),

                                               (2081, 5, 'Medeiros Neto', 1899245, '21104'),

                                               (2082, 5, 'Miguel Calmon', 1554573, '21203'),

                                               (2083, 5, 'Milagres', 1213170, '21302'),

                                               (2084, 5, 'Mirangaba', 82354, '21401'),

                                               (2085, 5, 'Mirante', 101511, '21450'),

                                               (2086, 5, 'Monte Santo', 1598456, '21500'),

                                               (2087, 5, 'Morpará', 153131, '21609'),

                                               (2088, 5, 'Morro do Chapéu', 928753, '21708'),

                                               (2089, 5, 'Mortugaba', 1198805, '21807'),

                                               (2090, 5, 'Mucugê', 1928871, '21906'),

                                               (2091, 5, 'Mucuri', 1721966, '22003'),

                                               (2092, 5, 'Mulungu do Morro', 344656, '22052'),

                                               (2093, 5, 'Mundo Novo', 1794223, '22102'),

                                               (2094, 5, 'Muniz Ferreira', 322394, '22201'),

                                               (2095, 5, 'Muquém de São Francisco', 43773, '22250'),

                                               (2096, 5, 'Muritiba', 74182, '22300'),

                                               (2097, 5, 'Mutuípe', 1489699, '22409'),

                                               (2098, 5, 'Nazaré', 1914017, '22508'),

                                               (2099, 5, 'Nilo Peçanha', 755626, '22607'),

                                               (2100, 5, 'Nordestina', 271303, '22656'),

                                               (2101, 5, 'Nova Canaã', 1422999, '22706'),

                                               (2102, 5, 'Nova Fátima', 1764215, '22730'),

                                               (2103, 5, 'Nova Ibiá', 1488502, '22755'),

                                               (2104, 5, 'Nova Itarana', 127667, '22805'),

                                               (2105, 5, 'Nova Redenção', 271330, '22854'),

                                               (2106, 5, 'Nova Soure', 1446681, '22904'),

                                               (2107, 5, 'Nova Viçosa', 1577374, '23001'),

                                               (2108, 5, 'Novo Horizonte', 1739319, '23035'),

                                               (2109, 5, 'Novo Triunfo', 372749, '23050'),

                                               (2110, 5, 'Olindina', 1081217, '23100'),

                                               (2111, 5, 'Oliveira dos Brejinhos', 1328601, '23209'),

                                               (2112, 5, 'Ouriçangas', 1140626, '23308'),

                                               (2113, 5, 'Ourolândia', 1688464, '23357'),

                                               (2114, 5, 'Palmas de Monte Alto', 1822487, '23407'),

                                               (2115, 5, 'Palmeiras', 93494, '23506'),

                                               (2116, 5, 'Paramirim', 164839, '23605'),

                                               (2117, 5, 'Paratinga', 114904, '23704'),

                                               (2118, 5, 'Paripiranga', 1498763, '23803'),

                                               (2119, 5, 'Pau Brasil', 832029, '23902'),

                                               (2120, 5, 'Paulo Afonso', 414139, '24009'),

                                               (2121, 5, 'Pé de Serra', 1263178, '24058'),

                                               (2122, 5, 'Pedrão', 1426411, '24108'),

                                               (2123, 5, 'Pedro Alexandre', 1125174, '24207'),

                                               (2124, 5, 'Piatã', 1612792, '24306'),

                                               (2125, 5, 'Pilão Arcado', 997543, '24405'),

                                               (2126, 5, 'Pindaí', 11248, '24504'),

                                               (2127, 5, 'Pindobaçu', 545144, '24603'),

                                               (2128, 5, 'Pintadas', 558781, '24652'),

                                               (2129, 5, 'Piraí do Norte', 545444, '24678'),

                                               (2130, 5, 'Piripá', 1168810, '24702'),

                                               (2131, 5, 'Piritiba', 821327, '24801'),

                                               (2132, 5, 'Planaltino', 1359826, '24900'),

                                               (2133, 5, 'Planalto', 99327, '25006'),

                                               (2134, 5, 'Poções', 42201, '25105'),

                                               (2135, 5, 'Pojuca', 1059702, '25204'),

                                               (2136, 5, 'Ponto Novo', 1000736, '25253'),

                                               (2137, 5, 'Porto Seguro', 1775249, '25303'),

                                               (2138, 5, 'Potiraguá', 1942925, '25402'),

                                               (2139, 5, 'Prado', 1332012, '25501'),

                                               (2140, 5, 'Presidente Dutra', 1282181, '25600'),

                                               (2141, 5, 'Presidente Jânio Quadros', 955143, '25709'),

                                               (2142, 5, 'Presidente Tancredo Neves', 425315, '25758'),

                                               (2143, 5, 'Queimadas', 1789191, '25808'),

                                               (2144, 5, 'Quijingue', 328832, '25907'),

                                               (2145, 5, 'Quixabeira', 1537109, '25931'),

                                               (2146, 5, 'Rafael Jambeiro', 1730811, '25956'),

                                               (2147, 5, 'Remanso', 1231171, '26004'),

                                               (2148, 5, 'Retirolândia', 1073281, '26103'),

                                               (2149, 5, 'Riachão das Neves', 716730, '26202'),

                                               (2150, 5, 'Riachão do Jacuípe', 1590054, '26301'),

                                               (2151, 5, 'Riacho de Santana', 912377, '26400'),

                                               (2152, 5, 'Ribeira do Amparo', 1795801, '26509'),

                                               (2153, 5, 'Ribeira do Pombal', 1818161, '26608'),

                                               (2154, 5, 'Ribeirão do Largo', 699742, '26657'),

                                               (2155, 5, 'Rio de Contas', 1919274, '26707'),

                                               (2156, 5, 'Rio do Antônio', 1469094, '26806'),

                                               (2157, 5, 'Rio do Pires', 934296, '26905'),

                                               (2158, 5, 'Rio Real', 743565, '27002'),

                                               (2159, 5, 'Rodelas', 67760, '27101'),

                                               (2160, 5, 'Ruy Barbosa', 844312, '27200'),

                                               (2161, 5, 'Salinas da Margarida', 1717235, '27309'),

                                               (2162, 5, 'Salvador', 1678384, '27408'),

                                               (2163, 5, 'Santa Bárbara', 1814653, '27507'),

                                               (2164, 5, 'Santa Brígida', 409225, '27606'),

                                               (2165, 5, 'Santa Cruz Cabrália', 17420, '27705'),

                                               (2166, 5, 'Santa Cruz da Vitória', 621016, '27804'),

                                               (2167, 5, 'Santa Inês', 1924685, '27903'),

                                               (2168, 5, 'Santa Luzia', 1176136, '28059'),

                                               (2169, 5, 'Santa Maria da Vitória', 737956, '28109'),

                                               (2170, 5, 'Santa Rita de Cássia', 93431, '28406'),

                                               (2171, 5, 'Santa Teresinha', 1350630, '28505'),

                                               (2172, 5, 'Santaluz', 591840, '28000'),

                                               (2173, 5, 'Santana', 213158, '28208'),

                                               (2174, 5, 'Santanópolis', 1872938, '28307'),

                                               (2175, 5, 'Santo Amaro', 671375, '28604'),

                                               (2176, 5, 'Santo Antônio de Jesus', 784912, '28703'),

                                               (2177, 5, 'Santo Estêvão', 1292944, '28802'),

                                               (2178, 5, 'São Desidério', 785347, '28901'),

                                               (2179, 5, 'São Domingos', 684842, '28950'),

                                               (2180, 5, 'São Felipe', 1159795, '29107'),

                                               (2181, 5, 'São Félix', 528961, '29008'),

                                               (2182, 5, 'São Félix do Coribe', 1947651, '29057'),

                                               (2183, 5, 'São Francisco do Conde', 1431683, '29206'),

                                               (2184, 5, 'São Gabriel', 433873, '29255'),

                                               (2185, 5, 'São Gonçalo dos Campos', 169540, '29305'),

                                               (2186, 5, 'São José da Vitória', 1782825, '29354'),

                                               (2187, 5, 'São José do Jacuípe', 987939, '29370'),

                                               (2188, 5, 'São Miguel das Matas', 1795433, '29404'),

                                               (2189, 5, 'São Sebastião do Passé', 1575587, '29503'),

                                               (2190, 5, 'Sapeaçu', 1888089, '29602'),

                                               (2191, 5, 'Sátiro Dias', 1951109, '29701'),

                                               (2192, 5, 'Saubara', 1229336, '29750'),

                                               (2193, 5, 'Saúde', 1553266, '29800'),

                                               (2194, 5, 'Seabra', 1681250, '29909'),

                                               (2195, 5, 'Sebastião Laranjeiras', 285372, '30006'),

                                               (2196, 5, 'Senhor do Bonfim', 1975687, '30105'),

                                               (2197, 5, 'Sento Sé', 1445192, '30204'),

                                               (2198, 5, 'Serra do Ramalho', 540538, '30154'),

                                               (2199, 5, 'Serra Dourada', 963284, '30303'),

                                               (2200, 5, 'Serra Preta', 474965, '30402'),

                                               (2201, 5, 'Serrinha', 1348976, '30501'),

                                               (2202, 5, 'Serrolândia', 123289, '30600'),

                                               (2203, 5, 'Simões Filho', 651229, '30709'),

                                               (2204, 5, 'Sítio do Mato', 1570704, '30758'),

                                               (2205, 5, 'Sítio do Quinto', 1890798, '30766'),

                                               (2206, 5, 'Sobradinho', 795322, '30774'),

                                               (2207, 5, 'Souto Soares', 838127, '30808'),

                                               (2208, 5, 'Tabocas do Brejo Velho', 1038435, '30907'),

                                               (2209, 5, 'Tanhaçu', 1582981, '31004'),

                                               (2210, 5, 'Tanque Novo', 1034096, '31053'),

                                               (2211, 5, 'Tanquinho', 670493, '31103'),

                                               (2212, 5, 'Taperoá', 300370, '31202'),

                                               (2213, 5, 'Tapiramutá', 685590, '31301'),

                                               (2214, 5, 'Teixeira de Freitas', 891127, '31350'),

                                               (2215, 5, 'Teodoro Sampaio', 1461516, '31400'),

                                               (2216, 5, 'Teofilândia', 1675513, '31509'),

                                               (2217, 5, 'Teolândia', 1558248, '31608'),

                                               (2218, 5, 'Terra Nova', 1379116, '31707'),

                                               (2219, 5, 'Tremedal', 1142786, '31806'),

                                               (2220, 5, 'Tucano', 800357, '31905'),

                                               (2221, 5, 'Uauá', 965093, '32002'),

                                               (2222, 5, 'Ubaíra', 1861040, '32101'),

                                               (2223, 5, 'Ubaitaba', 54747, '32200'),

                                               (2224, 5, 'Ubatã', 1336537, '32309'),

                                               (2225, 5, 'Uibaí', 134530, '32408'),

                                               (2226, 5, 'Umburanas', 592136, '32457'),

                                               (2227, 5, 'Una', 344497, '32507'),

                                               (2228, 5, 'Urandi', 1702338, '32606'),

                                               (2229, 5, 'Uruçuca', 307375, '32705'),

                                               (2230, 5, 'Utinga', 27060, '32804'),

                                               (2231, 5, 'Valença', 944017, '32903'),

                                               (2232, 5, 'Valente', 800228, '33000'),

                                               (2233, 5, 'Várzea da Roça', 1309510, '33059'),

                                               (2234, 5, 'Várzea do Poço', 1260897, '33109'),

                                               (2235, 5, 'Várzea Nova', 963187, '33158'),

                                               (2236, 5, 'Varzedo', 84048, '33174'),

                                               (2237, 5, 'Vera Cruz', 392876, '33208'),

                                               (2238, 5, 'Vereda', 1949534, '33257'),

                                               (2239, 5, 'Vitória da Conquista', 997579, '33307'),

                                               (2240, 5, 'Wagner', 1756294, '33406'),

                                               (2241, 5, 'Wanderley', 277941, '33455'),

                                               (2242, 5, 'Wenceslau Guimarães', 531218, '33505'),

                                               (2243, 5, 'Xique-Xique', 838883, '33604'),

                                               (2244, 11, 'Abadia dos Dourados', 1698931, '00104'),

                                               (2245, 11, 'Abaeté', 267703, '00203'),

                                               (2246, 11, 'Abre Campo', 1804410, '00302'),

                                               (2247, 11, 'Acaiaca', 150037, '00401'),

                                               (2248, 11, 'Açucena', 308537, '00500'),

                                               (2249, 11, 'Água Boa', 1592324, '00609'),

                                               (2250, 11, 'Água Comprida', 737703, '00708'),

                                               (2251, 11, 'Aguanil', 1574325, '00807'),

                                               (2252, 11, 'Águas Formosas', 1331366, '00906'),

                                               (2253, 11, 'Águas Vermelhas', 947584, '01003'),

                                               (2254, 11, 'Aimorés', 1462872, '01102'),

                                               (2255, 11, 'Aiuruoca', 549611, '01201'),

                                               (2256, 11, 'Alagoa', 942762, '01300'),

                                               (2257, 11, 'Albertina', 423438, '01409'),

                                               (2258, 11, 'Além Paraíba', 963831, '01508'),

                                               (2259, 11, 'Alfenas', 1751533, '01607'),

                                               (2260, 11, 'Alfredo Vasconcelos', 46508, '01631'),

                                               (2261, 11, 'Almenara', 683414, '01706'),

                                               (2262, 11, 'Alpercata', 1652462, '01805'),

                                               (2263, 11, 'Alpinópolis', 1731254, '01904'),

                                               (2264, 11, 'Alterosa', 1131245, '02001'),

                                               (2265, 11, 'Alto Caparaó', 955048, '02050'),

                                               (2266, 11, 'Alto Jequitibá', 143867, '53509'),

                                               (2267, 11, 'Alto Rio Doce', 928493, '02100'),

                                               (2268, 11, 'Alvarenga', 1113273, '02209'),

                                               (2269, 11, 'Alvinópolis', 967194, '02308'),

                                               (2270, 11, 'Alvorada de Minas', 1543417, '02407'),

                                               (2271, 11, 'Amparo do Serra', 1469839, '02506'),

                                               (2272, 11, 'Andradas', 1970269, '02605'),

                                               (2273, 11, 'Andrelândia', 1747244, '02803'),

                                               (2274, 11, 'Angelândia', 1109358, '02852'),

                                               (2275, 11, 'Antônio Carlos', 213457, '02902'),

                                               (2276, 11, 'Antônio Dias', 1974325, '03009');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (2277, 11, 'Antônio Prado de Minas', 1559261, '03108'),

                                               (2278, 11, 'Araçaí', 127726, '03207'),

                                               (2279, 11, 'Aracitaba', 1169459, '03306'),

                                               (2280, 11, 'Araçuaí', 1912806, '03405'),

                                               (2281, 11, 'Araguari', 449434, '03504'),

                                               (2282, 11, 'Arantina', 362847, '03603'),

                                               (2283, 11, 'Araponga', 1242169, '03702'),

                                               (2284, 11, 'Araporã', 786413, '03751'),

                                               (2285, 11, 'Arapuá', 1703113, '03801'),

                                               (2286, 11, 'Araújos', 1599965, '03900'),

                                               (2287, 11, 'Araxá', 1250206, '04007'),

                                               (2288, 11, 'Arceburgo', 355697, '04106'),

                                               (2289, 11, 'Arcos', 1415302, '04205'),

                                               (2290, 11, 'Areado', 1992234, '04304'),

                                               (2291, 11, 'Argirita', 62688, '04403'),

                                               (2292, 11, 'Aricanduva', 1656686, '04452'),

                                               (2293, 11, 'Arinos', 1858662, '04502'),

                                               (2294, 11, 'Astolfo Dutra', 1712656, '04601'),

                                               (2295, 11, 'Ataléia', 1510437, '04700'),

                                               (2296, 11, 'Augusto de Lima', 1669606, '04809'),

                                               (2297, 11, 'Baependi', 194058, '04908'),

                                               (2298, 11, 'Baldim', 636142, '05004'),

                                               (2299, 11, 'Bambuí', 28096, '05103'),

                                               (2300, 11, 'Bandeira', 869221, '05202'),

                                               (2301, 11, 'Bandeira do Sul', 795075, '05301'),

                                               (2302, 11, 'Barão de Cocais', 700914, '05400'),

                                               (2303, 11, 'Barão de Monte Alto', 213705, '05509'),

                                               (2304, 11, 'Barbacena', 1835848, '05608'),

                                               (2305, 11, 'Barra Longa', 257824, '05707'),

                                               (2306, 11, 'Barroso', 1192707, '05905'),

                                               (2307, 11, 'Bela Vista de Minas', 1037379, '06002'),

                                               (2308, 11, 'Belmiro Braga', 1787097, '06101'),

                                               (2309, 11, 'Belo Horizonte', 1557883, '06200'),

                                               (2310, 11, 'Belo Oriente', 1973474, '06309'),

                                               (2311, 11, 'Belo Vale', 33593, '06408'),

                                               (2312, 11, 'Berilo', 1405129, '06507'),

                                               (2313, 11, 'Berizal', 504769, '06655'),

                                               (2314, 11, 'Bertópolis', 1064388, '06606'),

                                               (2315, 11, 'Betim', 595625, '06705'),

                                               (2316, 11, 'Bias Fortes', 801992, '06804'),

                                               (2317, 11, 'Bicas', 265483, '06903'),

                                               (2318, 11, 'Biquinhas', 359828, '07000'),

                                               (2319, 11, 'Boa Esperança', 1835284, '07109'),

                                               (2320, 11, 'Bocaina de Minas', 190556, '07208'),

                                               (2321, 11, 'Bocaiúva', 1428788, '07307'),

                                               (2322, 11, 'Bom Despacho', 1504151, '07406'),

                                               (2323, 11, 'Bom Jardim de Minas', 50887, '07505'),

                                               (2324, 11, 'Bom Jesus da Penha', 1565964, '07604'),

                                               (2325, 11, 'Bom Jesus do Amparo', 171271, '07703'),

                                               (2326, 11, 'Bom Jesus do Galho', 1145279, '07802'),

                                               (2327, 11, 'Bom Repouso', 1673556, '07901'),

                                               (2328, 11, 'Bom Sucesso', 649660, '08008'),

                                               (2329, 11, 'Bonfim', 1674705, '08107'),

                                               (2330, 11, 'Bonfinópolis de Minas', 193497, '08206'),

                                               (2331, 11, 'Bonito de Minas', 1082336, '08255'),

                                               (2332, 11, 'Borda da Mata', 1432801, '08305'),

                                               (2333, 11, 'Botelhos', 1139909, '08404'),

                                               (2334, 11, 'Botumirim', 391659, '08503'),

                                               (2335, 11, 'Brás Pires', 815344, '08701'),

                                               (2336, 11, 'Brasilândia de Minas', 1855920, '08552'),

                                               (2337, 11, 'Brasília de Minas', 942449, '08602'),

                                               (2338, 11, 'Brasópolis', 1575568, '08909'),

                                               (2339, 11, 'Braúnas', 791333, '08800'),

                                               (2340, 11, 'Brumadinho', 285723, '09006'),

                                               (2341, 11, 'Bueno Brandão', 1639401, '09105'),

                                               (2342, 11, 'Buenópolis', 1357262, '09204'),

                                               (2343, 11, 'Bugre', 1151044, '09253'),

                                               (2344, 11, 'Buritis', 312919, '09303'),

                                               (2345, 11, 'Buritizeiro', 235603, '09402'),

                                               (2346, 11, 'Cabeceira Grande', 1360241, '09451'),

                                               (2347, 11, 'Cabo Verde', 1855078, '09501'),

                                               (2348, 11, 'Cachoeira da Prata', 1876378, '09600'),

                                               (2349, 11, 'Cachoeira de Minas', 1793131, '09709'),

                                               (2350, 11, 'Cachoeira de Pajeú', 483705, '02704'),

                                               (2351, 11, 'Cachoeira Dourada', 934762, '09808'),

                                               (2352, 11, 'Caetanópolis', 1880123, '09907'),

                                               (2353, 11, 'Caeté', 1140227, '10004'),

                                               (2354, 11, 'Caiana', 1063843, '10103'),

                                               (2355, 11, 'Cajuri', 1998808, '10202'),

                                               (2356, 11, 'Caldas', 905230, '10301'),

                                               (2357, 11, 'Camacho', 1258289, '10400'),

                                               (2358, 11, 'Camanducaia', 1640318, '10509'),

                                               (2359, 11, 'Cambuí', 558005, '10608'),

                                               (2360, 11, 'Cambuquira', 1079187, '10707'),

                                               (2361, 11, 'Campanário', 571152, '10806'),

                                               (2362, 11, 'Campanha', 1623427, '10905'),

                                               (2363, 11, 'Campestre', 143357, '11002'),

                                               (2364, 11, 'Campina Verde', 1107707, '11101'),

                                               (2365, 11, 'Campo Azul', 170533, '11150'),

                                               (2366, 11, 'Campo Belo', 294643, '11200'),

                                               (2367, 11, 'Campo do Meio', 1089300, '11309'),

                                               (2368, 11, 'Campo Florido', 441020, '11408'),

                                               (2369, 11, 'Campos Altos', 1428208, '11507'),

                                               (2370, 11, 'Campos Gerais', 338281, '11606'),

                                               (2371, 11, 'Cana Verde', 1900713, '11903'),

                                               (2372, 11, 'Canaã', 710301, '11705'),

                                               (2373, 11, 'Canápolis', 1736826, '11804'),

                                               (2374, 11, 'Candeias', 1402666, '12000'),

                                               (2375, 11, 'Cantagalo', 1157289, '12059'),

                                               (2376, 11, 'Caparaó', 82273, '12109'),

                                               (2377, 11, 'Capela Nova', 1340603, '12208'),

                                               (2378, 11, 'Capelinha', 458348, '12307'),

                                               (2379, 11, 'Capetinga', 1156206, '12406'),

                                               (2380, 11, 'Capim Branco', 38805, '12505'),

                                               (2381, 11, 'Capinópolis', 479415, '12604'),

                                               (2382, 11, 'Capitão Andrade', 863549, '12653'),

                                               (2383, 11, 'Capitão Enéas', 821819, '12703'),

                                               (2384, 11, 'Capitólio', 178566, '12802'),

                                               (2385, 11, 'Caputira', 483654, '12901'),

                                               (2386, 11, 'Caraí', 1841975, '13008'),

                                               (2387, 11, 'Caranaíba', 23439, '13107'),

                                               (2388, 11, 'Carandaí', 799205, '13206'),

                                               (2389, 11, 'Carangola', 1250065, '13305'),

                                               (2390, 11, 'Caratinga', 1499278, '13404'),

                                               (2391, 11, 'Carbonita', 361386, '13503'),

                                               (2392, 11, 'Careaçu', 385989, '13602'),

                                               (2393, 11, 'Carlos Chagas', 711271, '13701'),

                                               (2394, 11, 'Carmésia', 1619736, '13800'),

                                               (2395, 11, 'Carmo da Cachoeira', 392645, '13909'),

                                               (2396, 11, 'Carmo da Mata', 1997074, '14006'),

                                               (2397, 11, 'Carmo de Minas', 937866, '14105'),

                                               (2398, 11, 'Carmo do Cajuru', 1829380, '14204'),

                                               (2399, 11, 'Carmo do Paranaíba', 685703, '14303'),

                                               (2400, 11, 'Carmo do Rio Claro', 1705600, '14402'),

                                               (2401, 11, 'Carmópolis de Minas', 1402451, '14501'),

                                               (2402, 11, 'Carneirinho', 857156, '14550'),

                                               (2403, 11, 'Carrancas', 712242, '14600'),

                                               (2404, 11, 'Carvalhópolis', 23675, '14709'),

                                               (2405, 11, 'Carvalhos', 933501, '14808'),

                                               (2406, 11, 'Casa Grande', 1677489, '14907'),

                                               (2407, 11, 'Cascalho Rico', 1743621, '15003'),

                                               (2408, 11, 'Cássia', 1749755, '15102'),

                                               (2409, 11, 'Cataguases', 1478872, '15300'),

                                               (2410, 11, 'Catas Altas', 182037, '15359'),

                                               (2411, 11, 'Catas Altas da Noruega', 1053899, '15409'),

                                               (2412, 11, 'Catuji', 684811, '15458'),

                                               (2413, 11, 'Catuti', 1175998, '15474'),

                                               (2414, 11, 'Caxambu', 1646739, '15508'),

                                               (2415, 11, 'Cedro do Abaeté', 684613, '15607'),

                                               (2416, 11, 'Central de Minas', 1823342, '15706'),

                                               (2417, 11, 'Centralina', 240525, '15805'),

                                               (2418, 11, 'Chácara', 1809832, '15904'),

                                               (2419, 11, 'Chalé', 580876, '16001'),

                                               (2420, 11, 'Chapada do Norte', 689404, '16100'),

                                               (2421, 11, 'Chapada Gaúcha', 387217, '16159'),

                                               (2422, 11, 'Chiador', 690020, '16209'),

                                               (2423, 11, 'Cipotânea', 1269867, '16308'),

                                               (2424, 11, 'Claraval', 1587412, '16407'),

                                               (2425, 11, 'Claro dos Poções', 448021, '16506'),

                                               (2426, 11, 'Cláudio', 644598, '16605'),

                                               (2427, 11, 'Coimbra', 1509502, '16704'),

                                               (2428, 11, 'Coluna', 77436, '16803'),

                                               (2429, 11, 'Comendador Gomes', 790157, '16902'),

                                               (2430, 11, 'Comercinho', 1239707, '17009'),

                                               (2431, 11, 'Conceição da Aparecida', 15602, '17108'),

                                               (2432, 11, 'Conceição da Barra de Minas', 278892, '15201'),

                                               (2433, 11, 'Conceição das Alagoas', 377606, '17306'),

                                               (2434, 11, 'Conceição das Pedras', 1518324, '17207'),

                                               (2435, 11, 'Conceição de Ipanema', 253674, '17405'),

                                               (2436, 11, 'Conceição do Mato Dentro', 1749383, '17504'),

                                               (2437, 11, 'Conceição do Pará', 1694531, '17603'),

                                               (2438, 11, 'Conceição do Rio Verde', 1146778, '17702'),

                                               (2439, 11, 'Conceição dos Ouros', 978295, '17801'),

                                               (2440, 11, 'Cônego Marinho', 1785143, '17836'),

                                               (2441, 11, 'Confins', 1947334, '17876'),

                                               (2442, 11, 'Congonhal', 1421896, '17900'),

                                               (2443, 11, 'Congonhas', 1208709, '18007'),

                                               (2444, 11, 'Congonhas do Norte', 866689, '18106'),

                                               (2445, 11, 'Conquista', 1302665, '18205'),

                                               (2446, 11, 'Conselheiro Lafaiete', 1072305, '18304'),

                                               (2447, 11, 'Conselheiro Pena', 804298, '18403'),

                                               (2448, 11, 'Consolação', 1599868, '18502'),

                                               (2449, 11, 'Contagem', 1436037, '18601'),

                                               (2450, 11, 'Coqueiral', 1447952, '18700'),

                                               (2451, 11, 'Coração de Jesus', 435987, '18809'),

                                               (2452, 11, 'Cordisburgo', 382104, '18908'),

                                               (2453, 11, 'Cordislândia', 1687221, '19005'),

                                               (2454, 11, 'Corinto', 1447145, '19104'),

                                               (2455, 11, 'Coroaci', 519710, '19203'),

                                               (2456, 11, 'Coromandel', 1997750, '19302'),

                                               (2457, 11, 'Coronel Fabriciano', 1457402, '19401'),

                                               (2458, 11, 'Coronel Murta', 459070, '19500'),

                                               (2459, 11, 'Coronel Pacheco', 1177934, '19609'),

                                               (2460, 11, 'Coronel Xavier Chaves', 275165, '19708'),

                                               (2461, 11, 'Córrego Danta', 1654354, '19807'),

                                               (2462, 11, 'Córrego do Bom Jesus', 1971611, '19906'),

                                               (2463, 11, 'Córrego Fundo', 1844810, '19955'),

                                               (2464, 11, 'Córrego Novo', 1878867, '20003'),

                                               (2465, 11, 'Couto de Magalhães de Minas', 139565, '20102'),

                                               (2466, 11, 'Crisólita', 1841944, '20151'),

                                               (2467, 11, 'Cristais', 1340795, '20201'),

                                               (2468, 11, 'Cristália', 683598, '20300'),

                                               (2469, 11, 'Cristiano Otoni', 365067, '20409'),

                                               (2470, 11, 'Cristina', 964732, '20508'),

                                               (2471, 11, 'Crucilândia', 138075, '20607'),

                                               (2472, 11, 'Cruzeiro da Fortaleza', 1434812, '20706'),

                                               (2473, 11, 'Cruzília', 379793, '20805'),

                                               (2474, 11, 'Cuparaque', 1928413, '20839'),

                                               (2475, 11, 'Curral de Dentro', 1643380, '20870'),

                                               (2476, 11, 'Curvelo', 591350, '20904'),

                                               (2477, 11, 'Datas', 676799, '21001'),

                                               (2478, 11, 'Delfim Moreira', 575156, '21100'),

                                               (2479, 11, 'Delfinópolis', 593501, '21209'),

                                               (2480, 11, 'Delta', 1199922, '21258'),

                                               (2481, 11, 'Descoberto', 419060, '21308'),

                                               (2482, 11, 'Desterro de Entre Rios', 1241308, '21407'),

                                               (2483, 11, 'Desterro do Melo', 85046, '21506'),

                                               (2484, 11, 'Diamantina', 1747003, '21605'),

                                               (2485, 11, 'Diogo de Vasconcelos', 1362035, '21704'),

                                               (2486, 11, 'Dionísio', 1483860, '21803'),

                                               (2487, 11, 'Divinésia', 441160, '21902'),

                                               (2488, 11, 'Divino', 131671, '22009'),

                                               (2489, 11, 'Divino das Laranjeiras', 1096191, '22108'),

                                               (2490, 11, 'Divinolândia de Minas', 1315459, '22207'),

                                               (2491, 11, 'Divinópolis', 1315673, '22306'),

                                               (2492, 11, 'Divisa Alegre', 501287, '22355'),

                                               (2493, 11, 'Divisa Nova', 1457486, '22405'),

                                               (2494, 11, 'Divisópolis', 1836170, '22454'),

                                               (2495, 11, 'Dom Bosco', 738976, '22470'),

                                               (2496, 11, 'Dom Cavati', 916931, '22504'),

                                               (2497, 11, 'Dom Joaquim', 1121955, '22603'),

                                               (2498, 11, 'Dom Silvério', 482281, '22702'),

                                               (2499, 11, 'Dom Viçoso', 1774689, '22801'),

                                               (2500, 11, 'Dona Eusébia', 1403665, '22900'),

                                               (2501, 11, 'Dores de Campos', 1180068, '23007'),

                                               (2502, 11, 'Dores de Guanhães', 667776, '23106'),

                                               (2503, 11, 'Dores do Indaiá', 1519984, '23205'),

                                               (2504, 11, 'Dores do Turvo', 384487, '23304'),

                                               (2505, 11, 'Doresópolis', 1333559, '23403'),

                                                (2506, 11, 'Douradoquara', 987568, '23502'),

                                               (2507, 11, 'Durandé', 1233555, '23528'),

                                               (2508, 11, 'Elói Mendes', 1337166, '23601'),

                                               (2509, 11, 'Engenheiro Caldas', 1264497, '23700'),

                                               (2510, 11, 'Engenheiro Navarro', 98601, '23809'),

                                               (2511, 11, 'Entre Folhas', 231027, '23858'),

                                               (2512, 11, 'Entre Rios de Minas', 1653373, '23908'),

                                               (2513, 11, 'Ervália', 1937855, '24005'),

                                               (2514, 11, 'Esmeraldas', 1112018, '24104'),

                                               (2515, 11, 'Espera Feliz', 319627, '24203'),

                                               (2516, 11, 'Espinosa', 135835, '24302'),

                                               (2517, 11, 'Espírito Santo do Dourado', 1255796, '24401'),

                                               (2518, 11, 'Estiva', 1517115, '24500'),

                                               (2519, 11, 'Estrela Dalva', 1213799, '24609'),

                                               (2520, 11, 'Estrela do Indaiá', 1241064, '24708'),

                                               (2521, 11, 'Estrela do Sul', 1273996, '24807'),

                                               (2522, 11, 'Eugenópolis', 616861, '24906'),

                                               (2523, 11, 'Ewbank da Câmara', 173206, '25002'),

                                               (2524, 11, 'Extrema', 859078, '25101'),

                                               (2525, 11, 'Fama', 705743, '25200'),

                                               (2526, 11, 'Faria Lemos', 1741502, '25309'),

                                                (2527, 11, 'Felício dos Santos', 1070176, '25408'),

                                               (2528, 11, 'Felisburgo', 356204, '25606'),

                                               (2529, 11, 'Felixlândia', 848285, '25705'),

                                               (2530, 11, 'Fernandes Tourinho', 1895974, '25804'),

                                               (2531, 11, 'Ferros', 1883733, '25903'),

                                               (2532, 11, 'Fervedouro', 381780, '25952'),

                                               (2533, 11, 'Florestal', 948534, '26000'),

                                               (2534, 11, 'Formiga', 433717, '26109'),

                                               (2535, 11, 'Formoso', 1236888, '26208'),

                                               (2536, 11, 'Fortaleza de Minas', 1540227, '26307'),

                                               (2537, 11, 'Fortuna de Minas', 974376, '26406'),

                                               (2538, 11, 'Francisco Badaró', 259213, '26505'),

                                               (2539, 11, 'Francisco Dumont', 633334, '26604'),

                                               (2540, 11, 'Francisco Sá', 1650830, '26703'),

                                               (2541, 11, 'Franciscópolis', 1858811, '26752'),

                                               (2542, 11, 'Frei Gaspar', 1722057, '26802'),

                                               (2543, 11, 'Frei Inocêncio', 520140, '26901'),

                                               (2544, 11, 'Frei Lagonegro', 698207, '26950'),

                                               (2545, 11, 'Fronteira', 1314135, '27008'),

                                               (2546, 11, 'Fronteira dos Vales', 1327659, '27057'),

                                               (2547, 11, 'Fruta de Leite', 424153, '27073'),

                                               (2548, 11, 'Frutal', 959309, '27107'),

                                               (2549, 11, 'Funilândia', 710326, '27206'),

                                               (2550, 11, 'Galiléia', 1828646, '27305'),

                                               (2551, 11, 'Gameleiras', 303570, '27339'),

                                               (2552, 11, 'Glaucilândia', 1188802, '27354'),

                                               (2553, 11, 'Goiabeira', 218785, '27370'),

                                               (2554, 11, 'Goianá', 1101765, '27388'),

                                               (2555, 11, 'Gonçalves', 900801, '27404'),

                                               (2556, 11, 'Gonzaga', 745557, '27503'),

                                               (2557, 11, 'Gouveia', 1916434, '27602'),

                                               (2558, 11, 'Governador Valadares', 1168690, '27701'),

                                               (2559, 11, 'Grão Mogol', 721754, '27800'),

                                               (2560, 11, 'Grupiara', 1233957, '27909'),

                                               (2561, 11, 'Guanhães', 21581, '28006'),

                                               (2562, 11, 'Guapé', 623144, '28105'),

                                               (2563, 11, 'Guaraciaba', 1052136, '28204'),

                                               (2564, 11, 'Guaraciama', 1017069, '28253'),

                                               (2565, 11, 'Guaranésia', 294527, '28303'),

                                               (2566, 11, 'Guarani', 656711, '28402'),

                                               (2567, 11, 'Guarará', 1736445, '28501'),

                                               (2568, 11, 'Guarda-Mor', 1229319, '28600'),

                                               (2569, 11, 'Guaxupé', 1418708, '28709'),

                                               (2570, 11, 'Guidoval', 1499418, '28808'),

                                               (2571, 11, 'Guimarânia', 1148595, '28907'),

                                               (2572, 11, 'Guiricema', 940824, '29004'),

                                               (2573, 11, 'Gurinhatã', 1945746, '29103'),

                                               (2574, 11, 'Heliodora', 1718749, '29202'),

                                               (2575, 11, 'Iapu', 1379075, '29301'),

                                               (2576, 11, 'Ibertioga', 615332, '29400'),

                                               (2577, 11, 'Ibiá', 794702, '29509'),

                                               (2578, 11, 'Ibiaí', 320384, '29608'),

                                               (2579, 11, 'Ibiracatu', 1371257, '29657'),

                                               (2580, 11, 'Ibiraci', 1097865, '29707'),

                                               (2581, 11, 'Ibirité', 1347480, '29806'),

                                               (2582, 11, 'Ibitiúra de Minas', 785105, '29905'),

                                               (2583, 11, 'Ibituruna', 470653, '30002'),

                                               (2584, 11, 'Icaraí de Minas', 1780818, '30051'),

                                               (2585, 11, 'Igarapé', 297690, '30101'),

                                               (2586, 11, 'Igaratinga', 917888, '30200'),

                                               (2587, 11, 'Iguatama', 550082, '30309'),

                                               (2588, 11, 'Ijaci', 1310762, '30408'),

                                               (2589, 11, 'Ilicínea', 313922, '30507'),

                                               (2590, 11, 'Imbé de Minas', 1821901, '30556'),

                                               (2591, 11, 'Inconfidentes', 1629163, '30606'),

                                               (2592, 11, 'Indaiabira', 1795140, '30655'),

                                               (2593, 11, 'Indianópolis', 1481056, '30705'),

                                               (2594, 11, 'Ingaí', 816267, '30804'),

                                               (2595, 11, 'Inhapim', 947101, '30903'),

                                               (2596, 11, 'Inhaúma', 1670387, '31000'),

                                               (2597, 11, 'Inimutaba', 728072, '31109'),

                                               (2598, 11, 'Ipaba', 200754, '31158'),

                                               (2599, 11, 'Ipanema', 327553, '31208'),

                                               (2600, 11, 'Ipatinga', 1085153, '31307'),

                                               (2601, 11, 'Ipiaçu', 1428786, '31406'),

                                               (2602, 11, 'Ipuiúna', 1354863, '31505'),

                                               (2603, 11, 'Iraí de Minas', 1851906, '31604'),

                                               (2604, 11, 'Itabira', 213576, '31703'),

                                               (2605, 11, 'Itabirinha', 1910272, '31802'),

                                               (2606, 11, 'Itabirito', 782946, '31901'),

                                               (2607, 11, 'Itacambira', 317600, '32008'),

                                               (2608, 11, 'Itacarambi', 114131, '32107'),

                                               (2609, 11, 'Itaguara', 774230, '32206'),

                                               (2610, 11, 'Itaipé', 1582375, '32305'),

                                               (2611, 11, 'Itajubá', 764757, '32404'),

                                               (2612, 11, 'Itamarandiba', 1298783, '32503'),

                                               (2613, 11, 'Itamarati de Minas', 421541, '32602'),

                                               (2614, 11, 'Itambacuri', 809414, '32701'),

                                               (2615, 11, 'Itambé do Mato Dentro', 1880743, '32800'),

                                               (2616, 11, 'Itamogi', 1835878, '32909'),

                                               (2617, 11, 'Itamonte', 1081056, '33006'),

                                               (2618, 11, 'Itanhandu', 252112, '33105'),

                                               (2619, 11, 'Itanhomi', 286070, '33204'),

                                               (2620, 11, 'Itaobim', 1184140, '33303'),

                                               (2621, 11, 'Itapagipe', 740257, '33402'),

                                               (2622, 11, 'Itapecerica', 562000, '33501'),

                                               (2623, 11, 'Itapeva', 1965958, '33600'),

                                               (2624, 11, 'Itatiaiuçu', 1707875, '33709'),

                                               (2625, 11, 'Itaú de Minas', 177111, '33758'),

                                               (2626, 11, 'Itaúna', 1741632, '33808'),

                                               (2627, 11, 'Itaverava', 423722, '33907'),

                                               (2628, 11, 'Itinga', 68450, '34004'),

                                               (2629, 11, 'Itueta', 1477272, '34103'),

                                               (2630, 11, 'Ituiutaba', 434305, '34202'),

                                               (2631, 11, 'Itumirim', 25051, '34301'),

                                               (2632, 11, 'Iturama', 1751459, '34400'),

                                               (2633, 11, 'Itutinga', 487866, '34509'),

                                               (2634, 11, 'Jaboticatubas', 476883, '34608'),

                                               (2635, 11, 'Jacinto', 1290770, '34707'),

                                               (2636, 11, 'Jacuí', 1039263, '34806'),

                                               (2637, 11, 'Jacutinga', 1837668, '34905'),

                                               (2638, 11, 'Jaguaraçu', 1851218, '35001'),

                                               (2639, 11, 'Jaíba', 1204766, '35050'),

                                               (2640, 11, 'Jampruca', 974091, '35076'),

                                               (2641, 11, 'Janaúba', 864600, '35100'),

                                               (2642, 11, 'Januária', 1089884, '35209'),

                                               (2643, 11, 'Japaraíba', 871976, '35308'),

                                               (2644, 11, 'Japonvar', 20102, '35357'),

                                               (2645, 11, 'Jeceaba', 21177, '35407'),

                                               (2646, 11, 'Jenipapo de Minas', 309260, '35456'),

                                               (2647, 11, 'Jequeri', 20478, '35506'),

                                               (2648, 11, 'Jequitaí', 1055529, '35605'),

                                               (2649, 11, 'Jequitibá', 413852, '35704'),

                                               (2650, 11, 'Jequitinhonha', 1068479, '35803'),

                                               (2651, 11, 'Jesuânia', 1142136, '35902'),

                                               (2652, 11, 'Joaíma', 44844, '36009'),

                                               (2653, 11, 'Joanésia', 1739010, '36108'),

                                               (2654, 11, 'João Monlevade', 1882171, '36207'),

                                               (2655, 11, 'João Pinheiro', 1441825, '36306'),

                                               (2656, 11, 'Joaquim Felício', 1182675, '36405'),

                                               (2657, 11, 'Jordânia', 885320, '36504'),

                                               (2658, 11, 'José Gonçalves de Minas', 1826434, '36520'),

                                               (2659, 11, 'José Raydan', 1247297, '36553'),

                                               (2660, 11, 'Josenópolis', 1272326, '36579'),

                                               (2661, 11, 'Juatuba', 1672010, '36652'),

                                               (2662, 11, 'Juiz de Fora', 1991718, '36702'),

                                               (2663, 11, 'Juramento', 1534698, '36801'),

                                               (2664, 11, 'Juruaia', 1008624, '36900'),

                                               (2665, 11, 'Juvenília', 20412, '36959'),

                                               (2666, 11, 'Ladainha', 570744, '37007'),

                                               (2667, 11, 'Lagamar', 1069178, '37106'),

                                               (2668, 11, 'Lagoa da Prata', 1874187, '37205'),

                                               (2669, 11, 'Lagoa dos Patos', 1078705, '37304'),

                                               (2670, 11, 'Lagoa Dourada', 1069038, '37403'),

                                               (2671, 11, 'Lagoa Formosa', 628838, '37502'),

                                               (2672, 11, 'Lagoa Grande', 1335561, '37536'),

                                               (2673, 11, 'Lagoa Santa', 1703958, '37601'),

                                               (2674, 11, 'Lajinha', 1811602, '37700'),

                                               (2675, 11, 'Lambari', 974624, '37809'),

                                               (2676, 11, 'Lamim', 841262, '37908'),

                                               (2677, 11, 'Laranjal', 81745, '38005'),

                                               (2678, 11, 'Lassance', 719873, '38104'),

                                               (2679, 11, 'Lavras', 1741020, '38203'),

                                               (2680, 11, 'Leandro Ferreira', 1629126, '38302'),

                                               (2681, 11, 'Leme do Prado', 1398874, '38351'),

                                               (2682, 11, 'Leopoldina', 1041689, '38401'),

                                               (2683, 11, 'Liberdade', 462323, '38500'),

                                               (2684, 11, 'Lima Duarte', 1569363, '38609'),

                                               (2685, 11, 'Limeira do Oeste', 1982321, '38625'),

                                               (2686, 11, 'Lontra', 719221, '38658'),

                                               (2687, 11, 'Luisburgo', 88309, '38674'),

                                               (2688, 11, 'Luislândia', 1557506, '38682'),

                                               (2689, 11, 'Luminárias', 1780564, '38708'),

                                               (2690, 11, 'Luz', 505312, '38807'),

                                               (2691, 11, 'Machacalis', 1324832, '38906'),

                                               (2692, 11, 'Machado', 1285775, '39003'),

                                               (2693, 11, 'Madre de Deus de Minas', 786225, '39102'),

                                               (2694, 11, 'Malacacheta', 480015, '39201'),

                                               (2695, 11, 'Mamonas', 713875, '39250'),

                                               (2696, 11, 'Manga', 866559, '39300'),

                                               (2697, 11, 'Manhuaçu', 905206, '39409'),

                                               (2698, 11, 'Manhumirim', 389723, '39508'),

                                               (2699, 11, 'Mantena', 1133819, '39607'),

                                               (2700, 11, 'Mar de Espanha', 1619513, '39805'),

                                               (2701, 11, 'Maravilhas', 1521189, '39706'),

                                               (2702, 11, 'Maria da Fé', 1308036, '39904'),

                                               (2703, 11, 'Mariana', 542996, '40001'),

                                               (2704, 11, 'Marilac', 31006, '40100'),

                                               (2705, 11, 'Mário Campos', 80992, '40159'),

                                               (2706, 11, 'Maripá de Minas', 88161, '40209'),

                                               (2707, 11, 'Marliéria', 396379, '40308'),

                                               (2708, 11, 'Marmelópolis', 1200324, '40407'),

                                               (2709, 11, 'Martinho Campos', 528893, '40506'),

                                               (2710, 11, 'Martins Soares', 1114140, '40530'),

                                               (2711, 11, 'Mata Verde', 1007129, '40555'),

                                               (2712, 11, 'Materlândia', 1419083, '40605'),

                                               (2713, 11, 'Mateus Leme', 1645895, '40704'),

                                               (2714, 11, 'Mathias Lobato', 1340596, '71501'),

                                               (2715, 11, 'Matias Barbosa', 776935, '40803'),

                                               (2716, 11, 'Matias Cardoso', 1133320, '40852'),

                                               (2717, 11, 'Matipó', 713956, '40902'),

                                               (2718, 11, 'Mato Verde', 188197, '41009'),

                                               (2719, 11, 'Matozinhos', 786527, '41108'),

                                               (2720, 11, 'Matutina', 1239778, '41207'),

                                                (2721, 11, 'Medeiros', 158264, '41306'),

                                               (2722, 11, 'Medina', 847867, '41405'),

                                               (2723, 11, 'Mendes Pimentel', 1703386, '41504'),

                                               (2724, 11, 'Mercês', 1837098, '41603'),

                                               (2725, 11, 'Mesquita', 1309436, '41702'),

                                               (2726, 11, 'Minas Novas', 1752904, '41801');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (2727, 11, 'Minduri', 1371068, '41900'),

                                               (2728, 11, 'Mirabela', 340763, '42007'),

                                               (2729, 11, 'Miradouro', 947068, '42106'),

                                               (2730, 11, 'Miraí', 510296, '42205'),

                                               (2731, 11, 'Miravânia', 583863, '42254'),

                                               (2732, 11, 'Moeda', 152534, '42304'),

                                               (2733, 11, 'Moema', 1500227, '42403'),

                                               (2734, 11, 'Monjolos', 513880, '42502'),

                                               (2735, 11, 'Monsenhor Paulo', 264883, '42601'),

                                               (2736, 11, 'Montalvânia', 886848, '42700'),

                                               (2737, 11, 'Monte Alegre de Minas', 804912, '42809'),

                                               (2738, 11, 'Monte Azul', 1814646, '42908'),

                                               (2739, 11, 'Monte Belo', 475181, '43005'),

                                               (2740, 11, 'Monte Carmelo', 1854184, '43104'),

                                               (2741, 11, 'Monte Formoso', 707436, '43153'),

                                               (2742, 11, 'Monte Santo de Minas', 756427, '43203'),

                                               (2743, 11, 'Monte Sião', 787381, '43401'),

                                               (2744, 11, 'Montes Claros', 696012, '43302'),

                                               (2745, 11, 'Montezuma', 938795, '43450'),

                                               (2746, 11, 'Morada Nova de Minas', 1744481, '43500'),

                                               (2747, 11, 'Morro da Garça', 101160, '43609'),

                                               (2748, 11, 'Morro do Pilar', 869037, '43708'),

                                               (2749, 11, 'Munhoz', 1258889, '43807'),

                                               (2750, 11, 'Muriaé', 55432, '43906'),

                                               (2751, 11, 'Mutum', 372375, '44003'),

                                               (2752, 11, 'Muzambinho', 1056609, '44102'),

                                               (2753, 11, 'Nacip Raydan', 660144, '44201'),

                                               (2754, 11, 'Nanuque', 1105364, '44300'),

                                               (2755, 11, 'Naque', 860008, '44359'),

                                               (2756, 11, 'Natalândia', 332537, '44375'),

                                               (2757, 11, 'Natércia', 1821036, '44409'),

                                               (2758, 11, 'Nazareno', 1441157, '44508'),

                                               (2759, 11, 'Nepomuceno', 659798, '44607'),

                                               (2760, 11, 'Ninheira', 181562, '44656'),

                                               (2761, 11, 'Nova Belém', 259880, '44672'),

                                               (2762, 11, 'Nova Era', 1789640, '44706'),

                                               (2763, 11, 'Nova Lima', 1795694, '44805'),

                                               (2764, 11, 'Nova Módica', 1201021, '44904'),

                                               (2765, 11, 'Nova Ponte', 1090824, '45000'),

                                               (2766, 11, 'Nova Porteirinha', 133439, '45059'),

                                               (2767, 11, 'Nova Resende', 660191, '45109'),

                                               (2768, 11, 'Nova Serrana', 1904515, '45208'),

                                               (2769, 11, 'Nova União', 1354152, '36603'),

                                               (2770, 11, 'Novo Cruzeiro', 1213119, '45307'),

                                               (2771, 11, 'Novo Oriente de Minas', 1820165, '45356'),

                                               (2772, 11, 'Novorizonte', 48949, '45372'),

                                               (2773, 11, 'Olaria', 1477842, '45406'),

                                               (2774, 11, 'Olhos-d Água', 516933, '45455'),

                                               (2775, 11, 'Olímpio Noronha', 491719, '45505'),

                                               (2776, 11, 'Oliveira', 1178353, '45604'),

                                               (2777, 11, 'Oliveira Fortes', 327197, '45703'),

                                               (2778, 11, 'Onça de Pitangui', 39926, '45802'),

                                               (2779, 11, 'Oratórios', 1004068, '45851'),

                                               (2780, 11, 'Orizânia', 456260, '45877'),

                                               (2781, 11, 'Ouro Branco', 1436271, '45901'),

                                               (2782, 11, 'Ouro Fino', 439571, '46008'),

                                               (2783, 11, 'Ouro Preto', 1399785, '46107'),

                                               (2784, 11, 'Ouro Verde de Minas', 1609829, '46206'),

                                               (2785, 11, 'Padre Carvalho', 1129122, '46255'),

                                               (2786, 11, 'Padre Paraíso', 920106, '46305'),

                                               (2787, 11, 'Pai Pedro', 511699, '46552'),

                                               (2788, 11, 'Paineiras', 585845, '46404'),

                                               (2789, 11, 'Pains', 987055, '46503'),

                                               (2790, 11, 'Paiva', 1538697, '46602'),

                                               (2791, 11, 'Palma', 1464791, '46701'),

                                               (2792, 11, 'Palmópolis', 1021520, '46750'),

                                               (2793, 11, 'Papagaios', 1057832, '46909'),

                                               (2794, 11, 'Pará de Minas', 617847, '47105'),

                                               (2795, 11, 'Paracatu', 1032890, '47006'),

                                               (2796, 11, 'Paraguaçu', 1032146, '47204'),

                                               (2797, 11, 'Paraisópolis', 708290, '47303'),

                                               (2798, 11, 'Paraopeba', 691415, '47402'),

                                               (2799, 11, 'Passa Quatro', 802585, '47600'),

                                               (2800, 11, 'Passa Tempo', 874327, '47709'),

                                               (2801, 11, 'Passabém', 312045, '47501'),

                                               (2802, 11, 'Passa-Vinte', 591381, '47808'),

                                               (2803, 11, 'Passos', 648677, '47907'),

                                               (2804, 11, 'Patis', 304173, '47956'),

                                               (2805, 11, 'Patos de Minas', 1253551, '48004'),

                                               (2806, 11, 'Patrocínio', 1875958, '48103'),

                                               (2807, 11, 'Patrocínio do Muriaé', 1155166, '48202'),

                                               (2808, 11, 'Paula Cândido', 1145177, '48301'),

                                               (2809, 11, 'Paulistas', 1193543, '48400'),

                                               (2810, 11, 'Pavão', 543011, '48509'),

                                               (2811, 11, 'Peçanha', 1111400, '48608'),

                                               (2812, 11, 'Pedra Azul', 1701799, '48707'),

                                               (2813, 11, 'Pedra Bonita', 1446529, '48756'),

                                               (2814, 11, 'Pedra do Anta', 1712895, '48806'),

                                               (2815, 11, 'Pedra do Indaiá', 373159, '48905'),

                                               (2816, 11, 'Pedra Dourada', 306902, '49002'),

                                               (2817, 11, 'Pedralva', 1259902, '49101'),

                                               (2818, 11, 'Pedras de Maria da Cruz', 1461484, '49150'),

                                               (2819, 11, 'Pedrinópolis', 285238, '49200'),

                                               (2820, 11, 'Pedro Leopoldo', 1309794, '49309'),

                                               (2821, 11, 'Pedro Teixeira', 1575751, '49408'),

                                               (2822, 11, 'Pequeri', 1145829, '49507'),

                                               (2823, 11, 'Pequi', 1171700, '49606'),

                                               (2824, 11, 'Perdigão', 541632, '49705'),

                                               (2825, 11, 'Perdizes', 1450114, '49804'),

                                               (2826, 11, 'Perdões', 635868, '49903'),

                                               (2827, 11, 'Periquito', 507097, '49952'),

                                               (2828, 11, 'Pescador', 1407473, '50000'),

                                               (2829, 11, 'Piau', 801121, '50109'),

                                               (2830, 11, 'Piedade de Caratinga', 1768615, '50158'),

                                               (2831, 11, 'Piedade de Ponte Nova', 648144, '50208'),

                                               (2832, 11, 'Piedade do Rio Grande', 1944019, '50307'),

                                               (2833, 11, 'Piedade dos Gerais', 794578, '50406'),

                                               (2834, 11, 'Pimenta', 1547392, '50505'),

                                               (2835, 11, 'Pingo-d Água', 694639, '50539'),

                                               (2836, 11, 'Pintópolis', 633059, '50570'),

                                               (2837, 11, 'Piracema', 1319174, '50604'),

                                               (2838, 11, 'Pirajuba', 998490, '50703'),

                                               (2839, 11, 'Piranga', 1923707, '50802'),

                                               (2840, 11, 'Piranguçu', 941066, '50901'),

                                               (2841, 11, 'Piranguinho', 578846, '51008'),

                                               (2842, 11, 'Pirapetinga', 1112819, '51107'),

                                               (2843, 11, 'Pirapora', 663790, '51206'),

                                               (2844, 11, 'Piraúba', 1872336, '51305'),

                                               (2845, 11, 'Pitangui', 1998016, '51404'),

                                               (2846, 11, 'Piumhi', 424742, '51503'),

                                               (2847, 11, 'Planura', 656487, '51602'),

                                               (2848, 11, 'Poço Fundo', 1224461, '51701'),

                                               (2849, 11, 'Poços de Caldas', 583119, '51800'),

                                               (2850, 11, 'Pocrane', 518651, '51909'),

                                               (2851, 11, 'Pompéu', 34517, '52006'),

                                               (2852, 11, 'Ponte Nova', 1425052, '52105'),

                                               (2853, 11, 'Ponto Chique', 833362, '52131'),

                                               (2854, 11, 'Ponto dos Volantes', 50251, '52170'),

                                               (2855, 11, 'Porteirinha', 513508, '52204'),

                                               (2856, 11, 'Porto Firme', 1317854, '52303'),

                                               (2857, 11, 'Poté', 783123, '52402'),

                                               (2858, 11, 'Pouso Alegre', 599233, '52501'),

                                               (2859, 11, 'Pouso Alto', 82714, '52600'),

                                                (2860, 11, 'Prados', 1514395, '52709'),

                                               (2861, 11, 'Prata', 610339, '52808'),

                                               (2862, 11, 'Pratápolis', 567774, '52907'),

                                               (2863, 11, 'Pratinha', 1249763, '53004'),

                                               (2864, 11, 'Presidente Bernardes', 1934404, '53103'),

                                               (2865, 11, 'Presidente Juscelino', 332833, '53202'),

                                               (2866, 11, 'Presidente Kubitschek', 621957, '53301'),

                                               (2867, 11, 'Presidente Olegário', 352680, '53400'),

                                               (2868, 11, 'Prudente de Morais', 1764850, '53608'),

                                               (2869, 11, 'Quartel Geral', 696795, '53707'),

                                               (2870, 11, 'Queluzito', 995252, '53806'),

                                               (2871, 11, 'Raposos', 98257, '53905'),

                                               (2872, 11, 'Raul Soares', 1689121, '54002'),

                                               (2873, 11, 'Recreio', 1798158, '54101'),

                                               (2874, 11, 'Reduto', 1746004, '54150'),

                                               (2875, 11, 'Resende Costa', 1366346, '54200'),

                                               (2876, 11, 'Resplendor', 1624782, '54309'),

                                               (2877, 11, 'Ressaquinha', 1204455, '54408'),

                                               (2878, 11, 'Riachinho', 389612, '54457'),

                                               (2879, 11, 'Riacho dos Machados', 1584477, '54507'),

                                               (2880, 11, 'Ribeirão das Neves', 1636966, '54606'),

                                               (2881, 11, 'Ribeirão Vermelho', 864926, '54705'),

                                               (2882, 11, 'Rio Acima', 753647, '54804'),

                                               (2883, 11, 'Rio Casca', 1915597, '54903'),

                                               (2884, 11, 'Rio do Prado', 1443597, '55108'),

                                               (2885, 11, 'Rio Doce', 1107253, '55009'),

                                               (2886, 11, 'Rio Espera', 254326, '55207'),

                                               (2887, 11, 'Rio Manso', 1376838, '55306'),

                                               (2888, 11, 'Rio Novo', 1422592, '55405'),

                                               (2889, 11, 'Rio Paranaíba', 1063074, '55504'),

                                               (2890, 11, 'Rio Pardo de Minas', 1006187, '55603'),

                                               (2891, 11, 'Rio Piracicaba', 1085039, '55702'),

                                               (2892, 11, 'Rio Pomba', 286203, '55801'),

                                               (2893, 11, 'Rio Preto', 1411006, '55900'),

                                               (2894, 11, 'Rio Vermelho', 1597867, '56007'),

                                               (2895, 11, 'Ritápolis', 109243, '56106'),

                                               (2896, 11, 'Rochedo de Minas', 147157, '56205'),

                                               (2897, 11, 'Rodeiro', 1873753, '56304'),

                                               (2898, 11, 'Romaria', 678485, '56403'),

                                               (2899, 11, 'Rosário da Limeira', 82495, '56452'),

                                               (2900, 11, 'Rubelita', 1446952, '56502'),

                                               (2901, 11, 'Rubim', 1094556, '56601'),

                                               (2902, 11, 'Sabará', 1114698, '56700'),

                                               (2903, 11, 'Sabinópolis', 77976, '56809'),

                                               (2904, 11, 'Sacramento', 1110361, '56908'),

                                               (2905, 11, 'Salinas', 129343, '57005'),

                                               (2906, 11, 'Salto da Divisa', 332069, '57104'),

                                               (2907, 11, 'Santa Bárbara', 781495, '57203'),

                                               (2908, 11, 'Santa Bárbara do Leste', 1097660, '57252'),

                                               (2909, 11, 'Santa Bárbara do Monte Verde', 1653161, '57278'),

                                               (2910, 11, 'Santa Bárbara do Tugúrio', 1756764, '57302'),

                                               (2911, 11, 'Santa Cruz de Minas', 1001579, '57336'),

                                               (2912, 11, 'Santa Cruz de Salinas', 707764, '57377'),

                                               (2913, 11, 'Santa Cruz do Escalvado', 1334623, '57401'),

                                               (2914, 11, 'Santa Efigênia de Minas', 1690092, '57500'),

                                               (2915, 11, 'Santa Fé de Minas', 1056654, '57609'),

                                               (2916, 11, 'Santa Helena de Minas', 1635558, '57658'),

                                               (2917, 11, 'Santa Juliana', 1183831, '57708'),

                                               (2918, 11, 'Santa Luzia', 614998, '57807'),

                                               (2919, 11, 'Santa Margarida', 1225189, '57906'),

                                               (2920, 11, 'Santa Maria de Itabira', 1851683, '58003'),

                                               (2921, 11, 'Santa Maria do Salto', 1169939, '58102'),

                                               (2922, 11, 'Santa Maria do Suaçuí', 1723157, '58201'),

                                               (2923, 11, 'Santa Rita de Caldas', 1214999, '59209'),

                                               (2924, 11, 'Santa Rita de Ibitipoca', 443233, '59407'),

                                               (2925, 11, 'Santa Rita de Jacutinga', 1758947, '59308'),

                                               (2926, 11, 'Santa Rita de Minas', 1453427, '59357'),

                                               (2927, 11, 'Santa Rita do Itueto', 991955, '59506'),

                                               (2928, 11, 'Santa Rita do Sapucaí', 139903, '59605'),

                                               (2929, 11, 'Santa Rosa da Serra', 484437, '59704'),

                                               (2930, 11, 'Santa Vitória', 46099, '59803'),

                                               (2931, 11, 'Santana da Vargem', 335781, '58300'),

                                               (2932, 11, 'Santana de Cataguases', 1239659, '58409'),

                                               (2933, 11, 'Santana de Pirapama', 696510, '58508'),

                                               (2934, 11, 'Santana do Deserto', 1666074, '58607'),

                                               (2935, 11, 'Santana do Garambéu', 1567438, '58706'),

                                               (2936, 11, 'Santana do Jacaré', 996751, '58805'),

                                               (2937, 11, 'Santana do Manhuaçu', 1211614, '58904'),

                                               (2938, 11, 'Santana do Paraíso', 1660600, '58953'),

                                               (2939, 11, 'Santana do Riacho', 1338284, '59001'),

                                               (2940, 11, 'Santana dos Montes', 1417025, '59100'),

                                               (2941, 11, 'Santo Antônio do Amparo', 656443, '59902'),

                                               (2942, 11, 'Santo Antônio do Aventureiro', 1859785, '60009'),

                                               (2943, 11, 'Santo Antônio do Grama', 1375974, '60108'),

                                               (2944, 11, 'Santo Antônio do Itambé', 1593629, '60207'),

                                               (2945, 11, 'Santo Antônio do Jacinto', 1965283, '60306'),

                                               (2946, 11, 'Santo Antônio do Monte', 949372, '60405'),

                                               (2947, 11, 'Santo Antônio do Retiro', 1588742, '60454'),

                                               (2948, 11, 'Santo Antônio do Rio Abaixo', 1389480, '60504'),

                                               (2949, 11, 'Santo Hipólito', 74463, '60603'),

                                               (2950, 11, 'Santos Dumont', 644673, '60702'),

                                               (2951, 11, 'São Bento Abade', 591094, '60801'),

                                               (2952, 11, 'São Brás do Suaçuí', 1475515, '60900'),

                                               (2953, 11, 'São Domingos das Dores', 383317, '60959'),

                                               (2954, 11, 'São Domingos do Prata', 1950524, '61007'),

                                               (2955, 11, 'São Félix de Minas', 161399, '61056'),

                                               (2956, 11, 'São Francisco', 286017, '61106'),

                                               (2957, 11, 'São Francisco de Paula', 278569, '61205'),

                                               (2958, 11, 'São Francisco de Sales', 383821, '61304'),

                                               (2959, 11, 'São Francisco do Glória', 468730, '61403'),

                                               (2960, 11, 'São Geraldo', 415573, '61502'),

                                               (2961, 11, 'São Geraldo da Piedade', 237924, '61601'),

                                               (2962, 11, 'São Geraldo do Baixio', 262192, '61650'),

                                               (2963, 11, 'São Gonçalo do Abaeté', 1121708, '61700'),

                                               (2964, 11, 'São Gonçalo do Pará', 892070, '61809'),

                                               (2965, 11, 'São Gonçalo do Rio Abaixo', 1233814, '61908'),

                                               (2966, 11, 'São Gonçalo do Rio Preto', 1150953, '25507'),

                                               (2967, 11, 'São Gonçalo do Sapucaí', 595781, '62005'),

                                               (2968, 11, 'São Gotardo', 1404949, '62104'),

                                               (2969, 11, 'São João Batista do Glória', 234097, '62203'),

                                               (2970, 11, 'São João da Lagoa', 1851545, '62252'),

                                               (2971, 11, 'São João da Mata', 813638, '62302'),

                                               (2972, 11, 'São João da Ponte', 839680, '62401'),

                                               (2973, 11, 'São João das Missões', 1673008, '62450'),

                                               (2974, 11, 'São João del Rei', 546092, '62500'),

                                               (2975, 11, 'São João do Manhuaçu', 1205543, '62559'),

                                               (2976, 11, 'São João do Manteninha', 382093, '62575'),

                                               (2977, 11, 'São João do Oriente', 1364659, '62609'),

                                               (2978, 11, 'São João do Pacuí', 548431, '62658'),

                                               (2979, 11, 'São João do Paraíso', 809379, '62708'),

                                               (2980, 11, 'São João Evangelista', 53075, '62807'),

                                               (2981, 11, 'São João Nepomuceno', 1984627, '62906'),

                                               (2982, 11, 'São Joaquim de Bicas', 717982, '62922'),

                                               (2983, 11, 'São José da Barra', 701789, '62948'),

                                               (2984, 11, 'São José da Lapa', 1172508, '62955'),

                                               (2985, 11, 'São José da Safira', 841507, '63003'),

                                               (2986, 11, 'São José da Varginha', 532217, '63102'),

                                               (2987, 11, 'São José do Alegre', 1900883, '63201'),

                                               (2988, 11, 'São José do Divino', 1079396, '63300'),

                                               (2989, 11, 'São José do Goiabal', 1182204, '63409'),

                                               (2990, 11, 'São José do Jacuri', 1109001, '63508'),

                                               (2991, 11, 'São José do Mantimento', 1572049, '63607'),

                                               (2992, 11, 'São Lourenço', 1340733, '63706'),

                                               (2993, 11, 'São Miguel do Anta', 327286, '63805'),

                                               (2994, 11, 'São Pedro da União', 1256458, '63904'),

                                               (2995, 11, 'São Pedro do Suaçuí', 1016345, '64100'),

                                               (2996, 11, 'São Pedro dos Ferros', 1342613, '64001'),

                                               (2997, 11, 'São Romão', 1869900, '64209'),

                                               (2998, 11, 'São Roque de Minas', 198204, '64308'),

                                               (2999, 11, 'São Sebastião da Bela Vista', 841816, '64407'),

                                               (3000, 11, 'São Sebastião da Vargem Alegre', 164412, '64431'),

                                               (3001, 11, 'São Sebastião do Anta', 1269391, '64472'),

                                               (3002, 11, 'São Sebastião do Maranhão', 1172101, '64506'),

                                               (3003, 11, 'São Sebastião do Oeste', 797629, '64605'),

                                               (3004, 11, 'São Sebastião do Paraíso', 1495116, '64704'),

                                               (3005, 11, 'São Sebastião do Rio Preto', 374165, '64803'),

                                               (3006, 11, 'São Sebastião do Rio Verde', 268407, '64902'),

                                               (3007, 11, 'São Thomé das Letras', 606972, '65206'),

                                               (3008, 11, 'São Tiago', 1945743, '65008'),

                                               (3009, 11, 'São Tomás de Aquino', 718539, '65107'),

                                               (3010, 11, 'São Vicente de Minas', 1063262, '65305'),

                                               (3011, 11, 'Sapucaí-Mirim', 673976, '65404'),

                                               (3012, 11, 'Sardoá', 1056027, '65503'),

                                               (3013, 11, 'Sarzedo', 156859, '65537'),

                                               (3014, 11, 'Sem-Peixe', 1110370, '65560'),

                                               (3015, 11, 'Senador Amaral', 1151641, '65578'),

                                               (3016, 11, 'Senador Cortes', 1402870, '65602'),

                                               (3017, 11, 'Senador Firmino', 1967383, '65701'),

                                               (3018, 11, 'Senador José Bento', 553089, '65800'),

                                               (3019, 11, 'Senador Modestino Gonçalves', 1791494, '65909'),

                                               (3020, 11, 'Senhora de Oliveira', 1362436, '66006'),

                                               (3021, 11, 'Senhora do Porto', 437951, '66105'),

                                               (3022, 11, 'Senhora dos Remédios', 1461363, '66204'),

                                               (3023, 11, 'Sericita', 1589452, '66303'),

                                               (3024, 11, 'Seritinga', 262658, '66402'),

                                               (3025, 11, 'Serra Azul de Minas', 1301655, '66501'),

                                               (3026, 11, 'Serra da Saudade', 25886, '66600'),

                                               (3027, 11, 'Serra do Salitre', 1917896, '66808'),

                                               (3028, 11, 'Serra dos Aimorés', 983439, '66709'),

                                               (3029, 11, 'Serrania', 416391, '66907'),

                                               (3030, 11, 'Serranópolis de Minas', 939394, '66956'),

                                               (3031, 11, 'Serranos', 1764284, '67004'),

                                               (3032, 11, 'Serro', 1037885, '67103'),

                                               (3033, 11, 'Sete Lagoas', 1830207, '67202'),

                                               (3034, 11, 'Setubinha', 620986, '65552'),

                                               (3035, 11, 'Silveirânia', 173564, '67301'),

                                               (3036, 11, 'Silvianópolis', 1439027, '67400'),

                                               (3037, 11, 'Simão Pereira', 846625, '67509'),

                                               (3038, 11, 'Simonésia', 1763484, '67608'),

                                               (3039, 11, 'Sobrália', 935780, '67707'),

                                               (3040, 11, 'Soledade de Minas', 729144, '67806'),

                                               (3041, 11, 'Tabuleiro', 138969, '67905'),

                                               (3042, 11, 'Taiobeiras', 336970, '68002'),

                                               (3043, 11, 'Taparuba', 1490449, '68051'),

                                               (3044, 11, 'Tapira', 1612424, '68101'),

                                               (3045, 11, 'Tapiraí', 1675697, '68200'),

                                               (3046, 11, 'Taquaraçu de Minas', 212508, '68309'),

                                               (3047, 11, 'Tarumirim', 509785, '68408'),

                                               (3048, 11, 'Teixeiras', 1094761, '68507'),

                                               (3049, 11, 'Teófilo Otoni', 730267, '68606'),

                                               (3050, 11, 'Timóteo', 1848810, '68705'),

                                               (3051, 11, 'Tiradentes', 660687, '68804'),

                                               (3052, 11, 'Tiros', 954733, '68903'),

                                               (3053, 11, 'Tocantins', 928421, '69000'),

                                               (3054, 11, 'Tocos do Moji', 43705, '69059'),

                                               (3055, 11, 'Toledo', 1411791, '69109'),

                                               (3056, 11, 'Tombos', 1019194, '69208'),

                                               (3057, 11, 'Três Corações', 979886, '69307'),

                                               (3058, 11, 'Três Marias', 1195385, '69356'),

                                               (3059, 11, 'Três Pontas', 200388, '69406'),

                                               (3060, 11, 'Tumiritinga', 1038531, '69505'),

                                               (3061, 11, 'Tupaciguara', 13353, '69604'),

                                               (3062, 11, 'Turmalina', 368858, '69703'),

                                               (3063, 11, 'Turvolândia', 856304, '69802'),

                                               (3064, 11, 'Ubá', 58836, '69901'),

                                               (3065, 11, 'Ubaí', 1282528, '70008'),

                                               (3066, 11, 'Ubaporanga', 1437930, '70057'),

                                               (3067, 11, 'Uberaba', 1914913, '70107'),

                                               (3068, 11, 'Uberlândia', 340251, '70206'),

                                               (3069, 11, 'Umburatiba', 107994, '70305'),

                                               (3070, 11, 'Unaí', 1113869, '70404'),

                                               (3071, 11, 'União de Minas', 1123497, '70438'),

                                               (3072, 11, 'Uruana de Minas', 1957825, '70479'),

                                               (3073, 11, 'Urucânia', 724125, '70503'),

                                               (3074, 11, 'Urucuia', 267328, '70529'),

                                               (3075, 11, 'Vargem Alegre', 1326578, '70578'),

                                               (3076, 11, 'Vargem Bonita', 1061353, '70602'),

                                               (3077, 11, 'Vargem Grande do Rio Pardo', 1409416, '70651'),

                                               (3078, 11, 'Varginha', 879971, '70701'),

                                               (3079, 11, 'Varjão de Minas', 37743, '70750'),

                                               (3080, 11, 'Várzea da Palma', 1988692, '70800'),

                                               (3081, 11, 'Varzelândia', 51813, '70909'),

                                               (3082, 11, 'Vazante', 1256219, '71006'),

                                               (3083, 11, 'Verdelândia', 732873, '71030'),

                                               (3084, 11, 'Veredinha', 1783773, '71071'),

                                               (3085, 11, 'Veríssimo', 1437522, '71105'),

                                               (3086, 11, 'Vermelho Novo', 431170, '71154'),

                                               (3087, 11, 'Vespasiano', 22087, '71204'),

                                               (3088, 11, 'Viçosa', 1387540, '71303'),

                                               (3089, 11, 'Vieiras', 1369077, '71402'),

                                               (3090, 11, 'Virgem da Lapa', 339692, '71600'),

                                               (3091, 11, 'Virgínia', 103872, '71709'),

                                               (3092, 11, 'Virginópolis', 295093, '71808'),

                                               (3093, 11, 'Virgolândia', 1510600, '71907'),

                                               (3094, 11, 'Visconde do Rio Branco', 149233, '72004'),

                                               (3095, 11, 'Volta Grande', 131509, '72103'),

                                               (3096, 11, 'Wenceslau Braz', 152738, '72202'),

                                               (3097, 8, 'Afonso Cláudio', 633409, '00102'),

                                               (3098, 8, 'Água Doce do Norte', 894920, '00169'),

                                               (3099, 8, 'Águia Branca', 1215501, '00136'),

                                               (3100, 8, 'Alegre', 421423, '00201'),

                                               (3101, 8, 'Alfredo Chaves', 969823, '00300');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (3102, 8, 'Alto Rio Novo', 1019000, '00359'),

                                               (3103, 8, 'Anchieta', 1616687, '00409'),

                                               (3104, 8, 'Apiacá', 501933, '00508'),

                                               (3105, 8, 'Aracruz', 1078752, '00607'),

                                               (3106, 8, 'Atilio Vivacqua', 1598358, '00706'),

                                               (3107, 8, 'Baixo Guandu', 1603110, '00805'),

                                               (3108, 8, 'Barra de São Francisco', 266246, '00904'),

                                               (3109, 8, 'Boa Esperança', 1948518, '01001'),

                                               (3110, 8, 'Bom Jesus do Norte', 449591, '01100'),

                                               (3111, 8, 'Brejetuba', 1890449, '01159'),

                                               (3112, 8, 'Cachoeiro de Itapemirim', 865304, '01209'),

                                               (3113, 8, 'Cariacica', 1082664, '01308'),

                                               (3114, 8, 'Castelo', 1781373, '01407'),

                                               (3115, 8, 'Colatina', 1204464, '01506'),

                                               (3116, 8, 'Conceição da Barra', 769591, '01605'),

                                               (3117, 8, 'Conceição do Castelo', 1788649, '01704'),

                                               (3118, 8, 'Divino de São Lourenço', 357251, '01803'),

                                               (3119, 8, 'Domingos Martins', 376649, '01902'),

                                               (3120, 8, 'Dores do Rio Preto', 566910, '02009'),

                                               (3121, 8, 'Ecoporanga', 881848, '02108'),

                                               (3122, 8, 'Fundão', 1620294, '02207'),

                                               (3123, 8, 'Governador Lindenberg', 416691, '02256'),

                                               (3124, 8, 'Guaçuí', 1796923, '02306'),

                                               (3125, 8, 'Guarapari', 116784, '02405'),

                                               (3126, 8, 'Ibatiba', 1578285, '02454'),

                                               (3127, 8, 'Ibiraçu', 1690128, '02504'),

                                               (3128, 8, 'Ibitirama', 121403, '02553'),

                                               (3129, 8, 'Iconha', 1292423, '02603'),

                                               (3130, 8, 'Irupi', 1338386, '02652'),

                                               (3131, 8, 'Itaguaçu', 480896, '02702'),

                                               (3132, 8, 'Itapemirim', 1552716, '02801'),

                                               (3133, 8, 'Itarana', 1110947, '02900'),

                                               (3134, 8, 'Iúna', 831042, '03007'),

                                               (3135, 8, 'Jaguaré', 279135, '03056'),

                                               (3136, 8, 'Jerônimo Monteiro', 722005, '03106'),

                                               (3137, 8, 'João Neiva', 158820, '03130'),

                                               (3138, 8, 'Laranja da Terra', 1607890, '03163'),

                                               (3139, 8, 'Linhares', 1095609, '03205'),

                                               (3140, 8, 'Mantenópolis', 1972119, '03304'),

                                               (3141, 8, 'Marataízes', 215900, '03320'),

                                               (3142, 8, 'Marechal Floriano', 1993354, '03346'),

                                               (3143, 8, 'Marilândia', 858860, '03353'),

                                               (3144, 8, 'Mimoso do Sul', 1427286, '03403'),

                                               (3145, 8, 'Montanha', 1599066, '03502'),

                                               (3146, 8, 'Mucurici', 745471, '03601'),

                                               (3147, 8, 'Muniz Freire', 1289410, '03700'),

                                               (3148, 8, 'Muqui', 307009, '03809'),

                                               (3149, 8, 'Nova Venécia', 483857, '03908'),

                                               (3150, 8, 'Pancas', 700884, '04005'),

                                               (3151, 8, 'Pedro Canário', 1723220, '04054'),

                                               (3152, 8, 'Pinheiros', 449208, '04104'),

                                               (3153, 8, 'Piúma', 162978, '04203'),

                                               (3154, 8, 'Ponto Belo', 534231, '04252'),

                                               (3155, 8, 'Presidente Kennedy', 1809791, '04302'),

                                               (3156, 8, 'Rio Bananal', 457923, '04351'),

                                               (3157, 8, 'Rio Novo do Sul', 742796, '04401'),

                                               (3158, 8, 'Santa Leopoldina', 1613016, '04500'),

                                               (3159, 8, 'Santa Maria de Jetibá', 353722, '04559'),

                                               (3160, 8, 'Santa Teresa', 770735, '04609'),

                                               (3161, 8, 'São Domingos do Norte', 646063, '04658'),

                                               (3162, 8, 'São Gabriel da Palha', 811992, '04708'),

                                               (3163, 8, 'São José do Calçado', 1067276, '04807'),

                                               (3164, 8, 'São Mateus', 452743, '04906'),

                                               (3165, 8, 'São Roque do Canaã', 1134755, '04955'),

                                               (3166, 8, 'Serra', 235265, '05002'),

                                               (3167, 8, 'Sooretama', 854611, '05010'),

                                               (3168, 8, 'Vargem Alta', 632935, '05036'),

                                               (3169, 8, 'Venda Nova do Imigrante', 910456, '05069'),

                                               (3170, 8, 'Viana', 1140198, '05101'),

                                               (3171, 8, 'Vila Pavão', 1864281, '05150'),

                                               (3172, 8, 'Vila Valério', 769383, '05176'),

                                               (3173, 8, 'Vila Velha', 1540351, '05200'),

                                               (3174, 8, 'Vitória', 1835234, '05309'),

                                               (3175, 19, 'Angra dos Reis', 1838072, '00100'),

                                               (3176, 19, 'Aperibé', 1579940, '00159'),

                                               (3177, 19, 'Araruama', 250160, '00209'),

                                               (3178, 19, 'Areal', 106772, '00225'),

                                               (3179, 19, 'Armação dos Búzios', 1666035, '00233'),

                                               (3180, 19, 'Arraial do Cabo', 14676, '00258'),

                                               (3181, 19, 'Barra do Piraí', 1274052, '00308'),

                                               (3182, 19, 'Barra Mansa', 1447127, '00407'),

                                               (3183, 19, 'Belford Roxo', 1331901, '00456'),

                                               (3184, 19, 'Bom Jardim', 1080972, '00506'),

                                               (3185, 19, 'Bom Jesus do Itabapoana', 796522, '00605'),

                                               (3186, 19, 'Cabo Frio', 518084, '00704'),

                                               (3187, 19, 'Cachoeiras de Macacu', 439506, '00803'),

                                               (3188, 19, 'Cambuci', 466485, '00902'),

                                               (3189, 19, 'Campos dos Goytacazes', 877738, '01009'),

                                               (3190, 19, 'Cantagalo', 154722, '01108'),

                                               (3191, 19, 'Carapebus', 1990089, '00936'),

                                               (3192, 19, 'Cardoso Moreira', 1214460, '01157'),

                                               (3193, 19, 'Carmo', 691526, '01207'),

                                               (3194, 19, 'Casimiro de Abreu', 578312, '01306'),

                                               (3195, 19, 'Comendador Levy Gasparian', 1458321, '00951'),

                                               (3196, 19, 'Conceição de Macabu', 1490104, '01405'),

                                               (3197, 19, 'Cordeiro', 657038, '01504'),

                                               (3198, 19, 'Duas Barras', 606515, '01603'),

                                               (3199, 19, 'Duque de Caxias', 13399, '01702'),

                                               (3200, 19, 'Engenheiro Paulo de Frontin', 984616, '01801'),

                                               (3201, 19, 'Guapimirim', 861944, '01850'),

                                               (3202, 19, 'Iguaba Grande', 909178, '01876'),

                                               (3203, 19, 'Itaboraí', 890161, '01900'),

                                               (3204, 19, 'Itaguaí', 1449551, '02007'),

                                               (3205, 19, 'Italva', 138297, '02056'),

                                               (3206, 19, 'Itaocara', 1999988, '02106'),

                                               (3207, 19, 'Itaperuna', 891828, '02205'),

                                               (3208, 19, 'Itatiaia', 1530377, '02254'),

                                               (3209, 19, 'Japeri', 236762, '02270'),

                                               (3210, 19, 'Laje do Muriaé', 108762, '02304'),

                                               (3211, 19, 'Macaé', 1925473, '02403'),

                                               (3212, 19, 'Macuco', 943131, '02452'),

                                               (3213, 19, 'Magé', 545234, '02502'),

                                               (3214, 19, 'Mangaratiba', 225649, '02601'),

                                               (3215, 19, 'Maricá', 1610612, '02700'),

                                               (3216, 19, 'Mendes', 433792, '02809'),

                                               (3217, 19, 'Mesquita', 485688, '02858'),

                                               (3218, 19, 'Miguel Pereira', 1175839, '02908'),

                                               (3219, 19, 'Miracema', 1249011, '03005'),

                                               (3220, 19, 'Natividade', 207365, '03104'),

                                               (3221, 19, 'Nilópolis', 66929, '03203'),

                                               (3222, 19, 'Niterói', 303551, '03302'),

                                               (3223, 19, 'Nova Friburgo', 516105, '03401'),

                                               (3224, 19, 'Nova Iguaçu', 1372033, '03500'),

                                               (3225, 19, 'Paracambi', 1473140, '03609'),

                                               (3226, 19, 'Paraíba do Sul', 1851834, '03708'),

                                               (3227, 19, 'Paraty', 1622097, '03807'),

                                               (3228, 19, 'Paty do Alferes', 129094, '03856'),

                                               (3229, 19, 'Petrópolis', 274933, '03906'),

                                               (3230, 19, 'Pinheiral', 308058, '03955'),

                                               (3231, 19, 'Piraí', 1372129, '04003'),

                                               (3232, 19, 'Porciúncula', 235283, '04102'),

                                               (3233, 19, 'Porto Real', 1257897, '04110'),

                                               (3234, 19, 'Quatis', 1185397, '04128'),

                                               (3235, 19, 'Queimados', 1972484, '04144'),

                                               (3236, 19, 'Quissamã', 1382109, '04151'),

                                               (3237, 19, 'Resende', 1011863, '04201'),

                                               (3238, 19, 'Rio Bonito', 1187049, '04300'),

                                               (3239, 19, 'Rio Claro', 1537552, '04409'),

                                               (3240, 19, 'Rio das Flores', 1756204, '04508'),

                                               (3241, 19, 'Rio das Ostras', 723080, '04524'),

                                               (3242, 19, 'Rio de Janeiro', 1190758, '04557'),

                                               (3243, 19, 'Santa Maria Madalena', 1502709, '04607'),

                                               (3244, 19, 'Santo Antônio de Pádua', 1678663, '04706'),

                                               (3245, 19, 'São Fidélis', 212684, '04805'),

                                               (3246, 19, 'São Francisco de Itabapoana', 656148, '04755'),

                                               (3247, 19, 'São Gonçalo', 345059, '04904'),

                                               (3248, 19, 'São João da Barra', 1117019, '05000'),

                                               (3249, 19, 'São João de Meriti', 1005650, '05109'),

                                               (3250, 19, 'São José de Ubá', 769289, '05133'),

                                               (3251, 19, 'São José do Vale do Rio Preto', 1105123, '05158'),

                                               (3252, 19, 'São Pedro da Aldeia', 1741585, '05208'),

                                               (3253, 19, 'São Sebastião do Alto', 883707, '05307'),

                                               (3254, 19, 'Sapucaia', 320946, '05406'),

                                               (3255, 19, 'Saquarema', 1248008, '05505'),

                                               (3256, 19, 'Seropédica', 844722, '05554'),

                                               (3257, 19, 'Silva Jardim', 1944001, '05604'),

                                               (3258, 19, 'Sumidouro', 46167, '05703'),

                                               (3259, 19, 'Tanguá', 1476243, '05752'),

                                               (3260, 19, 'Teresópolis', 1192265, '05802'),

                                               (3261, 19, 'Trajano de Moraes', 252192, '05901'),

                                               (3262, 19, 'Três Rios', 1958998, '06008'),

                                               (3263, 19, 'Valença', 394136, '06107'),

                                               (3264, 19, 'Varre-Sai', 1698601, '06156'),

                                               (3265, 19, 'Vassouras', 458130, '06206'),

                                               (3266, 19, 'Volta Redonda', 425202, '06305'),

                                               (3267, 26, 'Adamantina', 946378, '00105'),

                                               (3268, 26, 'Adolfo', 1176490, '00204'),

                                               (3269, 26, 'Aguaí', 742578, '00303'),

                                               (3270, 26, 'Águas da Prata', 410310, '00402'),

                                               (3271, 26, 'Águas de Lindóia', 1470491, '00501'),

                                               (3272, 26, 'Águas de Santa Bárbara', 1921167, '00550'),

                                               (3273, 26, 'Águas de São Pedro', 1777687, '00600'),

                                               (3274, 26, 'Agudos', 1570261, '00709'),

                                               (3275, 26, 'Alambari', 375011, '00758'),

                                               (3276, 26, 'Alfredo Marcondes', 811828, '00808'),

                                               (3277, 26, 'Altair', 1243113, '00907'),

                                               (3278, 26, 'Altinópolis', 820997, '01004'),

                                               (3279, 26, 'Alto Alegre', 605871, '01103'),

                                               (3280, 26, 'Alumínio', 650155, '01152'),

                                               (3281, 26, 'Álvares Florence', 1848560, '01202'),

                                               (3282, 26, 'Álvares Machado', 570467, '01301'),

                                               (3283, 26, 'Álvaro de Carvalho', 1632044, '01400'),

                                               (3284, 26, 'Alvinlândia', 1158415, '01509'),

                                               (3285, 26, 'Americana', 233588, '01608'),

                                               (3286, 26, 'Américo Brasiliense', 661374, '01707'),

                                               (3287, 26, 'Américo de Campos', 1476050, '01806'),

                                               (3288, 26, 'Amparo', 1753747, '01905'),

                                               (3289, 26, 'Analândia', 309213, '02002'),

                                               (3290, 26, 'Andradina', 1719203, '02101'),

                                               (3291, 26, 'Angatuba', 1683109, '02200'),

                                               (3292, 26, 'Anhembi', 359543, '02309'),

                                               (3293, 26, 'Anhumas', 1179630, '02408'),

                                               (3294, 26, 'Aparecida', 1038710, '02507'),

                                               (3295, 26, 'Aparecida d Oeste', 1589110, '02606'),

                                               (3296, 26, 'Apiaí', 1569801, '02705'),

                                               (3297, 26, 'Araçariguama', 198122, '02754'),

                                               (3298, 26, 'Araçatuba', 1148384, '02804'),

                                               (3299, 26, 'Araçoiaba da Serra', 189027, '02903'),

                                               (3300, 26, 'Aramina', 402723, '03000'),

                                               (3301, 26, 'Arandu', 1618958, '03109'),

                                               (3302, 26, 'Arapeí', 1416606, '03158'),

                                               (3303, 26, 'Araraquara', 843747, '03208'),

                                               (3304, 26, 'Araras', 1176975, '03307'),

                                               (3305, 26, 'Arco-Íris', 1630075, '03356'),

                                               (3306, 26, 'Arealva', 379403, '03406'),

                                               (3307, 26, 'Areias', 734564, '03505'),

                                               (3308, 26, 'Areiópolis', 14426, '03604'),

                                               (3309, 26, 'Ariranha', 887128, '03703'),

                                               (3310, 26, 'Artur Nogueira', 232982, '03802'),

                                               (3311, 26, 'Arujá', 1419866, '03901'),

                                               (3312, 26, 'Aspásia', 1278085, '03950'),

                                               (3313, 26, 'Assis', 244388, '04008'),

                                               (3314, 26, 'Atibaia', 199540, '04107'),

                                               (3315, 26, 'Auriflama', 1696014, '04206'),

                                               (3316, 26, 'Avaí', 423767, '04305'),

                                               (3317, 26, 'Avanhandava', 1202690, '04404'),

                                               (3318, 26, 'Avaré', 1594080, '04503'),

                                               (3319, 26, 'Bady Bassitt', 959622, '04602'),

                                               (3320, 26, 'Balbinos', 921449, '04701'),

                                               (3321, 26, 'Bálsamo', 1226663, '04800'),

                                               (3322, 26, 'Bananal', 1341457, '04909'),

                                               (3323, 26, 'Barão de Antonina', 1952815, '05005'),

                                               (3324, 26, 'Barbosa', 375852, '05104'),

                                               (3325, 26, 'Bariri', 262095, '05203'),

                                               (3326, 26, 'Barra Bonita', 1800360, '05302'),

                                               (3327, 26, 'Barra do Chapéu', 1075452, '05351'),

                                               (3328, 26, 'Barra do Turvo', 486403, '05401'),

                                               (3329, 26, 'Barretos', 1888067, '05500'),

                                               (3330, 26, 'Barrinha', 797556, '05609'),

                                               (3331, 26, 'Barueri', 1899944, '05708'),

                                               (3332, 26, 'Bastos', 1395085, '05807'),

                                               (3333, 26, 'Batatais', 1932482, '05906'),

                                               (3334, 26, 'Bauru', 532756, '06003'),

                                               (3335, 26, 'Bebedouro', 1654047, '06102'),

                                               (3336, 26, 'Bento de Abreu', 1676137, '06201'),

                                               (3337, 26, 'Bernardino de Campos', 982479, '06300'),

                                               (3338, 26, 'Bertioga', 536345, '06359'),

                                               (3339, 26, 'Bilac', 861671, '06409'),

                                               (3340, 26, 'Birigui', 1249933, '06508'),

                                               (3341, 26, 'Biritiba-Mirim', 119456, '06607'),

                                               (3342, 26, 'Boa Esperança do Sul', 1741380, '06706'),

                                               (3343, 26, 'Bocaina', 1258302, '06805'),

                                               (3344, 26, 'Bofete', 173370, '06904'),

                                               (3345, 26, 'Boituva', 301804, '07001'),

                                               (3346, 26, 'Bom Jesus dos Perdões', 1108300, '07100'),

                                               (3347, 26, 'Bom Sucesso de Itararé', 1521509, '07159'),

                                               (3348, 26, 'Borá', 1485352, '07209'),

                                               (3349, 26, 'Boracéia', 880914, '07308'),

                                               (3350, 26, 'Borborema', 1176653, '07407'),

                                               (3351, 26, 'Borebi', 460097, '07456'),

                                               (3352, 26, 'Botucatu', 1333675, '07506'),

                                               (3353, 26, 'Bragança Paulista', 803461, '07605'),

                                               (3354, 26, 'Braúna', 1290172, '07704'),

                                               (3355, 26, 'Brejo Alegre', 1430610, '07753'),

                                               (3356, 26, 'Brodowski', 981053, '07803'),

                                               (3357, 26, 'Brotas', 118054, '07902'),

                                               (3358, 26, 'Buri', 1671318, '08009'),

                                               (3359, 26, 'Buritama', 1467173, '08108'),

                                               (3360, 26, 'Buritizal', 1721084, '08207'),

                                               (3361, 26, 'Cabrália Paulista', 808897, '08306'),

                                               (3362, 26, 'Cabreúva', 672418, '08405'),

                                               (3363, 26, 'Caçapava', 1541590, '08504'),

                                               (3364, 26, 'Cachoeira Paulista', 1379730, '08603'),

                                               (3365, 26, 'Caconde', 48533, '08702'),

                                               (3366, 26, 'Cafelândia', 1692801, '08801'),

                                               (3367, 26, 'Caiabu', 1715120, '08900'),

                                               (3368, 26, 'Caieiras', 238141, '09007'),

                                               (3369, 26, 'Caiuá', 139197, '09106'),

                                               (3370, 26, 'Cajamar', 975330, '09205'),

                                               (3371, 26, 'Cajati', 53633, '09254'),

                                               (3372, 26, 'Cajobi', 1243123, '09304'),

                                               (3373, 26, 'Cajuru', 1697602, '09403'),

                                                (3374, 26, 'Campina do Monte Alegre', 1631304, '09452'),

                                               (3375, 26, 'Campinas', 1857778, '09502'),

                                               (3376, 26, 'Campo Limpo Paulista', 217454, '09601'),

                                               (3377, 26, 'Campos do Jordão', 1264865, '09700'),

                                               (3378, 26, 'Campos Novos Paulista', 1048132, '09809'),

                                               (3379, 26, 'Cananéia', 1011560, '09908'),

                                               (3380, 26, 'Canas', 1829870, '09957'),

                                               (3381, 26, 'Cândido Mota', 1676974, '10005'),

                                               (3382, 26, 'Cândido Rodrigues', 1184095, '10104'),

                                               (3383, 26, 'Canitar', 1623514, '10153'),

                                               (3384, 26, 'Capão Bonito', 482235, '10203'),

                                               (3385, 26, 'Capela do Alto', 1151449, '10302'),

                                               (3386, 26, 'Capivari', 1416288, '10401'),

                                               (3387, 26, 'Caraguatatuba', 719960, '10500'),

                                               (3388, 26, 'Carapicuíba', 1283393, '10609'),

                                               (3389, 26, 'Cardoso', 618947, '10708'),

                                               (3390, 26, 'Casa Branca', 795161, '10807'),

                                               (3391, 26, 'Cássia dos Coqueiros', 1815947, '10906'),

                                               (3392, 26, 'Castilho', 793355, '11003'),

                                               (3393, 26, 'Catanduva', 153238, '11102'),

                                               (3394, 26, 'Catiguá', 635144, '11201'),

                                               (3395, 26, 'Cedral', 1525030, '11300'),

                                               (3396, 26, 'Cerqueira César', 1018036, '11409'),

                                               (3397, 26, 'Cerquilho', 350677, '11508'),

                                               (3398, 26, 'Cesário Lange', 260152, '11607'),

                                               (3399, 26, 'Charqueada', 1860829, '11706'),

                                               (3400, 26, 'Chavantes', 575376, '57204'),

                                               (3401, 26, 'Clementina', 1829264, '11904'),

                                               (3402, 26, 'Colina', 107838, '12001'),

                                               (3403, 26, 'Colômbia', 970147, '12100'),

                                               (3404, 26, 'Conchal', 978286, '12209'),

                                               (3405, 26, 'Conchas', 1429982, '12308'),

                                               (3406, 26, 'Cordeirópolis', 643703, '12407'),

                                               (3407, 26, 'Coroados', 1959242, '12506'),

                                               (3408, 26, 'Coronel Macedo', 1365669, '12605'),

                                               (3409, 26, 'Corumbataí', 1815639, '12704'),

                                               (3410, 26, 'Cosmópolis', 506469, '12803'),

                                               (3411, 26, 'Cosmorama', 455220, '12902'),

                                               (3412, 26, 'Cotia', 1624075, '13009'),

                                               (3413, 26, 'Cravinhos', 229182, '13108'),

                                               (3414, 26, 'Cristais Paulista', 1636748, '13207'),

                                               (3415, 26, 'Cruzália', 1457530, '13306'),

                                               (3416, 26, 'Cruzeiro', 1664511, '13405'),

                                               (3417, 26, 'Cubatão', 1496085, '13504'),

                                               (3418, 26, 'Cunha', 940159, '13603'),

                                               (3419, 26, 'Descalvado', 1458169, '13702'),

                                               (3420, 26, 'Diadema', 1678387, '13801'),

                                               (3421, 26, 'Dirce Reis', 256051, '13850'),

                                               (3422, 26, 'Divinolândia', 908928, '13900'),

                                               (3423, 26, 'Dobrada', 266365, '14007'),

                                               (3424, 26, 'Dois Córregos', 1850099, '14106'),

                                               (3425, 26, 'Dolcinópolis', 1325633, '14205'),

                                               (3426, 26, 'Dourado', 458523, '14304'),

                                               (3427, 26, 'Dracena', 945265, '14403'),

                                               (3428, 26, 'Duartina', 1150772, '14502'),

                                               (3429, 26, 'Dumont', 23643, '14601'),

                                               (3430, 26, 'Echaporã', 1207499, '14700'),

                                               (3431, 26, 'Eldorado', 1496927, '14809'),

                                               (3432, 26, 'Elias Fausto', 1967761, '14908'),

                                               (3433, 26, 'Elisiário', 1329179, '14924'),

                                               (3434, 26, 'Embaúba', 1073660, '14957'),

                                               (3435, 26, 'Embu', 12724, '15004'),

                                               (3436, 26, 'Embu-Guaçu', 1435956, '15103'),

                                               (3437, 26, 'Emilianópolis', 1229498, '15129'),

                                               (3438, 26, 'Engenheiro Coelho', 1555654, '15152'),

                                               (3439, 26, 'Espírito Santo do Pinhal', 820972, '15186'),

                                               (3440, 26, 'Espírito Santo do Turvo', 1239457, '15194'),

                                               (3441, 26, 'Estiva Gerbi', 1634641, '57303'),

                                               (3442, 26, 'Estrela do Norte', 1737113, '15301'),

                                               (3443, 26, 'Estrela d Oeste', 1554091, '15202'),

                                               (3444, 26, 'Euclides da Cunha Paulista', 1599190, '15350'),

                                               (3445, 26, 'Fartura', 328091, '15400'),

                                               (3446, 26, 'Fernando Prestes', 1431497, '15608'),

                                               (3447, 26, 'Fernandópolis', 1595341, '15509'),

                                               (3448, 26, 'Fernão', 669279, '15657'),

                                               (3449, 26, 'Ferraz de Vasconcelos', 954520, '15707'),

                                               (3450, 26, 'Flora Rica', 130877, '15806'),

                                               (3451, 26, 'Floreal', 576962, '15905'),

                                               (3452, 26, 'Flórida Paulista', 283586, '16002'),

                                               (3453, 26, 'Florínia', 95518, '16101'),

                                               (3454, 26, 'Franca', 1989977, '16200'),

                                               (3455, 26, 'Francisco Morato', 1863055, '16309'),

                                               (3456, 26, 'Franco da Rocha', 1920825, '16408'),

                                               (3457, 26, 'Gabriel Monteiro', 1024085, '16507'),

                                               (3458, 26, 'Gália', 935455, '16606'),

                                               (3459, 26, 'Garça', 429348, '16705'),

                                               (3460, 26, 'Gastão Vidigal', 1908500, '16804'),

                                               (3461, 26, 'Gavião Peixoto', 1218567, '16853'),

                                               (3462, 26, 'General Salgado', 940898, '16903'),

                                               (3463, 26, 'Getulina', 1241500, '17000'),

                                               (3464, 26, 'Glicério', 1461359, '17109'),

                                               (3465, 26, 'Guaiçara', 1461308, '17208'),

                                               (3466, 26, 'Guaimbê', 1424106, '17307'),

                                               (3467, 26, 'Guaíra', 265275, '17406'),

                                               (3468, 26, 'Guapiaçu', 210509, '17505'),

                                               (3469, 26, 'Guapiara', 1815568, '17604'),

                                               (3470, 26, 'Guará', 520380, '17703'),

                                               (3471, 26, 'Guaraçaí', 704845, '17802'),

                                               (3472, 26, 'Guaraci', 884443, '17901'),

                                               (3473, 26, 'Guarani d Oeste', 1896985, '18008'),

                                               (3474, 26, 'Guarantã', 1885953, '18107'),

                                               (3475, 26, 'Guararapes', 1183179, '18206'),

                                               (3476, 26, 'Guararema', 1302396, '18305');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (3477, 26, 'Guaratinguetá', 460581, '18404'), -- Amooooooooooooooooo <3

                                               (3478, 26, 'Guareí', 1531741, '18503'),

                                               (3479, 26, 'Guariba', 383212, '18602'),

                                               (3480, 26, 'Guarujá', 938655, '18701'),

                                               (3481, 26, 'Guarulhos', 878759, '18800'),

                                               (3482, 26, 'Guatapará', 1030322, '18859'),

                                               (3483, 26, 'Guzolândia', 1410119, '18909'),

                                               (3484, 26, 'Herculândia', 628285, '19006'),

                                               (3485, 26, 'Holambra', 764981, '19055'),

                                               (3486, 26, 'Hortolândia', 176205, '19071'),

                                               (3487, 26, 'Iacanga', 311778, '19105'),

                                               (3488, 26, 'Iacri', 1394445, '19204'),

                                               (3489, 26, 'Iaras', 956657, '19253'),

                                               (3490, 26, 'Ibaté', 1816892, '19303'),

                                               (3491, 26, 'Ibirá', 1582180, '19402'),

                                               (3492, 26, 'Ibirarema', 1232668, '19501'),

                                               (3493, 26, 'Ibitinga', 1549512, '19600'),

                                               (3494, 26, 'Ibiúna', 468410, '19709'),

                                               (3495, 26, 'Icém', 1874199, '19808'),

                                               (3496, 26, 'Iepê', 1272689, '19907'),

                                               (3497, 26, 'Igaraçu do Tietê', 1420281, '20004'),

                                               (3498, 26, 'Igarapava', 627482, '20103'),

                                               (3499, 26, 'Igaratá', 970612, '20202'),

                                               (3500, 26, 'Iguape', 1424761, '20301'),

                                               (3501, 26, 'Ilha Comprida', 1966864, '20426'),

                                               (3502, 26, 'Ilha Solteira', 716637, '20442'),

                                               (3503, 26, 'Ilhabela', 106364, '20400'),

                                               (3504, 26, 'Indaiatuba', 1577881, '20509'),

                                               (3505, 26, 'Indiana', 834006, '20608'),

                                               (3506, 26, 'Indiaporã', 947393, '20707'),

                                               (3507, 26, 'Inúbia Paulista', 1790385, '20806'),

                                               (3508, 26, 'Ipaussu', 1601719, '20905'),

                                               (3509, 26, 'Iperó', 1670595, '21002'),

                                               (3510, 26, 'Ipeúna', 364050, '21101'),

                                               (3511, 26, 'Ipiguá', 1768860, '21150'),

                                               (3512, 26, 'Iporanga', 669251, '21200'),

                                               (3513, 26, 'Ipuã', 362943, '21309'),

                                               (3514, 26, 'Iracemápolis', 1774273, '21408'),

                                               (3515, 26, 'Irapuã', 1023433, '21507'),

                                               (3516, 26, 'Irapuru', 230184, '21606'),

                                               (3517, 26, 'Itaberá', 60730, '21705'),

                                               (3518, 26, 'Itaí', 517307, '21804'),

                                               (3519, 26, 'Itajobi', 340712, '21903'),

                                               (3520, 26, 'Itaju', 132714, '22000'),

                                               (3521, 26, 'Itanhaém', 146263, '22109'),

                                               (3522, 26, 'Itaóca', 1326665, '22158'),

                                               (3523, 26, 'Itapecerica da Serra', 432654, '22208'),

                                               (3524, 26, 'Itapetininga', 1448904, '22307'),

                                               (3525, 26, 'Itapeva', 1069576, '22406'),

                                               (3526, 26, 'Itapevi', 1434739, '22505'),

                                               (3527, 26, 'Itapira', 639709, '22604'),

                                               (3528, 26, 'Itapirapuã Paulista', 384164, '22653'),

                                               (3529, 26, 'Itápolis', 1729224, '22703'),

                                               (3530, 26, 'Itaporanga', 1056623, '22802'),

                                               (3531, 26, 'Itapuí', 1310148, '22901'),

                                               (3532, 26, 'Itapura', 1978281, '23008'),

                                               (3533, 26, 'Itaquaquecetuba', 1909643, '23107'),

                                               (3534, 26, 'Itararé', 137880, '23206'),

                                               (3535, 26, 'Itariri', 421035, '23305'),

                                               (3536, 26, 'Itatiba', 600249, '23404'),

                                               (3537, 26, 'Itatinga', 1171898, '23503'),

                                               (3538, 26, 'Itirapina', 862611, '23602'),

                                               (3539, 26, 'Itirapuã', 1573544, '23701'),

                                               (3540, 26, 'Itobi', 371674, '23800'),

                                               (3541, 26, 'Itu', 1653673, '23909'),

                                               (3542, 26, 'Itupeva', 563422, '24006'),

                                               (3543, 26, 'Ituverava', 577259, '24105'),

                                               (3544, 26, 'Jaborandi', 1401990, '24204'),

                                               (3545, 26, 'Jaboticabal', 570044, '24303'),

                                               (3546, 26, 'Jacareí', 23157, '24402'),

                                               (3547, 26, 'Jaci', 548294, '24501'),

                                               (3548, 26, 'Jacupiranga', 1192969, '24600'),

                                               (3549, 26, 'Jaguariúna', 1306741, '24709'),

                                               (3550, 26, 'Jales', 1910181, '24808'),

                                               (3551, 26, 'Jambeiro', 1885946, '24907'),

                                               (3552, 26, 'Jandira', 1921596, '25003'),

                                               (3553, 26, 'Jardinópolis', 1280651, '25102'),

                                               (3554, 26, 'Jarinu', 477356, '25201'),

                                               (3555, 26, 'Jaú', 1639856, '25300'),

                                               (3556, 26, 'Jeriquara', 64940, '25409'),

                                               (3557, 26, 'Joanópolis', 745374, '25508'),

                                               (3558, 26, 'João Ramalho', 1190526, '25607'),

                                               (3559, 26, 'José Bonifácio', 503267, '25706'),

                                               (3560, 26, 'Júlio Mesquita', 416438, '25805'),

                                               (3561, 26, 'Jumirim', 516836, '25854'),

                                               (3562, 26, 'Jundiaí', 118950, '25904'),

                                               (3563, 26, 'Junqueirópolis', 63912, '26001'),

                                               (3564, 26, 'Juquiá', 26677, '26100'),

                                               (3565, 26, 'Juquitiba', 51125, '26209'),

                                               (3566, 26, 'Lagoinha', 492889, '26308'),

                                               (3567, 26, 'Laranjal Paulista', 1016389, '26407'),

                                               (3568, 26, 'Lavínia', 1624806, '26506'),

                                               (3569, 26, 'Lavrinhas', 714883, '26605'),

                                               (3570, 26, 'Leme', 845279, '26704'),

                                               (3571, 26, 'Lençóis Paulista', 175032, '26803'),

                                               (3572, 26, 'Limeira', 1915072, '26902'),

                                               (3573, 26, 'Lindóia', 980137, '27009'),

                                               (3574, 26, 'Lins', 877038, '27108'),

                                               (3575, 26, 'Lorena', 375876, '27207'),

                                               (3576, 26, 'Lourdes', 889227, '27256'),

                                               (3577, 26, 'Louveira', 382624, '27306'),

                                               (3578, 26, 'Lucélia', 1427535, '27405'),

                                               (3579, 26, 'Lucianópolis', 102775, '27504'),

                                               (3580, 26, 'Luís Antônio', 822924, '27603'),

                                               (3581, 26, 'Luiziânia', 1954201, '27702'),

                                               (3582, 26, 'Lupércio', 542303, '27801'),

                                               (3583, 26, 'Lutécia', 1494202, '27900'),

                                               (3584, 26, 'Macatuba', 1739979, '28007'),

                                               (3585, 26, 'Macaubal', 1579128, '28106'),

                                               (3586, 26, 'Macedônia', 1975051, '28205'),

                                               (3587, 26, 'Magda', 674077, '28304'),

                                               (3588, 26, 'Mairinque', 395055, '28403'),

                                               (3589, 26, 'Mairiporã', 348331, '28502'),

                                               (3590, 26, 'Manduri', 1345775, '28601'),

                                               (3591, 26, 'Marabá Paulista', 1375251, '28700'),

                                               (3592, 26, 'Maracaí', 269763, '28809'),

                                               (3593, 26, 'Marapoama', 1570450, '28858'),

                                               (3594, 26, 'Mariápolis', 1334503, '28908'),

                                               (3595, 26, 'Marília', 192537, '29005'),

                                               (3596, 26, 'Marinópolis', 1644569, '29104'),

                                               (3597, 26, 'Martinópolis', 1950846, '29203'),

                                               (3598, 26, 'Matão', 278691, '29302'),

                                               (3599, 26, 'Mauá', 416489, '29401'),

                                               (3600, 26, 'Mendonça', 1939784, '29500'),

                                               (3601, 26, 'Meridiano', 1665914, '29609'),

                                               (3602, 26, 'Mesópolis', 1190703, '29658'),

                                               (3603, 26, 'Miguelópolis', 529633, '29708'),

                                               (3604, 26, 'Mineiros do Tietê', 1044152, '29807'),

                                               (3605, 26, 'Mira Estrela', 1789382, '30003'),

                                               (3606, 26, 'Miracatu', 365183, '29906'),

                                               (3607, 26, 'Mirandópolis', 1077695, '30102'),

                                                (3608, 26, 'Mirante do Paranapanema', 1038825, '30201'),

                                               (3609, 26, 'Mirassol', 321861, '30300'),

                                               (3610, 26, 'Mirassolândia', 537307, '30409'),

                                               (3611, 26, 'Mococa', 1486151, '30508'),

                                               (3612, 26, 'Mogi das Cruzes', 1959402, '30607'),

                                               (3613, 26, 'Mogi Guaçu', 1389324, '30706'),

                                               (3614, 26, 'Moji Mirim', 1760565, '30805'),

                                               (3615, 26, 'Mombuca', 511004, '30904'),

                                               (3616, 26, 'Monções', 574947, '31001'),

                                               (3617, 26, 'Mongaguá', 399047, '31100'),

                                               (3618, 26, 'Monte Alegre do Sul', 1282795, '31209'),

                                               (3619, 26, 'Monte Alto', 1917694, '31308'),

                                               (3620, 26, 'Monte Aprazível', 141295, '31407'),

                                               (3621, 26, 'Monte Azul Paulista', 1073314, '31506'),

                                               (3622, 26, 'Monte Castelo', 346801, '31605'),

                                               (3623, 26, 'Monte Mor', 810661, '31803'),

                                               (3624, 26, 'Monteiro Lobato', 1639335, '31704'),

                                               (3625, 26, 'Morro Agudo', 1159786, '31902'),

                                               (3626, 26, 'Morungaba', 115242, '32009'),

                                               (3627, 26, 'Motuca', 506208, '32058'),

                                               (3628, 26, 'Murutinga do Sul', 492735, '32108'),

                                               (3629, 26, 'Nantes', 1494016, '32157'),

                                               (3630, 26, 'Narandiba', 234493, '32207'),

                                               (3631, 26, 'Natividade da Serra', 1163963, '32306'),

                                               (3632, 26, 'Nazaré Paulista', 1664303, '32405'),

                                               (3633, 26, 'Neves Paulista', 1748810, '32504'),

                                               (3634, 26, 'Nhandeara', 1193672, '32603'),

                                               (3635, 26, 'Nipoã', 1874429, '32702'),

                                               (3636, 26, 'Nova Aliança', 754138, '32801'),

                                               (3637, 26, 'Nova Campina', 1929395, '32827'),

                                               (3638, 26, 'Nova Canaã Paulista', 844215, '32843'),

                                               (3639, 26, 'Nova Castilho', 1777186, '32868'),

                                               (3640, 26, 'Nova Europa', 1134895, '32900'),

                                               (3641, 26, 'Nova Granada', 1511891, '33007'),

                                               (3642, 26, 'Nova Guataporanga', 787102, '33106'),

                                               (3643, 26, 'Nova Independência', 386187, '33205'),

                                               (3644, 26, 'Nova Luzitânia', 1794790, '33304'),

                                               (3645, 26, 'Nova Odessa', 1369792, '33403'),

                                               (3646, 26, 'Novais', 1990301, '33254'),

                                               (3647, 26, 'Novo Horizonte', 190855, '33502'),

                                               (3648, 26, 'Nuporanga', 1362669, '33601'),

                                               (3649, 26, 'Ocauçu', 1084171, '33700'),

                                               (3650, 26, 'Óleo', 1913890, '33809'),

                                               (3651, 26, 'Olímpia', 1392785, '33908'),

                                               (3652, 26, 'Onda Verde', 1753327, '34005'),

                                               (3653, 26, 'Oriente', 1174100, '34104'),

                                               (3654, 26, 'Orindiúva', 609904, '34203'),

                                               (3655, 26, 'Orlândia', 1831394, '34302'),

                                               (3656, 26, 'Osasco', 653252, '34401'),

                                               (3657, 26, 'Oscar Bressane', 696339, '34500'),

                                               (3658, 26, 'Osvaldo Cruz', 1451909, '34609'),

                                               (3659, 26, 'Ourinhos', 282658, '34708'),

                                               (3660, 26, 'Ouro Verde', 1803023, '34807'),

                                               (3661, 26, 'Ouroeste', 1015178, '34757'),

                                               (3662, 26, 'Pacaembu', 1668574, '34906'),

                                               (3663, 26, 'Palestina', 164618, '35002'),

                                               (3664, 26, 'Palmares Paulista', 381658, '35101'),

                                               (3665, 26, 'Palmeira d Oeste', 553537, '35200'),

                                               (3666, 26, 'Palmital', 1906209, '35309'),

                                               (3667, 26, 'Panorama', 1455614, '35408'),

                                               (3668, 26, 'Paraguaçu Paulista', 1814939, '35507'),

                                               (3669, 26, 'Paraibuna', 1931990, '35606'),

                                               (3670, 26, 'Paraíso', 304683, '35705'),

                                               (3671, 26, 'Paranapanema', 1348229, '35804'),

                                               (3672, 26, 'Paranapuã', 1163834, '35903'),

                                               (3673, 26, 'Parapuã', 669473, '36000'),

                                               (3674, 26, 'Pardinho', 1944415, '36109'),

                                                (3675, 26, 'Pariquera-Açu', 16581, '36208'),

                                               (3676, 26, 'Parisi', 116552, '36257'),

                                               (3677, 26, 'Patrocínio Paulista', 208363, '36307'),

                                               (3678, 26, 'Paulicéia', 253182, '36406'),

                                               (3679, 26, 'Paulínia', 1998299, '36505'),

                                               (3680, 26, 'Paulistânia', 979434, '36570'),

                                               (3681, 26, 'Paulo de Faria', 1796836, '36604'),

                                               (3682, 26, 'Pederneiras', 66632, '36703'),

                                               (3683, 26, 'Pedra Bela', 179839, '36802'),

                                               (3684, 26, 'Pedranópolis', 569985, '36901'),

                                               (3685, 26, 'Pedregulho', 1163019, '37008'),

                                               (3686, 26, 'Pedreira', 1155459, '37107'),

                                               (3687, 26, 'Pedrinhas Paulista', 1814870, '37156'),

                                               (3688, 26, 'Pedro de Toledo', 1585998, '37206'),

                                               (3689, 26, 'Penápolis', 553584, '37305'),

                                               (3690, 26, 'Pereira Barreto', 36363, '37404'),

                                               (3691, 26, 'Pereiras', 1140141, '37503'),

                                               (3692, 26, 'Peruíbe', 1021516, '37602'),

                                               (3693, 26, 'Piacatu', 1758103, '37701'),

                                               (3694, 26, 'Piedade', 563205, '37800'),

                                               (3695, 26, 'Pilar do Sul', 396249, '37909'),

                                               (3696, 26, 'Pindamonhangaba', 632712, '38006'),

                                               (3697, 26, 'Pindorama', 651360, '38105'),

                                               (3698, 26, 'Pinhalzinho', 1406009, '38204'),

                                               (3699, 26, 'Piquerobi', 1251968, '38303'),

                                               (3700, 26, 'Piquete', 1237320, '38501'),

                                               (3701, 26, 'Piracaia', 1580979, '38600'),

                                               (3702, 26, 'Piracicaba', 1824663, '38709'),

                                               (3703, 26, 'Piraju', 242625, '38808'),

                                               (3704, 26, 'Pirajuí', 926060, '38907'),

                                               (3705, 26, 'Pirangi', 198958, '39004'),

                                               (3706, 26, 'Pirapora do Bom Jesus', 768945, '39103'),

                                               (3707, 26, 'Pirapozinho', 198938, '39202'),

                                               (3708, 26, 'Pirassununga', 918613, '39301'),

                                               (3709, 26, 'Piratininga', 370080, '39400'),

                                               (3710, 26, 'Pitangueiras', 221733, '39509'),

                                               (3711, 26, 'Planalto', 297183, '39608'),

                                               (3712, 26, 'Platina', 535480, '39707'),

                                               (3713, 26, 'Poá', 961658, '39806'),

                                               (3714, 26, 'Poloni', 1430743, '39905'),

                                               (3715, 26, 'Pompéia', 150641, '40002'),

                                               (3716, 26, 'Pongaí', 1534327, '40101'),

                                                (3717, 26, 'Pontal', 1224460, '40200'),

                                               (3718, 26, 'Pontalinda', 989982, '40259'),

                                               (3719, 26, 'Pontes Gestal', 367516, '40309'),

                                               (3720, 26, 'Populina', 592690, '40408'),

                                               (3721, 26, 'Porangaba', 1994356, '40507'),

                                               (3722, 26, 'Porto Feliz', 641134, '40606'),

                                               (3723, 26, 'Porto Ferreira', 1126286, '40705'),

                                               (3724, 26, 'Potim', 421345, '40754'),

                                               (3725, 26, 'Potirendaba', 805057, '40804'),

                                               (3726, 26, 'Pracinha', 1914416, '40853'),

                                               (3727, 26, 'Pradópolis', 266976, '40903'),

                                               (3728, 26, 'Praia Grande', 580248, '41000'),

                                               (3729, 26, 'Pratânia', 1994378, '41059'),

                                               (3730, 26, 'Presidente Alves', 1931806, '41109'),

                                               (3731, 26, 'Presidente Bernardes', 406491, '41208'),

                                               (3732, 26, 'Presidente Epitácio', 419688, '41307'),

                                               (3733, 26, 'Presidente Prudente', 998534, '41406'),

                                               (3734, 26, 'Presidente Venceslau', 868852, '41505'),

                                               (3735, 26, 'Promissão', 1003680, '41604'),

                                               (3736, 26, 'Quadra', 1616322, '41653'),

                                               (3737, 26, 'Quatá', 741212, '41703'),

                                               (3738, 26, 'Queiroz', 1635564, '41802'),

                                               (3739, 26, 'Queluz', 279213, '41901'),

                                               (3740, 26, 'Quintana', 1414923, '42008'),

                                               (3741, 26, 'Rafard', 1952734, '42107'),

                                               (3742, 26, 'Rancharia', 486420, '42206'),

                                               (3743, 26, 'Redenção da Serra', 806258, '42305'),

                                               (3744, 26, 'Regente Feijó', 1912025, '42404'),

                                               (3745, 26, 'Reginópolis', 995577, '42503'),

                                               (3746, 26, 'Registro', 250134, '42602'),

                                               (3747, 26, 'Restinga', 168703, '42701'),

                                               (3748, 26, 'Ribeira', 1529497, '42800'),

                                               (3749, 26, 'Ribeirão Bonito', 844691, '42909'),

                                               (3750, 26, 'Ribeirão Branco', 1742022, '43006'),

                                               (3751, 26, 'Ribeirão Corrente', 886647, '43105'),

                                               (3752, 26, 'Ribeirão do Sul', 1165302, '43204'),

                                               (3753, 26, 'Ribeirão dos Índios', 317757, '43238'),

                                               (3754, 26, 'Ribeirão Grande', 263267, '43253'),

                                               (3755, 26, 'Ribeirão Pires', 1054060, '43303'),

                                               (3756, 26, 'Ribeirão Preto', 996577, '43402'),

                                               (3757, 26, 'Rifaina', 1120096, '43600'),

                                               (3758, 26, 'Rincão', 749160, '43709'),

                                               (3759, 26, 'Rinópolis', 1177441, '43808'),

                                               (3760, 26, 'Rio Claro', 1695039, '43907'),

                                               (3761, 26, 'Rio das Pedras', 1934059, '44004'),

                                               (3762, 26, 'Rio Grande da Serra', 915605, '44103'),

                                               (3763, 26, 'Riolândia', 714265, '44202'),

                                               (3764, 26, 'Riversul', 1455520, '43501'),

                                               (3765, 26, 'Rosana', 1708702, '44251'),

                                               (3766, 26, 'Roseira', 1066922, '44301'),

                                               (3767, 26, 'Rubiácea', 1316906, '44400'),

                                               (3768, 26, 'Rubinéia', 808825, '44509'),

                                               (3769, 26, 'Sabino', 740898, '44608'),

                                               (3770, 26, 'Sagres', 124366, '44707'),

                                               (3771, 26, 'Sales', 607327, '44806'),

                                               (3772, 26, 'Sales Oliveira', 1287338, '44905'),

                                               (3773, 26, 'Salesópolis', 1437354, '45001'),

                                               (3774, 26, 'Salmourão', 666322, '45100'),

                                               (3775, 26, 'Saltinho', 376865, '45159'),

                                               (3776, 26, 'Salto', 844458, '45209'),

                                               (3777, 26, 'Salto de Pirapora', 1400011, '45308'),

                                               (3778, 26, 'Salto Grande', 669711, '45407'),

                                               (3779, 26, 'Sandovalina', 1856251, '45506'),

                                               (3780, 26, 'Santa Adélia', 434392, '45605'),

                                               (3781, 26, 'Santa Albertina', 371578, '45704'),

                                               (3782, 26, 'Santa Bárbara d Oeste', 606196, '45803'),

                                               (3783, 26, 'Santa Branca', 1560919, '46009'),

                                               (3784, 26, 'Santa Clara d Oeste', 1174218, '46108'),

                                               (3785, 26, 'Santa Cruz da Conceição', 430402, '46207'),

                                               (3786, 26, 'Santa Cruz da Esperança', 270154, '46256'),

                                               (3787, 26, 'Santa Cruz das Palmeiras', 548435, '46306'),

                                               (3788, 26, 'Santa Cruz do Rio Pardo', 442269, '46405'),

                                               (3789, 26, 'Santa Ernestina', 326308, '46504'),

                                               (3790, 26, 'Santa Fé do Sul', 1171244, '46603'),

                                               (3791, 26, 'Santa Gertrudes', 625948, '46702'),

                                               (3792, 26, 'Santa Isabel', 1411733, '46801'),

                                               (3793, 26, 'Santa Lúcia', 218571, '46900'),

                                               (3794, 26, 'Santa Maria da Serra', 330848, '47007'),

                                               (3795, 26, 'Santa Mercedes', 684841, '47106'),

                                               (3796, 26, 'Santa Rita do Passa Quatro', 1357036, '47502'),

                                               (3797, 26, 'Santa Rita d Oeste', 1391683, '47403'),

                                               (3798, 26, 'Santa Rosa de Viterbo', 443438, '47601'),

                                               (3799, 26, 'Santa Salete', 85498, '47650'),

                                               (3800, 26, 'Santana da Ponte Pensa', 985852, '47205'),

                                               (3801, 26, 'Santana de Parnaíba', 197688, '47304'),

                                               (3802, 26, 'Santo Anastácio', 929101, '47700'),

                                               (3803, 26, 'Santo André', 1121843, '47809'),

                                               (3804, 26, 'Santo Antônio da Alegria', 452098, '47908'),

                                               (3805, 26, 'Santo Antônio de Posse', 90713, '48005'),

                                               (3806, 26, 'Santo Antônio do Aracanguá', 646897, '48054'),

                                               (3807, 26, 'Santo Antônio do Jardim', 1806190, '48104'),

                                               (3808, 26, 'Santo Antônio do Pinhal', 1499147, '48203'),

                                               (3809, 26, 'Santo Expedito', 1572426, '48302'),

                                               (3810, 26, 'Santópolis do Aguapeí', 1315712, '48401'),

                                               (3811, 26, 'Santos', 436289, '48500'),

                                               (3812, 26, 'São Bento do Sapucaí', 472659, '48609'),

                                               (3813, 26, 'São Bernardo do Campo', 852577, '48708'),

                                               (3814, 26, 'São Caetano do Sul', 1937451, '48807'),

                                               (3815, 26, 'São Carlos', 1754104, '48906'),

                                               (3816, 26, 'São Francisco', 250769, '49003'),

                                               (3817, 26, 'São João da Boa Vista', 1110465, '49102'),

                                               (3818, 26, 'São João das Duas Pontes', 1933108, '49201'),

                                               (3819, 26, 'São João de Iracema', 149794, '49250'),

                                               (3820, 26, 'São João do Pau d Alho', 1941600, '49300'),

                                               (3821, 26, 'São Joaquim da Barra', 777507, '49409'),

                                               (3822, 26, 'São José da Bela Vista', 765829, '49508'),

                                               (3823, 26, 'São José do Barreiro', 464311, '49607'),

                                               (3824, 26, 'São José do Rio Pardo', 1065225, '49706'),

                                               (3825, 26, 'São José do Rio Preto', 60451, '49805'),

                                               (3826, 26, 'São José dos Campos', 1916820, '49904'),

                                               (3827, 26, 'São Lourenço da Serra', 1915438, '49953'),

                                               (3828, 26, 'São Luís do Paraitinga', 650888, '50001'),

                                               (3829, 26, 'São Manuel', 1791379, '50100'),

                                               (3830, 26, 'São Miguel Arcanjo', 1580442, '50209'),

                                               (3831, 26, 'São Paulo', 10886518, '50308'),

                                               (3832, 26, 'São Pedro', 1465312, '50407'),

                                               (3833, 26, 'São Pedro do Turvo', 1343118, '50506'),

                                               (3834, 26, 'São Roque', 208085, '50605'),

                                               (3835, 26, 'São Sebastião', 629681, '50704'),

                                               (3836, 26, 'São Sebastião da Grama', 1518428, '50803'),

                                               (3837, 26, 'São Simão', 937075, '50902'),

                                               (3838, 26, 'São Vicente', 1022567, '51009'),

                                               (3839, 26, 'Sarapuí', 1303214, '51108'),

                                               (3840, 26, 'Sarutaiá', 424324, '51207'),

                                               (3841, 26, 'Sebastianópolis do Sul', 1692239, '51306'),

                                               (3842, 26, 'Serra Azul', 1114647, '51405'),

                                               (3843, 26, 'Serra Negra', 76996, '51603'),

                                               (3844, 26, 'Serrana', 377996, '51504'),

                                               (3845, 26, 'Sertãozinho', 1385317, '51702'),

                                               (3846, 26, 'Sete Barras', 1409576, '51801'),

                                               (3847, 26, 'Severínia', 493487, '51900'),

                                               (3848, 26, 'Silveiras', 543569, '52007'),

                                               (3849, 26, 'Socorro', 844679, '52106'),

                                               (3850, 26, 'Sorocaba', 57963, '52205'),

                                               (3851, 26, 'Sud Mennucci', 78064, '52304');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (3852, 26, 'Sumaré', 59602, '52403'),

                                               (3853, 26, 'Suzanápolis', 34133, '52551'),

                                               (3854, 26, 'Suzano', 1873817, '52502'),

                                               (3855, 26, 'Tabapuã', 1025241, '52601'),

                                               (3856, 26, 'Tabatinga', 1557243, '52700'),

                                               (3857, 26, 'Taboão da Serra', 424540, '52809'),

                                               (3858, 26, 'Taciba', 1776745, '52908'),

                                               (3859, 26, 'Taguaí', 1587649, '53005'),

                                               (3860, 26, 'Taiaçu', 1614125, '53104'),

                                               (3861, 26, 'Taiúva', 1139486, '53203'),

                                               (3862, 26, 'Tambaú', 268683, '53302'),

                                               (3863, 26, 'Tanabi', 1397917, '53401'),

                                               (3864, 26, 'Tapiraí', 1085467, '53500'),

                                               (3865, 26, 'Tapiratiba', 591813, '53609'),

                                               (3866, 26, 'Taquaral', 399699, '53658'),

                                               (3867, 26, 'Taquaritinga', 882647, '53708'),

                                               (3868, 26, 'Taquarituba', 1530074, '53807'),

                                               (3869, 26, 'Taquarivaí', 1025515, '53856'),

                                               (3870, 26, 'Tarabai', 459876, '53906'),

                                               (3871, 26, 'Tarumã', 1640179, '53955'),

                                               (3872, 26, 'Tatuí', 363465, '54003'),

                                               (3873, 26, 'Taubaté', 805874, '54102'),

                                               (3874, 26, 'Tejupá', 1814106, '54201'),

                                               (3875, 26, 'Teodoro Sampaio', 1567829, '54300'),

                                               (3876, 26, 'Terra Roxa', 1317464, '54409'),

                                               (3877, 26, 'Tietê', 1704041, '54508'),

                                               (3878, 26, 'Timburi', 84053, '54607'),

                                               (3879, 26, 'Torre de Pedra', 341043, '54656'),

                                               (3880, 26, 'Torrinha', 516562, '54706'),

                                               (3881, 26, 'Trabiju', 1215411, '54755'),

                                               (3882, 26, 'Tremembé', 1405597, '54805'),

                                               (3883, 26, 'Três Fronteiras', 1925307, '54904'),

                                               (3884, 26, 'Tuiuti', 1660260, '54953'),

                                               (3885, 26, 'Tupã', 1359622, '55000'),

                                               (3886, 26, 'Tupi Paulista', 1468485, '55109'),

                                               (3887, 26, 'Turiúba', 1121037, '55208'),

                                               (3888, 26, 'Turmalina', 639214, '55307'),

                                               (3889, 26, 'Ubarana', 1133543, '55356'),

                                               (3890, 26, 'Ubatuba', 172932, '55406'),

                                               (3891, 26, 'Ubirajara', 1065146, '55505'),

                                               (3892, 26, 'Uchoa', 1644039, '55604'),

                                               (3893, 26, 'União Paulista', 599425, '55703'),

                                               (3894, 26, 'Urânia', 1969532, '55802'),

                                               (3895, 26, 'Uru', 1687117, '55901'),

                                               (3896, 26, 'Urupês', 749784, '56008'),

                                               (3897, 26, 'Valentim Gentil', 1049060, '56107'),

                                               (3898, 26, 'Valinhos', 1832936, '56206'),

                                               (3899, 26, 'Valparaíso', 1212344, '56305'),

                                               (3900, 26, 'Vargem', 1976404, '56354'),

                                               (3901, 26, 'Vargem Grande do Sul', 314093, '56404'),

                                               (3902, 26, 'Vargem Grande Paulista', 658274, '56453'),

                                               (3903, 26, 'Várzea Paulista', 239335, '56503'),

                                               (3904, 26, 'Vera Cruz', 1589260, '56602'),

                                               (3905, 26, 'Vinhedo', 1854159, '56701'),

                                               (3906, 26, 'Viradouro', 1799235, '56800'),

                                               (3907, 26, 'Vista Alegre do Alto', 1484401, '56909'),

                                               (3908, 26, 'Vitória Brasil', 1960812, '56958'),

                                               (3909, 26, 'Votorantim', 481212, '57006'),

                                               (3910, 26, 'Votuporanga', 277948, '57105'),

                                               (3911, 26, 'Zacarias', 452909, '57154'),

                                               (3912, 18, 'Abatiá', 337211, '00103'),

                                               (3913, 18, 'Adrianópolis', 228424, '00202'),

                                               (3914, 18, 'Agudos do Sul', 781868, '00301'),

                                               (3915, 18, 'Almirante Tamandaré', 958560, '00400'),

                                               (3916, 18, 'Altamira do Paraná', 1878568, '00459'),

                                               (3917, 18, 'Alto Paraíso', 673118, '28625'),

                                                (3918, 18, 'Alto Paraná', 1242545, '00608'),

                                               (3919, 18, 'Alto Piquiri', 1878765, '00707'),

                                               (3920, 18, 'Altônia', 1553615, '00509'),

                                               (3921, 18, 'Alvorada do Sul', 322075, '00806'),

                                               (3922, 18, 'Amaporã', 371772, '00905'),

                                               (3923, 18, 'Ampére', 1128107, '01002'),

                                               (3924, 18, 'Anahy', 100612, '01051'),

                                               (3925, 18, 'Andirá', 428823, '01101'),

                                               (3926, 18, 'Ângulo', 545036, '01150'),

                                               (3927, 18, 'Antonina', 1150101, '01200'),

                                               (3928, 18, 'Antônio Olinto', 1149249, '01309'),

                                               (3929, 18, 'Apucarana', 333891, '01408'),

                                               (3930, 18, 'Arapongas', 1009742, '01507'),

                                               (3931, 18, 'Arapoti', 1567404, '01606'),

                                               (3932, 18, 'Arapuã', 1165231, '01655'),

                                               (3933, 18, 'Araruna', 218844, '01705'),

                                               (3934, 18, 'Araucária', 444557, '01804'),

                                               (3935, 18, 'Ariranha do Ivaí', 249126, '01853'),

                                               (3936, 18, 'Assaí', 538075, '01903'),

                                               (3937, 18, 'Assis Chateaubriand', 1836086, '02000'),

                                               (3938, 18, 'Astorga', 967890, '02109'),

                                               (3939, 18, 'Atalaia', 823422, '02208'),

                                               (3940, 18, 'Balsa Nova', 566141, '02307'),

                                               (3941, 18, 'Bandeirantes', 724653, '02406'),

                                               (3942, 18, 'Barbosa Ferraz', 116373, '02505'),

                                               (3943, 18, 'Barra do Jacaré', 80412, '02703'),

                                               (3944, 18, 'Barracão', 1636696, '02604'),

                                               (3945, 18, 'Bela Vista da Caroba', 1018069, '02752'),

                                               (3946, 18, 'Bela Vista do Paraíso', 719385, '02802'),

                                               (3947, 18, 'Bituruna', 1252901, '02901'),

                                               (3948, 18, 'Boa Esperança', 394483, '03008'),

                                               (3949, 18, 'Boa Esperança do Iguaçu', 1324406, '03024'),

                                               (3950, 18, 'Boa Ventura de São Roque', 577231, '03040'),

                                               (3951, 18, 'Boa Vista da Aparecida', 540881, '03057'),

                                               (3952, 18, 'Bocaiúva do Sul', 514683, '03107'),

                                               (3953, 18, 'Bom Jesus do Sul', 118062, '03156'),

                                               (3954, 18, 'Bom Sucesso', 537399, '03206'),

                                               (3955, 18, 'Bom Sucesso do Sul', 882322, '03222'),

                                               (3956, 18, 'Borrazópolis', 1190666, '03305'),

                                               (3957, 18, 'Braganey', 614883, '03354'),

                                               (3958, 18, 'Brasilândia do Sul', 1906463, '03370'),

                                               (3959, 18, 'Cafeara', 283772, '03404'),

                                               (3960, 18, 'Cafelândia', 1963214, '03453'),

                                               (3961, 18, 'Cafezal do Sul', 916463, '03479'),

                                               (3962, 18, 'Califórnia', 1492634, '03503'),

                                               (3963, 18, 'Cambará', 1174530, '03602'),

                                               (3964, 18, 'Cambé', 314922, '03701'),

                                               (3965, 18, 'Cambira', 919211, '03800'),

                                               (3966, 18, 'Campina da Lagoa', 351750, '03909'),

                                               (3967, 18, 'Campina do Simão', 1997349, '03958'),

                                               (3968, 18, 'Campina Grande do Sul', 1618960, '04006'),

                                               (3969, 18, 'Campo Bonito', 1611513, '04055'),

                                               (3970, 18, 'Campo do Tenente', 1619929, '04105'),

                                               (3971, 18, 'Campo Largo', 1778685, '04204'),

                                               (3972, 18, 'Campo Magro', 836181, '04253'),

                                               (3973, 18, 'Campo Mourão', 918429, '04303'),

                                               (3974, 18, 'Cândido de Abreu', 1183333, '04402'),

                                               (3975, 18, 'Candói', 1553492, '04428'),

                                               (3976, 18, 'Cantagalo', 1826845, '04451'),

                                               (3977, 18, 'Capanema', 1961800, '04501'),

                                               (3978, 18, 'Capitão Leônidas Marques', 1898692, '04600'),

                                               (3979, 18, 'Carambeí', 1026675, '04659'),

                                               (3980, 18, 'Carlópolis', 1127570, '04709'),

                                               (3981, 18, 'Cascavel', 340122, '04808'),

                                               (3982, 18, 'Castro', 1538372, '04907'),

                                               (3983, 18, 'Catanduvas', 1492333, '05003'),

                                               (3984, 18, 'Centenário do Sul', 960367, '05102'),

                                               (3985, 18, 'Cerro Azul', 563448, '05201'),

                                               (3986, 18, 'Céu Azul', 841642, '05300'),

                                               (3987, 18, 'Chopinzinho', 708933, '05409'),

                                               (3988, 18, 'Cianorte', 522753, '05508'),

                                               (3989, 18, 'Cidade Gaúcha', 1589502, '05607'),

                                               (3990, 18, 'Clevelândia', 663513, '05706'),

                                               (3991, 18, 'Colombo', 17513, '05805'),

                                               (3992, 18, 'Colorado', 638833, '05904'),

                                               (3993, 18, 'Congonhinhas', 222927, '06001'),

                                               (3994, 18, 'Conselheiro Mairinck', 1381941, '06100'),

                                               (3995, 18, 'Contenda', 1474549, '06209'),

                                               (3996, 18, 'Corbélia', 1055713, '06308'),

                                               (3997, 18, 'Cornélio Procópio', 688645, '06407'),

                                               (3998, 18, 'Coronel Domingos Soares', 461181, '06456'),

                                               (3999, 18, 'Coronel Vivida', 81844, '06506'),

                                               (4000, 18, 'Corumbataí do Sul', 1251872, '06555'),

                                               (4001, 18, 'Cruz Machado', 1496285, '06803'),

                                               (4002, 18, 'Cruzeiro do Iguaçu', 1275297, '06571'),

                                               (4003, 18, 'Cruzeiro do Oeste', 1164432, '06605'),

                                               (4004, 18, 'Cruzeiro do Sul', 480261, '06704'),

                                               (4005, 18, 'Cruzmaltina', 977543, '06852'),

                                               (4006, 18, 'Curitiba', 1190972, '06902'),

                                               (4007, 18, 'Curiúva', 1517678, '07009'),

                                               (4008, 18, 'Diamante do Norte', 1958949, '07108'),

                                               (4009, 18, 'Diamante do Sul', 177800, '07124'),

                                               (4010, 18, 'Diamante D Oeste', 405612, '07157'),

                                               (4011, 18, 'Dois Vizinhos', 885327, '07207'),

                                               (4012, 18, 'Douradina', 1211643, '07256'),

                                               (4013, 18, 'Doutor Camargo', 1801266, '07306'),

                                               (4014, 18, 'Doutor Ulysses', 220610, '28633'),

                                               (4015, 18, 'Enéas Marques', 519276, '07405'),

                                               (4016, 18, 'Engenheiro Beltrão', 1195950, '07504'),

                                               (4017, 18, 'Entre Rios do Oeste', 211807, '07538'),

                                               (4018, 18, 'Esperança Nova', 1281025, '07520'),

                                               (4019, 18, 'Espigão Alto do Iguaçu', 449366, '07546'),

                                               (4020, 18, 'Farol', 1215334, '07553'),

                                               (4021, 18, 'Faxinal', 1732557, '07603'),

                                               (4022, 18, 'Fazenda Rio Grande', 1207145, '07652'),

                                               (4023, 18, 'Fênix', 1948013, '07702'),

                                               (4024, 18, 'Fernandes Pinheiro', 1772574, '07736'),

                                               (4025, 18, 'Figueira', 1374978, '07751'),

                                               (4026, 18, 'Flor da Serra do Sul', 1623529, '07850'),

                                               (4027, 18, 'Floraí', 365197, '07801'),

                                               (4028, 18, 'Floresta', 1498704, '07900'),

                                               (4029, 18, 'Florestópolis', 453211, '08007'),

                                               (4030, 18, 'Flórida', 879604, '08106'),

                                               (4031, 18, 'Formosa do Oeste', 1548562, '08205'),

                                               (4032, 18, 'Foz do Iguaçu', 251427, '08304'),

                                               (4033, 18, 'Foz do Jordão', 168673, '08452'),

                                               (4034, 18, 'Francisco Alves', 118857, '08320'),

                                               (4035, 18, 'Francisco Beltrão', 1815039, '08403'),

                                               (4036, 18, 'General Carneiro', 882895, '08502'),

                                               (4037, 18, 'Godoy Moreira', 96700, '08551'),

                                               (4038, 18, 'Goioerê', 1529774, '08601'),

                                               (4039, 18, 'Goioxim', 1566789, '08650'),

                                               (4040, 18, 'Grandes Rios', 633671, '08700'),

                                               (4041, 18, 'Guaíra', 1120497, '08809'),

                                               (4042, 18, 'Guairaçá', 1837368, '08908'),

                                               (4043, 18, 'Guamiranga', 1308635, '08957'),

                                               (4044, 18, 'Guapirama', 358991, '09005'),

                                               (4045, 18, 'Guaporema', 322279, '09104'),

                                               (4046, 18, 'Guaraci', 128086, '09203'),

                                               (4047, 18, 'Guaraniaçu', 1853418, '09302'),

                                               (4048, 18, 'Guarapuava', 669437, '09401'),

                                               (4049, 18, 'Guaraqueçaba', 641123, '09500'),

                                               (4050, 18, 'Guaratuba', 392402, '09609'),

                                               (4051, 18, 'Honório Serpa', 1831316, '09658'),

                                               (4052, 18, 'Ibaiti', 1020384, '09708'),

                                               (4053, 18, 'Ibema', 961458, '09757'),

                                               (4054, 18, 'Ibiporã', 185856, '09807'),

                                               (4055, 18, 'Icaraíma', 1774106, '09906'),

                                               (4056, 18, 'Iguaraçu', 834369, '10003'),

                                               (4057, 18, 'Iguatu', 102717, '10052'),

                                               (4058, 18, 'Imbaú', 426180, '10078'),

                                               (4059, 18, 'Imbituva', 1262120, '10102'),

                                               (4060, 18, 'Inácio Martins', 1178957, '10201'),

                                               (4061, 18, 'Inajá', 1444277, '10300'),

                                               (4062, 18, 'Indianópolis', 941952, '10409'),

                                               (4063, 18, 'Ipiranga', 654995, '10508'),

                                               (4064, 18, 'Iporã', 526402, '10607'),

                                               (4065, 18, 'Iracema do Oeste', 809733, '10656'),

                                               (4066, 18, 'Irati', 775644, '10706'),

                                               (4067, 18, 'Iretama', 1487323, '10805'),

                                               (4068, 18, 'Itaguajé', 920814, '10904'),

                                               (4069, 18, 'Itaipulândia', 690598, '10953'),

                                               (4070, 18, 'Itambaracá', 1603098, '11001'),

                                               (4071, 18, 'Itambé', 1198011, '11100'),

                                               (4072, 18, 'Itapejara d Oeste', 1632852, '11209'),

                                               (4073, 18, 'Itaperuçu', 572574, '11258'),

                                               (4074, 18, 'Itaúna do Sul', 1311344, '11308'),

                                               (4075, 18, 'Ivaí', 1541569, '11407'),

                                               (4076, 18, 'Ivaiporã', 1931581, '11506'),

                                               (4077, 18, 'Ivaté', 1021039, '11555'),

                                               (4078, 18, 'Ivatuba', 1867136, '11605'),

                                               (4079, 18, 'Jaboti', 1791976, '11704'),

                                               (4080, 18, 'Jacarezinho', 1484105, '11803'),

                                               (4081, 18, 'Jaguapitã', 1873914, '11902'),

                                               (4082, 18, 'Jaguariaíva', 1614866, '12009'),

                                               (4083, 18, 'Jandaia do Sul', 358487, '12108'),

                                               (4084, 18, 'Janiópolis', 723990, '12207'),

                                               (4085, 18, 'Japira', 464793, '12306'),

                                               (4086, 18, 'Japurá', 1634584, '12405'),

                                               (4087, 18, 'Jardim Alegre', 1938922, '12504'),

                                               (4088, 18, 'Jardim Olinda', 1604812, '12603'),

                                               (4089, 18, 'Jataizinho', 1298929, '12702'),

                                               (4090, 18, 'Jesuítas', 439033, '12751'),

                                               (4091, 18, 'Joaquim Távora', 177609, '12801'),

                                               (4092, 18, 'Jundiaí do Sul', 748048, '12900'),

                                               (4093, 18, 'Juranda', 999771, '12959'),

                                               (4094, 18, 'Jussara', 24772, '13007'),

                                               (4095, 18, 'Kaloré', 44948, '13106'),

                                               (4096, 18, 'Lapa', 1018434, '13205'),

                                               (4097, 18, 'Laranjal', 381870, '13254'),

                                               (4098, 18, 'Laranjeiras do Sul', 650502, '13304'),

                                               (4099, 18, 'Leópolis', 1445994, '13403'),

                                               (4100, 18, 'Lidianópolis', 559156, '13429'),

                                               (4101, 18, 'Lindoeste', 288686, '13452'),

                                               (4102, 18, 'Loanda', 1379114, '13502'),

                                               (4103, 18, 'Lobato', 553985, '13601'),

                                               (4104, 18, 'Londrina', 927493, '13700'),

                                               (4105, 18, 'Luiziana', 424917, '13734'),

                                               (4106, 18, 'Lunardelli', 1406307, '13759'),

                                               (4107, 18, 'Lupionópolis', 1290269, '13809'),

                                               (4108, 18, 'Mallet', 1190756, '13908'),

                                               (4109, 18, 'Mamborê', 1371401, '14005'),

                                               (4110, 18, 'Mandaguaçu', 1468090, '14104'),

                                               (4111, 18, 'Mandaguari', 1047946, '14203'),

                                               (4112, 18, 'Mandirituba', 1385741, '14302'),

                                               (4113, 18, 'Manfrinópolis', 1097155, '14351'),

                                               (4114, 18, 'Mangueirinha', 100855, '14401'),

                                               (4115, 18, 'Manoel Ribas', 1775066, '14500'),

                                               (4116, 18, 'Marechal Cândido Rondon', 40921, '14609'),

                                               (4117, 18, 'Maria Helena', 1554554, '14708'),

                                               (4118, 18, 'Marialva', 1757446, '14807'),

                                               (4119, 18, 'Marilândia do Sul', 639923, '14906'),

                                               (4120, 18, 'Marilena', 997223, '15002'),

                                               (4121, 18, 'Mariluz', 587861, '15101'),

                                               (4122, 18, 'Maringá', 1778995, '15200'),

                                               (4123, 18, 'Mariópolis', 1566533, '15309'),

                                               (4124, 18, 'Maripá', 1565157, '15358'),

                                               (4125, 18, 'Marmeleiro', 778177, '15408'),

                                               (4126, 18, 'Marquinho', 754622, '15457'),

                                               (4127, 18, 'Marumbi', 1767775, '15507'),

                                               (4128, 18, 'Matelândia', 142217, '15606'),

                                               (4129, 18, 'Matinhos', 930642, '15705'),

                                               (4130, 18, 'Mato Rico', 1287487, '15739'),

                                               (4131, 18, 'Mauá da Serra', 879010, '15754'),

                                               (4132, 18, 'Medianeira', 1184542, '15804'),

                                               (4133, 18, 'Mercedes', 1069771, '15853'),

                                               (4134, 18, 'Mirador', 319776, '15903'),

                                               (4135, 18, 'Miraselva', 920586, '16000'),

                                               (4136, 18, 'Missal', 726605, '16059'),

                                               (4137, 18, 'Moreira Sales', 1880793, '16109'),

                                               (4138, 18, 'Morretes', 1085520, '16208'),

                                               (4139, 18, 'Munhoz de Melo', 751848, '16307'),

                                               (4140, 18, 'Nossa Senhora das Graças', 1240856, '16406'),

                                               (4141, 18, 'Nova Aliança do Ivaí', 473141, '16505'),

                                               (4142, 18, 'Nova América da Colina', 946122, '16604'),

                                               (4143, 18, 'Nova Aurora', 1690974, '16703'),

                                               (4144, 18, 'Nova Cantu', 253485, '16802'),

                                               (4145, 18, 'Nova Esperança', 125456, '16901'),

                                               (4146, 18, 'Nova Esperança do Sudoeste', 1624987, '16950'),

                                               (4147, 18, 'Nova Fátima', 68466, '17008'),

                                               (4148, 18, 'Nova Laranjeiras', 700009, '17057'),

                                               (4149, 18, 'Nova Londrina', 79395, '17107'),

                                               (4150, 18, 'Nova Olímpia', 705499, '17206'),

                                               (4151, 18, 'Nova Prata do Iguaçu', 690050, '17255'),

                                               (4152, 18, 'Nova Santa Bárbara', 88198, '17214'),

                                               (4153, 18, 'Nova Santa Rosa', 650759, '17222'),

                                               (4154, 18, 'Nova Tebas', 1391111, '17271'),

                                               (4155, 18, 'Novo Itacolomi', 175131, '17297'),

                                               (4156, 18, 'Ortigueira', 1011434, '17305'),

                                               (4157, 18, 'Ourizona', 1291742, '17404'),

                                               (4158, 18, 'Ouro Verde do Oeste', 982887, '17453'),

                                               (4159, 18, 'Paiçandu', 688566, '17503'),

                                               (4160, 18, 'Palmas', 359182, '17602'),

                                               (4161, 18, 'Palmeira', 165169, '17701'),

                                               (4162, 18, 'Palmital', 522550, '17800'),

                                               (4163, 18, 'Palotina', 1983795, '17909'),

                                               (4164, 18, 'Paraíso do Norte', 1068401, '18006'),

                                               (4165, 18, 'Paranacity', 589265, '18105'),

                                               (4166, 18, 'Paranaguá', 1236725, '18204'),

                                               (4167, 18, 'Paranapoema', 1630001, '18303'),

                                               (4168, 18, 'Paranavaí', 538410, '18402'),

                                               (4169, 18, 'Pato Bragado', 1577630, '18451'),

                                               (4170, 18, 'Pato Branco', 1685236, '18501'),

                                               (4171, 18, 'Paula Freitas', 883983, '18600'),

                                               (4172, 18, 'Paulo Frontin', 1879472, '18709'),

                                               (4173, 18, 'Peabiru', 1800485, '18808'),

                                               (4174, 18, 'Perobal', 572670, '18857'),

                                               (4175, 18, 'Pérola', 1541260, '18907'),

                                               (4176, 18, 'Pérola d Oeste', 957208, '19004'),

                                               (4177, 18, 'Piên', 1234377, '19103'),

                                               (4178, 18, 'Pinhais', 1667620, '19152'),

                                               (4179, 18, 'Pinhal de São Bento', 1985528, '19251'),

                                               (4180, 18, 'Pinhalão', 287327, '19202'),

                                               (4181, 18, 'Pinhão', 1961844, '19301'),

                                               (4182, 18, 'Piraí do Sul', 1240760, '19400'),

                                               (4183, 18, 'Piraquara', 546419, '19509'),

                                               (4184, 18, 'Pitanga', 1029681, '19608'),

                                               (4185, 18, 'Pitangueiras', 1489218, '19657'),

                                               (4186, 18, 'Planaltina do Paraná', 1604059, '19707'),

                                               (4187, 18, 'Planalto', 1870927, '19806'),

                                               (4188, 18, 'Ponta Grossa', 1895067, '19905'),

                                               (4189, 18, 'Pontal do Paraná', 1293440, '19954'),

                                               (4190, 18, 'Porecatu', 697829, '20002'),

                                               (4191, 18, 'Porto Amazonas', 783962, '20101'),

                                               (4192, 18, 'Porto Barreiro', 1628906, '20150'),

                                               (4193, 18, 'Porto Rico', 1673988, '20200'),

                                               (4194, 18, 'Porto Vitória', 471785, '20309'),

                                               (4195, 18, 'Prado Ferreira', 96468, '20333'),

                                               (4196, 18, 'Pranchita', 173262, '20358'),

                                               (4197, 18, 'Presidente Castelo Branco', 929300, '20408'),

                                               (4198, 18, 'Primeiro de Maio', 955915, '20507'),

                                               (4199, 18, 'Prudentópolis', 317533, '20606'),

                                               (4200, 18, 'Quarto Centenário', 730539, '20655'),

                                               (4201, 18, 'Quatiguá', 1000908, '20705'),

                                               (4202, 18, 'Quatro Barras', 1801183, '20804'),

                                               (4203, 18, 'Quatro Pontes', 1612460, '20853'),

                                               (4204, 18, 'Quedas do Iguaçu', 1048712, '20903'),

                                               (4205, 18, 'Querência do Norte', 206232, '21000'),

                                               (4206, 18, 'Quinta do Sol', 619195, '21109'),

                                               (4207, 18, 'Quitandinha', 1779442, '21208'),

                                               (4208, 18, 'Ramilândia', 877558, '21257'),

                                               (4209, 18, 'Rancho Alegre', 1188011, '21307'),

                                               (4210, 18, 'Rancho Alegre D Oeste', 1092784, '21356'),

                                               (4211, 18, 'Realeza', 627520, '21406'),

                                               (4212, 18, 'Rebouças', 1964856, '21505'),

                                               (4213, 18, 'Renascença', 997129, '21604'),

                                               (4214, 18, 'Reserva', 65533, '21703'),

                                               (4215, 18, 'Reserva do Iguaçu', 1056250, '21752'),

                                               (4216, 18, 'Ribeirão Claro', 1371944, '21802'),

                                               (4217, 18, 'Ribeirão do Pinhal', 992282, '21901'),

                                               (4218, 18, 'Rio Azul', 1609122, '22008'),

                                               (4219, 18, 'Rio Bom', 532770, '22107'),

                                               (4220, 18, 'Rio Bonito do Iguaçu', 1710279, '22156'),

                                               (4221, 18, 'Rio Branco do Ivaí', 881347, '22172'),

                                               (4222, 18, 'Rio Branco do Sul', 125870, '22206'),

                                               (4223, 18, 'Rio Negro', 867248, '22305'),

                                               (4224, 18, 'Rolândia', 231839, '22404'),

                                               (4225, 18, 'Roncador', 784038, '22503'),

                                               (4226, 18, 'Rondon', 1698731, '22602');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (4227, 18, 'Rosário do Ivaí', 831080, '22651'),

                                               (4228, 18, 'Sabáudia', 14225, '22701'),

                                               (4229, 18, 'Salgado Filho', 1905047, '22800'),

                                               (4230, 18, 'Salto do Itararé', 1555379, '22909'),

                                               (4231, 18, 'Salto do Lontra', 398017, '23006'),

                                               (4232, 18, 'Santa Amélia', 1579249, '23105'),

                                               (4233, 18, 'Santa Cecília do Pavão', 1959667, '23204'),

                                               (4234, 18, 'Santa Cruz de Monte Castelo', 1590534, '23303'),

                                               (4235, 18, 'Santa Fé', 254272, '23402'),

                                               (4236, 18, 'Santa Helena', 260827, '23501'),

                                               (4237, 18, 'Santa Inês', 243872, '23600'),

                                               (4238, 18, 'Santa Isabel do Ivaí', 1399673, '23709'),

                                               (4239, 18, 'Santa Izabel do Oeste', 1492361, '23808'),

                                               (4240, 18, 'Santa Lúcia', 195426, '23824'),

                                               (4241, 18, 'Santa Maria do Oeste', 438404, '23857'),

                                               (4242, 18, 'Santa Mariana', 360262, '23907'),

                                               (4243, 18, 'Santa Mônica', 1075348, '23956'),

                                               (4244, 18, 'Santa Tereza do Oeste', 966482, '24020'),

                                               (4245, 18, 'Santa Terezinha de Itaipu', 593674, '24053'),

                                               (4246, 18, 'Santana do Itararé', 1507771, '24004'),

                                               (4247, 18, 'Santo Antônio da Platina', 1243816, '24103'),

                                               (4248, 18, 'Santo Antônio do Caiuá', 730707, '24202'),

                                               (4249, 18, 'Santo Antônio do Paraíso', 525334, '24301'),

                                               (4250, 18, 'Santo Antônio do Sudoeste', 212111, '24400'),

                                               (4251, 18, 'Santo Inácio', 1864322, '24509'),

                                               (4252, 18, 'São Carlos do Ivaí', 295860, '24608'),

                                               (4253, 18, 'São Jerônimo da Serra', 1186793, '24707'),

                                               (4254, 18, 'São João', 597483, '24806'),

                                               (4255, 18, 'São João do Caiuá', 1103667, '24905'),

                                               (4256, 18, 'São João do Ivaí', 166467, '25001'),

                                               (4257, 18, 'São João do Triunfo', 1325087, '25100'),

                                               (4258, 18, 'São Jorge do Ivaí', 1352576, '25308'),

                                               (4259, 18, 'São Jorge do Patrocínio', 1745138, '25357'),

                                               (4260, 18, 'São Jorge d Oeste', 18873, '25209'),

                                               (4261, 18, 'São José da Boa Vista', 816762, '25407'),

                                               (4262, 18, 'São José das Palmeiras', 579911, '25456'),

                                               (4263, 18, 'São José dos Pinhais', 1618905, '25506'),

                                               (4264, 18, 'São Manoel do Paraná', 292753, '25555'),

                                               (4265, 18, 'São Mateus do Sul', 475551, '25605'),

                                               (4266, 18, 'São Miguel do Iguaçu', 684872, '25704'),

                                               (4267, 18, 'São Pedro do Iguaçu', 411320, '25753'),

                                               (4268, 18, 'São Pedro do Ivaí', 764977, '25803'),

                                               (4269, 18, 'São Pedro do Paraná', 12931, '25902'),

                                               (4270, 18, 'São Sebastião da Amoreira', 1416544, '26009'),

                                               (4271, 18, 'São Tomé', 396149, '26108'),

                                               (4272, 18, 'Sapopema', 1648520, '26207'),

                                               (4273, 18, 'Sarandi', 1940742, '26256'),

                                               (4274, 18, 'Saudade do Iguaçu', 449860, '26272'),

                                               (4275, 18, 'Sengés', 1971832, '26306'),

                                               (4276, 18, 'Serranópolis do Iguaçu', 164352, '26355'),

                                               (4277, 18, 'Sertaneja', 1327933, '26405'),

                                               (4278, 18, 'Sertanópolis', 1231635, '26504'),

                                               (4279, 18, 'Siqueira Campos', 1809617, '26603'),

                                               (4280, 18, 'Sulina', 1439706, '26652'),

                                               (4281, 18, 'Tamarana', 221790, '26678'),

                                               (4282, 18, 'Tamboara', 1954762, '26702'),

                                               (4283, 18, 'Tapejara', 242669, '26801'),

                                               (4284, 18, 'Tapira', 15422, '26900'),

                                               (4285, 18, 'Teixeira Soares', 356583, '27007'),

                                               (4286, 18, 'Telêmaco Borba', 1006361, '27106'),

                                               (4287, 18, 'Terra Boa', 1555677, '27205'),

                                               (4288, 18, 'Terra Rica', 456592, '27304'),

                                               (4289, 18, 'Terra Roxa', 516931, '27403'),

                                               (4290, 18, 'Tibagi', 724330, '27502'),

                                               (4291, 18, 'Tijucas do Sul', 532584, '27601'),

                                               (4292, 18, 'Toledo', 1702102, '27700'),

                                               (4293, 18, 'Tomazina', 1673337, '27809'),

                                               (4294, 18, 'Três Barras do Paraná', 642827, '27858'),

                                               (4295, 18, 'Tunas do Paraná', 1777490, '27882'),

                                               (4296, 18, 'Tuneiras do Oeste', 1107874, '27908'),

                                               (4297, 18, 'Tupãssi', 282982, '27957'),

                                               (4298, 18, 'Turvo', 1366252, '27965'),

                                               (4299, 18, 'Ubiratã', 1890213, '28005'),

                                               (4300, 18, 'Umuarama', 1805939, '28104'),

                                               (4301, 18, 'União da Vitória', 477214, '28203'),

                                               (4302, 18, 'Uniflor', 1644614, '28302'),

                                               (4303, 18, 'Uraí', 600627, '28401'),

                                               (4304, 18, 'Ventania', 527576, '28534'),

                                               (4305, 18, 'Vera Cruz do Oeste', 545540, '28559'),

                                               (4306, 18, 'Verê', 1003815, '28609'),

                                               (4307, 18, 'Virmond', 223520, '28658'),

                                               (4308, 18, 'Vitorino', 1608636, '28708'),

                                               (4309, 18, 'Wenceslau Braz', 1322881, '28500'),

                                               (4310, 18, 'Xambrê', 407275, '28807'),

                                               (4311, 24, 'Abdon Batista', 1904986, '00051'),

                                               (4312, 24, 'Abelardo Luz', 955256, '00101'),

                                               (4313, 24, 'Agrolândia', 1420086, '00200'),

                                               (4314, 24, 'Agronômica', 1205264, '00309'),

                                               (4315, 24, 'Água Doce', 1939999, '00408'),

                                               (4316, 24, 'Águas de Chapecó', 713008, '00507'),

                                               (4317, 24, 'Águas Frias', 810939, '00556'),

                                               (4318, 24, 'Águas Mornas', 1419875, '00606'),

                                               (4319, 24, 'Alfredo Wagner', 745022, '00705'),

                                               (4320, 24, 'Alto Bela Vista', 1317453, '00754'),

                                               (4321, 24, 'Anchieta', 1426837, '00804'),

                                               (4322, 24, 'Angelina', 487489, '00903'),

                                               (4323, 24, 'Anita Garibaldi', 618932, '01000'),

                                               (4324, 24, 'Anitápolis', 755163, '01109'),

                                               (4325, 24, 'Antônio Carlos', 754493, '01208'),

                                               (4326, 24, 'Apiúna', 799940, '01257'),

                                               (4327, 24, 'Arabutã', 439537, '01273'),

                                               (4328, 24, 'Araquari', 1249751, '01307'),

                                               (4329, 24, 'Araranguá', 1819230, '01406'),

                                               (4330, 24, 'Armazém', 1911966, '01505'),

                                               (4331, 24, 'Arroio Trinta', 1182455, '01604'),

                                               (4332, 24, 'Arvoredo', 1094009, '01653'),

                                               (4333, 24, 'Ascurra', 465049, '01703'),

                                               (4334, 24, 'Atalanta', 444604, '01802'),

                                               (4335, 24, 'Aurora', 1284102, '01901'),

                                               (4336, 24, 'Balneário Arroio do Silva', 1801279, '01950'),

                                               (4337, 24, 'Balneário Barra do Sul', 975499, '02057'),

                                               (4338, 24, 'Balneário Camboriú', 1897262, '02008'),

                                               (4339, 24, 'Balneário Gaivota', 163652, '02073'),

                                               (4340, 24, 'Balneário Piçarras', 1363301, '12809'),

                                               (4341, 24, 'Bandeirante', 825351, '02081'),

                                               (4342, 24, 'Barra Bonita', 379039, '02099'),

                                               (4343, 24, 'Barra Velha', 1988474, '02107'),

                                               (4344, 24, 'Bela Vista do Toldo', 1952910, '02131'),

                                               (4345, 24, 'Belmonte', 422813, '02156'),

                                               (4346, 24, 'Benedito Novo', 877533, '02206'),

                                               (4347, 24, 'Biguaçu', 1742455, '02305'),

                                               (4348, 24, 'Blumenau', 1391750, '02404'),

                                               (4349, 24, 'Bocaina do Sul', 1297956, '02438'),

                                               (4350, 24, 'Bom Jardim da Serra', 257507, '02503'),

                                               (4351, 24, 'Bom Jesus', 756658, '02537'),

                                               (4352, 24, 'Bom Jesus do Oeste', 264569, '02578'),

                                               (4353, 24, 'Bom Retiro', 335845, '02602'),

                                               (4354, 24, 'Bombinhas', 1283498, '02453'),

                                               (4355, 24, 'Botuverá', 10282, '02701'),

                                               (4356, 24, 'Braço do Norte', 1786250, '02800'),

                                               (4357, 24, 'Braço do Trombudo', 1247649, '02859'),

                                               (4358, 24, 'Brunópolis', 28753, '02875'),

                                               (4359, 24, 'Brusque', 800584, '02909'),

                                               (4360, 24, 'Caçador', 1163611, '03006'),

                                               (4361, 24, 'Caibi', 995231, '03105'),

                                               (4362, 24, 'Calmon', 951619, '03154'),

                                               (4363, 24, 'Camboriú', 1676706, '03204'),

                                               (4364, 24, 'Campo Alegre', 1324857, '03303'),

                                               (4365, 24, 'Campo Belo do Sul', 660506, '03402'),

                                               (4366, 24, 'Campo Erê', 1453928, '03501'),

                                               (4367, 24, 'Campos Novos', 209572, '03600'),

                                               (4368, 24, 'Canelinha', 1906519, '03709'),

                                               (4369, 24, 'Canoinhas', 575343, '03808'),

                                               (4370, 24, 'Capão Alto', 1775122, '03253'),

                                               (4371, 24, 'Capinzal', 601569, '03907'),

                                               (4372, 24, 'Capivari de Baixo', 1033528, '03956'),

                                               (4373, 24, 'Catanduvas', 591949, '04004'),

                                               (4374, 24, 'Caxambu do Sul', 365527, '04103'),

                                               (4375, 24, 'Celso Ramos', 1848825, '04152'),

                                               (4376, 24, 'Cerro Negro', 674936, '04178'),

                                               (4377, 24, 'Chapadão do Lageado', 1139949, '04194'),

                                               (4378, 24, 'Chapecó', 588393, '04202'),

                                               (4379, 24, 'Cocal do Sul', 220434, '04251'),

                                               (4380, 24, 'Concórdia', 574831, '04301'),

                                               (4381, 24, 'Cordilheira Alta', 735623, '04350'),

                                               (4382, 24, 'Coronel Freitas', 1609754, '04400'),

                                               (4383, 24, 'Coronel Martins', 1521425, '04459'),

                                               (4384, 24, 'Correia Pinto', 1108828, '04558'),

                                               (4385, 24, 'Corupá', 1342449, '04509'),

                                               (4386, 24, 'Criciúma', 503587, '04608'),

                                               (4387, 24, 'Cunha Porã', 1533584, '04707'),

                                               (4388, 24, 'Cunhataí', 1415461, '04756'),

                                               (4389, 24, 'Curitibanos', 1043575, '04806'),

                                               (4390, 24, 'Descanso', 1901684, '04905'),

                                               (4391, 24, 'Dionísio Cerqueira', 1888493, '05001'),

                                               (4392, 24, 'Dona Emma', 479045, '05100'),

                                               (4393, 24, 'Doutor Pedrinho', 862434, '05159'),

                                               (4394, 24, 'Entre Rios', 1372322, '05175'),

                                               (4395, 24, 'Ermo', 1382315, '05191'),

                                               (4396, 24, 'Erval Velho', 945951, '05209'),

                                               (4397, 24, 'Faxinal dos Guedes', 778345, '05308'),

                                               (4398, 24, 'Flor do Sertão', 686783, '05357'),

                                               (4399, 24, 'Florianópolis', 1015689, '05407'),

                                               (4400, 24, 'Formosa do Sul', 632625, '05431'),

                                               (4401, 24, 'Forquilhinha', 630197, '05456'),

                                               (4402, 24, 'Fraiburgo', 1361278, '05506'),

                                               (4403, 24, 'Frei Rogério', 1128151, '05555'),

                                               (4404, 24, 'Galvão', 802563, '05605'),

                                               (4405, 24, 'Garopaba', 1553801, '05704'),

                                               (4406, 24, 'Garuva', 955581, '05803'),

                                               (4407, 24, 'Gaspar', 1944520, '05902'),

                                               (4408, 24, 'Governador Celso Ramos', 1815501, '06009'),

                                               (4409, 24, 'Grão Pará', 426239, '06108'),

                                               (4410, 24, 'Gravatal', 1222511, '06207'),

                                               (4411, 24, 'Guabiruba', 362411, '06306'),

                                               (4412, 24, 'Guaraciaba', 1320339, '06405'),

                                               (4413, 24, 'Guaramirim', 1157892, '06504'),

                                               (4414, 24, 'Guarujá do Sul', 395590, '06603'),

                                               (4415, 24, 'Guatambú', 1983844, '06652'),

                                               (4416, 24, 'Herval d Oeste', 1281267, '06702'),

                                               (4417, 24, 'Ibiam', 1692198, '06751'),

                                               (4418, 24, 'Ibicaré', 704508, '06801'),

                                               (4419, 24, 'Ibirama', 461154, '06900'),

                                               (4420, 24, 'Içara', 1034340, '07007'),

                                               (4421, 24, 'Ilhota', 95407, '07106'),

                                               (4422, 24, 'Imaruí', 983148, '07205'),

                                               (4423, 24, 'Imbituba', 1186170, '07304'),

                                               (4424, 24, 'Imbuia', 1932714, '07403'),

                                               (4425, 24, 'Indaial', 1132216, '07502'),

                                               (4426, 24, 'Iomerê', 99148, '07577'),

                                               (4427, 24, 'Ipira', 1977698, '07601'),

                                               (4428, 24, 'Iporã do Oeste', 823308, '07650'),

                                               (4429, 24, 'Ipuaçu', 20481, '07684'),

                                               (4430, 24, 'Ipumirim', 179867, '07700'),

                                               (4431, 24, 'Iraceminha', 1507290, '07759'),

                                               (4432, 24, 'Irani', 1398944, '07809'),

                                               (4433, 24, 'Irati', 1640193, '07858'),

                                               (4434, 24, 'Irineópolis', 1535875, '07908'),

                                               (4435, 24, 'Itá', 985520, '08005'),

                                               (4436, 24, 'Itaiópolis', 835633, '08104'),

                                               (4437, 24, 'Itajaí', 1281605, '08203'),

                                               (4438, 24, 'Itapema', 589624, '08302'),

                                               (4439, 24, 'Itapiranga', 1507577, '08401'),

                                               (4440, 24, 'Itapoá', 196840, '08450'),

                                               (4441, 24, 'Ituporanga', 13584, '08500'),

                                               (4442, 24, 'Jaborá', 904682, '08609'),

                                               (4443, 24, 'Jacinto Machado', 844618, '08708'),

                                               (4444, 24, 'Jaguaruna', 323559, '08807'),

                                               (4445, 24, 'Jaraguá do Sul', 1846028, '08906'),

                                               (4446, 24, 'Jardinópolis', 1431867, '08955'),

                                               (4447, 24, 'Joaçaba', 1754315, '09003'),

                                               (4448, 24, 'Joinville', 1691306, '09102'),

                                               (4449, 24, 'José Boiteux', 286626, '09151'),

                                               (4450, 24, 'Jupiá', 169184, '09177'),

                                               (4451, 24, 'Lacerdópolis', 1149555, '09201'),

                                               (4452, 24, 'Lages', 453897, '09300'),

                                               (4453, 24, 'Laguna', 1729818, '09409'),

                                               (4454, 24, 'Lajeado Grande', 658874, '09458'),

                                               (4455, 24, 'Laurentino', 1995304, '09508'),

                                               (4456, 24, 'Lauro Muller', 322124, '09607'),

                                               (4457, 24, 'Lebon Régis', 405371, '09706'),

                                               (4458, 24, 'Leoberto Leal', 795528, '09805'),

                                               (4459, 24, 'Lindóia do Sul', 1369874, '09854'),

                                                (4460, 24, 'Lontras', 1598731, '09904'),

                                               (4461, 24, 'Luiz Alves', 999186, '10001'),

                                               (4462, 24, 'Luzerna', 527831, '10035'),

                                               (4463, 24, 'Macieira', 871557, '10050'),

                                               (4464, 24, 'Mafra', 788730, '10100'),

                                               (4465, 24, 'Major Gercino', 77827, '10209'),

                                               (4466, 24, 'Major Vieira', 1944157, '10308'),

                                               (4467, 24, 'Maracajá', 330133, '10407'),

                                               (4468, 24, 'Maravilha', 409453, '10506'),

                                               (4469, 24, 'Marema', 232666, '10555'),

                                               (4470, 24, 'Massaranduba', 1537151, '10605'),

                                               (4471, 24, 'Matos Costa', 327229, '10704'),

                                               (4472, 24, 'Meleiro', 51003, '10803'),

                                               (4473, 24, 'Mirim Doce', 1281305, '10852'),

                                               (4474, 24, 'Modelo', 1590915, '10902'),

                                               (4475, 24, 'Mondaí', 1922750, '11009'),

                                               (4476, 24, 'Monte Carlo', 1784657, '11058'),

                                               (4477, 24, 'Monte Castelo', 667079, '11108'),

                                               (4478, 24, 'Morro da Fumaça', 26900, '11207'),

                                               (4479, 24, 'Morro Grande', 1587293, '11256'),

                                               (4480, 24, 'Navegantes', 100855, '11306'),

                                               (4481, 24, 'Nova Erechim', 115909, '11405'),

                                               (4482, 24, 'Nova Itaberaba', 1574153, '11454'),

                                               (4483, 24, 'Nova Trento', 1177480, '11504'),

                                               (4484, 24, 'Nova Veneza', 1848975, '11603'),

                                               (4485, 24, 'Novo Horizonte', 127843, '11652'),

                                               (4486, 24, 'Orleans', 1446414, '11702'),

                                               (4487, 24, 'Otacílio Costa', 455688, '11751'),

                                               (4488, 24, 'Ouro', 392693, '11801'),

                                               (4489, 24, 'Ouro Verde', 1826668, '11850'),

                                               (4490, 24, 'Paial', 385490, '11876'),

                                               (4491, 24, 'Painel', 267058, '11892'),

                                               (4492, 24, 'Palhoça', 661690, '11900'),

                                               (4493, 24, 'Palma Sola', 1013670, '12007'),

                                               (4494, 24, 'Palmeira', 1587947, '12056'),

                                               (4495, 24, 'Palmitos', 1437033, '12106'),

                                               (4496, 24, 'Papanduva', 1625409, '12205'),

                                               (4497, 24, 'Paraíso', 269085, '12239'),

                                               (4498, 24, 'Passo de Torres', 73348, '12254'),

                                               (4499, 24, 'Passos Maia', 972310, '12270'),

                                               (4500, 24, 'Paulo Lopes', 257278, '12304'),

                                               (4501, 24, 'Pedras Grandes', 1704679, '12403'),

                                               (4502, 24, 'Penha', 1510141, '12502'),

                                               (4503, 24, 'Peritiba', 171038, '12601'),

                                               (4504, 24, 'Petrolândia', 757813, '12700'),

                                               (4505, 24, 'Pinhalzinho', 284757, '12908'),

                                               (4506, 24, 'Pinheiro Preto', 1147753, '13005'),

                                               (4507, 24, 'Piratuba', 1879882, '13104'),

                                               (4508, 24, 'Planalto Alegre', 410491, '13153'),

                                               (4509, 24, 'Pomerode', 751514, '13203'),

                                               (4510, 24, 'Ponte Alta', 1847273, '13302'),

                                               (4511, 24, 'Ponte Alta do Norte', 1190324, '13351'),

                                               (4512, 24, 'Ponte Serrada', 1232002, '13401'),

                                               (4513, 24, 'Porto Belo', 333197, '13500'),

                                               (4514, 24, 'Porto União', 587528, '13609'),

                                               (4515, 24, 'Pouso Redondo', 577052, '13708'),

                                               (4516, 24, 'Praia Grande', 225915, '13807'),

                                               (4517, 24, 'Presidente Castello Branco', 778295, '13906'),

                                               (4518, 24, 'Presidente Getúlio', 1266861, '14003'),

                                               (4519, 24, 'Presidente Nereu', 1768931, '14102'),

                                               (4520, 24, 'Princesa', 751946, '14151'),

                                               (4521, 24, 'Quilombo', 470020, '14201'),

                                               (4522, 24, 'Rancho Queimado', 1179266, '14300'),

                                               (4523, 24, 'Rio das Antas', 385307, '14409'),

                                               (4524, 24, 'Rio do Campo', 1932331, '14508'),

                                               (4525, 24, 'Rio do Oeste', 1506195, '14607'),

                                               (4526, 24, 'Rio do Sul', 1991768, '14805'),

                                               (4527, 24, 'Rio dos Cedros', 187697, '14706'),

                                               (4528, 24, 'Rio Fortuna', 1986533, '14904'),

                                               (4529, 24, 'Rio Negrinho', 301574, '15000'),

                                               (4530, 24, 'Rio Rufino', 573968, '15059'),

                                               (4531, 24, 'Riqueza', 1114695, '15075'),

                                               (4532, 24, 'Rodeio', 1066428, '15109'),

                                               (4533, 24, 'Romelândia', 371610, '15208'),

                                               (4534, 24, 'Salete', 849640, '15307'),

                                               (4535, 24, 'Saltinho', 1363067, '15356'),

                                               (4536, 24, 'Salto Veloso', 1708363, '15406'),

                                               (4537, 24, 'Sangão', 614327, '15455'),

                                               (4538, 24, 'Santa Cecília', 746978, '15505'),

                                               (4539, 24, 'Santa Helena', 1085030, '15554'),

                                               (4540, 24, 'Santa Rosa de Lima', 733508, '15604'),

                                               (4541, 24, 'Santa Rosa do Sul', 1156388, '15653'),

                                               (4542, 24, 'Santa Terezinha', 1737430, '15679'),

                                               (4543, 24, 'Santa Terezinha do Progresso', 848384, '15687'),

                                               (4544, 24, 'Santiago do Sul', 189062, '15695'),

                                               (4545, 24, 'Santo Amaro da Imperatriz', 1475854, '15703'),

                                               (4546, 24, 'São Bento do Sul', 712440, '15802'),

                                               (4547, 24, 'São Bernardino', 1652789, '15752'),

                                               (4548, 24, 'São Bonifácio', 1540002, '15901'),

                                               (4549, 24, 'São Carlos', 1366067, '16008'),

                                               (4550, 24, 'São Cristovão do Sul', 206491, '16057'),

                                               (4551, 24, 'São Domingos', 1498405, '16107'),

                                               (4552, 24, 'São Francisco do Sul', 462468, '16206'),

                                               (4553, 24, 'São João Batista', 1265376, '16305'),

                                               (4554, 24, 'São João do Itaperiú', 1208378, '16354'),

                                               (4555, 24, 'São João do Oeste', 126858, '16255'),

                                               (4556, 24, 'São João do Sul', 464957, '16404'),

                                               (4557, 24, 'São Joaquim', 616385, '16503'),

                                               (4558, 24, 'São José', 180938, '16602'),

                                               (4559, 24, 'São José do Cedro', 232155, '16701'),

                                               (4560, 24, 'São José do Cerrito', 245059, '16800'),

                                               (4561, 24, 'São Lourenço do Oeste', 1991000, '16909'),

                                               (4562, 24, 'São Ludgero', 1322384, '17006'),

                                               (4563, 24, 'São Martinho', 1804554, '17105'),

                                               (4564, 24, 'São Miguel da Boa Vista', 1609152, '17154'),

                                               (4565, 24, 'São Miguel do Oeste', 659358, '17204'),

                                               (4566, 24, 'São Pedro de Alcântara', 707816, '17253'),

                                               (4567, 24, 'Saudades', 1226353, '17303'),

                                               (4568, 24, 'Schroeder', 748202, '17402'),

                                               (4569, 24, 'Seara', 103516, '17501'),

                                               (4570, 24, 'Serra Alta', 818318, '17550'),

                                               (4571, 24, 'Siderópolis', 1030762, '17600'),

                                               (4572, 24, 'Sombrio', 130292, '17709'),

                                               (4573, 24, 'Sul Brasil', 21792, '17758'),

                                               (4574, 24, 'Taió', 1680589, '17808'),

                                               (4575, 24, 'Tangará', 1494441, '17907'),

                                               (4576, 24, 'Tigrinhos', 991012, '17956'),

                                               (4577, 24, 'Tijucas', 460734, '18004'),

                                               (4578, 24, 'Timbé do Sul', 975305, '18103'),

                                               (4579, 24, 'Timbó', 1298333, '18202'),

                                               (4580, 24, 'Timbó Grande', 1504118, '18251'),

                                               (4581, 24, 'Três Barras', 1511424, '18301'),

                                               (4582, 24, 'Treviso', 1803121, '18350'),

                                               (4583, 24, 'Treze de Maio', 1847827, '18400'),

                                               (4584, 24, 'Treze Tílias', 1661637, '18509'),

                                               (4585, 24, 'Trombudo Central', 572655, '18608'),

                                               (4586, 24, 'Tubarão', 1218391, '18707'),

                                               (4587, 24, 'Tunápolis', 1279735, '18756'),

                                               (4588, 24, 'Turvo', 710023, '18806'),

                                               (4589, 24, 'União do Oeste', 1738913, '18855'),

                                               (4590, 24, 'Urubici', 1284873, '18905'),

                                               (4591, 24, 'Urupema', 864612, '18954'),

                                               (4592, 24, 'Urussanga', 1621440, '19002'),

                                               (4593, 24, 'Vargeão', 271457, '19101'),

                                               (4594, 24, 'Vargem', 495911, '19150'),

                                               (4595, 24, 'Vargem Bonita', 1158412, '19176'),

                                               (4596, 24, 'Vidal Ramos', 174307, '19200'),

                                               (4597, 24, 'Videira', 1892596, '19309'),

                                               (4598, 24, 'Vitor Meireles', 1202043, '19358'),

                                               (4599, 24, 'Witmarsum', 1103605, '19408'),

                                               (4600, 24, 'Xanxerê', 889717, '19507'),

                                               (4601, 24, 'Xavantina', 944042, '19606'),

                                               (4602, 24, 'Xaxim', 1439460, '19705'),

                                               (4603, 24, 'Zortéa', 1436807, '19853'),

                                               (4604, 23, 'Aceguá', 931930, '00034'),

                                               (4605, 23, 'Água Santa', 714888, '00059'),

                                               (4606, 23, 'Agudo', 294279, '00109'),

                                               (4607, 23, 'Ajuricaba', 1940821, '00208'),

                                               (4608, 23, 'Alecrim', 891486, '00307'),

                                               (4609, 23, 'Alegrete', 423753, '00406'),

                                               (4610, 23, 'Alegria', 871083, '00455'),

                                               (4611, 23, 'Almirante Tamandaré do Sul', 689307, '00471'),

                                               (4612, 23, 'Alpestre', 1582782, '00505'),

                                               (4613, 23, 'Alto Alegre', 1052168, '00554'),

                                               (4614, 23, 'Alto Feliz', 91573, '00570'),

                                               (4615, 23, 'Alvorada', 1086121, '00604'),

                                               (4616, 23, 'Amaral Ferrador', 87926, '00638'),

                                               (4617, 23, 'Ametista do Sul', 314227, '00646'),

                                               (4618, 23, 'André da Rocha', 247627, '00661'),

                                               (4619, 23, 'Anta Gorda', 964903, '00703'),

                                               (4620, 23, 'Antônio Prado', 1936334, '00802'),

                                               (4621, 23, 'Arambaré', 986829, '00851'),

                                               (4622, 23, 'Araricá', 59581, '00877'),

                                               (4623, 23, 'Aratiba', 1930552, '00901'),

                                               (4624, 23, 'Arroio do Meio', 699893, '01008'),

                                               (4625, 23, 'Arroio do Padre', 1969819, '01073'),

                                               (4626, 23, 'Arroio do Sal', 1354034, '01057'),

                                               (4627, 23, 'Arroio do Tigre', 81389, '01206'),

                                               (4628, 23, 'Arroio dos Ratos', 62484, '01107'),

                                               (4629, 23, 'Arroio Grande', 1931263, '01305'),

                                               (4630, 23, 'Arvorezinha', 1310155, '01404'),

                                               (4631, 23, 'Augusto Pestana', 1162607, '01503'),

                                               (4632, 23, 'Áurea', 1556292, '01552'),

                                               (4633, 23, 'Bagé', 1966017, '01602'),

                                               (4634, 23, 'Balneário Pinhal', 946084, '01636'),

                                               (4635, 23, 'Barão', 1735127, '01651'),

                                               (4636, 23, 'Barão de Cotegipe', 952714, '01701'),

                                               (4637, 23, 'Barão do Triunfo', 1596316, '01750'),

                                               (4638, 23, 'Barra do Guarita', 1960456, '01859'),

                                               (4639, 23, 'Barra do Quaraí', 584967, '01875'),

                                               (4640, 23, 'Barra do Ribeiro', 1838547, '01909'),

                                               (4641, 23, 'Barra do Rio Azul', 1982729, '01925'),

                                               (4642, 23, 'Barra Funda', 1778455, '01958');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

    VALUES           (4643, 23, 'Barracão', 1026859, '01800'),

                                               (4644, 23, 'Barros Cassal', 144607, '02006'),

                                               (4645, 23, 'Benjamin Constant do Sul', 1480139, '02055'),

                                               (4646, 23, 'Bento Gonçalves', 374939, '02105'),

                                               (4647, 23, 'Boa Vista das Missões', 1196103, '02154'),

                                               (4648, 23, 'Boa Vista do Buricá', 1325017, '02204'),

                                               (4649, 23, 'Boa Vista do Cadeado', 1477811, '02220'),

                                               (4650, 23, 'Boa Vista do Incra', 1827274, '02238'),

                                               (4651, 23, 'Boa Vista do Sul', 1001367, '02253'),

                                               (4652, 23, 'Bom Jesus', 1915893, '02303'),

                                               (4653, 23, 'Bom Princípio', 1916264, '02352'),

                                               (4654, 23, 'Bom Progresso', 1236765, '02378'),

                                               (4655, 23, 'Bom Retiro do Sul', 1336013, '02402'),

                                               (4656, 23, 'Boqueirão do Leão', 1689610, '02451'),

                                               (4657, 23, 'Bossoroca', 401608, '02501'),

                                               (4658, 23, 'Bozano', 1599030, '02584'),

                                               (4659, 23, 'Braga', 1707194, '02600'),

                                               (4660, 23, 'Brochier', 479191, '02659'),

                                               (4661, 23, 'Butiá', 600731, '02709'),

                                               (4662, 23, 'Caçapava do Sul', 272406, '02808'),

                                               (4663, 23, 'Cacequi', 1828173, '02907'),

                                               (4664, 23, 'Cachoeira do Sul', 1751588, '03004'),

                                               (4665, 23, 'Cachoeirinha', 814882, '03103'),

                                               (4666, 23, 'Cacique Doble', 294990, '03202'),

                                               (4667, 23, 'Caibaté', 802139, '03301'),

                                               (4668, 23, 'Caiçara', 219629, '03400'),

                                               (4669, 23, 'Camaquã', 777091, '03509'),

                                               (4670, 23, 'Camargo', 942236, '03558'),

                                               (4671, 23, 'Cambará do Sul', 1691559, '03608'),

                                               (4672, 23, 'Campestre da Serra', 1518345, '03673'),

                                               (4673, 23, 'Campina das Missões', 1671096, '03707'),

                                               (4674, 23, 'Campinas do Sul', 1039391, '03806'),

                                               (4675, 23, 'Campo Bom', 1095172, '03905'),

                                               (4676, 23, 'Campo Novo', 1071582, '04002'),

                                               (4677, 23, 'Campos Borges', 173272, '04101'),

                                               (4678, 23, 'Candelária', 534799, '04200'),

                                               (4679, 23, 'Cândido Godói', 628494, '04309'),

                                               (4680, 23, 'Candiota', 1390078, '04358'),

                                               (4681, 23, 'Canela', 1910935, '04408'),

                                               (4682, 23, 'Canguçu', 244685, '04507'),

                                               (4683, 23, 'Canoas', 146994, '04606'),

                                               (4684, 23, 'Canudos do Vale', 1008702, '04614'),

                                               (4685, 23, 'Capão Bonito do Sul', 601884, '04622'),

                                               (4686, 23, 'Capão da Canoa', 1192029, '04630'),

                                               (4687, 23, 'Capão do Cipó', 1507408, '04655'),

                                               (4688, 23, 'Capão do Leão', 658087, '04663'),

                                               (4689, 23, 'Capela de Santana', 794157, '04689'),

                                               (4690, 23, 'Capitão', 1577513, '04697'),

                                               (4691, 23, 'Capivari do Sul', 597113, '04671'),

                                               (4692, 23, 'Caraá', 1391830, '04713'),

                                               (4693, 23, 'Carazinho', 143398, '04705'),

                                               (4694, 23, 'Carlos Barbosa', 1390700, '04804'),

                                               (4695, 23, 'Carlos Gomes', 398550, '04853'),

                                               (4696, 23, 'Casca', 508755, '04903'),

                                               (4697, 23, 'Caseiros', 79451, '04952'),

                                               (4698, 23, 'Catuípe', 1944011, '05009'),

                                               (4699, 23, 'Caxias do Sul', 234271, '05108'),

                                               (4700, 23, 'Centenário', 202072, '05116'),

                                               (4701, 23, 'Cerrito', 989072, '05124'),

                                               (4702, 23, 'Cerro Branco', 1916272, '05132'),

                                               (4703, 23, 'Cerro Grande', 1463298, '05157'),

                                               (4704, 23, 'Cerro Grande do Sul', 1381202, '05173'),

                                               (4705, 23, 'Cerro Largo', 849045, '05207'),

                                               (4706, 23, 'Chapada', 1876554, '05306'),

                                               (4707, 23, 'Charqueadas', 1496060, '05355'),

                                               (4708, 23, 'Charrua', 1372661, '05371'),

                                               (4709, 23, 'Chiapetta', 1751300, '05405'),

                                               (4710, 23, 'Chuí', 1828264, '05439'),

                                               (4711, 23, 'Chuvisca', 501512, '05447'),

                                               (4712, 23, 'Cidreira', 339109, '05454'),

                                               (4713, 23, 'Ciríaco', 333872, '05504'),

                                               (4714, 23, 'Colinas', 384091, '05587'),

                                               (4715, 23, 'Colorado', 582671, '05603'),

                                               (4716, 23, 'Condor', 1143797, '05702'),

                                               (4717, 23, 'Constantina', 1659861, '05801'),

                                               (4718, 23, 'Coqueiro Baixo', 501048, '05835'),

                                               (4719, 23, 'Coqueiros do Sul', 1385184, '05850'),

                                               (4720, 23, 'Coronel Barros', 94283, '05871'),

                                               (4721, 23, 'Coronel Bicaco', 541200, '05900'),

                                               (4722, 23, 'Coronel Pilar', 96146, '05934'),

                                               (4723, 23, 'Cotiporã', 1036889, '05959'),

                                               (4724, 23, 'Coxilha', 218329, '05975'),

                                               (4725, 23, 'Crissiumal', 1495250, '06007'),

                                               (4726, 23, 'Cristal', 435347, '06056'),

                                               (4727, 23, 'Cristal do Sul', 637614, '06072'),

                                               (4728, 23, 'Cruz Alta', 1433188, '06106'),

                                               (4729, 23, 'Cruzaltense', 981774, '06130'),

                                               (4730, 23, 'Cruzeiro do Sul', 633252, '06205'),

                                               (4731, 23, 'David Canabarro', 1600954, '06304'),

                                               (4732, 23, 'Derrubadas', 1063289, '06320'),

                                               (4733, 23, 'Dezesseis de Novembro', 1287582, '06353'),

                                               (4734, 23, 'Dilermando de Aguiar', 327270, '06379'),

                                               (4735, 23, 'Dois Irmãos', 307982, '06403'),

                                               (4736, 23, 'Dois Irmãos das Missões', 282719, '06429'),

                                               (4737, 23, 'Dois Lajeados', 1915077, '06452'),

                                               (4738, 23, 'Dom Feliciano', 1891321, '06502'),

                                               (4739, 23, 'Dom Pedrito', 41751, '06601'),

                                               (4740, 23, 'Dom Pedro de Alcântara', 876318, '06551'),

                                               (4741, 23, 'Dona Francisca', 723034, '06700'),

                                               (4742, 23, 'Doutor Maurício Cardoso', 1722881, '06734'),

                                               (4743, 23, 'Doutor Ricardo', 1602999, '06759'),

                                               (4744, 23, 'Eldorado do Sul', 1124374, '06767'),

                                               (4745, 23, 'Encantado', 1024279, '06809'),

                                               (4746, 23, 'Encruzilhada do Sul', 605291, '06908'),

                                               (4747, 23, 'Engenho Velho', 1369827, '06924'),

                                               (4748, 23, 'Entre Rios do Sul', 156407, '06957'),

                                               (4749, 23, 'Entre-Ijuís', 1350997, '06932'),

                                               (4750, 23, 'Erebango', 444792, '06973'),

                                               (4751, 23, 'Erechim', 1601892, '07005'),

                                               (4752, 23, 'Ernestina', 1189909, '07054'),

                                               (4753, 23, 'Erval Grande', 1508115, '07203'),

                                               (4754, 23, 'Erval Seco', 1132531, '07302'),

                                               (4755, 23, 'Esmeralda', 1363832, '07401'),

                                               (4756, 23, 'Esperança do Sul', 742416, '07450'),

                                               (4757, 23, 'Espumoso', 1500378, '07500'),

                                               (4758, 23, 'Estação', 1076388, '07559'),

                                               (4759, 23, 'Estância Velha', 1722980, '07609'),

                                               (4760, 23, 'Esteio', 826090, '07708'),

                                               (4761, 23, 'Estrela', 557717, '07807'),

                                               (4762, 23, 'Estrela Velha', 1675031, '07815'),

                                               (4763, 23, 'Eugênio de Castro', 148537, '07831'),

                                               (4764, 23, 'Fagundes Varela', 1579562, '07864'),

                                               (4765, 23, 'Farroupilha', 1992000, '07906'),

                                               (4766, 23, 'Faxinal do Soturno', 1699702, '08003'),

                                               (4767, 23, 'Faxinalzinho', 131070, '08052'),

                                               (4768, 23, 'Fazenda Vilanova', 1212649, '08078'),

                                               (4769, 23, 'Feliz', 208635, '08102'),

                                               (4770, 23, 'Flores da Cunha', 1324857, '08201'),

                                               (4771, 23, 'Floriano Peixoto', 633727, '08250'),

                                               (4772, 23, 'Fontoura Xavier', 668738, '08300'),

                                               (4773, 23, 'Formigueiro', 870036, '08409'),

                                               (4774, 23, 'Forquetinha', 1846761, '08433'),

                                               (4775, 23, 'Fortaleza dos Valos', 1052925, '08458'),

                                               (4776, 23, 'Frederico Westphalen', 29177, '08508'),

                                               (4777, 23, 'Garibaldi', 143460, '08607'),

                                               (4778, 23, 'Garruchos', 1310935, '08656'),

                                               (4779, 23, 'Gaurama', 1218330, '08706'),

                                               (4780, 23, 'General Câmara', 663120, '08805'),

                                               (4781, 23, 'Gentil', 1099220, '08854'),

                                               (4782, 23, 'Getúlio Vargas', 349596, '08904'),

                                               (4783, 23, 'Giruá', 305872, '09001'),

                                               (4784, 23, 'Glorinha', 1718231, '09050'),

                                               (4785, 23, 'Gramado', 893330, '09100'),

                                               (4786, 23, 'Gramado dos Loureiros', 1195447, '09126'),

                                               (4787, 23, 'Gramado Xavier', 477997, '09159'),

                                               (4788, 23, 'Gravataí', 1276173, '09209'),

                                               (4789, 23, 'Guabiju', 1615241, '09258'),

                                               (4790, 23, 'Guaíba', 1297993, '09308'),

                                               (4791, 23, 'Guaporé', 1995516, '09407'),

                                               (4792, 23, 'Guarani das Missões', 1625926, '09506'),

                                               (4793, 23, 'Harmonia', 1907956, '09555'),

                                               (4794, 23, 'Herval', 798112, '07104'),

                                               (4795, 23, 'Herveiras', 1242284, '09571'),

                                               (4796, 23, 'Horizontina', 1054370, '09605'),

                                               (4797, 23, 'Hulha Negra', 1472907, '09654'),

                                               (4798, 23, 'Humaitá', 1155224, '09704'),

                                               (4799, 23, 'Ibarama', 998148, '09753'),

                                               (4800, 23, 'Ibiaçá', 598943, '09803'),

                                               (4801, 23, 'Ibiraiaras', 33814, '09902'),

                                               (4802, 23, 'Ibirapuitã', 1869073, '09951'),

                                               (4803, 23, 'Ibirubá', 1374522, '10009'),

                                               (4804, 23, 'Igrejinha', 1354441, '10108'),

                                               (4805, 23, 'Ijuí', 611356, '10207'),

                                               (4806, 23, 'Ilópolis', 176334, '10306'),

                                               (4807, 23, 'Imbé', 711046, '10330'),

                                               (4808, 23, 'Imigrante', 346999, '10363'),

                                               (4809, 23, 'Independência', 684546, '10405'),

                                               (4810, 23, 'Inhacorá', 1897454, '10413'),

                                               (4811, 23, 'Ipê', 1192582, '10439'),

                                               (4812, 23, 'Ipiranga do Sul', 1439733, '10462'),

                                               (4813, 23, 'Iraí', 602652, '10504'),

                                               (4814, 23, 'Itaara', 1257619, '10538'),

                                               (4815, 23, 'Itacurubi', 1094829, '10553'),

                                               (4816, 23, 'Itapuca', 1308439, '10579'),

                                               (4817, 23, 'Itaqui', 114685, '10603'),

                                               (4818, 23, 'Itati', 1558900, '10652'),

                                               (4819, 23, 'Itatiba do Sul', 1151908, '10702'),

                                               (4820, 23, 'Ivorá', 10653, '10751'),

                                               (4821, 23, 'Ivoti', 1702624, '10801'),

                                               (4822, 23, 'Jaboticaba', 315101, '10850'),

                                               (4823, 23, 'Jacuizinho', 1500789, '10876'),

                                               (4824, 23, 'Jacutinga', 1658011, '10900'),

                                               (4825, 23, 'Jaguarão', 729090, '11007'),

                                               (4826, 23, 'Jaguari', 1435107, '11106'),

                                               (4827, 23, 'Jaquirana', 1976575, '11122'),

                                               (4828, 23, 'Jari', 568377, '11130'),

                                               (4829, 23, 'Jóia', 1600664, '11155'),

                                               (4830, 23, 'Júlio de Castilhos', 1210638, '11205'),

                                               (4831, 23, 'Lagoa Bonita do Sul', 510019, '11239'),

                                               (4832, 23, 'Lagoa dos Três Cantos', 959781, '11270'),

                                               (4833, 23, 'Lagoa Vermelha', 340905, '11304'),

                                               (4834, 23, 'Lagoão', 697494, '11254'),

                                               (4835, 23, 'Lajeado', 1217058, '11403'),

                                               (4836, 23, 'Lajeado do Bugre', 349048, '11429'),

                                               (4837, 23, 'Lavras do Sul', 1992661, '11502'),

                                               (4838, 23, 'Liberato Salzano', 944328, '11601'),

                                               (4839, 23, 'Lindolfo Collor', 1258986, '11627'),

                                               (4840, 23, 'Linha Nova', 1035430, '11643'),

                                               (4841, 23, 'Maçambará', 261143, '11718'),

                                               (4842, 23, 'Machadinho', 1421017, '11700'),

                                               (4843, 23, 'Mampituba', 1876453, '11734'),

                                               (4844, 23, 'Manoel Viana', 1721927, '11759'),

                                               (4845, 23, 'Maquiné', 1055746, '11775'),

                                               (4846, 23, 'Maratá', 1376235, '11791'),

                                               (4847, 23, 'Marau', 1057950, '11809'),

                                               (4848, 23, 'Marcelino Ramos', 542866, '11908'),

                                               (4849, 23, 'Mariana Pimentel', 1934460, '11981'),

                                               (4850, 23, 'Mariano Moro', 724141, '12005'),

                                               (4851, 23, 'Marques de Souza', 1564747, '12054'),

                                               (4852, 23, 'Mata', 1781833, '12104'),

                                               (4853, 23, 'Mato Castelhano', 1842303, '12138'),

                                               (4854, 23, 'Mato Leitão', 132467, '12153'),

                                               (4855, 23, 'Mato Queimado', 362738, '12179'),

                                               (4856, 23, 'Maximiliano de Almeida', 710221, '12203'),

                                               (4857, 23, 'Minas do Leão', 1829084, '12252'),

                                               (4858, 23, 'Miraguaí', 812400, '12302'),

                                               (4859, 23, 'Montauri', 1969170, '12351'),

                                               (4860, 23, 'Monte Alegre dos Campos', 500140, '12377'),

                                               (4861, 23, 'Monte Belo do Sul', 1963128, '12385'),

                                               (4862, 23, 'Montenegro', 1011669, '12401'),

                                               (4863, 23, 'Mormaço', 25548, '12427'),

                                               (4864, 23, 'Morrinhos do Sul', 290134, '12443'),

                                               (4865, 23, 'Morro Redondo', 147222, '12450'),

                                               (4866, 23, 'Morro Reuter', 1854351, '12476'),

                                               (4867, 23, 'Mostardas', 107109, '12500'),

                                               (4868, 23, 'Muçum', 730559, '12609'),

                                               (4869, 23, 'Muitos Capões', 526950, '12617'),

                                               (4870, 23, 'Muliterno', 309724, '12625'),

                                               (4871, 23, 'Não-Me-Toque', 1442933, '12658'),

                                               (4872, 23, 'Nicolau Vergueiro', 1316637, '12674'),

                                               (4873, 23, 'Nonoai', 1305052, '12708'),

                                               (4874, 23, 'Nova Alvorada', 196902, '12757'),

                                               (4875, 23, 'Nova Araçá', 514457, '12807'),

                                               (4876, 23, 'Nova Bassano', 406945, '12906'),

                                               (4877, 23, 'Nova Boa Vista', 748612, '12955'),

                                               (4878, 23, 'Nova Bréscia', 764940, '13003'),

                                               (4879, 23, 'Nova Candelária', 1432765, '13011'),

                                               (4880, 23, 'Nova Esperança do Sul', 1148910, '13037'),

                                               (4881, 23, 'Nova Hartz', 499167, '13060'),

                                               (4882, 23, 'Nova Pádua', 994352, '13086'),

                                               (4883, 23, 'Nova Palma', 861039, '13102'),

                                               (4884, 23, 'Nova Petrópolis', 1084232, '13201'),

                                               (4885, 23, 'Nova Prata', 1325462, '13300'),

                                               (4886, 23, 'Nova Ramada', 87949, '13334'),

                                               (4887, 23, 'Nova Roma do Sul', 1936108, '13359'),

                                               (4888, 23, 'Nova Santa Rita', 1785705, '13375'),

                                               (4889, 23, 'Novo Barreiro', 1246335, '13490'),

                                               (4890, 23, 'Novo Cabrais', 54871, '13391'),

                                               (4891, 23, 'Novo Hamburgo', 770722, '13409'),

                                               (4892, 23, 'Novo Machado', 1076543, '13425'),

                                               (4893, 23, 'Novo Tiradentes', 673784, '13441'),

                                               (4894, 23, 'Novo Xingu', 343601, '13466'),

                                               (4895, 23, 'Osório', 1983972, '13508'),

                                               (4896, 23, 'Paim Filho', 913327, '13607'),

                                               (4897, 23, 'Palmares do Sul', 500986, '13656'),

                                               (4898, 23, 'Palmeira das Missões', 378923, '13706'),

                                               (4899, 23, 'Palmitinho', 1495247, '13805'),

                                               (4900, 23, 'Panambi', 414772, '13904'),

                                               (4901, 23, 'Pantano Grande', 390558, '13953'),

                                               (4902, 23, 'Paraí', 835638, '14001'),

                                               (4903, 23, 'Paraíso do Sul', 1247359, '14027'),

                                               (4904, 23, 'Pareci Novo', 721474, '14035'),

                                               (4905, 23, 'Parobé', 1472980, '14050'),

                                               (4906, 23, 'Passa Sete', 603820, '14068'),

                                               (4907, 23, 'Passo do Sobrado', 329500, '14076'),

                                               (4908, 23, 'Passo Fundo', 1736865, '14100'),

                                               (4909, 23, 'Paulo Bento', 22992, '14134'),

                                               (4910, 23, 'Paverama', 86623, '14159'),

                                               (4911, 23, 'Pedras Altas', 1852661, '14175'),

                                               (4912, 23, 'Pedro Osório', 173349, '14209'),

                                               (4913, 23, 'Pejuçara', 1659503, '14308'),

                                               (4914, 23, 'Pelotas', 1431573, '14407'),

                                               (4915, 23, 'Picada Café', 1602832, '14423'),

                                               (4916, 23, 'Pinhal', 326500, '14456'),

                                               (4917, 23, 'Pinhal da Serra', 1613349, '14464'),

                                               (4918, 23, 'Pinhal Grande', 1298133, '14472'),

                                               (4919, 23, 'Pinheirinho do Vale', 1194263, '14498'),

                                               (4920, 23, 'Pinheiro Machado', 1654992, '14506'),

                                               (4921, 23, 'Pirapó', 539750, '14555'),

                                               (4922, 23, 'Piratini', 559116, '14605'),

                                               (4923, 23, 'Planalto', 227831, '14704'),

                                               (4924, 23, 'Poço das Antas', 305341, '14753'),

                                               (4925, 23, 'Pontão', 580122, '14779'),

                                               (4926, 23, 'Ponte Preta', 1506455, '14787'),

                                               (4927, 23, 'Portão', 172285, '14803'),

                                               (4928, 23, 'Porto Alegre', 270964, '14902'),

                                               (4929, 23, 'Porto Lucena', 771256, '15008'),

                                               (4930, 23, 'Porto Mauá', 1991655, '15057'),

                                               (4931, 23, 'Porto Vera Cruz', 1046572, '15073'),

                                               (4932, 23, 'Porto Xavier', 770607, '15107'),

                                               (4933, 23, 'Pouso Novo', 162305, '15131'),

                                               (4934, 23, 'Presidente Lucena', 1804564, '15149'),

                                               (4935, 23, 'Progresso', 1426183, '15156'),

                                               (4936, 23, 'Protásio Alves', 1758874, '15172'),

                                               (4937, 23, 'Putinga', 1308310, '15206'),

                                               (4938, 23, 'Quaraí', 713590, '15305'),

                                               (4939, 23, 'Quatro Irmãos', 149484, '15313'),

                                               (4940, 23, 'Quevedos', 1318130, '15321'),

                                               (4941, 23, 'Quinze de Novembro', 792873, '15354'),

                                               (4942, 23, 'Redentora', 1539216, '15404'),

                                               (4943, 23, 'Relvado', 742436, '15453'),

                                               (4944, 23, 'Restinga Seca', 1183822, '15503'),

                                               (4945, 23, 'Rio dos Índios', 442829, '15552'),

                                               (4946, 23, 'Rio Grande', 1216942, '15602'),

                                               (4947, 23, 'Rio Pardo', 1158987, '15701'),

                                               (4948, 23, 'Riozinho', 351161, '15750'),

                                               (4949, 23, 'Roca Sales', 1465801, '15800'),

                                               (4950, 23, 'Rodeio Bonito', 1313993, '15909'),

                                               (4951, 23, 'Rolador', 1943634, '15958'),

                                               (4952, 23, 'Rolante', 202867, '16006'),

                                               (4953, 23, 'Ronda Alta', 1647935, '16105'),

                                               (4954, 23, 'Rondinha', 1633582, '16204'),

                                               (4955, 23, 'Roque Gonzales', 496663, '16303'),

                                               (4956, 23, 'Rosário do Sul', 994240, '16402'),

                                               (4957, 23, 'Sagrada Família', 698773, '16428'),

                                               (4958, 23, 'Saldanha Marinho', 1982007, '16436'),

                                               (4959, 23, 'Salto do Jacuí', 567798, '16451'),

                                               (4960, 23, 'Salvador das Missões', 520331, '16477'),

                                               (4961, 23, 'Salvador do Sul', 1074638, '16501'),

                                               (4962, 23, 'Sananduva', 301639, '16600'),

                                               (4963, 23, 'Santa Bárbara do Sul', 1959056, '16709'),

                                               (4964, 23, 'Santa Cecília do Sul', 267508, '16733'),

                                               (4965, 23, 'Santa Clara do Sul', 1013096, '16758'),

                                               (4966, 23, 'Santa Cruz do Sul', 1704808, '16808'),

                                               (4967, 23, 'Santa Margarida do Sul', 462085, '16972'),

                                               (4968, 23, 'Santa Maria', 397782, '16907'),

                                               (4969, 23, 'Santa Maria do Herval', 1174291, '16956'),

                                               (4970, 23, 'Santa Rosa', 1600781, '17202'),

                                               (4971, 23, 'Santa Tereza', 1782446, '17251'),

                                                (4972, 23, 'Santa Vitória do Palmar', 547392, '17301'),

                                               (4973, 23, 'Santana da Boa Vista', 320873, '17004'),

                                               (4974, 23, 'Sant Ana do Livramento', 1602595, '17103'),

                                               (4975, 23, 'Santiago', 518835, '17400'),

                                               (4976, 23, 'Santo Ângelo', 697641, '17509'),

                                               (4977, 23, 'Santo Antônio da Patrulha', 919392, '17608'),

                                               (4978, 23, 'Santo Antônio das Missões', 444072, '17707'),

                                               (4979, 23, 'Santo Antônio do Palma', 1879802, '17558'),

                                               (4980, 23, 'Santo Antônio do Planalto', 1963222, '17756'),

                                               (4981, 23, 'Santo Augusto', 667880, '17806'),

                                               (4982, 23, 'Santo Cristo', 642024, '17905'),

                                               (4983, 23, 'Santo Expedito do Sul', 1200018, '17954'),

                                               (4984, 23, 'São Borja', 1079107, '18002'),

                                               (4985, 23, 'São Domingos do Sul', 1631069, '18051'),

                                               (4986, 23, 'São Francisco de Assis', 589311, '18101'),

                                               (4987, 23, 'São Francisco de Paula', 762963, '18200'),

                                               (4988, 23, 'São Gabriel', 1077172, '18309'),

                                               (4989, 23, 'São Jerônimo', 881545, '18408'),

                                               (4990, 23, 'São João da Urtiga', 178766, '18424'),

                                               (4991, 23, 'São João do Polêsine', 342992, '18432'),

                                               (4992, 23, 'São Jorge', 1372781, '18440'),

                                               (4993, 23, 'São José das Missões', 195573, '18457'),

                                               (4994, 23, 'São José do Herval', 1973586, '18465'),

                                               (4995, 23, 'São José do Hortêncio', 1840492, '18481'),

                                               (4996, 23, 'São José do Inhacorá', 1683471, '18499'),

                                               (4997, 23, 'São José do Norte', 1273455, '18507'),

                                               (4998, 23, 'São José do Ouro', 1791428, '18606'),

                                               (4999, 23, 'São José do Sul', 1034640, '18614'),

                                               (5000, 23, 'São José dos Ausentes', 1086122, '18622'),

                                               (5001, 23, 'São Leopoldo', 1478581, '18705'),

                                               (5002, 23, 'São Lourenço do Sul', 940820, '18804'),

                                               (5003, 23, 'São Luiz Gonzaga', 1935922, '18903'),

                                               (5004, 23, 'São Marcos', 1098221, '19000'),

                                               (5005, 23, 'São Martinho', 719367, '19109'),

                                               (5006, 23, 'São Martinho da Serra', 596612, '19125');

 

                INSERT INTO cidades (codCidade, codEstado, cidade, habitantes, codIBGE)

                VALUES (5007, 23, 'São Miguel das Missões', 440516, '19158'),

                                               (5008, 23, 'São Nicolau', 977338, '19208'),

                                               (5009, 23, 'São Paulo das Missões', 1429557, '19307'),

                                               (5010, 23, 'São Pedro da Serra', 1142998, '19356'),

                                               (5011, 23, 'São Pedro das Missões', 713934, '19364'),

                                               (5012, 23, 'São Pedro do Butiá', 167046, '19372'),

                                               (5013, 23, 'São Pedro do Sul', 453622, '19406'),

                                               (5014, 23, 'São Sebastião do Caí', 924358, '19505'),

                                               (5015, 23, 'São Sepé', 175052, '19604'),

                                               (5016, 23, 'São Valentim', 1536924, '19703'),

                                               (5017, 23, 'São Valentim do Sul', 1387826, '19711'),

                                               (5018, 23, 'São Valério do Sul', 225593, '19737'),

                                               (5019, 23, 'São Vendelino', 977591, '19752'),

                                               (5020, 23, 'São Vicente do Sul', 1769429, '19802'),

                                               (5021, 23, 'Sapiranga', 1166962, '19901'),

                                               (5022, 23, 'Sapucaia do Sul', 1393386, '20008'),

                                               (5023, 23, 'Sarandi', 458562, '20107'),

                                               (5024, 23, 'Seberi', 1259437, '20206'),

                                               (5025, 23, 'Sede Nova', 1257479, '20230'),

                                               (5026, 23, 'Segredo', 465962, '20263'),

                                               (5027, 23, 'Selbach', 435692, '20305'),

                                               (5028, 23, 'Senador Salgado Filho', 1436466, '20321'),

                                               (5029, 23, 'Sentinela do Sul', 77690, '20354'),

                                               (5030, 23, 'Serafina Corrêa', 1181346, '20404'),

                                               (5031, 23, 'Sério', 1375328, '20453'),

                                               (5032, 23, 'Sertão', 523774, '20503'),

                                               (5033, 23, 'Sertão Santana', 571332, '20552'),

                                               (5034, 23, 'Sete de Setembro', 80836, '20578'),

                                               (5035, 23, 'Severiano de Almeida', 1254344, '20602'),

                                               (5036, 23, 'Silveira Martins', 346279, '20651'),

                                               (5037, 23, 'Sinimbu', 1572413, '20677'),

                                               (5038, 23, 'Sobradinho', 903062, '20701'),

                                               (5039, 23, 'Soledade', 1983022, '20800'),

                                               (5040, 23, 'Tabaí', 368234, '20859'),

                                               (5041, 23, 'Tapejara', 1677734, '20909'),

                                               (5042, 23, 'Tapera', 1837289, '21006'),

                                               (5043, 23, 'Tapes', 1495832, '21105'),

                                               (5044, 23, 'Taquara', 1144030, '21204'),

                                               (5045, 23, 'Taquari', 1361285, '21303'),

                                               (5046, 23, 'Taquaruçu do Sul', 1227212, '21329'),

                                               (5047, 23, 'Tavares', 1106375, '21352'),

                                               (5048, 23, 'Tenente Portela', 360912, '21402'),

                                               (5049, 23, 'Terra de Areia', 1299604, '21436'),

                                               (5050, 23, 'Teutônia', 1673574, '21451'),

                                               (5051, 23, 'Tio Hugo', 671777, '21469'),

                                               (5052, 23, 'Tiradentes do Sul', 925924, '21477'),

                                               (5053, 23, 'Toropi', 1839882, '21493'),

                                               (5054, 23, 'Torres', 1717746, '21501'),

                                               (5055, 23, 'Tramandaí', 1927671, '21600'),

                                               (5056, 23, 'Travesseiro', 1052622, '21626'),

                                               (5057, 23, 'Três Arroios', 77754, '21634'),

                                               (5058, 23, 'Três Cachoeiras', 620821, '21667'),

                                               (5059, 23, 'Três Coroas', 136648, '21709'),

                                               (5060, 23, 'Três de Maio', 1170244, '21808'),

                                               (5061, 23, 'Três Forquilhas', 1351415, '21832'),

                                               (5062, 23, 'Três Palmeiras', 1200225, '21857'),

                                               (5063, 23, 'Três Passos', 1810803, '21907'),

                                               (5064, 23, 'Trindade do Sul', 1085152, '21956'),

                                               (5065, 23, 'Triunfo', 1376659, '22004'),

                                               (5066, 23, 'Tucunduva', 1581401, '22103'),

                                               (5067, 23, 'Tunas', 243774, '22152'),

                                               (5068, 23, 'Tupanci do Sul', 747790, '22186'),

                                               (5069, 23, 'Tupanciretã', 1857788, '22202'),

                                               (5070, 23, 'Tupandi', 982286, '22251'),

                                               (5071, 23, 'Tuparendi', 1091082, '22301'),

                                               (5072, 23, 'Turuçu', 1506399, '22327'),

                                               (5073, 23, 'Ubiretama', 1847279, '22343'),

                                               (5074, 23, 'União da Serra', 1396762, '22350'),

                                               (5075, 23, 'Unistalda', 793826, '22376'),

                                               (5076, 23, 'Uruguaiana', 558792, '22400'),

                                               (5077, 23, 'Vacaria', 1484137, '22509'),

                                               (5078, 23, 'Vale do Sol', 1892780, '22533'),

                                               (5079, 23, 'Vale Real', 1139355, '22541'),

                                               (5080, 23, 'Vale Verde', 1734633, '22525'),

                                               (5081, 23, 'Vanini', 1643427, '22558'),

                                               (5082, 23, 'Venâncio Aires', 1156610, '22608'),

                                               (5083, 23, 'Vera Cruz', 227920, '22707'),

                                               (5084, 23, 'Veranópolis', 1722038, '22806'),

                                               (5085, 23, 'Vespasiano Correa', 1039763, '22855'),

                                               (5086, 23, 'Viadutos', 1632390, '22905'),

                                               (5087, 23, 'Viamão', 690923, '23002'),

                                               (5088, 23, 'Vicente Dutra', 588438, '23101'),

                                               (5089, 23, 'Victor Graeff', 297322, '23200'),

                                               (5090, 23, 'Vila Flores', 1644097, '23309'),

                                               (5091, 23, 'Vila Lângaro', 55753, '23358'),

                                               (5092, 23, 'Vila Maria', 1324727, '23408'),

                                               (5093, 23, 'Vila Nova do Sul', 1377972, '23457'),

                                               (5094, 23, 'Vista Alegre', 1738309, '23507'),

                                               (5095, 23, 'Vista Alegre do Prata', 1422147, '23606'),

                                               (5096, 23, 'Vista Gaúcha', 938804, '23705'),

                                               (5097, 23, 'Vitória das Missões', 124880, '23754'),

                                               (5098, 23, 'Westfalia', 355558, '23770'),

                                               (5099, 23, 'Xangri-lá', 781741, '23804'),

                                               (5100, 12, 'Água Clara', 681203, '00203'),

                                               (5101, 12, 'Alcinópolis', 1172149, '00252'),

                                               (5102, 12, 'Amambai', 1070444, '00609'),

                                               (5103, 12, 'Anastácio', 653388, '00708'),

                                               (5104, 12, 'Anaurilândia', 1654016, '00807'),

                                               (5105, 12, 'Angélica', 1969102, '00856'),

                                               (5106, 12, 'Antônio João', 421643, '00906'),

                                               (5107, 12, 'Aparecida do Taboado', 1389950, '01003'),

                                               (5108, 12, 'Aquidauana', 524138, '01102'),

                                               (5109, 12, 'Aral Moreira', 572470, '01243'),

                                               (5110, 12, 'Bandeirantes', 187277, '01508'),

                                               (5111, 12, 'Bataguassu', 1314346, '01904'),

                                               (5112, 12, 'Batayporã', 1623422, '02001'),

                                               (5113, 12, 'Bela Vista', 1863250, '02100'),

                                               (5114, 12, 'Bodoquena', 478065, '02159'),

                                               (5115, 12, 'Bonito', 1465327, '02209'),

                                               (5116, 12, 'Brasilândia', 25486, '02308'),

                                               (5117, 12, 'Caarapó', 1629794, '02407'),

                                               (5118, 12, 'Camapuã', 1868235, '02605'),

                                               (5119, 12, 'Campo Grande', 1851538, '02704'),

                                               (5120, 12, 'Caracol', 398719, '02803'),

                                               (5121, 12, 'Cassilândia', 1666889, '02902'),

                                               (5122, 12, 'Chapadão do Sul', 783152, '02951'),

                                               (5123, 12, 'Corguinho', 1775259, '03108'),

                                               (5124, 12, 'Coronel Sapucaia', 809449, '03157'),

                                               (5125, 12, 'Corumbá', 963902, '03207'),

                                               (5126, 12, 'Costa Rica', 1668145, '03256'),

                                               (5127, 12, 'Coxim', 363692, '03306'),

                                               (5128, 12, 'Deodápolis', 1671438, '03454'),

                                               (5129, 12, 'Dois Irmãos do Buriti', 1417533, '03488'),

                                               (5130, 12, 'Douradina', 1761297, '03504'),

                                               (5131, 12, 'Dourados', 1154420, '03702'),

                                               (5132, 12, 'Eldorado', 1978270, '03751'),

                                               (5133, 12, 'Fátima do Sul', 371048, '03801'),

                                               (5134, 12, 'Figueirão', 1451272, '03900'),

                                               (5135, 12, 'Glória de Dourados', 681746, '04007'),

                                               (5136, 12, 'Guia Lopes da Laguna', 819872, '04106'),

                                               (5137, 12, 'Iguatemi', 1813623, '04304'),

                                               (5138, 12, 'Inocência', 1180561, '04403'),

                                               (5139, 12, 'Itaporã', 854688, '04502'),

                                               (5140, 12, 'Itaquiraí', 1823154, '04601'),

                                               (5141, 12, 'Ivinhema', 1604198, '04700'),

                                               (5142, 12, 'Japorã', 893321, '04809'),

                                               (5143, 12, 'Jaraguari', 738214, '04908'),

                                               (5144, 12, 'Jardim', 1505565, '05004'),

                                               (5145, 12, 'Jateí', 1364889, '05103'),

                                               (5146, 12, 'Juti', 737862, '05152'),

                                               (5147, 12, 'Ladário', 1804706, '05202'),

                                               (5148, 12, 'Laguna Carapã', 556967, '05251'),

                                               (5149, 12, 'Maracaju', 1801151, '05400'),

                                               (5150, 12, 'Miranda', 1555307, '05608'),

                                               (5151, 12, 'Mundo Novo', 725710, '05681'),

                                               (5152, 12, 'Naviraí', 91728, '05707'),

                                               (5153, 12, 'Nioaque', 1204104, '05806'),

                                               (5154, 12, 'Nova Alvorada do Sul', 1886224, '06002'),

                                               (5155, 12, 'Nova Andradina', 1306243, '06200'),

                                               (5156, 12, 'Novo Horizonte do Sul', 784175, '06259'),

                                               (5157, 12, 'Paranaíba', 1239614, '06309'),

                                                (5158, 12, 'Paranhos', 621660, '06358'),

                                               (5159, 12, 'Pedro Gomes', 966365, '06408'),

                                               (5160, 12, 'Ponta Porã', 1961939, '06606'),

                                               (5161, 12, 'Porto Murtinho', 171196, '06903'),

                                               (5162, 12, 'Ribas do Rio Pardo', 349478, '07109'),

                                               (5163, 12, 'Rio Brilhante', 1729398, '07208'),

                                               (5164, 12, 'Rio Negro', 30114, '07307'),

                                               (5165, 12, 'Rio Verde de Mato Grosso', 1117935, '07406'),

                                               (5166, 12, 'Rochedo', 1883484, '07505'),

                                               (5167, 12, 'Santa Rita do Pardo', 404241, '07554'),

                                               (5168, 12, 'São Gabriel do Oeste', 1705562, '07695'),

                                               (5169, 12, 'Selvíria', 124336, '07802'),

                                               (5170, 12, 'Sete Quedas', 1819304, '07703'),

                                               (5171, 12, 'Sidrolândia', 1449575, '07901'),

                                               (5172, 12, 'Sonora', 1917423, '07935'),

                                               (5173, 12, 'Tacuru', 93013, '07950'),

                                               (5174, 12, 'Taquarussu', 1624662, '07976'),

                                               (5175, 12, 'Terenos', 886632, '08008'),

                                               (5176, 12, 'Três Lagoas', 653237, '08305'),

                                               (5177, 12, 'Vicentina', 414358, '08404'),

                                               (5178, 13, 'Acorizal', 1412670, '00102'),

                                               (5179, 13, 'Água Boa', 1858655, '00201'),

                                               (5180, 13, 'Alta Floresta', 656284, '00250'),

                                               (5181, 13, 'Alto Araguaia', 1120537, '00300'),

                                               (5182, 13, 'Alto Boa Vista', 1711238, '00359'),

                                               (5183, 13, 'Alto Garças', 861843, '00409'),

                                               (5184, 13, 'Alto Paraguai', 488005, '00508'),

                                               (5185, 13, 'Alto Taquari', 616722, '00607'),

                                               (5186, 13, 'Apiacás', 1889247, '00805'),

                                               (5187, 13, 'Araguaiana', 315464, '01001'),

                                               (5188, 13, 'Araguainha', 63862, '01209'),

                                               (5189, 13, 'Araputanga', 855563, '01258'),

                                               (5190, 13, 'Arenápolis', 793419, '01308'),

                                               (5191, 13, 'Aripuanã', 1972787, '01407'),

                                               (5192, 13, 'Barão de Melgaço', 1447252, '01605'),

                                               (5193, 13, 'Barra do Bugres', 1861134, '01704'),

                                               (5194, 13, 'Barra do Garças', 1251222, '01803'),

                                               (5195, 13, 'Bom Jesus do Araguaia', 998594, '01852'),

                                               (5196, 13, 'Brasnorte', 1682223, '01902'),

                                               (5197, 13, 'Cáceres', 1417446, '02504'),

                                               (5198, 13, 'Campinápolis', 119079, '02603'),

                                               (5199, 13, 'Campo Novo do Parecis', 1596788, '02637'),

                                               (5200, 13, 'Campo Verde', 1227141, '02678'),

                                               (5201, 13, 'Campos de Júlio', 171322, '02686'),

                                               (5202, 13, 'Canabrava do Norte', 1884890, '02694'),

                                               (5203, 13, 'Canarana', 1323909, '02702'),

                                               (5204, 13, 'Carlinda', 1742984, '02793'),

                                               (5205, 13, 'Castanheira', 700365, '02850'),

                                               (5206, 13, 'Chapada dos Guimarães', 790292, '03007'),

                                               (5207, 13, 'Cláudia', 1632119, '03056'),

                                               (5208, 13, 'Cocalinho', 32564, '03106'),

                                               (5209, 13, 'Colíder', 66468, '03205'),

                                               (5210, 13, 'Colniza', 259898, '03254'),

                                               (5211, 13, 'Comodoro', 1970770, '03304'),

                                               (5212, 13, 'Confresa', 1222288, '03353'),

                                               (5213, 13, 'Conquista D Oeste', 437836, '03361'),

                                               (5214, 13, 'Cotriguaçu', 1040466, '03379'),

                                               (5215, 13, 'Cuiabá', 159258, '03403'),

                                               (5216, 13, 'Curvelândia', 1241115, '03437'),

                                               (5217, 13, 'Denise', 1699738, '03452'),

                                               (5218, 13, 'Diamantino', 1368802, '03502'),

                                               (5219, 13, 'Dom Aquino', 838907, '03601'),

                                               (5220, 13, 'Feliz Natal', 1987463, '03700'),

                                               (5221, 13, 'Figueirópolis D Oeste', 1511085, '03809'),

                                               (5222, 13, 'Gaúcha do Norte', 1327284, '03858'),

                                               (5223, 13, 'General Carneiro', 169473, '03908'),

                                               (5224, 13, 'Glória D Oeste', 1882090, '03957'),

                                               (5225, 13, 'Guarantã do Norte', 1840032, '04104'),

                                               (5226, 13, 'Guiratinga', 810280, '04203'),

                                               (5227, 13, 'Indiavaí', 457165, '04500'),

                                               (5228, 13, 'Ipiranga do Norte', 968436, '04526'),

                                               (5229, 13, 'Itanhangá', 165613, '04542'),

                                               (5230, 13, 'Itaúba', 330686, '04559'),

                                               (5231, 13, 'Itiquira', 774621, '04609'),

                                               (5232, 13, 'Jaciara', 1513063, '04807'),

                                               (5233, 13, 'Jangada', 408033, '04906'),

                                               (5234, 13, 'Jauru', 1898008, '05002'),

                                               (5235, 13, 'Juara', 325412, '05101'),

                                               (5236, 13, 'Juína', 652036, '05150'),

                                               (5237, 13, 'Juruena', 1539624, '05176'),

                                               (5238, 13, 'Juscimeira', 1334855, '05200'),

                                               (5239, 13, 'Lambari D Oeste', 1189844, '05234'),

                                               (5240, 13, 'Lucas do Rio Verde', 1772788, '05259'),

                                               (5241, 13, 'Luciara', 289350, '05309'),

                                               (5242, 13, 'Marcelândia', 11888, '05580'),

                                               (5243, 13, 'Matupá', 810006, '05606'),

                                               (5244, 13, 'Mirassol d Oeste', 1944033, '05622'),

                                               (5245, 13, 'Nobres', 1410160, '05903'),

                                               (5246, 13, 'Nortelândia', 1798206, '06000'),

                                               (5247, 13, 'Nossa Senhora do Livramento', 57797, '06109'),

                                               (5248, 13, 'Nova Bandeirantes', 371875, '06158'),

                                               (5249, 13, 'Nova Brasilândia', 1824410, '06208'),

                                               (5250, 13, 'Nova Canaã do Norte', 500007, '06216'),

                                               (5251, 13, 'Nova Guarita', 1019394, '08808'),

                                               (5252, 13, 'Nova Lacerda', 384711, '06182'),

                                               (5253, 13, 'Nova Marilândia', 577309, '08857'),

                                               (5254, 13, 'Nova Maringá', 1335407, '08907'),

                                               (5255, 13, 'Nova Monte Verde', 1385260, '08956'),

                                               (5256, 13, 'Nova Mutum', 1579894, '06224'),

                                               (5257, 13, 'Nova Nazaré', 463727, '06174'),

                                               (5258, 13, 'Nova Olímpia', 1641199, '06232'),

                                               (5259, 13, 'Nova Santa Helena', 1574699, '06190'),

                                               (5260, 13, 'Nova Ubiratã', 677911, '06240'),

                                               (5261, 13, 'Nova Xavantina', 521966, '06257'),

                                               (5262, 13, 'Novo Horizonte do Norte', 1917893, '06273'),

                                               (5263, 13, 'Novo Mundo', 1474089, '06265'),

                                               (5264, 13, 'Novo Santo Antônio', 1633524, '06315'),

                                               (5265, 13, 'Novo São Joaquim', 1036941, '06281'),

                                               (5266, 13, 'Paranaíta', 1336597, '06299'),

                                               (5267, 13, 'Paranatinga', 21234, '06307'),

                                               (5268, 13, 'Pedra Preta', 1911802, '06372'),

                                               (5269, 13, 'Peixoto de Azevedo', 1009072, '06422'),

                                               (5270, 13, 'Planalto da Serra', 1970663, '06455'),

                                               (5271, 13, 'Poconé', 12741, '06505'),

                                               (5272, 13, 'Pontal do Araguaia', 76227, '06653'),

                                               (5273, 13, 'Ponte Branca', 1125856, '06703'),

                                               (5274, 13, 'Pontes e Lacerda', 249215, '06752'),

                                               (5275, 13, 'Porto Alegre do Norte', 1395414, '06778'),

                                               (5276, 13, 'Porto dos Gaúchos', 1782041, '06802'),

                                               (5277, 13, 'Porto Esperidião', 1936085, '06828'),

                                               (5278, 13, 'Porto Estrela', 841266, '06851'),

                                               (5279, 13, 'Poxoréo', 1356089, '07008'),

                                               (5280, 13, 'Primavera do Leste', 326201, '07040'),

                                               (5281, 13, 'Querência', 867113, '07065'),

                                               (5282, 13, 'Reserva do Cabaçal', 1745582, '07156'),

                                               (5283, 13, 'Ribeirão Cascalheira', 815596, '07180'),

                                               (5284, 13, 'Ribeirãozinho', 1136225, '07198'),

                                               (5285, 13, 'Rio Branco', 1086936, '07206'),

                                               (5286, 13, 'Rondolândia', 1677962, '07578'),

                                               (5287, 13, 'Rondonópolis', 626931, '07602'),

                                               (5288, 13, 'Rosário Oeste', 1976844, '07701'),

                                               (5289, 13, 'Salto do Céu', 571787, '07750'),

                                               (5290, 13, 'Santa Carmem', 1156771, '07248'),

                                               (5291, 13, 'Santa Cruz do Xingu', 1357738, '07743'),

                                               (5292, 13, 'Santa Rita do Trivelato', 366857, '07768'),

                                               (5293, 13, 'Santa Terezinha', 1197473, '07776'),

                                                (5294, 13, 'Santo Afonso', 1540267, '07263'),

                                               (5295, 13, 'Santo Antônio do Leste', 35770, '07792'),

                                               (5296, 13, 'Santo Antônio do Leverger', 875272, '07800'),

                                               (5297, 13, 'São Félix do Araguaia', 1043259, '07859'),

                                               (5298, 13, 'São José do Povo', 115345, '07297'),

                                               (5299, 13, 'São José do Rio Claro', 942089, '07305'),

                                               (5300, 13, 'São José do Xingu', 227265, '07354'),

                                               (5301, 13, 'São José dos Quatro Marcos', 688829, '07107'),

                                               (5302, 13, 'São Pedro da Cipa', 273259, '07404'),

                                               (5303, 13, 'Sapezal', 1146511, '07875'),

                                               (5304, 13, 'Serra Nova Dourada', 43577, '07883'),

                                               (5305, 13, 'Sinop', 1891856, '07909'),

                                               (5306, 13, 'Sorriso', 1192759, '07925'),

                                               (5307, 13, 'Tabaporã', 298871, '07941'),

                                               (5308, 13, 'Tangará da Serra', 1909149, '07958'),

                                               (5309, 13, 'Tapurah', 434934, '08006'),

                                               (5310, 13, 'Terra Nova do Norte', 1625239, '08055'),

                                               (5311, 13, 'Tesouro', 1302274, '08105'),

                                               (5312, 13, 'Torixoréu', 362846, '08204'),

                                               (5313, 13, 'União do Sul', 1277296, '08303'),

                                               (5314, 13, 'Vale de São Domingos', 1043391, '08352'),

                                               (5315, 13, 'Várzea Grande', 654065, '08402'),

                                               (5316, 13, 'Vera', 1560491, '08501'),

                                               (5317, 13, 'Vila Bela da Santíssima Trindade', 1149645, '05507'),

                                               (5318, 13, 'Vila Rica', 520075, '08600'),

                                               (5319, 9, 'Abadia de Goiás', 1227309, '00050'),

                                               (5320, 9, 'Abadiânia', 570497, '00100'),

                                               (5321, 9, 'Acreúna', 1030704, '00134'),

                                               (5322, 9, 'Adelândia', 986085, '00159'),

                                               (5323, 9, 'Água Fria de Goiás', 1642068, '00175'),

                                               (5324, 9, 'Água Limpa', 1103672, '00209'),

                                               (5325, 9, 'Águas Lindas de Goiás', 1822741, '00258'),

                                               (5326, 9, 'Alexânia', 527864, '00308'),

                                               (5327, 9, 'Aloândia', 1926748, '00506'),

                                               (5328, 9, 'Alto Horizonte', 1631878, '00555'),

                                               (5329, 9, 'Alto Paraíso de Goiás', 1428275, '00605'),

                                               (5330, 9, 'Alvorada do Norte', 1837527, '00803'),

                                               (5331, 9, 'Amaralina', 1190801, '00829'),

                                               (5332, 9, 'Americano do Brasil', 623446, '00852'),

                                               (5333, 9, 'Amorinópolis', 750675, '00902'),

                                               (5334, 9, 'Anápolis', 583057, '01108'),

                                               (5335, 9, 'Anhanguera', 436652, '01207'),

                                               (5336, 9, 'Anicuns', 1202607, '01306'),

                                               (5337, 9, 'Aparecida de Goiânia', 192714, '01405'),

                                               (5338, 9, 'Aparecida do Rio Doce', 1214803, '01454'),

                                               (5339, 9, 'Aporé', 1457142, '01504'),

                                               (5340, 9, 'Araçu', 1676557, '01603'),

                                               (5341, 9, 'Aragarças', 1157123, '01702'),

                                               (5342, 9, 'Aragoiânia', 1943728, '01801'),

                                               (5343, 9, 'Araguapaz', 612248, '02155'),

                                               (5344, 9, 'Arenópolis', 1643593, '02353'),

                                               (5345, 9, 'Aruanã', 1636256, '02502'),

                                               (5346, 9, 'Aurilândia', 53410, '02601'),

                                               (5347, 9, 'Avelinópolis', 1888985, '02809'),

                                               (5348, 9, 'Baliza', 168022, '03104'),

                                               (5349, 9, 'Barro Alto', 1846934, '03203'),

                                               (5350, 9, 'Bela Vista de Goiás', 1133857, '03302'),

                                               (5351, 9, 'Bom Jardim de Goiás', 885679, '03401'),

                                               (5352, 9, 'Bom Jesus de Goiás', 285460, '03500'),

                                               (5353, 9, 'Bonfinópolis', 1239900, '03559'),

                                               (5354, 9, 'Bonópolis', 902006, '03575'),

                                               (5355, 9, 'Brazabrantes', 597148, '03609'),

                                               (5356, 9, 'Britânia', 1073513, '03807'),

                                               (5357, 9, 'Buriti Alegre', 1320633, '03906'),

                                               (5358, 9, 'Buriti de Goiás', 1129752, '03939'),

                                               (5359, 9, 'Buritinópolis', 775758, '03962'),

                                               (5360, 9, 'Cabeceiras', 1772009, '04003'),

                                               (5361, 9, 'Cachoeira Alta', 704283, '04102'),

                                               (5362, 9, 'Cachoeira de Goiás', 1432418, '04201'),

                                               (5363, 9, 'Cachoeira Dourada', 1735998, '04250'),

                                               (5364, 9, 'Caçu', 1703812, '04300'),

                                               (5365, 9, 'Caiapônia', 991648, '04409'),

                                               (5366, 9, 'Caldas Novas', 1776907, '04508'),

                                               (5367, 9, 'Caldazinha', 1453036, '04557'),

                                               (5368, 9, 'Campestre de Goiás', 1293645, '04607'),

                                               (5369, 9, 'Campinaçu', 827058, '04656'),

                                               (5370, 9, 'Campinorte', 1753959, '04706'),

                                               (5371, 9, 'Campo Alegre de Goiás', 635994, '04805'),

                                               (5372, 9, 'Campo Limpo de Goiás', 779757, '04854'),

                                               (5373, 9, 'Campos Belos', 91250, '04904'),

                                               (5374, 9, 'Campos Verdes', 502710, '04953'),

                                               (5375, 9, 'Carmo do Rio Verde', 345190, '05000'),

                                               (5376, 9, 'Castelândia', 1533600, '05059'),

                                               (5377, 9, 'Catalão', 1767515, '05109'),

                                               (5378, 9, 'Caturaí', 689515, '05208'),

                                               (5379, 9, 'Cavalcante', 1369647, '05307'),

                                               (5380, 9, 'Ceres', 1789076, '05406'),

                                               (5381, 9, 'Cezarina', 869993, '05455'),

                                               (5382, 9, 'Chapadão do Céu', 411250, '05471'),

                                               (5383, 9, 'Cidade Ocidental', 1673593, '05497'),

                                               (5384, 9, 'Cocalzinho de Goiás', 1689862, '05513'),

                                               (5385, 9, 'Colinas do Sul', 1332281, '05521'),

                                               (5386, 9, 'Córrego do Ouro', 187980, '05703'),

                                               (5387, 9, 'Corumbá de Goiás', 1379841, '05802'),

                                               (5388, 9, 'Corumbaíba', 1632302, '05901'),

                                               (5389, 9, 'Cristalina', 1477698, '06206'),

                                               (5390, 9, 'Cristianópolis', 749935, '06305'),

                                               (5391, 9, 'Crixás', 1963762, '06404'),

                                               (5392, 9, 'Cromínia', 1277148, '06503'),

                                               (5393, 9, 'Cumari', 439036, '06602'),

                                               (5394, 9, 'Damianópolis', 1942782, '06701'),

                                               (5395, 9, 'Damolândia', 1321728, '06800'),

                                               (5396, 9, 'Davinópolis', 919026, '06909'),

                                               (5397, 9, 'Diorama', 139436, '07105'),

                                               (5398, 9, 'Divinópolis de Goiás', 983423, '08301'),

                                               (5399, 9, 'Doverlândia', 1454724, '07253'),

                                               (5400, 9, 'Edealina', 1953773, '07352'),

                                               (5401, 9, 'Edéia', 734431, '07402'),

                                               (5402, 9, 'Estrela do Norte', 1662336, '07501'),

                                               (5403, 9, 'Faina', 443253, '07535'),

                                               (5404, 9, 'Fazenda Nova', 51068, '07600'),

                                               (5405, 9, 'Firminópolis', 1043427, '07808'),

                                               (5406, 9, 'Flores de Goiás', 804602, '07907'),

                                               (5407, 9, 'Formosa', 1481539, '08004'),

                                               (5408, 9, 'Formoso', 1293110, '08103'),

                                               (5409, 9, 'Gameleira de Goiás', 1372502, '08152'),

                                               (5410, 9, 'Goianápolis', 1482562, '08400'),

                                               (5411, 9, 'Goiandira', 383351, '08509'),

                                               (5412, 9, 'Goianésia', 615236, '08608'),

                                               (5413, 9, 'Goiânia', 1922513, '08707'),

                                               (5414, 9, 'Goianira', 870890, '08806'),

                                               (5415, 9, 'Goiás', 345757, '08905'),

                                               (5416, 9, 'Goiatuba', 649622, '09101'),

                                               (5417, 9, 'Gouvelândia', 1658580, '09150'),

                                               (5418, 9, 'Guapó', 1677455, '09200'),

                                               (5419, 9, 'Guaraíta', 1793785, '09291'),

                                               (5420, 9, 'Guarani de Goiás', 489677, '09408'),

                                               (5421, 9, 'Guarinos', 1048917, '09457'),

                                               (5422, 9, 'Heitoraí', 317453, '09606'),

                                               (5423, 9, 'Hidrolândia', 722065, '09705'),

                                               (5424, 9, 'Hidrolina', 560265, '09804'),

                                               (5425, 9, 'Iaciara', 59875, '09903'),

                                               (5426, 9, 'Inaciolândia', 1072947, '09937'),

                                               (5427, 9, 'Indiara', 1053472, '09952'),

                                               (5428, 9, 'Inhumas', 172263, '10000'),

                                               (5429, 9, 'Ipameri', 596082, '10109'),

                                               (5430, 9, 'Ipiranga de Goiás', 1439802, '10158'),

                                               (5431, 9, 'Iporá', 1685941, '10208'),

                                               (5432, 9, 'Israelândia', 332858, '10307'),

                                               (5433, 9, 'Itaberaí', 1763391, '10406'),

                                               (5434, 9, 'Itaguari', 368709, '10562'),

                                               (5435, 9, 'Itaguaru', 1409882, '10604'),

                                               (5436, 9, 'Itajá', 1391021, '10802'),

                                               (5437, 9, 'Itapaci', 836615, '10901'),

                                               (5438, 9, 'Itapirapuã', 743651, '11008'),

                                               (5439, 9, 'Itapuranga', 769911, '11206'),

                                               (5440, 9, 'Itarumã', 1330320, '11305'),

                                               (5441, 9, 'Itauçu', 1572340, '11404'),

                                               (5442, 9, 'Itumbiara', 49601, '11503'),

                                               (5443, 9, 'Ivolândia', 538716, '11602'),

                                               (5444, 9, 'Jandaia', 1172322, '11701'),

                                               (5445, 9, 'Jaraguá', 1713266, '11800'),

                                               (5446, 9, 'Jataí', 1759463, '11909'),

                                               (5447, 9, 'Jaupaci', 1927425, '12006'),

                                               (5448, 9, 'Jesúpolis', 671715, '12055'),

                                               (5449, 9, 'Joviânia', 336620, '12105'),

                                               (5450, 9, 'Jussara', 731938, '12204'),

                                               (5451, 9, 'Lagoa Santa', 1609750, '12253'),

                                               (5452, 9, 'Leopoldo de Bulhões', 1185991, '12303'),

                                               (5453, 9, 'Luziânia', 752537, '12501'),

                                               (5454, 9, 'Mairipotaba', 235083, '12600'),

                                               (5455, 9, 'Mambaí', 564291, '12709'),

                                               (5456, 9, 'Mara Rosa', 450411, '12808'),

                                               (5457, 9, 'Marzagão', 1696589, '12907'),

                                               (5458, 9, 'Matrinchã', 1196538, '12956'),

                                               (5459, 9, 'Maurilândia', 1239061, '13004'),

                                               (5460, 9, 'Mimoso de Goiás', 754301, '13053'),

                                               (5461, 9, 'Minaçu', 1664503, '13087'),

                                               (5462, 9, 'Mineiros', 355458, '13103'),

                                               (5463, 9, 'Moiporá', 366575, '13400'),

                                               (5464, 9, 'Monte Alegre de Goiás', 441679, '13509'),

                                               (5465, 9, 'Montes Claros de Goiás', 915338, '13707'),

                                               (5466, 9, 'Montividiu', 880316, '13756'),

                                               (5467, 9, 'Montividiu do Norte', 592108, '13772'),

                                               (5468, 9, 'Morrinhos', 1499481, '13806'),

                                               (5469, 9, 'Morro Agudo de Goiás', 1201808, '13855'),

                                               (5470, 9, 'Mossâmedes', 1861463, '13905'),

                                               (5471, 9, 'Mozarlândia', 705128, '14002'),

                                               (5472, 9, 'Mundo Novo', 1242962, '14051'),

                                               (5473, 9, 'Mutunópolis', 762174, '14101'),

                                               (5474, 9, 'Nazário', 1708041, '14408'),

                                               (5475, 9, 'Nerópolis', 1796404, '14507'),

                                               (5476, 9, 'Niquelândia', 1243083, '14606'),

                                               (5477, 9, 'Nova América', 1169980, '14705'),

                                               (5478, 9, 'Nova Aurora', 1840251, '14804'),

                                               (5479, 9, 'Nova Crixás', 1858359, '14838'),

                                               (5480, 9, 'Nova Glória', 638701, '14861'),

                                               (5481, 9, 'Nova Iguaçu de Goiás', 1682960, '14879'),

                                               (5482, 9, 'Nova Roma', 992153, '14903'),

                                               (5483, 9, 'Nova Veneza', 369497, '15009'),

                                               (5484, 9, 'Novo Brasil', 1782440, '15207'),

                                               (5485, 9, 'Novo Gama', 1703081, '15231'),

                                               (5486, 9, 'Novo Planalto', 1379638, '15256'),

                                               (5487, 9, 'Orizona', 1768485, '15306'),

                                               (5488, 9, 'Ouro Verde de Goiás', 506468, '15405'),

                                               (5489, 9, 'Ouvidor', 1625652, '15504'),

                                               (5490, 9, 'Padre Bernardo', 1758858, '15603'),

                                               (5491, 9, 'Palestina de Goiás', 898016, '15652'),

                                               (5492, 9, 'Palmeiras de Goiás', 1856273, '15702'),

                                               (5493, 9, 'Palmelo', 1894924, '15801'),

                                               (5494, 9, 'Palminópolis', 43740, '15900'),

                                               (5495, 9, 'Panamá', 1419039, '16007'),

                                               (5496, 9, 'Paranaiguara', 1344859, '16304'),

                                               (5497, 9, 'Paraúna', 378312, '16403'),

                                               (5498, 9, 'Perolândia', 1043754, '16452'),

                                               (5499, 9, 'Petrolina de Goiás', 157255, '16809'),

                                               (5500, 9, 'Pilar de Goiás', 325530, '16908'),

                                               (5501, 9, 'Piracanjuba', 911807, '17104'),

                                               (5502, 9, 'Piranhas', 1357750, '17203'),

                                               (5503, 9, 'Pirenópolis', 1803186, '17302'),

                                               (5504, 9, 'Pires do Rio', 1670973, '17401'),

                                               (5505, 9, 'Planaltina', 1256066, '17609'),

                                               (5506, 9, 'Pontalina', 152305, '17708'),

                                               (5507, 9, 'Porangatu', 727491, '18003'),

                                               (5508, 9, 'Porteirão', 1741972, '18052'),

                                               (5509, 9, 'Portelândia', 691255, '18102'),

                                               (5510, 9, 'Posse', 1518849, '18300'),

                                               (5511, 9, 'Professor Jamil', 1718006, '18391'),

                                               (5512, 9, 'Quirinópolis', 1381630, '18508'),

                                               (5513, 9, 'Rialma', 1137686, '18607'),

                                               (5514, 9, 'Rianápolis', 1167421, '18706'),

                                               (5515, 9, 'Rio Quente', 409378, '18789'),

                                               (5516, 9, 'Rio Verde', 94623, '18805'),

                                               (5517, 9, 'Rubiataba', 206968, '18904'),

                                               (5518, 9, 'Sanclerlândia', 732525, '19001'),

                                               (5519, 9, 'Santa Bárbara de Goiás', 531469, '19100'),

                                               (5520, 9, 'Santa Cruz de Goiás', 474117, '19209'),

                                               (5521, 9, 'Santa Fé de Goiás', 717168, '19258'),

                                               (5522, 9, 'Santa Helena de Goiás', 1340641, '19308'),

                                               (5523, 9, 'Santa Isabel', 1737554, '19357'),

                                               (5524, 9, 'Santa Rita do Araguaia', 723170, '19407'),

                                               (5525, 9, 'Santa Rita do Novo Destino', 306775, '19456'),

                                               (5526, 9, 'Santa Rosa de Goiás', 355682, '19506'),

                                               (5527, 9, 'Santa Tereza de Goiás', 1262576, '19605'),

                                               (5528, 9, 'Santa Terezinha de Goiás', 1799148, '19704'),

                                               (5529, 9, 'Santo Antônio da Barra', 1337462, '19712'),

                                               (5530, 9, 'Santo Antônio de Goiás', 642446, '19738'),

                                               (5531, 9, 'Santo Antônio do Descoberto', 1150120, '19753'),

                                               (5532, 9, 'São Domingos', 1306274, '19803'),

                                               (5533, 9, 'São Francisco de Goiás', 1717078, '19902'),

                                               (5534, 9, 'São João da Paraúna', 895641, '20058'),

                                               (5535, 9, 'São João d Aliança', 1786670, '20009'),

                                               (5536, 9, 'São Luís de Montes Belos', 556915, '20108'),

                                               (5537, 9, 'São Luíz do Norte', 693791, '20157'),

                                               (5538, 9, 'São Miguel do Araguaia', 1739659, '20207'),

                                               (5539, 9, 'São Miguel do Passa Quatro', 276755, '20264'),

                                               (5540, 9, 'São Patrício', 1477282, '20280'),

                                               (5541, 9, 'São Simão', 701095, '20405'),

                                               (5542, 9, 'Senador Canedo', 1847739, '20454'),

                                               (5543, 9, 'Serranópolis', 325913, '20504'),

                                               (5544, 9, 'Silvânia', 1847408, '20603'),

                                               (5545, 9, 'Simolândia', 457235, '20686'),

                                               (5546, 9, 'Sítio d Abadia', 1427174, '20702'),

                                               (5547, 9, 'Taquaral de Goiás', 299043, '21007'),

                                               (5548, 9, 'Teresina de Goiás', 889910, '21080'),

                                               (5549, 9, 'Terezópolis de Goiás', 11991, '21197'),

                                               (5550, 9, 'Três Ranchos', 1347180, '21304'),

                                               (5551, 9, 'Trindade', 644517, '21403'),

                                               (5552, 9, 'Trombas', 355771, '21452'),

                                               (5553, 9, 'Turvânia', 585894, '21502'),

                                               (5554, 9, 'Turvelândia', 1880765, '21551'),

                                               (5555, 9, 'Uirapuru', 806968, '21577'),

                                               (5556, 9, 'Uruaçu', 1241946, '21601'),

                                               (5557, 9, 'Uruana', 870474, '21700'),

                                                (5558, 9, 'Urutaí', 1556230, '21809'),

                                               (5559, 9, 'Valparaíso de Goiás', 1181600, '21858'),

                                               (5560, 9, 'Varjão', 1855513, '21908'),

                                               (5561, 9, 'Vianópolis', 1944089, '22005'),

                                               (5562, 9, 'Vicentinópolis', 1929909, '22054'),

                                               (5563, 9, 'Vila Boa', 1923317, '22203'),

                                               (5564, 9, 'Vila Propício', 991312, '22302'),

                                               (5565, 7, 'Brasília', 1169672, '00108');

           

 -- Tabela empregados

 

 

INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES

                (517, 4286, 7, 'DENISE DOMINGUES MENDONCA', 10990.00),

                (518, 5437, 4, 'DEODORO DA FONSECA', 1813.00),

                (519, 650, 4, 'DERCI FORTES BRASIL', 9879.00),

                (520, 1269, 6, 'DERLI FORTES BRASIL', 2281.00),

                (521, 954, 3, 'DIDADO AZAMBUJA', 3837.00),

                (522, 5045, 7, 'DIDEROT', 12680.00);

    INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES          

                (523, 4699, 3, 'DIEGO BARRETO MENDONCA', 4579.00),

                (524, 260, 7, 'DIEGO BLANCO NETO', 5556.00),

                (525, 3818, 5, 'DIEGO BRASILIENSE KROTH', 10800.00),

                (526, 3167, 7, 'DIEGO DE LEAO PUFAL', 1535.00),

                (527, 2659, 5, 'DIEGO GONZALES BLANCO', 8125.00),

                (528, 3945, 3, 'DIEGO AHMED DE ASSIS BRASIL', 8631.00),

                (529, 2990, 7, 'DIEGO ROCHA MENDONCA', 3600.00),

                (530, 4893, 4, 'DIMITRI DE AVILA CERVO', 2521.00),

                (531, 4496, 4, 'DINA DE ASSIS BRASIL', 1281.00),

                (532, 4368, 7, 'DINA BRASIL MASSON', 9135.00),

                (533, 795, 5, 'DINORAH TEIXEIRA RODRIGUES', 8266.00),

                (534, 3337, 7, 'DIOGO DA SILVA', 3862.00),

                (535, 1037, 1, 'DIOGO DE ASSIS BRASIL', 10559.00),

                (536, 761, 6, 'DIOGO DE ASSIS BRASIL SOARES', 13195.00),

                (537, 4071, 1, 'DIOGO DE SILVES', 6372.00),

                (538, 5212, 4, 'DIOGO DE TEIVE', 1627.00),

                (539, 4297, 4, 'DIOGO RODRIGUES DE ASSIS BRASIL', 4856.00),

                (540, 4552, 7, 'DIOGO SILVA DE ASSIS BRASIL', 13277.00),

                (541, 991, 4, 'DIOGO SILVES', 6837.00);

   

                INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES

    (542, 1176, 1, 'DIOGO SOARES TAIBA', 7374.00),

                (543, 5239, 6, 'DIOGO ZOBARAN PEREIRA', 4744.00),

                (544, 4611, 5, 'DIOLINDA SILVEIRA', 6716.00),

                (545, 2366, 4, 'DIONIZIO MOREIRA LESSA', 10814.00),

                (546, 45, 6, 'DIRLEI DA MOTTA BRASIL', 5664.00),

                (547, 3499, 4, 'DITINHA', 4504.00),

                (548, 1923, 2, 'DIVA METELLO RODRIGUES', 8922.00),

                (549, 2725, 4, 'DIVA ROXO MIGLIORA', 12865.00),

                (550, 1703, 1, 'DIZZY GILLESPIE', 5008.00),

                (551, 576, 6, 'DOLORES DE ASSIS BRASIL', 7548.00),

                (552, 3900, 5, 'DOMICIO MARTINS BRASILIENSE', 10000.00),

                (553, 5250, 7, 'DOMINGAS FERNANDES', 9932.00),

                (554, 1871, 2, 'DOMINGAS FERNANDES MARIA DE PINHO', 3455.00),

                (555, 3885, 2, 'DOMINGAS SIMOES', 13421.00),

                (556, 4998, 5, 'DOMINGOS FRANCISCO DA SILVA', 6296.00),

                (557, 3638, 7, 'DOMINGOS GONCALVES CASSAO', 7786.00),

                (558, 2477, 4, 'DOMINGOS LEAO DE SA', 3684.00),

                (559, 1421, 1, 'DOMINGOS LEAO DE SA', 4721.00),

                (560, 727, 3, 'DOMINGOS RODRIGUES FIGUEIRA', 10125.00),

                (561, 4444, 1, 'DOMINGOS VAZ', 4162.00),

                (562, 3692, 5, 'DONA BRASILZINHA', 2284.00),

                (563, 1553, 1, 'DONA MARIA', 3077.00),

                (564, 2645, 5, 'DORA DA SILVEIRA BRASILIENSE', 5578.00),

                (565, 2674, 2, 'DORA DE ASSIS BRASIL E SILVA', 11216.00),

                (566, 2689, 2, 'DORALICE MARTINS', 1434.00),

                (567, 1761, 3, 'DORALICE SILVA RODRIGUES', 8776.00),

                (568, 4372, 6, 'DOUGLAS SILVA DE ASSIS BRASIL', 6685.00),

                (569, 4433, 6, 'DURVAL DE MORAES', 12210.00),

                (570, 4008, 6, 'EULER DARTAGNAN CARVALHO', 10036.00),

                (571, 3689, 5, 'EDNA MIRANDAOBLADEN', 1797.00),

                (572, 3849, 7, 'EDNA OBLADEN DE ASSIS BRASIL', 5530.00),

                (573, 1589, 7, 'EDNA MIRANDAOBLADEN', 2962.00),

                (574, 3899, 6, 'EDNARDO DAVILA MELLO', 3751.00),

                (575, 2113, 5, 'EDINARA BRASIL LEAL', 11839.00),

                (576, 5459, 3, 'EDILSON LOBO', 4014.00),

                (577, 4751, 5, 'EDISON MACHADO', 9916.00),

                (578, 5247, 3, 'EDISON PEREIRA DA COSTA', 6189.00),

                (579, 49, 4, 'EDMUNDO FONSECA DE ASSIS BRASIL', 10582.00),

                (580, 3464, 7, 'EDSON BALLEY', 9162.00),

                (581, 1212, 1, 'EDSON LUIS SOUTO', 12641.00),

                (582, 4826, 4, 'EDUARDO BRASILIENSE RAVASI', 6331.00),

                (583, 5534, 6, 'EDUARDO BRASILIENSE ROSSI', 11723.00),

                (584, 1945, 7, 'EDUARDO BUENO', 3336.00),

                (585, 60, 3, 'EDUARDO CARVALHO PEREIRA', 6555.00),

                (586, 318, 2, 'EDUARDO DE ASSIS BRASIL NETO', 6394.00),

                (587, 4640, 3, 'EDUARDO DE ASSIS BRASIL ROCHA', 11647.00),

                (588, 3383, 7, 'EDUARDO DE ASSIS BRASIL ROMAN', 2984.00),

                (589, 3777, 5, 'EDUARDO FIALHO ROMAN', 11966.00),

                (590, 2417, 4, 'EDUARDO DE ASSIS BRASIL', 7280.00),

                (591, 2404, 1, 'EDUARDO JOSE NAPOLES MAZZEI', 7737.00),

                (592, 3574, 1, 'EDUARDO MIGLIORA ZOBARAN', 8889.00),

                (593, 1325, 7, 'EDUARDO NARDIN DE ASSIS BRASIL', 9064.00),

                (594, 2413, 1, 'EDUARDO PESSANO RAVASI', 1169.00),

                (595, 1987, 3, 'EDUARDO SANTOS ZOBARAN FERREIRA', 11315.00),

                (596, 3252, 5, 'EDUARDO SILVA DE ASSIS BRASIL', 9202.00),

                (597, 1396, 6, 'EDUARDO WERNZ DE ASSIS BRASIL', 13468.00),

                (598, 865, 4, 'EDUARDO ZAEYEN', 2367.00),

                (599, 3277, 3, 'EGAS GOMES DE SOUSA', 7464.00),

                (600, 4281, 7, 'EGLANTINE JOBIM REIS', 2220.00),

                (601, 4191, 7, 'EL GRECO (pintor) ', 7256.00),

                (602, 4107, 4, 'ELAINE BRASILIENSE MACHADO', 11196.00),

                (603, 4985, 3, 'ELBA MENEZES DE MIRANDA', 4415.00),

                (604, 1105, 2, 'ELENICE SILVA DIAS', 11967.00),

                (605, 5039, 6, 'ELI DIS SANTOS FERNANDES', 12222.00),

                (606, 2174, 4, 'ELIANA VIEIRA', 10087.00),

                (607, 2619, 2, 'ELIANE ELIAS', 5762.00),

                (608, 1709, 4, 'ELIANE ISSA', 1944.00),

                (609, 1433, 2, 'ELIESER CESAR', 9873.00),

                (610, 1644, 7, 'ELISA DA POIAN FURLAN', 12809.00),

                (611, 962, 4, 'ELISA DE ASSIS BRASIL SASSI', 7474.00),

                (612, 5523, 4, 'ELISABETE AMELIA DE HESSE-DARMSTADT', 12466.00),

                (613, 552, 4, 'ELISABETH ROSSI', 2135.00),

                (614, 385, 1, 'ELIZABETH HAZIN', 9579.00),

                (615, 3142, 2, 'ELOA RIBEIRO', 7770.00),

                (616, 2580, 4, 'ELOISA DE ASSIS BRASIL', 2694.00),

                (617, 2239, 5, 'ELISIA CLAIR SEVERO', 8187.00),

                (618, 4657, 3, 'ELLENA MENEZES DE MIRANDA', 2174.00),

                (619, 2190, 1, 'ELOAH ALVES RODRIGUES', 10878.00),

                (620, 1291, 2, 'ELSA FERRUGEM', 11303.00);

    INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES          

                (621, 1779, 1, 'LSIO REIS SEVERO', 1443.00),

                (622, 1113, 1, 'ELSAMARA PERRONI BRASILIENSE', 7367.00),

                (623, 1879, 5, 'ELZA JOBIM', 4892.00),

                (624, 1315, 6, 'EMERENCIANA DE SA E ANDRADE', 13260.00),

                (625, 1391, 6, 'EMILIO DE ASSIS BRASIL', 10473.00),

                (626, 2360, 7, 'EMIGIO PAULO BRASILIENSE DOS SANTOS', 10517.00);

    INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES          

                (627, 1912, 4, 'EMILIO GARRASTAZU MDICI', 12744.00),

                (628, 591, 1, 'ENGRACIA NUNES', 6851.00),

                (629, 3688, 3, 'ENY DE ANDRADE SOARES', 4741.00),

                (630, 5261, 5, 'ENY MEDEIROS DE ANDRADE', 6266.00),

                (631, 3300, 1, 'ENZO MACHADO MULLER', 7035.00),

                (632, 5057, 4, 'RICA HELENA ROCHA DA SILVA', 2820.00),

                (633, 2286, 4, 'RICO DE ANDRADE SOARES', 2651.00),

                (634, 399, 7, 'ERICO DE ASSIS BRASIL', 4504.00),

                (635, 596, 3, 'RICO DE ASSIS BRASIL MAGOGA', 4287.00),

                (636, 5262, 3, 'RICO VERISSIMO', 3686.00),

                (637, 1808, 1, 'RIKA FERNANDA LEMES BOSCHIROLI', 8832.00),

                (638, 4945, 2, 'ERNA ROEHE TREIN', 5039.00),

                (639, 4072, 6, 'ERNESTINA ZOBARAN', 4917.00),

                (640, 684, 5, 'ERNESTO TIBIRICA PINHEIRO MACHADO', 6007.00),

                (641, 2954, 1, 'ERNANI OBLADEN', 9972.00),

                (642, 3009, 1, 'ERNESTO GEISEL', 2443.00),

                (643, 5130, 2, 'EPAMINONDAS COSTA LIMA', 9063.00),

                (644, 728, 4, 'ESPERANCA GOMES ERICO DE ANDRADE SOARES', 5642.00),

                (645, 50, 5, 'ESTAFANIA PASA BRUM', 1524.00),

                (646, 2863, 3, 'ESTELAMARI BARBIERI', 4875.00),

                (647, 1376, 6, 'EUCLIDES FIGUEIREDO', 13203.00),

                (648, 3264, 4, 'EUGENIO GOMES', 7455.00),

                (649, 3737, 5, 'EUGENIO GOMES', 1112.00),

                (650, 3179, 6, 'EUGENIO GOMES', 9275.00),

                (651, 724, 4, 'EULALIA MARQUES ROCHA', 2266.00),

                (652, 2443, 1, 'EULINA BRASILIENSE', 11214.00),

                (653, 1678, 2, 'EUNICE PEREIRA SOARES', 5417.00),

                (654, 3862, 7, 'EURICLES DE MATOS', 6039.00),

                (655, 5415, 6, 'EURICO ALVES', 3927.00),

                (656, 3089, 2, 'EURICO DE ASSIS BRASIL', 6196.00),

                (657, 558, 1, 'EURICO DE ASSIS BRASIL', 8493.00),

                (658, 2227, 1, 'EURIPEDES BRASIL MILANO', 10129.00),

                (659, 2683, 1, 'EURIPIDES BRASIL MILANO NETO EURYDICE', 11039.00),

                (660, 1797, 1, 'EVA BRASIL MILANO', 3870.00),

                (661, 2640, 7, 'EVA JOBIM', 13165.00),

                (662, 923, 5, 'EVELINE DE ASSIS BRASIL BORCHARDT', 6631.00),

                (663, 4758, 6, 'EVOTY REIS', 7286.00),

                (664, 2062, 5, 'EVOTY REIS SEVERO', 4059.00),

                (665, 3275, 2, 'FRANCISCO JOS NAPOLES MAZZEI', 7616.00),

                (666, 4086, 6, 'FABIANO DE ASSIS BRASIL SARMENTO', 8214.00),

                (667, 202, 6, 'FABIANO SANTOS SARMENTO', 6285.00),

                (668, 5091, 6, 'FABIO GUALBERTO ZOBARAN', 9053.00),

                (669, 4502, 3, 'FABIO SEBASTIAN DE ANDRADE KRAUTHŽUSER', 7376.00),

                (670, 426, 1, 'FAYAO SOARES', 1960.00),

                (671, 1256, 4, 'FAYAO THEODO', 5747.00),

                (672, 1321, 2, 'FAYAO THEODOSIO', 7865.00),

                (673, 5501, 4, 'FELICIANO VELHO OLDENBOURG', 10033.00),

                (674, 5005, 7, 'FELIPE V (rei da Espanha)', 9681.00),

                (675, 3030, 6, 'FELIPE BRASILIENSE ZANINE', 4795.00),

                (676, 1247, 6, 'FELIPE DE ANJOU', 8495.00),

                (677, 2351, 1, 'FELIPE COUTO DE ASSIS BRASIL', 3550.00),

                (678, 3261, 3, 'FELIPE MIGLIORA ZOBARAN', 3442.00),

                (679, 5158, 1, 'FELIPE ZANINE', 1578.00),

                (680, 3395, 4, 'FELIPE TCHERNOBILSKY ZOBARAN', 11584.00),

                (681, 4399, 2, 'FELIPE TEIXEIRA ZOBARAN', 2252.00),

                (682, 1985, 1, 'FELISBERTA DE ASSIS BRASIL', 10579.00),

                (683, 5497, 2, 'FELISBERTA DE ASSIS BRASIL', 7980.00),

                (684, 3603, 2, 'FELISBERTA DE ASSIS BRASIL SILVA', 6614.00),

                (685, 5541, 4, 'FLIX TIBIRICA DA SILVA', 10597.00),

                (686, 3067, 7, 'FERNANDA DE ABREU ASSIS BRASIL', 6882.00),

                (687, 1484, 2, 'FERNANDA PEROBELLI DE ASSIS BRASIL ROCHA', 4163.00),

                (688, 5076, 1, 'FERNANDA PEDROSO RAVAZI', 5543.00),

                (689, 912, 2, 'FERNANDA VIEIRA DE ASSIS BRASIL', 9194.00),

                (690, 759, 5, 'FERNANDO ABBOT', 3174.00),

                (691, 268, 6, 'FERNANDO BATINGA DE MENDONCA', 3554.00),

                (692, 4696, 7, 'FERNANDO CABRAL DE ASSIS BRASIL', 13066.00),

                (693, 4754, 5, 'FERNANDO CAMELIER', 3343.00),

                (694, 3271, 5, 'FERNANDO CORREA DE ASSIS BRASIL', 6107.00),

                (695, 1178, 1, 'FERNANDO DA ROCHA PERES', 4722.00),

                (696, 4951, 1, 'FERNANDO DE ARAGAO (FERNANDO V)', 8360.00),

                (697, 4357, 6, 'FERNANDO DE ASSIS BRASIL', 6663.00),

                (698, 1933, 7, 'FERNANDO DE ASSIS BRASIL (homonimo)', 2437.00),

                (699, 2998, 1, 'FERNANDO DE ASSIS BRASIL ROCHA', 2551.00),

                (700, 5033, 6, 'FERNANDO DE CASTELA', 1712.00),

                (701, 4808, 1, 'FERNANDO E. GUACHALLA', 7986.00),

                (702, 42, 5, 'FERNANDO MACEDO', 12896.00),

                (703, 4774, 1, 'FERNANDO MACEDO', 3079.00),

                (704, 3645, 6, 'FERNANDO MASCARENHAS', 9264.00),

                (705, 4243, 5, 'FERNANDO PY SARMENTO', 13459.00),

                (706, 3629, 6, 'FERNANDO RODRIGUES DE ASSIS BRASIL', 12779.00),

                (707, 3034, 5, 'FERNANDO SALES', 8701.00),

                (708, 3337, 5, 'FERNANDO TREIN', 11838.00),

                (709, 1977, 6, 'FERNAO LUIS DE SOUSA', 11007.00),

                (710, 858, 4, 'FERNAO MASCARENHAS MONTEIRO', 10252.00),

                (711, 2302, 2, 'FILIPPO LUIGI TURCHI', 7738.00),

                (712, 4941, 7, 'FIORELLO RANZOLIN', 6865.00),

                (713, 4062, 4, 'FIRMINA BRASILIENSE DOS SANTOS', 12499.00),

                (714, 5369, 2, 'FIRMINO ROCHA', 2525.00),

                (715, 274, 5, 'FLAMULA GOES', 9761.00),

                (716, 2354, 1, 'FLAVIA LOPES DE ASSIS BRASIL', 4284.00),

                (717, 2289, 4, 'FLAVIA ASSIS BRASIL REIS', 10018.00),

                (718, 2828, 2, 'FLAVIA TCHERNOBILSKY', 5860.00),

                (719, 4113, 1, 'FLAVIO EGICA', 8693.00),

                (720, 835, 7, 'FLAVIO RUI TOSSIN', 12786.00),

                (721, 651, 3, 'FLORINDA CLARA DE OLIVEIRA CARDOSO', 10689.00),

                (722, 2726, 1, 'FLORINDA DE ASSIS BRASIL', 11664.00),

                (723, 3850, 3, 'FLORINDA DE ASSIS BRASIL JOBIM', 12636.00),

                (724, 1995, 2, 'FLORINDA JOBIM BRASIL', 10829.00),

                (725, 2657, 6, 'FLORISVALDO MATTOS', 1478.00),

                (726, 4673, 6, 'FLORISVALDO MATTOS', 8586.00),

                (727, 3431, 1, 'FLORO DE ASSIS BRASIL', 2679.00),

                (728, 1214, 3, 'FRANCISCA CORREA', 6520.00),

                (729, 966, 4, 'FRANCISCA CORREIA', 7263.00),

                (730, 4695, 7, 'FRANCISCA DA CUNHA', 11869.00),

                (731, 1140, 1, 'FRANCISCA JOAQUINA DE OLIVEIRA', 4732.00),

                (732, 2805, 1, 'FRANCISCA MENDONCA SOUZA', 5300.00),

                (733, 2193, 2, 'FRANCISCO ALVARES PEREIRA', 12733.00),

                (734, 5353, 1, 'FRANCISCO ANTONIO...', 12456.00),

                (735, 4369, 4, 'FRANCISCO BRACO DE ARAUJO', 12998.00),

                (736, 529, 3, 'FRANCISCO CORDEIRO DA CUNHA', 12990.00),

                (737, 888, 4, 'FRANCISCO CORREIA DE SOUZA', 2306.00),

                (738, 3083, 4, 'FRANCISCO DA ROCHA COVAS', 12893.00),

                (739, 2370, 1, 'FRANCISCO DE ASSIS (SAO)', 12516.00),

                (740, 2844, 1, 'FRANCISCO DE ASSIS ALMEIDA BRASIL', 3991.00),

                (741, 3068, 7, 'FRANCISCO DE ASSIS BRASIL', 4746.00),

                (742, 4258, 4, 'FRANCISCO DE ASSIS BRASIL', 12692.00),

                (743, 4932, 2, 'FRANCISCO DE ASSIS BRASIL', 11118.00),

                (744, 4187, 1, 'FRANCISCO DE ASSIS CAMARA FAGUNDES', 10727.00),

                (745, 3998, 7, 'FRANCISCO DE CASTRO', 11694.00),

                (746, 5357, 6, 'FRANCISCO DE LEAO DE SA (ou DO DESTERRO)', 2725.00),

                (747, 468, 4, 'FRANCISCO DE SA', 7189.00),

                (748, 2562, 3, 'FRANCISCO DE SAM JERONIMO', 1168.00),

                (749, 2359, 6, 'FRANCISCO DE ZURBARAN SALAZAR Y MARQUEZ', 2243.00),

                (750, 4696, 1, 'FRANCISCO FERNANDES SIMOENS', 7747.00),

                (751, 1422, 6, 'FRANCISCO GOMES DE VILLAS BOAS', 10365.00),

                (752, 2864, 1, 'FRANCISCO HERMENEGILDO LAUREANO DA SILVA', 3373.00),

                (753, 828, 6, 'FRANCISCO IGNACIO DA GRACA', 4210.00),

                (754, 3230, 6, 'FRANCISCO JOS GONCALVES BENTO', 6983.00),

                (755, 1831, 3, 'FRANCISCO JOS GONCALVES BASTOS', 11716.00),

                (756, 701, 7, 'FRANCISCO MANGABEIRA', 7557.00),

                (757, 2254, 6, 'FRANCISCO MATHEUS', 1141.00),

                (758, 535, 3, 'FRANCISCO PINHEIRO LOPES', 3968.00),

                (759, 3246, 5, 'FRANCISCO PINHO ZOBARAN FERREIRA', 8409.00),

                (760, 3021, 6, 'FRANCISCO POMPEY', 7452.00),

                (761, 4447, 2, 'FRANCISCO SOLANO LOPEZ', 7978.00),

                (762, 5359, 1, 'FRANCKLIN DORIA', 6301.00),

                (763, 2596, 7, 'FRED SOUZA CASTRO', 6766.00),

                (764, 2382, 6, 'FRIEDRICH GULDA', 7232.00),

                (765, 4519, 1, 'GABRIEL ALVES BOHRER', 1357.00),

                (766, 756, 4, 'GABRIEL BRASILIENSE BRASIL CZIMIKOSKI', 2316.00),

                (767, 3715, 2, 'GABRIEL MASCARENHAS MONTEIRO', 7729.00),

                (768, 1021, 6, 'GABRIEL DE ASSIS BRASIL VALLE', 2404.00),

                (769, 3899, 3, 'GABRIEL MALAGRIDA', 1917.00),

                (770, 5473, 4, 'GABRIELA VOIGT DA POIAN', 6515.00),

                (771, 5521, 5, 'GABRIELA DE ASSIS BRASIL BORCHARDT', 4362.00),

                (772, 569, 2, 'GABRIELA NARDIN DE ASSIS BRASIL', 5824.00),

                (773, 4336, 5, 'GABRIELA RODRIGUES TEIXEIRA', 12219.00),

                (774, 1842, 2, 'GALDINO DE CASTRO', 1142.00),

                (775, 2975, 4, 'GASPAR CORREA DA SILVA', 7349.00),

                (776, 4330, 5, 'GASPAR DA SILVEIRA LEMES', 5134.00),

                (777, 952, 4, 'GASPAR DOS REIS DA SILVA', 12446.00),

                (778, 695, 4, 'GASPAR FERNANDES', 10056.00),

                (779, 4139, 1, 'GASPAR FRANCISCO GONCALVES', 2581.00),

                (780, 3143, 4, 'GASPAR GONCALVES CHAVES', 7000.00),

                (781, 4508, 6, 'GASPAR LEMES', 12714.00),

                (782, 4062, 6, 'GASPAR NUNES PEREIRA BRASIL', 4417.00),

                (783, 5025, 3, 'GASPAR SILVEIRA MARTINS', 1355.00),

                (784, 1304, 1, 'GASTAO DA SILVA BOA', 4433.00),

                (785, 558, 4, 'GASTAO PEREIRA DOS SANTOS', 4653.00),

                (786, 1025, 6, 'GENECI LEAL BRASIL', 4020.00),

                (787, 2891, 5, 'GENI DA SILVA', 9336.00),

                (788, 2229, 1, 'GENI LEAL BRASIL', 10222.00),

                (789, 2466, 7, 'GENNY DOS SANTOS SILVA', 4850.00),

                (790, 3674, 7, 'GENUINA FERREIRA DA SILVA', 2615.00),

                (791, 1979, 5, 'GEORGIA BORGES DE ASSIS BRASIL', 10515.00),

                (792, 770, 7, 'GEORGETA ZOBARAN', 11627.00),

                (793, 538, 7, 'GEOVANI BRASIL MAIA', 4932.00),

                (794, 1848, 2, 'GERALDO BRASIL', 4715.00),

                (795, 3287, 6, 'GERALDO FERRAZ', 1104.00),

                (796, 3039, 3, 'GERALDO MAIA', 7646.00),

                (797, 5388, 6, 'GERANA DAMULAKIS', 13064.00),

                (798, 2461, 7, 'GERTRUDES MARQUES', 9287.00),

                (799, 2165, 6, 'GERTRUDES MATHILDE DE BEM SALINAS', 4073.00),

                (800, 311, 3, 'GERTRUDES MATHILDE DE SA E ANDRADE', 1918.00),

                (801, 1070, 3, 'GERTRUDES THOMAZIA DE SANTA ANNA', 11875.00),

                (802, 1270, 2, 'GERUSA BRASILIENSE OLIVEIRA', 8301.00),

                (803, 1523, 4, 'GERUSA CAMARGO MENDONCA', 10775.00),

                (804, 4335, 1, 'GESSI DECAMARGO MENDONCA', 6024.00),

                (805, 3015, 2, 'GETULIO DORNELLES VARGAS', 1418.00),

                (806, 3603, 1, 'GIBA DE ASSIS BRASIL', 4300.00),

                (807, 939, 7, 'GIL BOTELHO FERREIRA', 12608.00),

                (808, 726, 3, 'GILBERTO ANTONIO DE ASSIS BRASIL E SILVA', 7132.00),

                (809, 2054, 6, 'GILBERTO JOS DORNELLES DE ASSIS BRASIL', 2911.00),

                (810, 3627, 1, 'GILBERTO JOS PIRES DE ASSIS BRASIL', 1920.00),

                (811, 5111, 7, 'GILDA HERRLEIN', 3997.00),

                (812, 2274, 1, 'GILDA MARIA BASTOS BRASILIENSE', 12636.00),

                (813, 4033, 7, 'GILLIATT SCHETTINI', 4455.00),

                (814, 871, 7, 'GILSON NAZARETH', 4101.00),

                (815, 672, 7, 'GISELDA MARIA BASTOS BRASILIENSE', 4783.00),

                (816, 257, 7, 'GISELE DE ASSIS BRASIL GRAOSQUE', 3772.00),

                (817, 4382, 2, 'GISLAINE FERREIRA DOS SANTOS', 11130.00),

                (818, 3601, 4, 'GISLAINE SACCOL', 8958.00),

                (819, 2810, 7, 'GIULIA ZOBARAN STARETZ', 5040.00),

                (820, 2815, 4, 'GLACY LISBOA PEREIRA', 6181.00),

                (821, 4089, 4, 'GLADIS BRASILIENSE BRASIL', 5931.00),

                (822, 5236, 2, 'GLAUCIA BRASIL LEAL', 9851.00),

                (823, 3194, 2, 'GLECY CORREA', 11911.00),

                (824, 3335, 6, 'GLORIA GONZALEZ', 1518.00),

                (825, 3178, 4, 'GODOFREDO FILHO', 1033.00),

                (826, 1409, 2, 'GOLBERY DO COUTO E SILVA', 7654.00),

                (827, 2855, 4, 'GOMES ECHIGUES', 3946.00),

                (828, 4970, 1, 'GOMES FREIRE DE ANDRADE', 12572.00),

                (829, 3136, 5, 'GONCALINA BRASILIENSE', 7176.00),

                (830, 37, 6, 'GONCALO BORGES DE ASSIS BRASIL', 2645.00),

                (831, 3776, 2, 'GONCALO TRASTAMIRES DA MAIA', 3480.00),

                (832, 4811, 3, 'GONCALO VELHO CABRAL', 2583.00),

                (833, 2353, 1, 'GONCALVES DO COUTO AZEVEDO', 12861.00),

                (834, 1367, 6, 'GONTINHA GOES', 9229.00),

                (835, 330, 4, 'GONTRODE MONIZ', 10956.00),

                (836, 1586, 1, 'GRACA JULIANA ROSO', 3163.00),

                (837, 943, 1, 'GRACELE BARBOSA BRASILIENSE', 6962.00),

                (838, 4451, 1, 'GRACIELE ROCHA MENDONCA', 4206.00),

                (839, 2805, 4, 'GRACILIANO RAMOS', 3580.00),

                (840, 817, 1, 'GRAMACHO', 5013.00),

                (841, 4270, 7, 'GREGORIO MENDES MADEIRA', 1211.00),

                (842, 2670, 2, 'GUILHERME DE ASSIS BRASIL', 10007.00),

                (843, 2742, 3, 'GUILHERME PEREIRA DOS SANTOS', 12723.00),

                (844, 3871, 4, 'GUILHERME DIAS RODRIGUES', 7862.00),

                (845, 5487, 3, 'GUILHERME PEREIRA DOS SANTOS', 6770.00),

                (846, 4129, 5, 'GUILHERME TELL', 1637.00),

                (847, 5001, 7, 'GUIMARAES ROSA', 11457.00),

                (848, 2322, 7, 'GUIOMAR DO CANTO BOUCAN', 12846.00),

                (849, 5039, 3, 'GUIOMAR MARATO', 3422.00),

                (850, 4089, 3, 'GUSTAVO MORAES DE ASSIS BRASIL', 1278.00),

                (851, 849, 5, 'GUSTAVO ZOBARAN DE ARAUJO', 12020.00),

                (852, 2422, 2, 'HAROLDO CANDIDO DE OLIVEIRA', 11539.00),

                (853, 2879, 2, 'HEBE WERNECK DE FREITAS', 3228.00),

                (854, 1160, 1, 'HELENA DE ASSIS BRASIL', 4329.00),

                (855, 773, 5, 'HELENA DE SA', 4439.00),

                (856, 3567, 3, 'HELENA PARENTE CUNHA', 12025.00),

                (857, 4758, 6, 'HELENA SCHERER', 1118.00),

                (858, 4248, 5, 'HELENA SOBRAL DE ALMEIDA', 10674.00),

                (859, 4877, 3, 'HELENICE SILVA DIAS', 8611.00),

                (860, 743, 1, 'HELENICE VASCONCELOS ARAUJO', 11894.00),

                (861, 3392, 2, 'HELIO DELMIRO', 4062.00),

                (862, 5153, 6, 'HELIO DE OLIVEIRA MACHADO', 11475.00),

                (863, 1265, 1, 'HELIO RIST DIAS', 6716.00),

                (864, 1250, 5, 'HELIO RUIZ SEVERO', 13342.00),

                (865, 3171, 7, 'HELIO SIMOES', 9391.00),

                (866, 4721, 4, 'HELOISA DE ASSIS BRASIL BLANCO', 2134.00),

                (867, 2977, 1, 'HELOISA SOARES BRASIL LEAL', 5502.00),

                (868, 2347, 3, 'HELTON LUIS KINCZIKOWSKI', 1139.00),

                (869, 4528, 2, 'HENRIQUE ROSO FERNANDES', 12465.00),

                (870, 1220, 7, 'HENRY LONGFELLOW', 11284.00),

                (871, 1932, 5, 'HERCILIA MARTINS DOS SANTOS', 5022.00),

                (872, 2656, 2, 'HERMAN CLAUDIO BOJUNGA', 11882.00),

                (873, 4250, 6, 'HERMENEGILDO DE ASSIS BRASIL', 7941.00),

                (874, 761, 3, 'HERMENEGILDO DE ASSIS BRASIL CARVALHO', 4677.00),

                (875, 1196, 6, 'HERMENEGILDO JOS BASTOS', 5265.00),

                (876, 4783, 5, 'HERMENEGILDO LAUREANO DA SILVA, o Chico Mamae', 7334.00),

                (877, 359, 6, 'HERMENEGILDO LAURIANO DA SILVA', 13143.00),

                (878, 2593, 2, 'HERMENEGILDO LAURIANO DA SILVA', 9016.00),

                (879, 2210, 2, 'HERTON MULLER DE ASSIS BRASIL', 6750.00),

                (880, 2320, 7, 'HILDA SIMOES LOPES', 4875.00),

                (881, 2891, 3, 'HIPOCRATES', 13137.00),

                (882, 171, 2, 'HOMERO DE ASSIS BRASIL', 6621.00),

                (883, 5094, 6, 'HOMERO DE CASTRO JOBIM', 1173.00),

                (884, 4169, 5, 'HOMERO JOBIM', 7652.00),

                (885, 63, 5, 'HONORINA SILVEIRA DA LUZ', 5243.00),

                (886, 4890, 3, 'HONORIO BRASIL LEMES', 12696.00),

                (887, 2655, 3, 'HONORIO LEMES DA SILVA', 9836.00),

                (888, 4100, 7, 'HOSTILHA FERRUGEM BRASILIENSE', 2283.00),

                (889, 3956, 3, 'HUMBERTO GONCALVES DE ASSIS BRASIL', 5997.00),

                (890, 2608, 2, 'IAGOR PEDROSO RAVAZI', 2480.00),

                (891, 5548, 3, 'IARA BEATRIZ DA SILVA', 11653.00),

                (892, 1818, 5, 'IDA DE ASSIS BRASIL E SILVA', 10807.00),

                (893, 4804, 2, 'IDA ZOBARAN', 1509.00),

                (894, 2912, 3, 'IDALINA DE ASSIS BRASIL', 7419.00),

                (895, 5292, 7, 'IDALINA LAUREANO DA SILVA', 5531.00),

                (896, 4075, 3, 'IDERVAL MIRANDA', 6963.00),

                (897, 3465, 5, 'IEDA RODRIGUES BRASILIENSE', 6416.00),

                (898, 5514, 5, 'IGNACIO JOAQUIM DE PAIVA', 10927.00),

                (899, 5222, 1, 'IGNACIO MANUEL', 4351.00),

                (900, 3431, 2, 'IGOR CAMPOS MAIA', 12125.00),

                (901, 5471, 7, 'IGOR DA POIAN FURLAN', 3648.00),

                (902, 3577, 7, 'ILANA GERBER', 11279.00),

                (903, 67, 3, 'ILDASIO TAVARES', 4538.00),

                (904, 3255, 1, 'ILDASIO TAVARES', 7021.00),

                (905, 3492, 2, 'ILKA DA ROCHA MASCARENHAS', 2565.00),

                (906, 617, 1, 'ILKA MASCARENHAS MONTEIRO', 2491.00),

                (907, 1767, 2, 'ILSA BEATRIZ DE ASSIS BRASIL SOARES', 4639.00),

                (908, 4201, 4, 'ILZA DE ASSIS BRASIL TEIXEIRA', 10376.00),

                (909, 3485, 5, 'INA MARQUES', 11881.00),

                (910, 2251, 4, 'INACIA FRANCISCA DE QUEIROZ', 12026.00),

                (911, 1062, 2, 'INACIO GONCALVES', 5680.00),

                (912, 5546, 4, 'INACIO LEAO DE SA', 5867.00),

                (913, 1075, 4, 'INDIANARA LEMES', 2166.00),

                (914, 2430, 1, 'INDIO DO BRASIL LEMES', 1462.00),

                (915, 5478, 2, 'INES GUTSCH R. DA SILVA', 11029.00),

                (916, 5339, 5, 'INES PIRES', 5403.00),

                (917, 2269, 7, 'INEZ ODETE POCAS SCHERER', 5306.00),

                (918, 15, 6, 'INGRID KRAUTHAUSER', 2170.00),

                (919, 2700, 4, 'INFANTE DOM HENRIQUE', 8333.00),

                (920, 2767, 7, 'INFANTE DOM HENRIQUE', 7943.00),

                (921, 3966, 4, 'INFANTE DOM PEDRO', 11476.00),

                (922, 2643, 3, 'INOCENCIA BAPTISTA BOUCAN', 8909.00),

                (923, 3983, 1, 'INOCENCIO COCIO', 4882.00),

                (924, 5127, 6, 'INOCENCIO CUNHA', 9142.00),

                (925, 1867, 7, 'INOCENCIO DE ASSIS BRASIL CUNHA', 6854.00),

                (926, 4800, 4, 'IONE CAMPOS', 4193.00),

                (927, 2145, 4, 'IPORA REIS', 9145.00),

                (928, 2511, 3, 'IPORA REIS FLORES', 1542.00),

                (929, 3709, 7, 'IRACY REIS', 9288.00),

                (930, 848, 2, 'IRACY REIS CORONEL', 11882.00),

                (931, 1771, 1, 'IRAN ALMEIDA BRASIL', 4170.00),

                (932, 3705, 6, 'IRIS VALLE', 2291.00),

                (933, 1849, 1, 'IRO RODRIGUES PEREIRA', 10479.00),

                (934, 2007, 7, 'IROCI BRASIL MAIA', 12889.00),

                (935, 582, 3, 'IROCI MAIA', 8296.00),

                (936, 3955, 6, 'INRON LEMES', 3300.00),

                (937, 3411, 6, 'ISABEL CEZAR DE ANDRADE', 7007.00),

                (938, 4071, 2, 'ISABEL CEZAR DE ANDRADE KRAUTHAUSER', 11861.00),

                (939, 4135, 6, 'ISABEL CORREA DA PAZ', 1960.00),

                (940, 3069, 3, 'ISABEL DE CASTELA', 8908.00),

                (941, 4581, 1, 'ISABEL DE SA E ANDRADE', 4085.00),

                (942, 2014, 6, 'ISABEL GONCALVES', 11917.00),

                (943, 1778, 4, 'ISABEL LAUREANO DA SILVA', 10360.00),

                (944, 3767, 3, 'ISABEL NUNES PEREIRA', 12556.00),

                (945, 4493, 1, 'ISABEL PIRES DE SOUSA', 11346.00),

                (946, 3109, 5, 'IZABEL DA JORNADA DORNELLES', 13049.00),

                (947, 2447, 4, 'ISAIAS FRANKLIN TCHERNOBILSKY', 1889.00),

                (948, 2492, 5, 'ISOLDA IUR BRASILIENSE OLIVEIRA', 1056.00),

                (949, 3689, 6, 'IVAN AMERICANO DA COSTA', 3106.00),

                (950, 541, 4, 'IVAN LEAL BRASIL', 5553.00),

                (951, 4706, 2, 'IVAN MARQUES JUNQUEIRA ROCHA', 11205.00),

                (952, 1186, 3, 'IVANA SALETE BRASILIENSE MARINHO', 5843.00),

                (953, 2239, 4, 'IVETE VARGAS', 11234.00),

                (954, 1774, 3, 'IVONE LEAL BRASIL', 4235.00),

                (955, 4658, 2, 'IVONE MARIA DE OLIVEIRA MEDEIROS', 2354.00),

                (956, 4550, 6, 'ISAACK CORREA MACHADO', 9771.00),

                (957, 1867, 6, 'JACI MACHADO', 10389.00),

                (958, 2496, 3, 'JACINTA JOBIM', 12308.00),

                (959, 3474, 6, 'JACINTA PASSOS', 6186.00),

                (960, 4577, 5, 'JACKIE MCLEAN', 9374.00),

                (961, 4372, 6, 'JACQUES PAGANE', 8903.00),

                (962, 1464, 5, 'JACY VIEIRA VALLE', 5218.00),

                (963, 5248, 7, 'JAIME DACIO DE ASSIS BRASIL', 5283.00),

                (964, 3942, 4, 'JAIR CARDOSO', 10447.00),

                (965, 438, 3, 'JAIR DANTAS RIBEIRO', 8881.00),

                (966, 1270, 3, 'JAIRO BRASIL VIEIRA', 7048.00),

                (967, 682, 5, 'JAMILE FERNANDES', 3134.00),

                (968, 2812, 7, 'JANDYRA MACHADO DA SILVA', 1046.00),

                (969, 1266, 1, 'JANE BRASILIENSE', 11440.00),

                (970, 2450, 4, 'JANE MENEZES ACOSTA', 11233.00),

                (971, 1045, 3, 'JANINE HOUARD', 6332.00),

                (972, 972, 3, 'JEAN BAPTISTE', 2457.00),

                (973, 481, 7, 'JEAN MARCEL LEMES', 10391.00);

    INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES          

                (974, 1584, 5, 'JEFFERSON BRASIL MAIA', 12743.00),

                (975, 4534, 2, 'JEFFERSON BRASILIENSE ELSEMANN', 12584.00),

                (976, 4964, 7, 'JEFFERSON BRASILIENSE RAVASI', 8572.00);

    -- ok

    

    INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES          

                (977, 805, 1, 'JEHOVA DE CARVALHO', 5215.00),

                (978, 107, 2, 'JEREMY STEIG', 1586.00),

                (979, 506, 2, 'JERONIMO DE ORNELAS MENEZES E VASCONCELOS', 2850.00),

                (980, 2980, 5, 'JERONIMO MOREIRA DE CARVALHO', 12628.00),

                (981, 2061, 3, 'JERONIMO PEREIRA DE ASSIS BRASIL', 1558.00),

                (982, 5377, 4, 'JOAMAR VIEIRA VALLE', 6150.00),

                (983, 3673, 4, 'JOANA DE ASSIS BRASIL', 1831.00),

                (984, 4722, 7, 'JOANA DE SA', 5177.00),

                (985, 4652, 7, 'JOAO SIMO', 11999.00),

                (986, 3931, 5, 'JORG SVEN KRAUTHŽUSER', 4080.00),

                (987, 4104, 1, 'JOANA DE SANTA TEREZA', 3846.00),

                (988, 3221, 3, 'JOANNA FRANCISCA', 3692.00),

                (989, 4952, 4, 'JOANA MARIA', 4643.00),

                (990, 3440, 4, 'JOANNA PERPETUA DA SILVA', 10051.00),

                (991, 5389, 5, 'JOANA PERPTUA DE SA', 6007.00),

                (992, 1920, 4, 'JOAO ALBERTO DE ASSIS BRASIL BLANCO', 12256.00),

                (993, 2914, 6, 'JOAO ALVES DA SILVA', 13364.00),

                (994, 3651, 5, 'JOAO ANTONIO DE ASSIS BRASIL', 7918.00),

                (995, 1139, 7, 'JOAO ANTONIO GONCALVES BLANCO', 6082.00),

                (996, 3133, 6, 'JOAO BAPTISTA BOUCAN', 6164.00),

                (997, 2744, 7, 'JOAO BAPTISTA SOARES DE MEIRELLES', 1095.00),

                (998, 3141, 7, 'JOAO BATISTA DE OLIVEIRA FIGUEIREDO', 8195.00),

                (999, 1201, 7, 'JOAO BATISTA MARCAL', 11332.00),

                (1000, 2514, 4, 'JOAO CABRAL DE MELO NETO', 9069.00),

                (1001, 648, 3, 'JOAO CARLOS ASSIS BRASIL', 3644.00),

                (1002, 2413, 5, 'JOS CARLOS CAPINAN', 6079.00),

                (1003, 5135, 6, 'JOAO CARLOS CARVALHO DE MORAES', 12081.00),

                (1004, 1532, 5, 'JOAO CARLOS CARVALHO DE MORAES (homonimo)', 6614.00),

                (1005, 1335, 5, 'JOAO CARLOS DE ASSIS BRASIL', 1240.00),

                (1006, 4080, 6, 'JOAO CARLOS DE ASSIS BRASIL HAUSSEN', 1098.00),

                (1007, 4925, 2, 'JOAO CARLOS MIRANDA DE ASSIS BRASIL', 2971.00),

                (1008, 345, 7, 'JOAO CARLOS TEIXEIRA GOMES', 12617.00),

                (1009, 5235, 3, 'JOAO DA COSTA PINHEIRO', 10893.00),

                (1010, 3686, 5, 'JOAO DA COSTA QUINTAO', 12747.00),

                (1011, 1446, 6, 'JOAO DA CUNHA', 4783.00),

                (1012, 2552, 6, 'JOAO DE ARAUJO BARRETO', 4897.00),

                (1013, 2991, 5, 'JOAO DE ASSIS BRASIL', 9570.00),

                (1014, 3661, 2, 'JOAO DE BARROS LEITE', 3095.00),

                (1015, 3445, 7, 'JOAO DE BEM', 1025.00),

                (1016, 2372, 6, 'JOAO DE BEM SALINAS', 7159.00),

                (1017, 152, 4, 'JOAO DE SANTA BARBARA', 7603.00),

                (1018, 2420, 3, 'JOAO DE SOUSA BRASIL', 13272.00),

                (1019, 2903, 3, 'JOAO EVANGELISTA DE ASSIS BRASIL', 12425.00),

                (1020, 5258, 7, 'JOAO FLORES MENDONCA', 1402.00),

                (1021, 2246, 7, 'JOAO GONCALVES', 10633.00),

                (1022, 4688, 4, 'JOAO GONCALVES', 12814.00),

                (1023, 5350, 4, 'JOAO GONCALVES CASSAO', 8774.00),

                (1024, 2444, 3, 'JOAO GOULART', 6821.00),

                (1025, 1618, 3, 'JOAO GOULART', 3851.00),

                (1026, 4920, 2, 'JOAO JAQUES', 4603.00),

                (1027, 670, 4, 'JOAO LAFUENTE DE ARAUJO (JANJAO)', 11535.00),

                (1028, 776, 2, 'JOAO JUNQUEIRA ROCHA', 12009.00),

                (1029, 54, 5, 'JOAO LUIS CARDIA', 10170.00),

                (1030, 1555, 2, 'JOAO LUIZ LEAL FERNANDES', 10510.00),

                (1031, 1148, 3, 'JOAO LUIS UZEYKA', 2782.00),

                (1032, 5512, 2, 'JOAO MANUEL PEROBELLI DE ASSIS BRASIL ROCHA', 5626.00),

                (1033, 3447, 4, 'JOAO MANUEL FERREIRA DE VASCONCELLOS CASTRO', 9432.00),

                (1034, 3194, 4, 'JOAO MARCIO CAMARGO MENDONCA', 11142.00),

                (1035, 1588, 2, 'JOAO PEDRO CANDIDO DE OLIVEIRA', 8450.00),

                (1036, 2463, 6, 'JOAO PEDRO SILVA DE ASSIS BRASIL', 8031.00),

                (1037, 1253, 6, 'JOAO PINHEIRO RIBEIRO', 7354.00),

                (1038, 3710, 6, 'JOAO RIBEIRO DE ARAUJO', 5616.00),

                (1039, 2526, 4, 'JOAO SOLON DE MACEDONIA SOARES', 11100.00),

                (1040, 3416, 1, 'JOAO TUZY SOBRINHO', 1439.00),

                (1041, 1940, 2, 'JOAO VAZ DA COSTA CORTE-REAL', 5827.00),

                (1042, 5019, 2, 'JOAQUIM ALVES PINTO GUEDES', 5702.00),

                (1043, 3418, 1, 'JOAQUIM BAPTISTA', 8533.00),

                (1044, 241, 4, 'JOAQUIM...', 6446.00),

                (1045, 4666, 4, 'JOAQUIM DA FONSECA MILANO', 4449.00),

                (1046, 1240, 5, 'JOAQUIM DE ASSIS BRASIL', 12547.00),

                (1047, 3052, 7, 'JOAQUIM DE ASSIS BRASIL (homonimo)', 11097.00),

                (1048, 5022, 7, 'JOAQUIM DE ASSIS BRASIL FILHO (JOAQUINZINHO OU TAC', 9311.00),

                (1049, 3501, 1, 'JOAQUIM DE ASSIS BRASIL JOBIM', 2378.00),

                (1050, 1028, 2, 'JOAQUIM DE SA E ANDRADE', 5755.00),

                (1051, 3777, 1, 'JOAQUIM FRANCISCO DE ASSIS BRASIL', 8098.00),

                (1052, 4035, 5, 'JOAQUIM FRANCISCO MARTINS DE ASSIS BRASIL', 9662.00),

                (1053, 4949, 2, 'JOAQUIM NABUCO', 2783.00),

                (1054, 5141, 5, 'JOAQUIM FRANCISCO DE ASSIS BRASIL', 13283.00),

                (1055, 4334, 4, 'JOAQUIM JORGE DE CASTRO', 9635.00),

                (1056, 865, 7, 'JOAQUIM LUIS LEAL DIAS', 10563.00),

                (1057, 2676, 7, 'JOAQUIM RIBEIRO DE ANDRADE E SILVA', 7182.00),

                (1058, 645, 4, 'JOAQUIM THOMAZ DE BEM SALINAS', 8798.00),

                (1059, 2651, 2, 'JOAQUIM THOMAZ DE BEM SALINAS (FILHO)', 11354.00),

                (1060, 1117, 3, 'JOAQUINA DE ASSIS BRASIL', 9749.00),

                (1061, 2990, 1, 'JOAQUINA THEODORA DE BEM SALINAS', 3706.00),

                (1062, 504, 3, 'JOAQUINA THEODORA DE BEM SALINAS', 10195.00),

                (1063, 4511, 3, 'JOAQUINA THEODORA DO ESPIRITO SANTO', 7025.00),

                (1064, 77, 1, 'JOCIELI BRASIL DOS ANJOS', 4619.00),

                (1065, 4999, 7, 'JOE FARRELL', 8966.00),

                (1066, 381, 3, 'JOEL BRASIL VIEIRA', 8259.00),

                (1067, 3734, 2, 'JOFRE ALONSO DA COSTA', 6863.00),

                (1068, 615, 4, 'JOHN COLTRANE', 4795.00),

                (1069, 1325, 1, 'JOMAR VIEIRA VALLE', 12688.00),

                (1070, 2827, 7, 'JON JEFFREY DAVISON', 8202.00),

                (1071, 119, 4, 'JORGE ANDR IRION JOBIM', 3382.00),

                (1072, 3417, 6, 'ANDR VINICIUS MOSSATE JOBIM', 1382.00),

                (1073, 2105, 6, 'JORGE DE ASSIS BRASIL LEAL', 1096.00),

                (1074, 2538, 3, 'JORGE LUIZ NUNES DOS SANTOS', 10861.00),

                (1075, 2894, 5, 'JORGE JOBIM', 10114.00),

                (1076, 4420, 1, 'JORGE MEDAUAR', 11781.00),

                (1077, 1577, 2, 'JORGE MEDAUAR', 6504.00),

                (1078, 5324, 1, 'JOSE AFONSO ARO', 8417.00),

                (1079, 4589, 4, 'JOSE ALBERTO GONCALVES BLANCO', 9582.00),

                (1080, 3519, 1, 'JOSE ANTONIO DE RADEMAQUER', 9006.00),

                (1081, 4253, 7, 'JOSE ANTONIO GONCALVES DE ASSIS BRASIL', 5509.00),

                (1082, 3320, 6, 'JOSE ANTONIO SARAIVA', 9188.00),

                (1083, 3135, 6, 'JOSE BARBOSA RIBEIRO', 9646.00),

                (1084, 1710, 5, 'JOSE BOUCAN (ou BARTOLOMEU)', 8669.00),

                (1085, 3121, 2, 'JOSE CAETANO DA SILVA', 11976.00),

                (1086, 5177, 3, 'JOSE CARLOS DE ARAUJO E SILVA', 13074.00),

                (1087, 1747, 1, 'JOSE CARVALHO', 7388.00),

                (1088, 896, 1, 'JOSE CARVALHO', 3370.00),

                (1089, 4210, 3, 'JOSE COELHO', 12920.00),

                (1090, 86, 7, 'JOSE COELHO DA COSTA', 1398.00),

                (1091, 2808, 1, 'JOSE CORONEL', 1506.00),

                (1092, 1066, 7, 'JOSE DA SILVA PAES', 8994.00),

                (1093, 4036, 1, 'JOSE DE ASSIS BRASIL (General)', 11030.00),

                (1094, 1163, 6, 'JOSE DE ASSIS BRASIL (homonimo)', 10122.00),

                (1095, 4832, 6, 'JOSE DE ASSIS BRASIL NETO', 5318.00),

                (1096, 5303, 6, 'JOSE DE PINHO LEAO', 9537.00),

                (1097, 431, 6, 'JOSE DE PINHO LEAO DE SA', 3959.00),

                (1098, 625, 4, 'JOSE DE SA E ANDRADE', 2296.00),

                (1099, 4269, 3, 'JOSE DE SOUSA BRASIL', 10782.00),

                (1100, 1028, 7, 'JOSE DE SOUSA BRASIL FILHO', 1886.00),

                (1101, 736, 6, 'JOSE DE SOUZA BRASIL NETO', 1419.00),

                (1102, 1026, 3, 'JOSE DE OLIVEIRA FALCAN', 9734.00),

                (1103, 3263, 4, 'JOSE DOMINGOS RAFFAELLI', 4788.00),

                (1104, 1357, 3, 'JOSE FERRUGEM DE MELLO MATTOS', 8533.00),

                (1105, 5562, 3, 'JOSE FRANCISCO BRASILIENSE COLAZZO', 12511.00),

                (1106, 4081, 3, 'JOSE FRANCISCO LESSA', 10816.00),

                (1107, 2320, 7, 'JOSE FRANCISCO LESSA', 5469.00),

                (1108, 544, 4, 'JOSE GABRIEL BRASIL NUNES', 5429.00),

                (1109, 3149, 4, 'JOSE GONCALVES', 9718.00),

                (1110, 5034, 4, 'JOSE HUMBERTO ZANINE', 5765.00),

                (1111, 4453, 6, 'JOSE DA ROSA', 4336.00),

                (1112, 2450, 5, 'JOSE LAUREANO DA SILVA', 8868.00),

                (1113, 5462, 1, 'JOSE LAUREANO DA SILVA, o JUCA', 3095.00),

                (1114, 170, 2, 'JOSE JOAO MACHADO DE OLIVEIRA', 7287.00),

                (1115, 788, 3, 'JOSE LUIZ DE ASSIS BRASIL', 12122.00),

                (1116, 2173, 6, 'JOSE MACIEL JUNIOR', 11220.00),

                (1117, 1955, 5, 'JOSE MANUEL PANDO', 7071.00),

                (1118, 2688, 6, 'JOSE MARIA DA SILVA PARANHOS DO RIO BRANCO', 6060.00),

                (1119, 2555, 6, 'JOSE MARIA DOS SANTOS SILVA', 4514.00),

                (1120, 3849, 7, 'JOSE MARIA LEONI', 9342.00),

                (1121, 1725, 2, 'JOSE MENDES', 3514.00),

                (1122, 2934, 4, 'JOSE OLAVO SILVA BORGES DA COSTA', 4495.00),

                (1123, 3152, 7, 'JOSE PEDRO DE ASSIS BRASIL MACEDO', 4844.00),

                (1124, 310, 3, 'JOSE PEREIRA DE SANTANA', 7281.00),

                (1125, 3144, 2, 'JOSE PEREIRA FELICIO', 8115.00),

                (1126, 973, 1, 'JOSE PINHEIRO MACHADO DE ASSIS BRASIL', 1841.00),

                (1127, 1586, 3, 'JOSE PLACIDO DE CASTRO', 13167.00),

                (1128, 91, 3, 'JOSE PLAUTO RODRIGUES DA SILVA', 11421.00),

                (1129, 4191, 4, 'JOSE POLICARPO DE SANTA GERTRUDES', 13380.00),

                (1130, 5147, 5, 'JOSE RIBEIRO FILHO', 3900.00),

                (1131, 4225, 3, 'JOSE SERAPHIM DE CASTILHOS', 1125.00),

                (1132, 268, 6, 'JOSE TEIXEIRA', 5409.00),

                (1133, 1501, 1, 'JOSE VELHO PEREIRA', 7310.00),

                (1134, 4104, 6, 'JOSE RODRIGUES', 1935.00),

                (1135, 4514, 3, 'JOSE VICTORINO DOS SANTOS', 8107.00),

                (1136, 4742, 2, 'JOSE WERNECK DE FREITAS', 5460.00),

                (1137, 4374, 7, 'JOSE WILSON REIS CORONEL', 7407.00),

                (1138, 3469, 1, 'JOSE ZOBARAN', 9226.00),

                (1139, 130, 2, 'JOSE ZOBARAN FILHO', 12096.00),

                (1140, 2307, 2, 'JOSEFA MARIA DA CONCEICAO', 3762.00),

                (1141, 1151, 2, 'JOSEFA MARIA DE JESUS', 10421.00),

                (1142, 246, 4, 'JOSEPHUS ZAEYEN', 4229.00),

                (1143, 3525, 5, 'JOSIANE PERRONI BRASILIENSE', 11727.00),

                (1144, 2569, 6, 'JUAN DE MORAES DOMINGUES', 6526.00),

                (1145, 4320, 4, 'JUAN NEGRIN', 2288.00),

                (1146, 3416, 7, 'JUAREZ ... HOUSSEN', 3974.00),

                (1147, 2099, 6, 'JUAREZ BRASIL LEMES', 10518.00),

                (1148, 3491, 5, 'JUAREZ GARCIA DE ASSIS BRASIL', 1573.00),

                (1149, 702, 6, 'JUAREZ LOPES HAUSSEN', 5230.00),

                (1150, 4022, 6, 'JUAREZ MARQUES', 11020.00),

                (1151, 1949, 3, 'JUAREZ VICTORINO DOS SANTOS', 8196.00),

                (1152, 1432, 5, 'JUCA MACIEL', 4561.00),

                (1153, 3460, 3, 'JUCA TIGRE', 9216.00),

                (1154, 4558, 4, 'JUCLIA FLUGEL DA SILVA MENDONCA', 4125.00),

                (1155, 4553, 7, 'JUCLIA FLUGEL MENDONCA', 10726.00),

                (1156, 1651, 1, 'JUDITH GROSSMANN', 9922.00),

                (1157, 5096, 7, 'JULIA MENDONCA PAIVA', 9188.00),

                (1158, 4855, 3, 'JULIA ROCHA DE ASSIS BRASIL', 6855.00),

                (1159, 2141, 6, 'JULIANA ABASCAL DE ASSIS BRASIL', 2012.00),

                (1160, 4740, 4, 'JULIANA BRASILIENSE KROTH', 11478.00),

                (1161, 3810, 7, 'JULIANA BRASILIENSE OLIVEIRA', 3927.00),

                (1162, 5068, 4, 'JULIANA DA ROCHA', 6353.00),

                (1163, 5062, 6, 'JULIANA DA ROCHA', 5593.00),

                (1164, 962, 2, 'JULIANA DE ASSIS BRASIL HORN', 1174.00),

                (1165, 3910, 7, 'JULIANA MENDONCA SOUZA DIAS', 11061.00),

                (1166, 1250, 2, 'JULIANA FLETCHER ZOBARAN', 1257.00),

                (1167, 1300, 6, 'JULIANA TEIXEIRA ZOBARAN', 13082.00),

                (1168, 3693, 3, 'JULIANO MEDEIROS DE ASSIS BRASIL', 12204.00),

                (1169, 4961, 4, 'JULIANO ROSSI', 13173.00),

                (1170, 1316, 4, 'JULIETA BASTOS BRASILIENSE', 7175.00),

                (1171, 734, 4, 'JULIETA DE SOUSA MARTINS', 8871.00),

                (1172, 4546, 4, 'JULIO CSAR DE ASSIS BRASIL HAUSSEN', 3377.00),

                (1173, 316, 7, 'JULIO CSAR FERNANDES LEAL', 4765.00),

                (1174, 3500, 1, 'JULIO CZAR CARVALHO DE ASSIS BRASIL', 13200.00);

   

    

    -- ok

    

     INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES         

                (1175, 1197, 6, 'JULIO COSTA PEREIRA', 7306.00),

                (1176, 2998, 2, 'JULIO COSTA PEREIRA DE ASSIS BRASIL', 8142.00),

                (1177, 4667, 5, 'JULIO DE ASSIS BRASIL E SILVA', 11148.00),

                (1178, 5551, 7, 'JULIO DE CASTILHOS', 12602.00),

                (1179, 1604, 7, 'JULIO MEDAGLIA', 11165.00),

                (1180, 1737, 6, 'JULIO MONTI DE ASSIS BRASIL ROCHA', 2012.00),

                (1181, 1624, 6, 'JULIO PRATES DE CASTILHOS', 2763.00),

                (1182, 3126, 1, 'JULIO PRATES DE CASTILHOS', 10354.00),

                (1183, 2924, 5, 'JUPIRA DA SILVA BRASILIENSE', 10633.00),

                (1184, 5478, 3, 'JURACI DOREA', 5066.00),

                (1185, 575, 6, 'JURALVA CAMARGO MENDONCA', 10358.00),

                (1186, 2496, 2, 'JUREMA SILVA BRASILIENSE', 5932.00),

                (1187, 1919, 6, 'JURIM MOREIRA', 4543.00),

                (1188, 2091, 7, 'JUSSARA DA SILVA BRASILIENSE', 3620.00),

                (1189, 4294, 5, 'JUSSARA GONCALVES', 2519.00),

                (1190, 5193, 4, 'JUSTINO ALVES BASTOS', 13332.00),

                (1191, 1883, 5, 'JUVENCIO ZOBARAN', 10774.00),

                (1192, 1896, 7, 'JUVENTILIA DE OLIVEIRA CASTILHOS', 4481.00),

                (1193, 3050, 3, 'KARAM SOUZA MENDONCA', 12713.00),

                (1194, 638, 5, 'KARIN ...', 9348.00),

                (1195, 3350, 5, 'KATHY CARDOZO', 7034.00),

                (1196, 2920, 3, 'KATIA MARINA BRASILIENSE DIAS', 3422.00),

                (1197, 514, 6, 'KENYA MARTINS COUTO', 2574.00),

                (1198, 1969, 1, 'KLAUSS CASTILHOS JACINTHO PEREIRA', 4286.00),

                (1199, 2534, 2, 'KOSCIUSZKI BARBOSA LEAO', 10889.00),

                (1200, 4786, 2, 'LARA MILANO DE ASSIS BRASIL LARISSA SANT ANNA VIEI', 5996.00),

                (1201, 4619, 2, 'LAURA DE ASSIS BRASIL JOBIM', 5868.00),

                (1202, 5033, 5, 'LAURA DE ASSIS BRASIL PAES', 3088.00),

                (1203, 5152, 3, 'LAURA GONCALVES PETRARCA', 9506.00),

                (1204, 4183, 1, 'LAURA MASSON CAMPOS', 2747.00),

                (1205, 812, 7, 'LAURA VIEIRA DE ASSIS BRASIL', 7455.00),

                (1206, 2462, 5, 'LAURIANO JOS DA SILVA ', 2403.00),

                (1207, 3275, 5, 'LAURO DE ASSIS BRASIL', 3993.00),

                (1208, 2880, 5, 'LAURO MENLIO MONTEIRO', 2259.00),

                (1209, 2491, 5, 'LA PAES DE SALDANHA', 1463.00),

                (1210, 3533, 5, 'LEANDRO GONCALVES DE ASSIS BRASIL', 1992.00),

                (1211, 1987, 3, 'LEDA DE ASSIS BRASIL', 4096.00),

                (1212, 5105, 3, 'LEDA DE ASSIS BRASIL (homonima)', 1829.00),

                (1213, 1777, 6, 'LEDA FERREIRA LEAL', 5463.00),

                (1214, 379, 3, 'LEILA BARROS', 7769.00),

                (1215, 2170, 6, 'LEITE DE VASCONCELOS', 4341.00),

                (1216, 1156, 3, 'LLIA DE ASSIS BRASIL LEAL', 8225.00),

                (1217, 445, 7, 'LEO ROCHA DE ASSIS BRASIL', 8914.00),

                (1218, 5485, 3, 'LEOCADIA E SILVA', 3359.00),

                (1219, 3434, 3, 'LEODI MARIA PELLEGRIN', 7975.00),

                (1220, 1316, 7, 'LEONARD FEATHER', 1554.00),

                (1221, 4513, 5, 'LEONARDO CORREA DE ASSIS BRASIL', 8676.00),

                (1222, 4445, 5, 'LEONARDO DA SILVA BRASILIENSE', 11668.00),

                (1223, 4940, 4, 'LEONARDO DA SILVA BRASILIENSE JUNIOR', 6300.00),

                (1224, 1121, 3, 'LEONARDO DE ASSIS BRASIL', 8004.00),

                (1225, 984, 6, 'LEONARDO LINS PORTUGAL DE ASSIS BRASIL', 10299.00),

                (1226, 483, 4, 'LEONARDO DEITOS ZOBARAN', 10439.00),

                (1227, 2228, 3, 'LEONARDO HORN', 2033.00),

                (1228, 599, 1, 'LEONARDO SACCOL FERNANDES', 3542.00),

                (1229, 2551, 4, 'LEONEL DE MOURA BRIZOLA', 3282.00),

                (1230, 1072, 7, 'LEONEL DE MOURA BRIZOLLA', 8670.00),

                (1231, 4496, 3, 'LEONIDA MARCAL', 9396.00),

                (1232, 3399, 6, 'LEONIDAS DE ASSIS BRASIL', 3322.00),

                (1233, 1369, 6, 'LEONIDAS DE ASSIS BRASIL DA POIAN', 11626.00),

                (1234, 4512, 7, 'LEONOR DE ASSIS BRASIL', 6722.00),

                (1235, 128, 1, 'LETICIA BARBIERI ELSEMANN', 11062.00),

                (1236, 2918, 4, 'LETICIA JOBIM DIAS', 12016.00),

                (1237, 467, 1, 'LETICIA MOSSATE JOBIM', 9530.00),

                (1238, 5, 3, 'LIA DORA SCHRAMM', 11171.00),

                (1239, 1799, 7, 'LIA PAES DE SALDANHA', 2653.00),

                (1240, 1387, 2, 'LIA ROCHA', 4715.00),

                (1241, 3968, 2, 'LYA ZOBARAN MONTEIRO', 5961.00),

                (1242, 2105, 2, 'LIANA MULLER DE ASSIS BRASIL', 7608.00),

                (1243, 2398, 2, 'LIDIA PEREIRA FELICIO DE SAO MAMEDE', 10284.00);

-- ok

 

INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES

                (1244, 1918, 6, 'LIDIA VALENTINI', 9828.00),

                (1245, 46, 2, 'LIGIA GALVAO FERREIRA DOS SANTOS', 1578.00),

                (1246, 1217, 2, 'LIGIA PEREIRA', 7786.00),

                (1247, 5471, 3, 'LILA DE ASSIS BRASIL', 4266.00),

                (1248, 212, 2, 'LILIANE PEDROSO', 9868.00),

                (1249, 4285, 6, 'LINA BRASILIENSE', 8911.00),

                (1250, 2219, 5, 'LINA DE ASSIS BRASIL', 6152.00),

                (1251, 908, 7, 'LISABEL DE OLIVEIRA GONCALVES', 2302.00),

                (1252, 1211, 5, 'LISIANE BR ASIL', 10745.00),

                (1253, 2786, 4, 'LISIANE MESQUITA SEVERO', 11970.00),

                (1254, 1079, 5, 'LIVA DE ASSIS BRASIL', 11044.00),

                (1255, 3467, 3, 'LIVA MARIA BRASILIENSE DOS SANTOS', 3600.00),

                (1256, 3457, 6, 'LIVIA BLANCO BOJUNGA', 12694.00),

                (1257, 2975, 1, 'LIZETTE COELHO DA CUNHA', 10732.00),

                (1258, 2952, 6, 'LIZETE MEDAGLIA HAESBAERT', 7994.00),

                (1259, 4788, 4, 'LOIVA MARIA BASTOS BRASILIENSE', 2561.00),

                (1260, 549, 5, 'LORENA MARTINS PRATES', 3130.00),

                (1261, 839, 4, 'LORENZO BEHR SOUZA', 5232.00),

                (1262, 4787, 3, 'LOUISE SANT ANNA VIEIRA', 3910.00),

                (1263, 1821, 6, 'LOURDES VICTORINO DOS SANTOS', 3584.00),

                (1264, 2461, 7, 'LOURICE CONCEICAO DE MORAES', 1880.00),

                (1265, 2151, 6, 'LUANA ARAUJO FLECK', 12414.00),

                (1266, 4886, 5, 'LUCLIA DOS ANJOS FIGUEIRA', 8200.00),

                (1267, 547, 1, 'LUCLIA FIGUEIRA DE ASSIS BRASIL', 11399.00),

                (1268, 2776, 5, 'LUCIA DORNELLES DE ASSIS BRASIL', 12823.00),

                (1269, 1378, 3, 'LUCIA HELENA FERREIRA LEAL', 11615.00),

                (1270, 2505, 4, 'LUCIA HELENA AZEVEDO DE ASSIS BRASIL', 3884.00),

                (1271, 5129, 6, 'LUCIA MATTOS', 13261.00),

                (1272, 4234, 5, 'LUCIANA BARBOSA DA COSTA', 1352.00),

                (1273, 91, 1, 'LUCIANA DE ASSIS BRASIL', 12898.00),

                (1274, 5102, 5, 'LUCIANA ROSA DE ASSIS BRASIL', 6411.00),

                (1275, 4116, 1, 'LUCIANE FERREIRA DOS SANTOS', 5140.00),

                (1276, 1944, 1, 'LUCIANO BRASILIENSE CARDOSO', 10176.00),

                (1277, 5516, 2, 'LUCIANO BRASILIENSE MARCANTONIO', 4911.00),

                (1278, 5090, 3, 'LUCIANO MAIA', 1531.00),

                (1279, 3380, 4, 'LUCIANO RAMIRES', 9905.00),

                (1280, 1091, 4, 'LUCIDIO FREITAS', 7919.00),

                (1281, 1972, 7, 'LUCINARA MARIA ZAGO', 7376.00),

                (1282, 3854, 3, 'LUCY BORDINI', 2908.00),

                (1283, 1753, 5, 'LUDWIG VAN BEETHOVEN', 7698.00),

                (1284, 2891, 2, 'LUDY DA SILVA FARIA', 10625.00),

                (1285, 5405, 2, 'LUIS ANTONIO DE ASSIS BRASIL HAUSSEN', 3452.00),

                (1286, 1920, 7, 'LUIS ANTONIO CAJAZEIRA RAMOS', 1122.00),

                (1287, 5356, 7, 'LUIS CARLOS PRESTES', 1742.00),

                (1288, 577, 1, 'LUIS DE BEM', 1594.00),

                (1289, 4820, 1, 'LUIS DE BEM SALINAS', 2999.00),

                (1290, 1998, 7, 'LUIS DE BEM SALINAS FILHO', 5652.00),

                (1291, 4712, 7, 'LUIS DE QUEIROZ', 1019.00),

                (1292, 4876, 3, 'LUIZ DE SANTA MARIA', 8596.00),

                (1293, 4113, 2, 'LUIS EDUARDO DE ASSIS BRASIL SILVEIRA', 10107.00),

                (1294, 1874, 2, 'LUIZ FELIPE TURCH DE ASSIS BRASIL', 2750.00),

                (1295, 43, 4, 'LUIS FERNANDO DE VARGAS ROMERO', 6784.00),

                (1296, 2978, 1, 'LUIS GALVEZ RODRIGUES DE ARIAS', 13297.00),

                (1297, 4768, 7, 'LUIS GERBER', 8472.00),

                (1298, 5466, 1, 'LUIS HENRIQUE DE ASSIS BRASIL', 1290.00),

                (1299, 3768, 6, 'LUIS JORGE VELOZO', 4524.00),

                (1300, 3220, 7, 'LUIS MIGLIORA', 4817.00),

                (1301, 970, 6, 'LUIS NOGUEIRA ABREU', 7970.00),

                (1302, 3056, 2, 'LUIS PEREIRA DE SA', 2572.00),

                (1303, 3193, 2, 'LUIS PIMENTEL', 9412.00),

                (1304, 4586, 2, 'LUISA DE QUEIROZ', 9326.00),

                (1305, 1245, 1, 'LUISA LINS PORTUGAL DE ASSIS BRASIL', 6721.00),

                (1306, 2197, 1, 'LUISA MARIA DE GUZMAN', 1541.00),

                (1307, 4163, 3, 'LUISA MARIA GONCALVES TEIXEIRA BARBOSA', 8740.00),

                (1308, 5175, 3, 'LUIZ ALBERTO DOS SANTOS MESQUITA', 6287.00),

                (1309, 1267, 6, 'LUIZ ANTONIO BRASILIENSE DOS SANTOS', 3442.00),

                (1310, 116, 4, 'LUIZ ANTONIO DE ASSIS BRASIL E SILVA', 7953.00),

                (1311, 5233, 5, 'LUIZ ARIOSTO DA CUNHA', 9649.00),

                (1312, 3690, 2, 'LUIZ AZEVEDO DE ASSIS BRASIL', 12107.00),

                (1313, 2730, 2, 'LUIZ CAETANO DA SILVA', 1061.00),

                (1314, 1262, 6, 'LUIZ CARLOS CZAR DE ANDRADE', 6101.00),

                (1315, 1154, 6, 'LUIZ CARLOS CZAR DE ANDRADE JUNIOR', 3674.00),

                (1316, 565, 2, 'LUIZ CARLOS DE ASSIS BRASIL LEAL', 5205.00),

                (1317, 1753, 7, 'LUIZ CARLOS GARCIA DE ASSIS BRASIL', 3236.00),

                (1318, 1537, 6, 'LUIZ CARLOS REIS BOHRER', 7985.00),

                (1319, 533, 5, 'LUIZ COLAZZO', 1562.00),

                (1320, 3399, 3, 'LUIZ DE ALMEIDA', 5114.00),

                (1321, 3812, 7, 'LUIZ ALMEIDA', 9959.00),

                (1322, 131, 3, 'LUIZ DE QUEIROZ', 3438.00),

                (1323, 239, 5, 'LUIZ DO ESPIRITO SANTO', 13373.00),

                (1324, 5186, 7, 'LUIZ FERNANDO CIRNE LIMA', 10702.00),

                (1325, 5178, 3, 'LUIZ FERNANDO SCHRAMM PEREIRA', 2501.00),

                (1326, 4110, 5, 'LUIZ FERNANDO SCHRAMM PEREIRA', 5880.00),

                (1327, 3843, 1, 'LUIZ FRANCISCO PEREIRA DE ASSIS BRASIL', 12222.00),

                (1328, 649, 1, 'LUIZ ORLANDO CARNEIRO', 7485.00),

                (1329, 248, 4, 'LUIZ PAULO NUNES DOS SANTOS', 7257.00),

                (1330, 1154, 6, 'LUIZ PEDRO DE ASSIS BRASIL', 4278.00),

                (1331, 1745, 4, 'LUIZ PINHEIRO MACHADO DE ASSIS BRASIL', 3640.00),

                (1332, 1671, 2, 'LUIZ PINHEIRO MACHADO DE ASSIS BRASIL (NETO)', 10342.00),

                (1333, 2687, 4, 'LUIZ ROBERTO IMPERATORE DE ASSIS BRASIL', 10732.00),

                (1334, 4853, 2, 'LUIZ RODRIGUES', 7463.00),

                (1335, 1441, 4, 'LUIZA HAUSSEN', 5685.00),

                (1336, 605, 3, 'LUIZA CANDIDO DE OLIVEIRA MONTEIRO', 3516.00),

                (1337, 2359, 4, 'LUIZA FLUGEL MENDONCA', 1416.00),

                (1338, 3956, 3, 'LUIZA MAGDALENA KRAUTHŽUSER', 8472.00),

                (1339, 262, 5, 'LUZIA DE ABREU', 5474.00),

                (1340, 5162, 3, 'LUZIA IGNACIA DE SA', 3946.00),

                (1341, 336, 4, 'LUIZA PEREIRA DE SOUZA', 10724.00),

                (1342, 1868, 4, 'LUIZA SOUZA DE ASSIS BRASIL', 11524.00);

   

    -- ok

    

     INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES         

                (1343, 964, 4, 'LUIZA WERNZ DE ASSIS BRASIL', 1403.00),

                (1344, 4859, 7, 'LUPICINIO RODRIGUES', 8044.00),

                (1345, 1946, 3, 'LUZARDO RODRIGUES BRASILIENSE', 8154.00),

                (1346, 3457, 7, 'LUZIA OST SANT ANNA', 4767.00),

                (1347, 2229, 4, 'LUZIA SANT ANNA VIEIRA', 3763.00),

                (1348, 4261, 7, 'LYA ZOBARAN MONTEIRO', 8143.00),

                (1349, 3937, 6, 'LYDIA COSTA PEREIRA DE ASSIS BRASIL', 11248.00),

                (1350, 2491, 4, 'LYDIA DE ASSIS BRASIL', 7905.00),

                (1351, 1777, 3, 'LYRA FLORES IRION', 6654.00),

                (1352, 923, 7, 'MACHADO DE ASSIS', 8959.00),

                (1353, 2537, 7, 'MADALENA DE SEIA', 6094.00),

                (1354, 131, 7, 'MAEWE DE ASSIS BRASIL', 8283.00),

                (1355, 441, 5, 'MAGDALENA DO ESPIRITO SANTO', 6805.00),

                (1356, 2304, 5, 'MANOEL AVARES PEREIRA E SILVA', 13171.00),

                (1357, 353, 1, 'MANOEL ALVES DOS SANTOS', 8468.00),

                (1358, 3098, 3, 'MANOEL CAETANO DA SILVA', 4533.00),

                (1359, 3734, 3, 'MANOEL CARDOSO FERREIRA', 7603.00),

                (1360, 135, 7, 'MANOEL DA SILVA SANTOS', 9483.00),

                (1361, 3925, 5, 'MANOEL DO ESPIRITO SANTO DE ARAUJO', 6518.00),

                (1362, 673, 6, 'MANOEL DO ESPIRITO SANTO ARAUJO', 8857.00),

                (1363, 5344, 1, 'MANOEL GUSTAVO BARBOSA BRASILIENSE', 10362.00),

                (1364, 4986, 5, 'MANOEL JOS DE ASSIS BRASIL', 8186.00),

                (1365, 2038, 2, 'MANOEL LUIZ MARTINS', 10149.00),

                (1366, 2705, 5, 'MANOEL RODRIGUES LISBOA', 12051.00),

                (1367, 715, 4, 'MANOEL SOARES DE CARVALHO', 6091.00),

                (1368, 1703, 3, 'MANOELA BRASILIENSE ROSSI', 10607.00),

                (1369, 1871, 6, 'MANOELA SILVEIRA', 6825.00),

                (1370, 4826, 4, 'MANOELINA LAGOS', 13424.00),

                (1371, 1471, 1, 'MANUEL ANTONIO MACEDO LINHARES', 12774.00),

                (1372, 4625, 7, 'MANUEL BOUCAN', 7657.00),

                (1373, 4316, 7, 'MANUEL CARDOSO FERREIRA', 5974.00),

                (1374, 344, 4, 'MANUEL D AZEVEDO DA CUNHA JUNIOR', 9359.00),

                (1375, 4846, 4, 'MANUEL DE ARAUJO BARREIROS', 12872.00),

                (1376, 1537, 6, 'MANUEL DE LEAO', 11650.00),

                (1377, 5162, 2, 'MANUEL DE PINHO CANDIDO', 5867.00),

                (1378, 5159, 3, 'MANUEL DE SA E ANDRADE', 11923.00),

                (1379, 4460, 1, 'MANUEL DO CANTO E CASTRO', 7946.00),

                (1380, 3140, 1, 'MANUEL DOS SANTOS XAVIER', 5767.00),

                (1381, 4506, 1, 'MANUEL FRANCISCO', 4431.00),

                (1382, 763, 1, 'MANUEL FRANCISCO DE ASSIS BRASIL MACEDO', 12222.00),

                (1383, 202, 7, 'MANUEL GONCALVES RATO', 8964.00),

                (1384, 355, 5, 'MANUEL JORGE', 12836.00),

                (1385, 824, 4, 'MANUEL JOS DE MESQUITA', 12356.00),

                (1386, 2194, 7, 'MANUEL LEAO DE LEMOS', 3344.00),

                (1387, 1848, 5, 'MANUEL MARATO CANTO', 10793.00),

                (1388, 4302, 5, 'MANUEL MARTINS DA CRUZ JOBIM', 12731.00),

                (1389, 3988, 3, 'MANUEL MOREIRA BELLO', 11948.00),

                (1390, 3680, 1, 'MANUEL PEREIRA DE SA', 1398.00),

                (1391, 597, 2, 'MANUEL PINHEIRO DE ANDRADE SEIXAS', 1964.00),

                (1392, 4588, 4, 'MANOELA DE ASSIS BRASIL E CAMELIER', 11097.00),

                (1393, 461, 6, 'MANUELA VAZ', 6803.00),

                (1394, 4170, 1, 'MANUELA DE ARAUJO BASTOS', 1889.00),

                (1395, 5210, 1, 'MARA LUCIA VIANA', 9615.00),

                (1396, 463, 4, 'MARCAL DE ASSIS BRASIL', 5455.00),

                (1397, 866, 3, 'MARCAL DE ASSIS BRASIL FILHO', 12526.00),

                (1398, 3822, 7, 'MARCAL DE ASSIS BRASIL NETO', 10192.00),

                (1399, 1825, 5, 'MARCAL ZOBARAN', 3156.00),

                (1400, 973, 7, 'MARCALINA DE ASSIS BRASIL', 1119.00),

                (1401, 5143, 2, 'MARCALINA MARCAL DA SILVA', 11364.00),

                (1402, 4928, 5, 'MARCELA SILVA DE ASSIS BRASIL', 989.00),

                (1403, 2479, 6, 'MARCELINA BRASILIENSE', 2513.00),

                (1404, 1602, 6, 'MARCELO ACOSTA BRASIL', 4232.00),

                (1405, 1645, 3, 'MARCELO DE ASSIS BRASIL FAGUNDES', 10403.00),

                (1406, 4517, 4, 'MARCELO GUALBERTO ZOBARAN', 2512.00),

                (1407, 2685, 7, 'MARCELO REIS BOHRER', 12062.00),

                (1408, 254, 2, 'MARCELO ROCHA MENDONCA', 9906.00),

                (1409, 1638, 3, 'MARCELO ZOBARAN DE ARAUJO', 9993.00),

                (1410, 1684, 3, 'MARCELLO ZOBARAN ZAEYEN', 6576.00),

                (1411, 964, 5, 'MARCIA ASSIS BRASIL', 2304.00),

                (1412, 3189, 1, 'MARCIA BEHR SOUZA', 5349.00),

                (1413, 3707, 6, 'MARCIA BRASILIENSE PASA', 1400.00),

                (1414, 3856, 4, 'MARCIA CRISTINA LEAL FERNANDES', 11232.00),

                (1415, 4223, 7, 'MARCIA CRISTINA FERNANDES CASSOL', 12567.00),

                (1416, 1076, 1, 'MARCIA DE ASSIS BRASIL', 11115.00),

                (1417, 49, 2, 'MARCIA DE ASSIS BRASIL', 11956.00),

                (1418, 1638, 7, 'MARCIA ESTELA DE ASSIS BRASIL DA POIAN', 13070.00),

                (1419, 4996, 7, 'MARCIA GREYCE MULLER', 6031.00),

                (1420, 990, 6, 'MARCILIO DA SILVA MESQUITA', 2238.00),

                (1421, 3656, 1, 'MARCIO ANDR DE ASSIS BRASIL', 11572.00),

                (1422, 249, 3, 'MARCIO CARVALHO DE MORAES', 3154.00),

                (1423, 1472, 5, 'MARCIO DE ASSIS BRASIL PAES', 9953.00),

                (1424, 355, 2, 'MARCIO DOMINGUES MENDONCA', 6996.00),

                (1425, 2853, 6, 'MARCIO MONTARROYOS', 4839.00),

                (1426, 4094, 7, 'MARCIO RODRIGUES DE ASSIS BRASIL', 2696.00),

                (1427, 2541, 6, 'MARCIO WERNZ DE ASSIS BRASIL', 5474.00),

                (1428, 883, 1, 'MARCO ANTONIO DE ARAUJO BASTOS', 9898.00),

                (1429, 166, 5, 'MARCO ANTONIO LEAL FERNANDES', 3956.00),

                (1430, 3494, 1, 'MARCO ANTONIO NUNES DOS SANTOS', 13039.00),

                (1431, 1643, 7, 'MARCO ANTONIO RODRIGUES DA SILVA', 11992.00),

                (1432, 4165, 3, 'MARCO AURLIO DE ASSIS BRASIL HAUSSEN', 9062.00),

                (1433, 1194, 1, 'MARCO AURLIO DE MACEDO SOUTO', 11437.00),

                (1434, 2062, 4, 'MARCO AURLIO LEAL FERNANDES', 3884.00),

                (1435, 244, 1, 'MARCO BRUM', 1305.00),

                (1436, 318, 2, 'MARCO TULIO LEAL FERNANDES', 8120.00),

                (1437, 1750, 6, 'MARCOS A. P. RIBEIRO', 10464.00),

                (1438, 2851, 5, 'MARCOS BARRETO MENDONCA', 12318.00),

                (1439, 3294, 6, 'MARCOS DE ASSIS BRASIL TEIXEIRA', 2820.00),

                (1440, 3529, 6, 'MARCY DE ASSIS BRASIL', 12702.00),

                (1441, 763, 4, 'ANTONIO BERNARDO QUARTIM DE MORAES', 1865.00),

                (1442, 5461, 2, 'MARGARIDA FERNAO LUIS DE SOUSA', 5194.00),

                (1443, 1236, 5, 'MARGARIDA FREIRE', 9854.00),

                (1444, 5099, 2, 'MARGARIDA MARATO CANTO', 3154.00),

                (1445, 2092, 5, 'MARGARIDA ZOBARAN', 4375.00),

                (1446, 2986, 6, 'MARIA ALICE BLANCO BOJUNGA', 9706.00),

                (1447, 3729, 5, 'MARIA ALIRE RODRIGUES DE ASSIS BRASIL', 2225.00),

                (1448, 4630, 7, 'MARIA ALVARES', 3408.00),

                (1449, 3879, 4, 'MARIA ANGELA PALUDO', 11295.00),

                (1450, 4384, 2, 'MARIA ANGLICA TEIXEIRA DA COSTA', 6027.00),

                (1451, 1019, 1, 'MARIA ANTONIA DA SILVA BORGES', 2086.00),

                (1452, 2746, 1, 'MARIA ANTONIA MIGLIORA', 13370.00),

                (1453, 868, 3, 'MARIA APARECIDA BERARDO ZAEYEN', 1595.00),

                (1454, 1001, 3, 'MARIA APARECIDA GUERRA BERND', 4204.00),

                (1455, 3836, 1, 'MARIA BERNARDA', 10359.00),

                (1456, 4167, 1, 'MARIA CATARINA MARTINS BRASILIENSE', 13007.00),

                (1457, 3855, 6, 'MARIA CECILIA DE ASSIS BRASIL', 9449.00),

                (1458, 2988, 4, 'MARIA CECILIA PESTANA DE ASSIS BRASIL', 12909.00),

                (1459, 5550, 4, 'MARIA CECILIA PRATES DE CASTILHOS', 4720.00),

                (1460, 3171, 6, 'MARIA CECILIA SABO', 8326.00),

                (1461, 1685, 4, 'MARIA CECILIA ZOBARAN', 7083.00),

                (1462, 1278, 2, 'MARIA CELESTE TURCHI', 6500.00),

                (1463, 3118, 4, 'MARIA CLARA LINS PORTUGAL', 5124.00),

                (1464, 3226, 3, 'MARIA CLARA SILVA DE ASSIS BRASIL', 11110.00),

                (1465, 2147, 7, 'MARIA CLARA ZOBARAN FIGUEIREDO', 9855.00),

                (1466, 2696, 7, 'MARIA CORREA DA SILVA', 10323.00),

                (1467, 1093, 6, 'MARIA DA CONCEICAO', 8454.00),

                (1468, 607, 7, 'MARIA DA CONCEICAO PARANHOS', 12841.00),

                (1469, 880, 7, 'MARIA DA GRACA XAVIER TORRES', 10389.00),

                (1470, 248, 3, 'MARIA DE ASSIS BRASIL', 13069.00),

                (1471, 2495, 4, 'MARIA DE ASSIS BRASIL PETRARCA', 6209.00),

                (1472, 749, 5, 'MARIA DE ASSIS BRASIL SILVA', 5994.00),

                (1473, 4999, 7, 'MARIA DE ASSIS BRASIL VALLE', 8771.00),

                (1474, 4430, 5, 'MARIA DE BARROS', 6900.00),

                (1475, 3692, 2, 'MARIA DE BARROS', 12060.00),

                (1476, 4557, 6, 'MARIA DE BEM SALINAS', 3620.00),

                (1477, 144, 4, 'MARIA DE BEM SALINAS', 5978.00),

                (1478, 5190, 7, 'MARIA DE LEAO', 12305.00),

                (1479, 2159, 5, 'MARIA DE LOURDES BRASILIENSE MENDONCA', 11234.00),

                (1480, 5040, 6, 'MARIA DE OLIVEIRA', 6739.00),

                (1481, 4491, 6, 'MARIA DE PINHO', 3947.00),

                (1482, 5362, 3, 'MARIA DE PINHO', 2136.00),

                (1483, 1462, 7, 'MARIA DE PORTUGAL', 13195.00),

                (1484, 4387, 6, 'MARIA DE SA', 5473.00),

                (1485, 808, 1, 'MARIA DE SA E ANDRADE', 6070.00),

                (1486, 3434, 4, 'MARIA DEL CARMEN MACHADO ARCAUS', 5431.00),

                (1487, 4966, 6, 'MARIA DO CARMO BOTELHO FERREIRA', 8518.00),

                (1488, 2991, 1, 'MARIA DO ROSARIO', 6880.00),

                (1489, 4010, 1, 'MARIA DOLORES DE ASSIS BRASIL MACEDO', 11376.00),

                (1490, 401, 5, 'MARIA DORA BASTOS BRASILIENSE', 2873.00),

                (1491, 1387, 4, 'MARIA DULCE HERRLEIN DEITOS', 13137.00),

                (1492, 4182, 1, 'MARIA EDUARDA DE ASSIS BRASIL', 6604.00),

                (1493, 4255, 6, 'MARIA EDUARDA DE ASSIS BRASIL CAVAGNI', 3331.00),

                (1494, 2055, 7, 'MARIA ELEONORA DE ASSIS BRASIL', 10061.00),

                (1495, 4666, 7, 'MARIA ELISA COSTA PEREIRA DE ASSIS BRASIL', 9210.00),

                (1496, 1221, 1, 'MARIA ENI VICTORINO DOS SANTOS', 8720.00),

                (1497, 5142, 5, 'MARIA FERNANDA MACHADO DE ASSIS BRASIL', 6058.00),

                (1498, 5329, 4, 'MARIA FRANCISCA DA CONCEICAO', 2049.00),

                (1499, 3047, 7, 'MARIA FRANCISCA DE SABOIA', 2592.00),

                (1500, 4036, 5, 'MARIA FRANCISCA MARTINS BRASILIENSE', 8592.00),

                (1501, 4705, 6, 'MARIA GORETTI SILVA', 11690.00),

                (1502, 3211, 4, 'MARIA GORETTI SILVA DE ASSIS BRASIL', 11082.00),

                (1503, 4373, 2, 'MARIA IVONE', 4102.00),

                (1504, 1793, 5, 'MARIA IZABEL MARTINS', 11065.00),

                (1505, 951, 7, 'MARIA JOS CANTO SILVEIRA', 13001.00),

                (1506, 383, 7, 'MARIA MARATO CANTO', 10671.00),

                (1507, 5176, 2, 'MARIA MANUELA SILVEIRA', 6464.00),

                (1508, 3346, 1, 'MARIA DE LEAO', 2411.00),

                (1509, 2479, 4, 'MARIA FRANCISCA MARTINS BRASILIENSE', 10278.00),

                (1510, 1108, 7, 'MARIA HELENA DE ASSIS BRASIL', 7532.00),

                (1511, 3899, 2, 'MARIA HELENA DIAS DE ASSIS BRASIL', 10704.00),

                (1512, 3441, 1, 'MARIA DO ESPIRITO SANTO', 6044.00),

                (1513, 2967, 1, 'MARIA HELENA DORNELLES DE ASSIS BRASIL', 8731.00),

                (1514, 1045, 1, 'MARIA HELENA GARCIA DE ASSIS BRASIL', 8049.00),

                (1515, 1358, 6, 'MARIA HELENA LEAL COSTA', 5316.00),

                (1516, 144, 6, 'MARIA HELENA ROSAS PINHO', 2416.00),

                (1517, 2106, 7, 'MARIA HELENA ZOBARAN', 2996.00),

                (1518, 5060, 7, 'MARIA IGNES MAYCA', 12633.00),

                (1519, 292, 2, 'MARIA IGNES DE ASSIS BRASIL', 5627.00),

                (1520, 1263, 4, 'MARIA INES DE ASSIS BRASIL', 9699.00),

                (1521, 5038, 5, 'MARIA IZABEL BRASILIENSE CARVALHO', 1505.00),

                (1522, 3946, 6, 'MARIA IZABEL MARTINS', 3054.00),

                (1523, 4445, 7, 'MARIA JOAQUINA DA CONCEICAO', 11440.00),

                (1524, 1282, 1, 'MARIA JOAQUINA DO ROZARIO LESSA', 3740.00),

                (1525, 1285, 3, 'MARIA JULIA DA SILVA FARIA', 4840.00),

                (1526, 1141, 7, 'MARIA JULIA DE ASSIS BRASIL JOBIM', 10528.00),

                (1527, 3510, 7, 'MARIA LUCIA BRASIL', 13199.00),

                (1528, 4614, 6, 'MARIA LUCIA BORGES DE ASSIS BRASIL', 7868.00),

                (1529, 4712, 3, 'MARIA LUCIA DA SILVA BORGES', 4868.00),

                (1530, 367, 2, 'MARIA LUCIA MENNA BARRETO DE ABREU', 5112.00),

                (1531, 1713, 5, 'MARIA LUIZA BRASILIENSE MARCANTONIO', 10054.00),

                (1532, 3844, 5, 'MARIA LUIZA DE ASSIS BRASIL', 11871.00),

                (1533, 4360, 3, 'MARIA LUIZA DE ASSIS BRASIL SARMENTO', 4010.00),

                (1534, 2866, 3, 'MARIA LUIZA DE ASSIS BRASIL SILVEIRA', 8558.00),

                (1535, 4503, 3, 'MARIA LUIZA DORNELLES', 5503.00),

                (1536, 1243, 4, 'MARIA LUIZA RODRIGUES BRASILIENSE', 11527.00),

                (1537, 4326, 7, 'MARIA MANUELA DA SILVEIRA', 13124.00),

                (1538, 3483, 3, 'MARIA MARTINS COSTA FERREIRA', 9387.00),

                (1539, 3058, 1, 'MARIA MARTINS COSTA PEREIRA', 6881.00),

                (1540, 2654, 5, 'MARIA MERCEDES PIRES DE ASSIS BRASIL', 12016.00),

                (1541, 2096, 2, 'MARIA MERCEDES PIRES DE PIRES', 3926.00),

                (1542, 4020, 2, 'MARIA RIBEIRO DE ANDRADE BOTELHO', 2403.00),

                (1543, 115, 6, 'MARIA RIBEIRO MATTOS', 4527.00),

                (1544, 2193, 6, 'MARIA RITA DE CASSIA VALENTE RIBEIRO E SOUZA', 2371.00),

                (1545, 924, 3, 'MARIA RITA SABO DE ASSIS BRASIL', 3600.00),

                (1546, 5514, 6, 'MARIA ROCHA MENDONCA', 5022.00),

                (1547, 677, 4, 'MARIA ROSA DA SILVA', 1044.00),

                (1548, 4980, 6, 'MARIA SOFIA ISABEL DE BAVIERA DE NEUBOURG', 3801.00),

                (1549, 1237, 3, 'MARIA SOFIA ISABEL DE NEUBOURG', 9019.00),

                (1550, 5431, 6, 'MARIA TEODORA DE ASSUMPCAO', 2948.00),

                (1551, 1424, 7, 'MARIA TEREZA GONCALVES', 2191.00),

                (1552, 2458, 1, 'MARIA TERESA GOULART', 12880.00),

                (1553, 1410, 5, 'MARIA VALESCA SANTOS DE ASSIS BRASIL', 2865.00);

   

    -- ok

    

    -- Erro Começa Aqui

    

 INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES                             

                (1554, 3422, 2, 'MARIAH ASSIS BRASIL RAMOS RIBEIRO', 9069.00),

                (1555, 1143, 5, 'MARIANA ASSIS BRASIL DE OLIVEIRA', 2370.00),

                (1556, 5363, 2, 'MARIANA DE ABREU LUNA', 6095.00),

                (1557, 4391, 3, 'MARIANA BRASIL MASSON', 12015.00),

                (1558, 1545, 5, 'MARIANA MASSON CAMPOS', 10389.00),

                (1559, 4783, 5, 'MARIANA DE GODOY', 3106.00),

                (1560, 523, 5, 'MARIANA DE SA', 5186.00),

                (1561, 4045, 4, 'MARIANA HAUSSEN', 9911.00),

                (1562, 2155, 4, 'MARIANA ASSIS BRASIL CARVALHO', 5464.00),

                (1563, 966, 7, 'MARIANA CANDIDO DE OLIVEIRA MONTEIRO', 13251.00),

                (1564, 1044, 3, 'MARIANA DE ABREU E LUNA', 1117.00),

                (1565, 1626, 2, 'MARIANA DE ANDRADE SOARES', 3750.00),

                (1566, 4907, 7, 'MARIANA DE ASSIS BRASIL E WEIGERT', 10229.00),

                (1567, 2977, 2, 'MARIANA DE ASSIS BRASIL HORN', 11420.00),

                (1568, 5033, 4, 'MARIANA DE ASSIS BRASIL MASSON', 2307.00),

                (1569, 1074, 2, 'MARIANA DE NEUBOURG', 8077.00),

                (1570, 1290, 4, 'MARIANA DE SA PEREIRA', 10042.00),

                (1571, 3598, 4, 'MARIANA ELSEMANN TOSSING', 5413.00),

                (1572, 1138, 6, 'MARIANA FERNANDES', 12949.00),

                (1573, 5148, 3, 'MARIANA REGAUT DE LA MORETE', 3043.00),

                (1574, 3906, 5, 'MARIANA SALINAS', 2187.00),

                (1575, 3385, 7, 'MARIANGELA MENDONCA SOUZA', 10171.00),

                (1576, 4387, 3, 'MARIANNA COIMBRA GONCALVES', 2309.00),

                (1577, 4143, 1, 'MARIANNA JOSEPHA DE MENEZES', 11876.00),

                (1578, 4422, 7, 'MARIAPIA ASSIS BRASIL RAMOS RIBEIRO', 4613.00),

                (1579, 4425, 7, 'MARIE DE LA MORETE', 4296.00),

                (1580, 3646, 4, 'MARIELA BRASILIENSE PASA', 6162.00),

                (1581, 356, 1, 'MARIETA SEVERO', 1893.00),

                (1582, 1547, 1, 'MARILAINE DA MOTTA BRASIL', 7354.00),

                (1583, 1403, 1, 'MARILDA MENDONCA SOUZA', 4637.00),

                (1584, 2157, 3, 'MARILA M. LEAL CARUSO', 4198.00),

                (1585, 2472, 7, 'MARILIA CECHELLA', 8097.00),

                (1586, 5216, 1, 'MARILIA DA POIAN FURLAN', 3205.00),

                (1587, 2377, 4, 'MARILIA DE ASSIS BRASIL LEAL', 10153.00),

                (1588, 4687, 7, 'MARILIA PEREIRA COSTELLO', 11794.00),

                (1589, 4424, 4, 'MARILIA SABO DE ASSIS BRASIL', 6950.00),

                (1590, 2054, 5, 'MARILIA VALLE PETRARCA', 7354.00),

                (1591, 5206, 6, 'MARILU BRASILIENSE PASA', 1424.00),

                (1592, 1735, 7, 'MARILUCE MENDONCA SOUZA', 6311.00),

                (1593, 4987, 4, 'MARINA ASSIS BRASIL', 7234.00),

                (1594, 3543, 3, 'MARINA LIS FRIEDLUND LEMES', 7616.00),

                (1595, 4570, 4, 'MARINA PRATES DA FONSECA', 5386.00),

                (1596, 3878, 6, 'MARINA BRASILIENSE CARVALHO', 13434.00),

                (1597, 3714, 5, 'MARLY BRASILIENSE CARVALHO', 1885.00),

                (1598, 3854, 4, 'MARIO ALBERTO BORGES GRAOSQUE', 12387.00),

                (1599, 1902, 7, 'MARIO DE ARATANHA', 2140.00),

                (1600, 5376, 6, 'MARIO DE ASSIS BRASIL', 1833.00),

                (1601, 3575, 6, 'MARIO DE ASSIS BRASIL BORCHARDT', 5701.00),

                (1602, 4461, 2, 'MARIO DE ASSIS BRASIL E SILVA', 7908.00),

                (1603, 3869, 1, 'MARIO LECO POSSOLLO', 7873.00),

                (1604, 376, 2, 'MARIO MARCANTONIO', 4820.00),

                (1605, 146, 2, 'MARION AZOLIN', 5536.00),

                (1606, 3363, 3, 'MARION LEMES', 2304.00),

                (1607, 4176, 3, 'MARIZA BRASILIENSE CARVALHO', 8154.00),

                (1608, 3816, 7, 'MARIZA DE ASSIS BRASIL', 11828.00),

                (1609, 2663, 7, 'MARLIZA CAMARGO MENDONCA', 11948.00),

                (1610, 1824, 5, 'MARJORIE EVELYN NELSON (MARGIE)', 5906.00),

                (1611, 2073, 4, 'MARLEI DA MOTTA BRASIL', 12373.00),

                (1612, 2095, 4, 'MARLENE BRASILIENSE CARVALHO', 11764.00),

                (1613, 3115, 4, 'MARLENE DE ASSIS BRASIL', 9268.00),

                (1614, 4167, 6, 'MARLENE LEAL', 7542.00),

                (1615, 2064, 4, 'MARLENE PERES ', 6415.00),

                (1616, 3292, 3, 'MARLENE PINTO DA SILVEIRA CORREA PIRES DE AZAMBUJA', 1830.00),

                (1617, 5491, 3, 'MARLOS NOBRE', 1574.00),

                (1618, 1392, 6, 'MARQUES DA CRUZ', 11915.00),

                (1619, 45, 5, 'MARTA BRASILIENSE BRASIL', 11899.00),

                (1620, 2748, 3, 'MARTA CRISTINA URRUTIA BRASILIENSE', 1072.00),

                (1621, 1564, 3, 'MARTA HELENA LEAL COSTA', 10234.00),

                (1622, 389, 6, 'MARTA SALVAD BARBOSA', 8541.00),

                (1623, 491, 4, 'MARTHA AZAMBUJA', 1960.00),

                (1624, 546, 7, 'MARTHA DE ASSIS BRASIL', 13419.00),

                (1625, 4837, 5, 'MARTHA DE ASSIS BRASIL MENDES', 1976.00),

                (1626, 3849, 6, 'MARTHA DE SANTO ANTONIO', 9226.00),

                (1627, 1982, 1, 'MARTHA HELENA DE ASSIS BRASIL', 8335.00),

                (1628, 1605, 5, 'MARTIM AFONSO CHICHORRO', 3827.00),

                (1629, 1361, 7, 'MARTIM AFFONSO DE SOUZA', 5791.00),

                (1630, 4355, 3, 'MARTIN AFONSO DE SOUSA', 11570.00),

                (1631, 5050, 7, 'MARY DE CARLO SANTOS', 3403.00),

                (1632, 4742, 6, 'MARSEYLLE LOUISE DE ASSIS BRASIL', 12182.00),

                (1633, 3127, 6, 'MARYLA PEREIRA DE OLIVEIRA', 13099.00),

                (1634, 1846, 4, 'MATEUS DE ARAUJO BASTOS', 1349.00);

 -- O Erro tá aqui

                INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES

                (1635, 1636, 5, 'MATEUS MACHADO FAGUNDES DE AZEVEDO', 8429.00),

                (1636, 2368, 6, 'MATHEUS DA COSTA MARINHO', 6351.00),

                (1637, 2905, 2, 'MATHEUS FERNANDES', 11520.00),

                (1638, 1993, 5, 'MATHEUS JOAO', 4963.00),

                (1639, 943, 1, 'MATHEUS JOAO', 10732.00),

                (1640, 1676, 6, 'MATHEUS RAVASI AZOLIN', 9343.00),

                (1641, 2116, 5, 'MATHIAS CAMARGO MENDONCA', 11587.00),

                (1642, 1183, 4, 'MATILDE SCHLITICAS MONTEIRO', 2351.00),

                (1643, 331, 4, 'MATILDE SOARES', 13027.00),

                (1644, 1756, 6, 'MAURA MULLER DE ASSIS BRASIL', 1882.00),

                (1645, 5152, 3, 'MAURICIO BRASILIENSE HECHLER', 13176.00),

                (1646, 4415, 2, 'MAURO BRASILIENSE CARVALHO', 12453.00),

                (1647, 2828, 5, 'MAURO DE ASSIS BRASIL', 1947.00),

                (1648, 5075, 5, 'MAURO ZOBARAN TREIN', 1438.00),

                (1649, 471, 6, 'MAURO SENISE', 6874.00),

                (1650, 2424, 2, 'MAURO SRGIO DE ASSIS BRASIL', 7072.00),

                (1651, 3746, 6, 'MAURO STARETZ', 11475.00),

                (1652, 2006, 5, 'MAYL DE ASSIS BRASIL', 4293.00),

                (1653, 858, 4, 'MAYSA THEREZA DE ...', 5035.00),

                (1654, 3096, 5, 'MCIA ROIZ', 9096.00),

                (1655, 2475, 4, 'MEDORA ARRUDA', 3741.00),

                (1656, 4475, 6, 'MEIRE GARCIA DE SOUSA ', 10267.00),

                (1657, 1451, 6, 'MELANIE OBLADEN DE ASSIS BRASIL', 5040.00),

                (1658, 707, 7, 'MELO MORAIS E FILHO', 12026.00),

                (1659, 1374, 7, 'MEM GARCIA DE SOUSA', 6047.00),

                (1660, 3499, 4, 'MENA VOIGT', 7885.00),

                (1661, 1827, 3, 'MENAYA RIBEIRO', 6485.00),

                (1662, 4018, 1, 'MICHELLE MORAES DE ASSIS BRASIL', 4261.00),

                (1663, 1661, 3, 'MICHELE PIVETA RODRIGUES', 2809.00),

                (1664, 374, 4, 'MIGUEL ANTONIO DA SILVEIRA', 7687.00),

                (1665, 4355, 1, 'MIGUEL AUGUSTO POCAS SCHERER', 7592.00),

                (1666, 2766, 2, 'MIGUEL CAMPOS MAIA', 4882.00),

                (1667, 552, 6, 'MIGUEL CARDOSO FERREIRA', 6113.00),

                (1668, 997, 2, 'MIGUEL CARDOSO FERREIRA', 1038.00),

                (1669, 4342, 7, 'MIGUEL DE OLIVEIRA PAES', 7316.00),

                (1670, 390, 5, 'MIGUEL ZOBARAN FIGUEIREDO', 1658.00),

                (1671, 4445, 6, 'MIGUELINA BRASILIENSE', 1911.00),

                (1672, 778, 4, 'MILCO URRUTIA BRASILIENSE', 11324.00),

                (1673, 1560, 6, 'MILLENA CARVALHO DE MORAES NOGUEIRA', 11334.00),

                (1674, 4627, 6, 'MILTON DE FARIA BORGES', 9275.00),

                (1675, 3310, 6, 'MIRELLA MARCIA', 5787.00),

                (1676, 2716, 2, 'MIRNA ROSA', 3177.00),

                (1677, 3350, 4, 'MIRNA ROSA DE ASSIS BRASIL', 2424.00),

                (1678, 1304, 6, 'MITIELI SACCOL FERNANDES', 3537.00),

                (1679, 3534, 6, 'MONIQUE ISSA DE DE ASSIS BRASIL', 9989.00),

                (1680, 2697, 1, 'MOSLOVA SCHAPKE', 12378.00),

                (1681, 2460, 7, 'MUNIA RIBEIRO', 1357.00),

                (1682, 3300, 6, 'MUNIO FERNANDES DE TOURO', 1906.00),

                (1683, 481, 3, 'MYLENE LOUISE DE ASSIS BRASIL', 12149.00),

                (1684, 2223, 3, 'MYRIAM FRAGA', 1744.00),

                (1685, 5042, 5, 'MYRIAM FRAGA', 10017.00),

                (1686, 4864, 7, 'MYRIAN DE ASSIS BRASIL MOREIRA', 4237.00),

                (1687, 5044, 3, 'MYRTHES MARTINS FERREIRA', 8875.00),

                (1688, 1589, 1, 'NADIR DOMINGUES', 3678.00),

                (1689, 1030, 6, 'NAIR BERTOLETTI', 1434.00),

                (1690, 2123, 7, 'NAIR DE ASSIS BRASIL', 11580.00),

                (1691, 1731, 5, 'NAIR DE ASSIS BRASIL GRAOSQUE', 10526.00),

                (1692, 785, 7, 'NARA BEATRIZ SOARES BLANCO', 7968.00),

                (1693, 1456, 5, 'NARA ELIZABETH SORRILLA ROSA', 8590.00),

                (1694, 3190, 3, 'NATHALIA DE ASSIS BRASIL LEAL', 11291.00),

                (1695, 2714, 7, 'NATHALIA JOBIM ROMERO', 1551.00),

                (1696, 3183, 6, 'NELSON ANTONIO FURLAN', 4358.00),

                (1697, 5076, 6, 'NELSON BRAGA MOREIRA', 11451.00),

                (1698, 2269, 2, 'NELSON DE ASSIS BRASIL', 11462.00),

                (1699, 5157, 3, 'NELSON FERREIRA DOS SANTOS', 11880.00),

                (1700, 2046, 1, 'NELSON JOBIM', 11102.00),

                (1701, 5039, 3, 'NERI LINERIS SILVEIRA', 10381.00),

                (1702, 4629, 1, 'NERO JOBIM', 1406.00),

                (1703, 330, 2, 'NEUSA RITTER VON JELITA', 5770.00),

                (1704, 221, 1, 'NEUSA RITTER VON JELITA LEMES', 11142.00),

                (1705, 3532, 4, 'NEY DA SILVA FARIA', 10856.00),

                (1706, 2135, 2, 'NEY MAZZINE', 13144.00),

                (1707, 2661, 4, 'NEWTON VALENTINI', 4608.00),

                (1708, 1098, 5, 'NEY DE ASSIS BRASIL (E SILVA)', 11559.00),

                (1709, 5279, 6, 'NICE DA SILVEIRA BRASILIENSE', 12093.00),

                (1710, 5336, 3, 'NICOLAS EYMERICH', 10091.00),

                (1711, 122, 2, 'NICOLAU EIMERICH', 9630.00),

                (1712, 2135, 5, 'NILSON MARIANO', 2215.00),

                (1713, 1281, 6, 'NILTON MONTI', 10855.00),

                (1714, 3567, 3, 'NILZA MARTINS', 6181.00),

                (1715, 2590, 5, 'NINO TOBIAS DE ANDRADE KRAUTHŽUSER', 8774.00),

                (1716, 1689, 6, 'NIVALDO ORNELAS', 11307.00),

                (1717, 5255, 4, 'NOEMI AUGUSTA DA COSTA MACHADO (NOEMIA)', 7596.00),

                (1718, 4924, 2, 'NOEMIA COSTA PEREIRA DE ASSIS BRASIL', 13366.00),

                (1719, 3901, 1, 'NOEMIA DODE', 11675.00),

                (1720, 5128, 6, 'NONATO MARQUES', 8452.00),

                (1721, 3322, 7, 'NORA DE ASSIS BRASIL E SILVA', 12435.00),

                (1722, 4955, 3, 'NYNPHA VICTORINO', 12853.00),

                (1723, 4709, 5, 'ODETI DE MEDEIROS BRASIL LEAL', 12507.00),

                (1724, 4098, 1, 'ODETI PEIXOTO DE MEDEIROS', 1191.00),

                (1725, 4008, 2, 'ODILA BRASIL LEMES', 2624.00),

                (1726, 3422, 3, 'ODILA LEMES MULLER', 8436.00),

                (1727, 3364, 1, 'ODITE ALVES RODRIGUES', 8171.00),

                (1728, 1315, 3, 'OLAVO BRASILIENSE DOS SANTOS', 4748.00),

                (1729, 2556, 6, 'OLAVO DE ASSIS BRASIL', 7029.00),

                (1730, 2554, 1, 'OLDEGAR FRANCO VIEIRA', 7688.00),

                (1731, 3935, 6, 'OLGA HELENA DE ASSIS BRASIL', 9150.00),

                (1732, 1865, 6, 'OLGA MARIA FRAGOSO BARBOSA', 1400.00),

                (1733, 3751, 7, 'OLIMPIO DA SILVEIRA', 11870.00),

                (1734, 868, 5, 'OLIMPIO MOURAO FILHO', 3727.00),

                (1735, 2017, 7, 'OLYMPIA DE ASSIS BRASIL', 4131.00),

                (1736, 2017, 5, 'OLINTO DE ASSIS BRASIL', 5584.00),

                (1737, 1571, 3, 'OLIVER NELSON', 8904.00),

                (1738, 2155, 1, 'OMAR FONTOURA FERNANDES', 4539.00),

                (1739, 1177, 7, 'OMETTE COLEMAN', 2988.00),

                (1740, 4329, 2, 'ONOFRE BRASIL LEMES', 11726.00),

                (1741, 4420, 3, 'ORLANDO CORREA LOPES', 13247.00),

                (1742, 4439, 4, 'ORIZONTINA ROSA MOSSATE', 12010.00),

                (1743, 2970, 4, 'ORPHILA DE ASSIS BRASIL', 2956.00),

                (1744, 2789, 2, 'OSCAR DE ASSIS BRASIL', 5638.00),

                (1745, 1158, 7, 'OSCAR NIEMEYER', 12332.00),

                (1746, 2421, 5, 'OSCARINA JACINTHO PEREIRA', 10702.00),

                (1747, 4938, 4, 'OSMAR SENNA', 7854.00),

                (1748, 4693, 1, 'OSORIO SANTANA FIGUEIREDO', 2286.00),

                (1749, 3367, 5, 'OSORIO SANTANA FIGUEIREDO', 6503.00),

                (1750, 4544, 7, 'OSVALDO MARITORI DOS ANJOS', 2984.00),

                (1751, 2834, 6, 'OSWALDO ARANHA', 5560.00),

                (1752, 5177, 2, 'OSWALDO CORDEIRO DE FARIAS', 6188.00),

                (1753, 1311, 3, 'OSWALDO SARGENTELLI FILHO', 9133.00),

                (1754, 2096, 7, 'OTAVIO PAZ', 7350.00),

                (1755, 1395, 7, 'OTAVIO PRATES BRASILIENSE', 12114.00),

                (1756, 2348, 2, 'LANDELL DE MOURA', 11402.00),

                (1757, 378, 6, 'PALMIRA VIEIRA', 8716.00),

                (1758, 573, 2, 'PAPA PAULO III', 1909.00),

                (1759, 366, 4, 'PARY DA SILVA FARIA', 2702.00),

                (1760, 1416, 2, 'PASCOA ROSA DE SA E ANDRADE', 8544.00),

                (1761, 5020, 5, 'PATRICIA BARRETO MENDONCA', 3270.00),

                (1762, 4403, 4, 'PATRICIA LINS E SILVA CANDIDO DE OLIVEIRA', 13445.00),

                (1763, 5304, 1, 'PATRICIA DORNELLES SCHNEIDER', 3866.00),

                (1764, 5116, 6, 'PAULA ARAUJO DE ASSIS BRASIL', 2864.00),

                (1765, 4285, 4, 'PAULINO BRASIL', 1561.00),

                (1766, 4307, 4, 'PAULO ANTONIO GONCALVES DE ASSIS BRASIL', 3750.00),

                (1767, 1405, 2, 'PAULO ANTONIO MARTINS BRASILIENSE', 4112.00),

                (1768, 4632, 4, 'PAULO BATISTA BRASIL MAIA', 5894.00),

                (1769, 2448, 2, 'PAULO CELSO RODRIGUES BRASILIENSE', 7215.00),

                (1770, 1532, 1, 'PAULO CSAR DE OLIVEIRA', 12851.00);

   

     INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES         

                (1771, 3011, 6, 'PAULO CESAR GOMES MACHADO', 6651.00),

                (1772, 2854, 3, 'PAULO CHAGAS LEAL', 12422.00),

                (1773, 4267, 6, 'PAULO DA CUNHA TEIXEIRA', 13068.00),

                (1774, 4803, 6, 'PAULO DE ASSIS BRASIL', 9854.00),

                (1775, 5305, 3, 'PAULO DE ASSIS BRASIL', 2747.00),

                (1776, 1779, 2, 'PAULO DE ASSIS BRASIL', 4730.00),

                (1777, 741, 1, 'PAULO DE ASSIS BRASIL LEAL', 3583.00),

                (1778, 816, 1, 'PAULO DE BEM SALINAS', 4210.00),

                (1779, 1878, 5, 'PAULO DE CARVALHO', 2739.00),

                (1780, 3260, 7, 'PAULO DE CARVALHO', 3380.00),

                (1781, 2536, 5, 'PAULO ERICO BOSCHIROLI', 9709.00),

                (1782, 158, 3, 'PAULO FERNANDO RANZOLIN', 6896.00),

                (1783, 5178, 6, 'PAULO FERRUGEM BRASILIENSE', 9925.00),

                (1784, 938, 1, 'PAULO HENRIQUE BRASILIENSE DIAS', 10479.00),

                (1785, 708, 1, 'PAULO JOBIM', 8751.00),

                (1786, 5118, 3, 'PAULO LEONARDI', 11180.00),

                (1787, 218, 6, 'PAULO MARIO (ALMIRANTE)', 7593.00),

                (1788, 1560, 2, 'PAULO MIRANDA DE ASSIS BRASIL', 7764.00),

                (1789, 567, 3, 'PAULO MOURA', 8759.00),

                (1790, 4604, 5, 'PAULO RENATO DE ASSIS BRASIL', 12043.00),

                (1791, 2673, 6, 'PAULO RENATO REIS BOHRER', 11429.00),

                (1792, 2943, 7, 'PAULO RICARDO BRASILIENSE', 2344.00),

                (1793, 4523, 2, 'PAULO ROBERTO DE ALMEIDA', 12393.00),

                (1794, 1503, 5, 'PAULO ROBERTO FERREIRA LEAL', 12851.00),

                (1795, 3622, 4, 'PAULO ROBERTO IRION JOBIM ', 6254.00),

                (1796, 5068, 2, 'PAULO ROBERTO PERRONI BRASILIENSE', 9937.00),

                (1797, 3580, 7, 'PAULO ROBERTO SACCOMORI FILHO', 3941.00),

                (1798, 956, 5, 'PAULO RODRIGUES DE ASSIS BRASIL', 1503.00),

                (1799, 725, 7, 'PAULO SRGIO SANTOS', 7425.00),

                (1800, 4992, 7, 'PAULO SCHILLING', 3619.00),

                (1801, 5126, 3, 'PAULO SRGIO SANTOS', 12250.00),

                (1802, 1085, 4, 'PAULO ZOBARAN FERREIRA', 6566.00),

                (1803, 1765, 2, 'PEDRO ALVARES CABRAL', 7943.00),

                (1804, 3636, 3, 'PEDRO ALVAREZ', 13067.00),

                (1805, 65, 4, 'PEDRO BARBOSA', 8103.00),

                (1806, 2394, 5, 'PEDRO CORREA MASCARENHAS', 9844.00),

                (1807, 1269, 7, 'PEDRO CZIMIKOSKI', 9829.00),

                (1808, 2039, 7, 'PEDRO DE ASSIS BRASIL MACEDO', 12925.00),

                (1809, 2139, 5, 'PEDRO DE BEM SALINAS', 5909.00),

                (1810, 4633, 3, 'PEDRO DE BEM SALINAS', 10476.00),

                (1811, 4257, 4, 'PEDRO DE CASTILHO', 12596.00),

                (1812, 172, 1, 'PEDRO DE PINTO', 10108.00),

                (1813, 2704, 5, 'PEDRO DE SALINAS', 12785.00),

                (1814, 3628, 1, 'PEDRO DE SILVA ROZA', 8169.00),

                (1815, 1588, 5, 'PEDRO MONTI DE ASSIS BRASIL ROCHA', 3816.00),

                (1816, 5424, 7, 'PEDRO SALINAS', 10454.00),

                (1817, 3686, 7, 'PEDRO DE SOUSA BRASIL', 6061.00),

                (1818, 861, 5, 'PEDRO DO BRASIL', 13384.00),

                (1819, 4897, 6, 'PEDRO GONCALVES', 8618.00),

                (1820, 4752, 3, 'PEDRO JOAO', 7595.00),

                (1821, 2440, 7, 'PEDRO JOAO', 4382.00),

                (1822, 2907, 4, 'PEDRO KILKERRY', 1225.00),

                (1823, 4766, 1, 'PEDRO KILKERRY', 10727.00),

                (1824, 2860, 5, 'PEDRO LIRA', 6030.00),

                (1825, 4596, 1, 'PEDRO LEAO', 10617.00),

                (1826, 1897, 7, 'PEDRO LEAO DE SA', 11036.00),

                (1827, 71, 7, 'PEDRO LUIZ DE SOUZA', 5878.00),

                (1828, 176, 3, 'PEDRO LUIZ DO BRASIL', 7910.00),

                (1829, 5345, 2, 'PEDRO MANOEL MARQUES MORGA', 1431.00),

                (1830, 808, 2, 'PEDRO MEDEIROS DE ASSIS BRASIL', 7615.00),

                (1831, 834, 7, 'PEDRO MIRANDA DE ASSIS BRASIL', 3555.00),

                (1832, 5311, 6, 'PEDRO MONTI DE ASSIS BRASIL ROCHA', 6707.00),

                (1833, 5099, 2, 'PENHA GRIJO', 13177.00),

                (1834, 3659, 2, 'PERCILIANO DA SILVA FARIA', 12570.00),

                (1835, 4078, 7, 'PERCILIANO DE FARIA CORREA', 4238.00),

                (1836, 5418, 1, 'PERO LUIS DE SOUSA DO BRASIL', 9556.00),

                (1837, 4419, 2, 'PERY REIS', 6115.00),

                (1838, 3626, 5, 'PETHION DE VILAR', 4634.00),

                (1839, 1952, 6, 'PHIL WOODS', 11069.00),

                (1840, 5519, 5, 'PIERRE DE SOUZA LIMA', 2991.00),

                (1841, 5416, 7, 'PIETRO FERNANDES CASSOL', 8100.00),

                (1842, 5028, 5, 'PIETRO MAURO RODRIGUES CARVALHO DE MORAES', 7809.00),

                (1843, 254, 1, 'PINHEIRO MACHADO', 5318.00),

                (1844, 3000, 5, 'PINHEIRO VIEGAS', 6943.00),

                (1845, 1942, 1, 'PINTO GUEDES', 9150.00),

                (1846, 1298, 3, 'PLINIO DE ASSIS BRASIL', 8904.00),

                (1847, 3268, 3, 'PLINIO DE ASSIS BRASIL NETO', 13376.00),

                (1848, 1083, 2, 'PLINIO PAZ MEDEIROS', 12270.00),

                (1849, 2822, 4, 'POTY REIS', 1562.00),

                (1850, 4242, 3, 'PROKOFIEFF', 3677.00),

                (1851, 3090, 5, 'PROTESILAU ZOBARAN', 6457.00),

                (1852, 782, 4, 'PRUDENTE DE MORAES', 9652.00),

                (1853, 1935, 4, 'PTOLOMEU DE ASSIS BRASIL', 2723.00),

                (1854, 2175, 6, 'QUILUCHA DE ASSIS BRASIL JOBIM', 1373.00),

                (1855, 3316, 6, 'RACHEL MIZRAHI BROMBERG', 6993.00),

                (1856, 3543, 3, 'RAFAEL ASSIS BRASIL RAMOS ARO', 11173.00),

                (1857, 2216, 7, 'RAFAEL BARBOSA TREIN', 11444.00),

                (1858, 1645, 3, 'RAFAEL BRASILIENSE ELSEMANN', 8751.00),

                (1859, 4173, 6, 'RAFAEL MACHADO DE ASSIS BRASIL', 4813.00),

                (1860, 540, 6, 'RAFAEL ZOBARAN', 6801.00),

                (1861, 3554, 7, 'RAFAEL ZOBARAN PEREIRA', 4317.00),

                (1862, 2724, 5, 'RAFAELA ZOBARAN RAMIRES', 4357.00),

                (1863, 977, 5, 'RAIMUNDO C. CARUSO ', 3150.00),

                (1864, 3274, 1, 'RAIMUNDO DE PE¥AFORT', 5707.00),

                (1865, 5559, 5, 'RAQUEL BRASILIENSE ELSEMANN', 6246.00),

                (1866, 1748, 5, 'RAQUEL BRASILIENSE MARINHO', 8843.00),

                (1867, 1643, 4, 'RAUL DE ASSIS BRASIL MAGOGA', 1948.00),

                (1868, 768, 1, 'RAUL DE ASSIS BRASIL TEIXEIRA', 10663.00),

                (1869, 3668, 6, 'RAYMUNDO AMADO GONCALVES', 1197.00),

                (1870, 1714, 5, 'REGINA MARIA LINS E SILVA', 13410.00),

                (1871, 2331, 4, 'REINALDO DA SILVA BRASILIENSE', 6758.00),

                (1872, 4292, 7, 'REMI ANTONIO ROSSI', 3505.00),

                (1873, 2025, 6, 'RENATA BRAGANCA MORAES DE ASSIS BRASIL', 12656.00),

                (1874, 2543, 3, 'RENATA TRANBAB', 5501.00),

                (1875, 3205, 5, 'RENATA ZOBARAN PEREIRA', 10994.00),

                (1876, 1921, 7, 'RENATO FONSECA DE ASSIS BRASIL', 3035.00),

                (1877, 3295, 1, 'RENATO DE ASSIS BRASIL', 11993.00),

                (1878, 5378, 3, 'RENATO HECHLER', 6808.00),

                (1879, 1460, 1, 'RENO RAMOS', 12547.00),

                (1880, 5106, 5, 'REVECA STARETZ', 1932.00),

                (1881, 4476, 7, 'RICARDO ARAUJO DE ASSIS BRASIL', 11739.00),

                (1882, 3066, 6, 'RICARDO ASSIS BRASIL PFEIFER', 5310.00),

                (1883, 2735, 5, 'RICARDO AZEVEDO DE ASSIS BRASIL', 9078.00),

                (1884, 709, 5, 'RICARDO BRASILIENSE ROSSI', 11537.00),

                (1885, 1288, 4, 'RICARDO ARAUJO DE ASSIS BRASIL', 2343.00),

                (1886, 269, 4, 'RICARDO DE ABREU ASSIS BRASIL', 4783.00),

                (1887, 2144, 5, 'RICARDO DE ASSIS BRASIL', 13303.00),

                (1888, 340, 7, 'RICARDO DE ASSIS BRASIL SASSI', 10125.00),

                (1889, 1364, 1, 'RICARDO MONEGO', 10903.00),

                (1890, 2453, 5, 'RICARDO PUGLIESE', 9863.00),

                (1891, 3078, 3, 'RICARDO SOUTO RODRIGUES FILHO', 5077.00),

                (1892, 775, 7, 'RICARDO ZOBARAN', 11374.00),

                (1893, 3122, 1, 'RICHIE COLE', 5577.00),

                (1894, 264, 3, 'RITA DE ARAUJO', 11074.00),

                (1895, 3317, 2, 'RITA DE FATIMA LAGOS TEIXEIRA', 13205.00),

                (1896, 154, 7, 'RITA DE FATIMA TEIXEIRA ZOBARAN', 13099.00),

                (1897, 2344, 1, 'RITA MARIA GONCALVES DA CONCEICAO', 6133.00),

                (1898, 3493, 7, 'RITA SOARES', 11513.00),

                (1899, 3031, 4, 'ROBERTA BRASILIENSE MARCANTONIO', 8800.00),

                (1900, 4971, 3, 'ROBERTO DE ASSIS BRASIL', 7959.00),

                (1901, 214, 5, 'ROBERTO DE ASSIS BRASIL', 12871.00),

                (1902, 3957, 7, 'ROBERTO DE ASSIS BRASIL MENDES', 3484.00),

                (1903, 2976, 4, 'ROBERTO DE ASSIS BRASIL VALLE', 3639.00),

                (1904, 1475, 2, 'ROBERTO FERRUGEM BRASILIENSE', 13220.00),

                (1905, 995, 3, 'ROBERTO FIGUEIREDO', 3257.00),

                (1906, 1999, 4, 'ROBERTO NUNES MENDES', 2597.00),

                (1907, 619, 6, 'ROBERTO QUARTIN', 5162.00),

                (1908, 4107, 4, 'ROBERTO RIBEIRO DE BUSTAMANTE', 1359.00),

                (1909, 4765, 5, 'ROBERVAL PEREYR', 3652.00),

                (1910, 209, 7, 'ROBERVAL PEREYRA', 2346.00),

                (1911, 3407, 6, 'RODRIGO ASSIS BRASIL RAMOS ARO', 1392.00),

                (1912, 4885, 1, 'RODRIGO MASCARENHAS MONTEIRO', 2271.00),

                (1913, 2343, 6, 'RODRIGO DE ASSIS BRASIL FAGUNDES', 10934.00),

                (1914, 1596, 6, 'RODRIGO DE CARVALHO', 1134.00),

                (1915, 1476, 7, 'RODRIGO ISSA DE ASSIS BRASIL', 1563.00),

                (1916, 767, 3, 'RODRIGO LINS E SILVA CANDIDO DE OLIVEIRA', 11729.00),

                (1917, 2633, 2, 'RODRIGO MARCELO MULLER', 7681.00),

                (1918, 4073, 4, 'RODRIGO MASCARENHAS MONTEIRO', 6715.00),

                (1919, 174, 4, 'RODRIGO ROSA DE ASSIS BRASIL', 8157.00),

                (1920, 2672, 4, 'RODRIGO SEVERO BRASILIENSE', 6336.00),

                (1921, 5137, 2, 'RODRIGO VALENTINI', 2215.00),

                (1922, 3239, 3, 'RODRIGO ZOBARAN', 3294.00),

                (1923, 948, 6, 'RODRIGO ZOBARAN PEREIRA', 5801.00),

                (1924, 1750, 3, 'RODRIGUES ALVES', 6989.00),

                (1925, 1751, 1, 'ROGEL TAIBA', 6404.00),

                (1926, 155, 1, 'ROGRIO BRASILIENSE ELSEMANN', 4046.00),

                (1927, 1024, 3, 'ROGRIO CARVALHO DE ASSIS BRASIL', 2776.00),

                (1928, 1086, 2, 'ROGRIO KARI KROTH', 5970.00),

                (1929, 2329, 1, 'ROLINO LEONARDO VIEIRA', 9058.00),

                (1930, 975, 3, 'RON CARTER', 1812.00),

                (1931, 4723, 3, 'RONALD STARETZ', 11064.00),

                (1932, 5027, 6, 'RONI FONTOURA DE VASCONCELLOS SANTOS', 1378.00),

                (1933, 2321, 5, 'ROSA ALBERTON DE AZEVEDO', 2549.00),

                (1934, 1592, 4, 'ROSA DE SA E ANDRADE', 6780.00),

                (1935, 4894, 1, 'ROSA EMMA URRUTIA', 8196.00),

                (1936, 612, 6, 'ROSA JORDAO DA CUNHA', 5022.00),

                (1937, 761, 6, 'ROSA MARIA CANDIDO DE OLIVEIRA', 8815.00),

                (1938, 2175, 2, 'ROSA MARIA DA SILVA', 9252.00),

                (1939, 2825, 5, 'ROSA MARIA DE ASSIS BRASIL SILVEIRA', 10040.00),

                (1940, 4940, 1, 'ROSA MARIA SILVA RODRIGUES', 11530.00),

                (1941, 4701, 3, 'ROSA MARIA SILVA RODRIGUES BRASIL', 8358.00),

                (1942, 912, 2, 'ROSALINA BRASILIENSE', 1945.00),

                (1943, 1961, 4, 'ROSE ABASCAL', 11929.00),

                (1944, 425, 5, 'RUBEM BRASILIENSE MENDONCA', 11638.00),

                (1945, 899, 3, 'RUBENS ALVES PEREIRA', 9249.00),

                (1946, 3838, 2, 'RUDOLFO CARLOS TREIN', 3201.00),

                (1947, 307, 6, 'RUDYARD KIPLING', 8451.00),

                (1948, 5090, 5, 'RUI BRASILIENSE MENDONCA', 7080.00),

                (1949, 3128, 3, 'RUI BRASILIENSE MENDONCA FILHO', 4215.00),

                (1950, 4829, 5, 'RUI DE SOUZA RODRIGUES', 5093.00),

                (1951, 4664, 4, 'RUTH BRASILIENSE MENDONCA', 11295.00),

                (1952, 5379, 2, 'RUTH DA SILVA BOA', 5264.00),

                (1953, 3240, 2, 'RUTH MENDONCA SOUZA', 12712.00),

                (1954, 474, 4, 'RUY DA SILVA FARIA', 11883.00),

                (1955, 3077, 6, 'RUY DE ASSIS BRASIL', 2992.00),

                (1956, 3544, 6, 'RUY ESPINHEIRA FILHO', 11507.00),

                (1957, 2135, 3, 'RUY ESPINHEIRA FILHO', 11130.00),

                (1958, 2103, 1, 'RUY OLIVEIRA', 13488.00),

                (1959, 3846, 2, 'RUI VASCONCELLOS', 7741.00),

                (1960, 4036, 6, 'RUY ZOBARAN', 1565.00),

                (1961, 2559, 7, 'RUY ZOBARAN (FILHO)', 8899.00),

                (1962, 1727, 1, 'RUY ZOBARAN NETO', 12419.00),

                (1963, 1571, 5, 'SALETE MARION ALVES BOHRER', 4079.00),

                (1964, 2971, 3, 'SALVADOR (pianista)', 3904.00),

                (1965, 4699, 7, 'SAMIRA TAWFIQ AHMED', 3570.00),

                (1966, 2467, 3, 'SAMUEL DA JORNADA DORNELLES', 1906.00),

                (1967, 472, 1, 'SANCHES DE BAENA', 2323.00),

                (1968, 2192, 4, 'SANDRA ROCHA', 4958.00),

                (1969, 1627, 3, 'SANDRA HELENA ZOBARAN', 10332.00),

                (1970, 3036, 5, 'SANDRA RIBEIRO', 13307.00),

                (1971, 5222, 4, 'SANDRO CARVALHO DE MORAES', 1649.00),

                (1972, 1145, 7, 'SANDRO JOS NOVAKOWSKI', 4729.00),

                (1973, 314, 6, 'SANDRO VANDERLEI DE BARROS SEVERO', 5143.00),

                (1974, 766, 6, 'SAO DOMINGOS DE GUSMAO', 6445.00),

                (1975, 4271, 1, 'SAO FRANCISCO XAVIER', 8411.00),

                (1976, 1099, 5, 'SAO RAIMUNDO DE PENYAFORT', 9696.00),

                (1977, 2282, 1, 'SARA DE ASSIS BRASIL SILVA', 7862.00),

                (1978, 4424, 1, 'SARMENTO MENNA', 7790.00),

                (1979, 4973, 1, 'SEBASTIAO BARROS DE BRITO', 3838.00),

                (1980, 2304, 6, 'SEBASTIAO JOS DE CARVALHO E MELLO', 2225.00),

                (1981, 288, 1, 'SENADOR PINHEIRO MACHADO', 7199.00),

                (1982, 2428, 4, 'SERAFIM ALENCASTRO', 6194.00),

                (1983, 5352, 2, 'SERAFIM DOS SANTOS SOUZA', 2618.00),

                (1984, 1651, 5, 'SERAFINA ANDRADE', 11107.00),

                (1985, 235, 5, 'SERAFINA RODRIGUES', 12983.00),

                (1986, 268, 2, 'SERGIO BRASILIENSE CARVALHO', 3873.00),

                (1987, 4318, 2, 'SERGIO CARVALHO PEREIRA', 8982.00),

                (1988, 3158, 3, 'SERGIO DE ASSIS BRASIL', 1746.00),

                (1989, 3302, 3, 'SERGIO MATTOS', 4490.00),

                (1990, 636, 3, 'SERGIO WEIGERT', 4291.00),

                (1991, 5207, 2, 'SERGIO ZOBARAN FERREIRA', 1554.00),

                (1992, 3037, 7, 'SETEMBRINO DOS SANTOS SILVA', 11882.00),

                (1993, 2761, 5, 'SIDNEI MARINHO', 2396.00),

                (1994, 3676, 3, 'SILESI FORTES BRASIL', 8038.00),

                (1995, 2115, 5, 'SILVA DUTRA', 5979.00),

                (1996, 3474, 2, 'SILVANE DE ASSIS BRASIL DIAS', 6662.00),

                (1997, 4892, 5, 'SILVIA DE ASSIS BRASIL SOUTO', 7584.00),

                (1998, 4070, 3, 'SILVIA FLUGEL DA SILVA', 7420.00),

                (1999, 406, 7, 'SILVIA REIS CORONEL', 8149.00),

                (2000, 1865, 3, 'SILVIE JANIS JOBIM ROMERO', 1931.00),

                (2001, 217, 1, 'SILVIE JANIS MOSSATE JOBIM', 8952.00),

                (2002, 2644, 2, 'SIMAO DE SA E ANDRADE', 1358.00),

                (2003, 3092, 7, 'SIMAO PEREIRA DE SA (filho)', 3463.00),

                (2004, 494, 6, 'SIMAO PEREIRA DE SA (pai)', 6340.00),

                (2005, 2508, 7, 'SINVAL TEIXEIRA DA SILVEIRA', 7996.00),

                (2006, 667, 5, 'SIRINO ARAUJO', 3650.00),

                (2007, 569, 5, 'SIXTO JOBIM', 4230.00),

                (2008, 1780, 2, 'SOFIA SOARES TAIBA', 5306.00),

                (2009, 3962, 5, 'SOLANGE DE ASSIS BRASIL', 10794.00),

                (2010, 2474, 4, 'SOLANO HERMENEGILDO DA SILVA', 11829.00),

                (2011, 128, 4, 'SOLON ALADIO BOHRER', 3136.00),

                (2012, 3420, 4, 'SOLON HERMENEGILDO RODRIGUES DA SILVA', 3144.00),

                (2013, 3460, 1, 'SONIA SILVA', 2394.00),

                (2014, 1831, 5, 'SONA SOEIRA', 10651.00),

                (2015, 3241, 1, 'SONIA SOBRAL DE ALMEIDA', 9376.00),

                (2016, 3545, 6, 'SONIA SOBRAL DE ALMEIDA', 1928.00),

                (2017, 5528, 2, 'SOSIGENES COSTA', 2883.00),

                (2018, 312, 3, 'SOSIGENES COSTA', 1740.00),

                (2019, 3854, 5, 'STELLA DE ASSIS BRASIL', 12752.00),

                (2020, 2296, 2, 'STELLA DE FREITAS PAIVA', 5064.00),

                (2021, 4775, 1, 'SUEIRO BELFAGUER', 3678.00),

                (2022, 2289, 1, 'SUELEN DOS SANTOS', 1235.00),

                (2023, 3568, 2, 'SUZANA DE ASSIS BRASIL FAGUNDES', 10955.00),

                (2024, 4063, 5, 'SUZANA DE ASSIS BRASIL MENDES', 11738.00),

                (2025, 731, 6, 'SUSAN ELAINE NELSON', 2546.00),

                (2026, 340, 3, 'SUSANA LEAL DA COSTA', 6221.00),

                (2027, 3665, 4, 'SUSIMARI SILVA', 7411.00),

                (2028, 2728, 1, 'SUZANA ZOBARAN WERNECK DE FREITAS', 4113.00),

                (2029, 3535, 5, 'SYLVIA AMLIA VIDAL', 12653.00),

                (2030, 542, 6, 'SYLVIA HELENA ROSAS PINHO', 5975.00);

 

                INSERT INTO empregados (re, codCidade, codCargo, nomeEmpregado, salario) VALUES

                (2031, 1594, 5, 'SYLVIA HELENA ZOBARAN', 4241.00),

                (2032, 222, 7, 'SYLVIO A. PINHO', 9023.00),

                (2033, 2939, 2, 'TANCREDO NEVES', 1492.00),

                (2034, 4504, 5, 'TANIA CRISTINA BRASILIENSE RAVASI', 5038.00),

                (2035, 594, 7, 'TANIA MARA LEMES', 7875.00),

                (2036, 1913, 1, 'TANIA MATTOS', 13046.00),

                (2037, 5395, 3, 'TANIA SALGADO PIMENTA', 10599.00),

                (2038, 1581, 5, 'TAVEIRA JUNIOR (colegio)', 4685.00),

                (2039, 2710, 5, 'TAYLOR SOARES MAIA', 12616.00),

                (2040, 4634, 6, 'TELMO PADILHA', 4407.00),

                (2041, 5447, 7, 'TELMO PADILHA', 8716.00),

                (2042, 4223, 7, 'TELMO PASA', 8630.00),

                (2043, 3480, 2, 'TENORIO CAVALCANTI', 8360.00),

                (2044, 4118, 2, 'TENORIO CAVALCANTI', 4058.00),

                (2045, 2701, 7, 'TENORIO JUNIOR', 6806.00),

                (2046, 4382, 5, 'TERESA MARIA CARNEIRO', 7876.00),

                (2047, 5539, 5, 'TEREZA AZEVEDO DE ASSIS BRASIL', 8220.00),

                (2048, 1269, 7, 'TEREZA SOUZA DOS SANTOS', 11621.00),

                (2049, 5063, 5, 'TEREZINHA PERRONI', 5024.00),

                (2050, 3446, 4, 'THALES JOBIM DIAS', 1854.00),

                (2051, 4018, 7, 'THALES DE ASSIS BRASIL LEAL', 6179.00),

                (2052, 3950, 2, 'THEMIS DE ASSIS BRASIL', 11092.00),

                (2053, 1899, 5, 'THO PEREIRA DE ASSIS BRASIL', 9966.00),

                (2054, 1979, 5, 'THEREZA JOAQUINA DE JESUS', 7987.00),

                (2055, 4770, 6, 'TIAGO DORNELLES DE ASSIS BRASIL', 9896.00),

                (2056, 5340, 5, 'TIAGO HAUSSEN', 9165.00),

                (2057, 189, 3, 'TOM JOBIM', 1226.00),

                (2058, 782, 4, 'TOMAS DE TORQUEMADA', 2981.00),

                (2059, 4654, 2, 'TOMAZ ZOBARAN', 1805.00),

                (2060, 1947, 6, 'TOM DE SOUZA', 2914.00),

                (2061, 3232, 5, 'TORQUATO UBIRAJARA PETRARCA', 12919.00),

                (2062, 4287, 3, 'TRISTAO DE ATHAYDE', 13264.00),

                (2063, 3189, 1, 'TURIBIO GOMES SOARES', 8215.00),

                (2064, 3186, 2, 'UBIRANEY AMORIM REIS', 11000.00),

                (2065, 2066, 3, 'VALDA AMORIM REIS', 3212.00),

                (2066, 2006, 2, 'VALDA DOS SANTOS AMORIM', 8918.00),

                (2067, 1430, 6, 'VALDELICE SOARES PINHEIRO', 8634.00),

                (2068, 1712, 7, 'VALDOMIRA JOVELINA JULIO (VALDA)', 9343.00),

                (2069, 3074, 7, 'VALRIA CARVALHO DE ASSIS BRASIL', 7371.00),

                (2070, 5417, 1, 'VALRIA DE ASSIS BRASIL AZAMBUJA', 2206.00),

                (2071, 5389, 6, 'VALTER JOS QUERINO DOS SANTOS', 13298.00),

                (2072, 1371, 6, 'VALQUIRIA CARVALHO DE ASSIS BRASIL', 4597.00),

                (2073, 3089, 1, 'VALQUIRIA DE ASSIS BRASIL KINCZIKOWSKI', 1432.00),

                (2074, 2718, 6, 'VALQUIRIA FLUGEL MENDONCA', 7188.00),

                (2075, 1939, 3, 'VANDA REGINA MACHADO', 2384.00),

                (2076, 4308, 3, 'VANESSA BRASILIENSE KROTH', 4008.00),

                (2077, 1416, 3, 'VANESSA BOLDT DE SOUZA', 12076.00),

                (2078, 1837, 4, 'VANILDA CAMARGO ALMEIDA ', 8934.00),

                (2079, 4691, 3, 'VERA BEATRIZ FERREIRA LEAL', 10705.00),

                (2080, 3963, 5, 'VERA DE ASSIS BRASIL AZAMBUJA', 2211.00),

                (2081, 3777, 5, 'VERA IMPERATORE', 10460.00),

                (2082, 4736, 1, 'VERA IZABEL ASSIS BRASIL RAMOS', 13127.00),

                (2083, 2412, 7, 'VERA LUCIA ZOBARAN', 2709.00),

                (2084, 4810, 1, 'VERA MARIA DE ASSIS BRASIL', 3742.00),

                (2085, 3012, 4, 'VERA MARIA LEAL FERNANDES', 2035.00),

                (2086, 548, 2, 'VERISSIMO DA SILVA ROSA', 3934.00),

                (2087, 3154, 7, 'VERISSIMO MELLO', 5296.00),

                (2088, 2781, 7, 'VERONICA APARECIDA MONTI', 7823.00),

                (2089, 4193, 5, 'VERONICA CAMARGO MENDONCA', 7236.00),

                (2090, 3909, 5, 'VERONICA ASSIS BRASIL AZAMBUJA', 9802.00),

                (2091, 2586, 4, 'VICENTE CELESTINO', 12036.00),

                (2092, 4976, 4, 'VICTOR ASSIS BRASIL', 2969.00),

                (2093, 5441, 7, 'VICTOR DE ASSIS BRASIL', 8179.00),

                (2094, 4179, 3, 'VICTOR HUGO DE ASSIS BRASIL', 12742.00),

                (2095, 3556, 7, 'VICTOR LUIZ XISCATTI ELSEMANN', 13326.00),

                (2096, 1969, 3, 'VICTOR MIRANDA DE ASSIS BRASIL', 7615.00),

                (2097, 1056, 6, 'VINICIO DOMINGUES MENDONCA', 9076.00),

                (2098, 3002, 6, 'VINICIUS SCHAPKE DA POIAN', 11279.00),

                (2099, 3920, 5, 'VIOLANTE BOUCAN', 13124.00),

                (2100, 2170, 7, 'VIRGILIO GUALBERTO', 1493.00),

                (2101, 2999, 7, 'VIRGINIA DE ASSIS BRASIL SARMENTO', 9993.00),

                (2102, 1387, 5, 'VIRGINIA ISABEL SARMENTO FERREIRA', 1732.00),

                (2103, 471, 5, 'VIRGINIA MARCAL DA SILVA', 5456.00),

                (2104, 2359, 5, 'VISCONDE DE SAO GABRIEL', 2117.00),

                (2105, 796, 1, 'VITOR DALAVIA', 12617.00),

                (2106, 2471, 2, 'VITOR MIRANDA DE ASSIS BRASIL', 4105.00),

                (2107, 4344, 2, 'VITORIA MONTI DE ASSIS BRASIL ROCHA', 6450.00),

                (2108, 2862, 1, 'VIVIANE DE ASSIS BRASIL DIAS', 2235.00),

                (2109, 1512, 3, 'VIVIANE DOS SANTOS MESQUITA', 7076.00),

                (2110, 3169, 6, 'VLADEMIR ROBERTO CASSOL', 5129.00),

                (2111, 2051, 2, 'VLADIMIR HERZOG', 9200.00),

                (2112, 1590, 7, 'WAGNER FLORES', 7860.00),

                (2113, 1905, 4, 'WALDEMAR MASSON', 9699.00),

                (2114, 2426, 3, 'WALKER LIMA', 2215.00),

                (2115, 5412, 2, 'WALL FERRAZ', 6901.00),

                (2116, 1097, 4, 'WASHINGTON LUIS', 3543.00),

                (2117, 350, 2, 'WERNER BORGES DE ASSIS BRASIL STORCK', 1279.00),

                (2118, 4551, 2, 'WILLI KRAUTHAUSER', 9635.00),

                (2119, 3502, 7, 'WASHINGTON QUEIROZ', 8955.00),

                (2120, 3658, 1, 'WILLIAM FAULKNER', 1600.00),

                (2121, 2435, 5, 'WILMAR DA SILVEIRA NOGUEIRA', 6029.00),

                (2122, 519, 3, 'WILLIAM NELSON', 1675.00),

                (2123, 40, 2, 'WILMES SASSI', 7676.00),

                (2124, 412, 1, 'WILSON MONTENEGRO', 6022.00),

                (2125, 1411, 2, 'WILSON PEREIRA DE JESUS', 3902.00),

                (2126, 3741, 4, 'WILSON ROCHA', 7065.00),

                (2127, 4291, 7, 'WOLF ROITBERG', 7060.00),

                (2128, 3613, 6, 'YARA FATIMA DA MOTTA LOPES', 12716.00),

                (2129, 1190, 5, 'YOLANDA GARCIA', 11084.00),

                (2130, 870, 2, 'ZALUAR THOMAZI CAMPOS', 10903.00),

                (2131, 4123, 2, 'ZECA ASSUMPCAO', 5277.00),

                (2132, 229, 5, 'ZECA MAGALHAES', 8415.00),

                (2133, 5146, 1, 'ZECA NETO', 10219.00),

                (2134, 1513, 3, 'ZEFERINA EZEQUIEL DA SILVA', 3203.00),

                (2135, 2737, 4, 'ZELMA COELHO DA CUNHA', 9155.00),

                (2136, 4595, 4, 'ZILA DE ASSIS BRASIL TEIXEIRA', 3344.00),

                (2137, 3899, 5, 'ZILAH RODRIGUES', 11870.00),

                (2138, 3015, 5, 'ZILDA DE ASSIS BRASIL LEAL', 10688.00),

                (2139, 449, 3, 'ZILDA REIS', 13472.00),

                (2140, 4051, 6, 'ZILDA REIS DE ASSIS BRASIL', 11769.00),

                (2141, 67, 7, 'ZULMERI AZAMBUJA DO AMARAL', 4378.00);

   

    -- insert estão ok

    

select nomeEmpregado, codCidade, salario from empregados where salario > 3000.00; -- e

 

select cidade, codEstado from cidades where habitantes >200000; -- f

 

select e.nomeEmpregado, e.codCidade, c.codEstado from empregados e, cidades c where c.codEstado = 26; -- g

 

select e.nomeEmpregado, e.codCidade, c.codEstado from empregados e, cidades c where nomeEmpregado LIKE '%a';-- h

 

select e.nomeEmpregado, k.cargo, c.codCidade from empregados e, cidades c, cargos k where cargo LIKE 'a%'; --  i // só ñ consegui ordernar 

 

select c.cidade, e.sum(salario) from empregados e, cidades c where e.sum(salario) > 1000;-- j

 

select e.nomeEmpregado, c.cidade from cidades c, empregados e where c.cidade like 'São Paulo' or 'Minas Gerais' or 'Rio de Janeiro';-- K

 

select e.nomeEmpregado, k.cargo from empregados e, cargos k where k.cargo like 'Analista de Sistemas' or ' Assistente Administrativo'; -- L



select e.estado, sum(l.salario) from estados e, empregados l where sum(l.salario) > 20000;-- m



select sum(habitantes) from estados where estado like 'Ceará' or 'Paraíba' or 'Pernambuco' or 'Bahia'; -- n


 
select cidade from cidades where codEstado !=9 or codEstado !=8 or codEstado !=5 or codEstado !=9; -- o 


