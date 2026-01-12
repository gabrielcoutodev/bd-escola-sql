--Criando banco de dados escola
CREATE DATABASE escola;

--Criando a tabela alunos
CREATE TABLE ALUNOS (
    AlunoID CHAR(10) PRIMARY KEY,
    AlunoNome VARCHAR(100) NOT NULL,
    AlunoDN DATE NOT NULL,
    AlunoSexo CHAR(1) NOT NULL,
    AlunoCPF CHAR(11) UNIQUE NOT NULL,
    AlunoLogr VARCHAR(150) NOT NULL,
    AlunoCEP CHAR(8) NOT NULL,
    AlunoBairro VARCHAR(100) NOT NULL,
    AlunoMun VARCHAR(100) NOT NULL,
    AlunoUF CHAR(2) NOT NULL
);

--Inserindo na tabela alunos
INSERT INTO ALUNOS (AlunoID, AlunoNome, AlunoDN, AlunoSexo, AlunoCPF, AlunoLogr, AlunoCEP, AlunoBairro, AlunoMun, AlunoUF)
VALUES
('E00031', 'Jurema Rocha', '2000-02-25', 'F', '12346985673', 'Rua das Flores, 6061', '32910000', 'Frei Davi', 'Belo Horizonte', 'MG'),
('E10312', 'Rodrigo Almeida', '2002-07-11', 'M', '45679235677', 'Rua da Liberdade, 6667', '33240000', 'Vila Oliveira', 'Belo Horizonte', 'MG'),
('E11140', 'Sofia Pereira', '1997-07-17', 'F', '45679073241', 'Rua do Fogo, 4647', '32240000', 'Nossa Senhora Aparecida', 'Belo Horizonte', 'MG'),
('E11171', 'Ana Costa', '1999-10-12', 'F', '45698732112', 'Rua do Arco-Íris, 789', '30330000', 'Santa Efigênia', 'Belo Horizonte', 'MG'),
('E12356', 'Pedro Almeida', '2002-03-18', 'M', '34568976455', 'Rua do Vento Forte, 2425', '31130000', 'Ouro Preto', 'Ouro Preto', 'MG'),
('E18252', 'Roberto Souza', '2000-09-18', 'M', '90134512874', 'Rua do Poço Encantado, 3637', '31790000', 'Jardim Canadá', 'Betim', 'MG'),
('E20501', 'André Lima', '2000-10-10', 'M', '34568941230', 'Rua da Vitória, 4445', '32130000', 'Vila Santa Rita', 'Contagem', 'MG'),
('E20670', 'Ana Pereira', '2001-07-08', 'F', '45678901234', 'Rua das Flores, 111', '30350000', 'Pampulha', 'Belo Horizonte', 'MG'),
('E21009', 'Daniel Costa', '2001-05-06', 'M', '12347680456', 'Avenida das Borboletas, 4041', '31910000', 'Piedade', 'Belo Horizonte', 'MG'),
('E22102', 'Tatiane Oliveira', '1997-11-11', 'F', '01245634782', 'Rua das Margaridas, 3839', '31800000', 'Barreiro', 'Belo Horizonte', 'MG'),
('E24515', 'Maria Oliveira', '1998-03-22', 'F', '23456789012', 'Rodovia de Barbosa, 69', '09023794', 'Vargem das Flores', 'Betim', 'MG'),
('E25002', 'Marcos Almeida', '1998-06-06', 'M', '90123456789', 'Rua Bahia, 666', '30810000', 'Lourdes', 'Belo Horizonte', 'MG'),
('E26769', 'Ana Lima', '1997-07-22', 'F', '90124765312', 'Rua da Natureza, 7677', '33790000', 'Vila Brasil', 'Belo Horizonte', 'MG'),
('E30131', 'Marcos Silva', '2002-02-20', 'M', '78912308457', 'Rua do Horizonte Azul, 3233', '31570000', 'São João Nepomuceno', 'São João Nepomuceno', 'MG'),
('E35016', 'Juliana Pereira', '1997-11-05', 'F', '67890567890', 'Rua das Andorinhas, 1415', '30560000', 'Floresta', 'Belo Horizonte', 'MG'),
('E36328', 'Priscila Almeida', '1998-04-04', 'F', '78902568974', 'Rua da Esperança, 7273', '33570000', 'Cachoeirinha', 'Belo Horizonte', 'MG'),
('E37734', 'Carlos Souza', '2001-05-30', 'M', '34567123954', 'Alameda das Estrelas, 456', '30121000', 'Jardim América', 'Contagem', 'MG'),
('E37773', 'Fernanda Lima', '1997-08-19', 'F', '67890123456', 'Rua do Sol, 333', '30570000', 'Santa Tereza', 'Belo Horizonte', 'MG'),
('E38061', 'Carlos Souza', '1999-05-10', 'M', '34567890123', 'Av. Central, 789', '30240000', 'Barreiro', 'Belo Horizonte', 'MG'),
('E40841', 'Mariana Souza', '1998-06-14', 'F', '89013495065', 'Rua da Serra, 5455', '32680000', 'Centro', 'Nova Lima', 'MG'),
('E41855', 'Jessica Costa', '1999-12-20', 'F', '56780346980', 'Avenida do Sol Poente, 6869', '33350000', 'Nova Suíça', 'Belo Horizonte', 'MG'),
('E46485', 'João Silva', '2000-01-15', 'M', '12345678901', 'Rua A, 123', '30120000', 'Centro', 'Belo Horizonte', 'MG'),
('E47620', 'Pedro Alves', '2000-12-02', 'M', '56789012345', 'Av. Brasil, 222', '30460000', 'Funcionários', 'Belo Horizonte', 'MG'),
('E48017', 'Leonardo Rocha', '2002-10-16', 'M', '90124518763', 'Rua das Cascatas, 5657', '32790000', 'Santo Antônio', 'Ouro Preto', 'MG'),
('E48310', 'Larissa Rocha', '1997-12-14', 'F', '23458749012', 'Rua das Árvores, 2223', '31020000', 'Boa Vista', 'Belo Horizonte', 'MG'),
('E51429', 'Rafael Pereira', '2001-06-30', 'M', '56780341076', 'Rua do Luar, 2829', '31350000', 'Castelo', 'Belo Horizonte', 'MG'),
('E52263', 'Emilly Duarte', '1991-06-22', 'F', '01642783544', 'Fazenda Sofia Ramos, 58', '54130931', 'Tijuca', 'Contagem', 'MG'),
('E56373', 'Felipe Almeida', '2000-04-14', 'M', '78907654321', 'Estrada do Pé-de-Moleque, 1213', '30670000', 'Savassi', 'Belo Horizonte', 'MG'),
('E59564', 'Lucas Santos', '2001-12-22', 'M', '90126735892', 'Avenida do Horizonte, 1617', '30890000', 'Sagrada Família', 'Belo Horizonte', 'MG'),
('E59758', 'Priscila Rocha', '1998-12-02', 'F', '23458743509', 'Rua das Estrelas, 4243', '32020000', 'Vila Oeste', 'Belo Horizonte', 'MG'),
('E64695', 'Guilherme Costa', '2001-11-02', 'M', '01235876490', 'Rua do Sol Dourado, 7879', '33800000', 'Vila Santa Clara', 'Contagem', 'MG'),
('E69297', 'Gabriel Oliveira', '2000-07-01', 'M', '12347689021', 'Alameda do Poço Azul, 2021', '31010000', 'Carmo Sion', 'Belo Horizonte', 'MG'),
('E72913', 'Ricardo Lima', '2002-08-20', 'M', '56789023465', 'Avenida dos Ventos, 1011', '30450000', 'Funcionários', 'Belo Horizonte', 'MG'),
('E76758', 'Thiago Costa', '2001-11-23', 'M', '78902384902', 'Rua do Morro, 5253', '32570000', 'Nacional', 'Betim', 'MG'),
('E77014', 'Vinícius Almeida', '2002-12-11', 'M', '56780197894', 'Rua do Bosque, 4849', '32350000', 'Bela Vista', 'Belo Horizonte', 'MG'),
('E79244', 'Fernanda Silva', '1998-02-11', 'F', '01234567980', 'Rua do Sol Nascente, 1819', '30900000', 'Serra', 'Belo Horizonte', 'MG'),
('E82727', 'Murilo Fernandes', '1987-04-02', 'M', '89406725347', 'Pátio Isabel da Rosa, 20', '77087700', 'Braúnas', 'Contagem', 'MG'),
('E83008', 'Giovana Silva', '1999-03-25', 'F', '67891234879', 'Avenida das Palmeiras, 5051', '32460000', 'São Luiz', 'Belo Horizonte', 'MG'),
('E84090', 'Marcos Silva', '2001-08-02', 'M', '67891457861', 'Rua das Nuvens, 7071', '33460000', 'Horto', 'Belo Horizonte', 'MG'),
('E90331', 'Daniel Rocha', '2002-09-13', 'M', '89013679542', 'Avenida da Aurora, 7475', '33680000', 'Santo Antônio', 'Belo Horizonte', 'MG'),
('E90971', 'Simone Lima', '1998-05-09', 'F', '34568127405', 'Alameda dos Cisnes, 6465', '33130000', 'Vila Guarani', 'Belo Horizonte', 'MG'),
('E91777', 'Camila Martins', '1998-09-08', 'F', '45679054823', 'Avenida da Lua Cheia, 2627', '31240000', 'Liberdade', 'Belo Horizonte', 'MG'),
('E92058', 'Felipe Costa', '2001-03-15', 'M', '23457098135', 'Rua das Águas, 6263', '33020000', 'Santo Agostinho', 'Belo Horizonte', 'MG'),
('E92145', 'Amanda Lima', '1998-01-29', 'F', '89023451906', 'Rua do Mar, 3435', '31680000', 'Pampulha', 'Belo Horizonte', 'MG'),
('E95073', 'Lucas Costa', '2000-11-12', 'M', '78901234567', 'Av. Amazonas, 444', '30680000', 'Coração Eucarístico', 'Belo Horizonte', 'MG'),
('E95560', 'Carolina Mendes', '2000-10-15', 'F', '01234567890', 'Av. Afonso Pena, 777', '30920000', 'Cidade Jardim', 'Belo Horizonte', 'MG'),
('E95742', 'Isabela Costa', '1999-04-04', 'F', '67891750348', 'Alameda das Orquídeas, 3031', '31460000', 'Anchieta', 'Belo Horizonte', 'MG'),
('E96498', 'Juliana Santos', '1999-09-21', 'F', '89012345678', 'Rua Rio Grande, 555', '30790000', 'Ouro Preto', 'Belo Horizonte', 'MG'),
('E96916', 'Gustavo Almeida', '1997-08-03', 'M', '01235647912', 'Avenida da Ponte, 5859', '32800000', 'Campos Elíseos', 'Belo Horizonte', 'MG'),
('E98825', 'Beatriz Gomes', '1999-06-09', 'F', '89014357260', 'Rua da Paz, 1415', '30780000', 'Barro Preto', 'Belo Horizonte', 'MG');

--Criando a tabela professor
CREATE TABLE PROFS (
    ProfID CHAR(10) PRIMARY KEY,
    ProfNome VARCHAR(100) NOT NULL,
    ProfDN DATE NOT NULL,
    ProfSexo CHAR(1) NOT NULL,
    ProfCPF CHAR(11) UNIQUE NOT NULL,
    ProfLogr VARCHAR(150) NOT NULL,
    ProfCEP CHAR(8) NOT NULL,
    ProfBairro VARCHAR(100) NOT NULL,
    ProfMun VARCHAR(100) NOT NULL,
    ProfUF CHAR(2) NOT NULL
);

--Inserindo na tabela professor
INSERT INTO PROFS (ProfID, ProfNome, ProfDN, ProfSexo, ProfCPF, ProfLogr, ProfCEP, ProfBairro, ProfMun, ProfUF)
VALUES
('0249', 'Gabriela Souza', '1989-06-28', 'F', '67890123467', 'Rua da Esperança, 5455', '30145000', 'Cidade Jardim', 'Belo Horizonte', 'MG'),
('0293', 'Diego Costa', '1991-01-12', 'M', '01234567987', 'Rua das Nuvens, 6263', '30149000', 'Serra', 'Belo Horizonte', 'MG'),
('0384', 'Patrícia Lima', '1992-09-05', 'F', '89012346790', 'Rua do Bosque, 1819', '30127000', 'Vila Progresso', 'Contagem', 'MG'),
('1259', 'Fábio Almeida', '1982-04-10', 'M', '56789012347', 'Rua das Orquídeas, 1213', '30124000', 'Savassi', 'Governador Valadares', 'MG'),
('1566', 'Carlos Henrique', '1980-05-15', 'M', '12345698765', 'Rua das Palmeiras, 123', '30120000', 'Centro', 'Belo Horizonte', 'MG'),
('1676', 'Érica Martins', '1981-08-17', 'F', '23456789014', 'Rua do Arco-Íris, 2627', '30131000', 'Vila Santa Rita', 'Belo Horizonte', 'MG'),
('1938', 'Luiz Henrique', '1982-04-01', 'M', '78901235407', 'Rua do Arco Verde, 5657', '30146000', 'Vila Progresso', 'Betim', 'MG'),
('2384', 'Gabriel Santos', '1987-10-30', 'M', '12345674890', 'Rua das Estrelas, 2425', '30130000', 'Alípio de Melo', 'Belo Horizonte', 'MG'),
('2948', 'Isabela Oliveira', '1986-08-22', 'F', '45678902931', 'Rua do Vento Sul, 5051', '30143000', 'Vila Estrela', 'Belo Horizonte', 'MG'),
('3857', 'Ricardo Fernandes', '1983-03-02', 'M', '90123457642', 'Rua do Sol Poente, 2021', '30128000', 'Barreiro', 'Belo Horizonte', 'MG'),
('3958', 'Renato Santos', '1980-11-13', 'M', '12345678967', 'Rua das Flores, 4445', '30140000', 'Vila Guarani', 'Belo Horizonte', 'MG'),
('3993', 'Juliana Costa', '1990-07-30', 'F', '45678903568', 'Alameda das Águas, 1011', '30123000', 'Funcionários', 'Contagem', 'MG'),
('4390', 'Luciana Rocha', '1987-07-10', 'F', '89012347451', 'Rua do Horizonte Claro, 5859', '30147000', 'Ouro Preto', 'Contagem', 'MG'),
('4583', 'Mariana Rocha', '1988-01-20', 'F', '67890124359', 'Rua do Horizonte Azul, 1415', '30125000', 'Pampulha', 'Belo Horizonte', 'MG'),
('4930', 'Eduardo Lima', '1981-09-15', 'M', '56789012405', 'Avenida dos Girassóis, 5253', '30144000', 'Horto', 'Belo Horizonte', 'MG'),
('4993', 'Lucas Oliveira', '1984-06-18', 'M', '78901234563', 'Avenida das Rosas, 1617', '30126000', 'Boa Vista', 'Belo Horizonte', 'MG'),
('5390', 'Aline Costa', '1985-07-19', 'F', '01234567901', 'Rua da Vitória, 4243', '30139000', 'Savassi', 'Contagem', 'MG'),
('5831', 'Robson Pereira', '1983-01-25', 'M', '34567890839', 'Rua das Borboletas, 4849', '30142000', 'Vila Nova', 'Belo Horizonte', 'MG'),
('5939', 'Eduarda Lima', '1988-10-30', 'F', '90123457389', 'Avenida do Sol Poente, 6061', '30148000', 'Centro', 'Belo Horizonte', 'MG'),
('5948', 'Tiago Almeida', '1990-04-03', 'M', '90123456987', 'Avenida da Serra, 4041', '30138000', 'Santo Antônio', 'Belo Horizonte', 'MG'),
('5969', 'Márcio Lima', '1986-11-11', 'M', '34567890312', 'Avenida do Sol, 2829', '30132000', 'Centro', 'Belo Horizonte', 'MG'),
('6353', 'Pedro Henrique', '1984-12-25', 'M', '78901235219', 'Rua das Andorinhas, 3637', '30136000', 'Centro', 'Belo Horizonte', 'MG'),
('7483', 'Renata Martins', '1992-03-04', 'F', '23456789025', 'Avenida do Horizonte, 4647', '30141000', 'São Cristóvão', 'Betim', 'MG'),
('7639', 'Vanessa Silva', '1993-02-17', 'F', '89012340956', 'Rua do Horizonte Verde, 3839', '30137000', 'Floresta', 'Betim', 'MG'),
('8374', 'Jéssica Rocha', '1987-09-10', 'F', '67890126789', 'Avenida das Palmeiras, 3435', '30135000', 'Sagrada Família', 'Belo Horizonte', 'MG'),
('8445', 'Roberto Souza', '1975-11-08', 'M', '34567890871', 'Rua do Vento Forte, 789', '30122000', 'Floresta', 'Ouro Preto', 'MG'),
('8474', 'Letícia Pereira', '1995-12-12', 'F', '01234567248', 'Avenida da Liberdade, 2223', '30129000', 'Jardim América', 'Contagem', 'MG'),
('8682', 'Ana Beatriz', '1985-03-22', 'F', '23456789023', 'Avenida do Sol, 456', '30121000', 'Santa Tereza', 'Betim', 'MG'),
('8940', 'Carla Souza', '1989-05-03', 'F', '45678901650', 'Rua da Aurora, 3031', '30133000', 'Ouro Preto', 'Betim', 'MG'),
('9347', 'Felipe Costa', '1982-06-22', 'M', '56789012433', 'Rua do Sol Nascente, 3233', '30134000', 'Vila Imperial', 'Belo Horizonte', 'MG');

