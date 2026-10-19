INSERT
    INTO Dispositivo(id_dispositivo, status, marca, nr_serie, modelo, capacidade_btu, tensao_v, potencia_w, tipo_dispositivo)
    VALUES
        -- Área Externa (1)
        (1, 'funcional', 'Não especificado', 'S/N-EXT-01', 'Genérico', NULL, 220.000000, 160.000000, 'lampada'),
        -- Sala de Markito (2)
        (2, 'funcional', 'Gree', 'S/N-MK-01', 'Standard', 18000.00, 220.000000, 1810.000000, 'ar-condicionado'),
        (3, 'funcional', 'Não especificado', 'S/N-MK-02', 'Genérico', NULL, 127.000000, 40.000000, 'outro'),
        (4, 'funcional', 'Não especificado', 'S/N-MK-03', 'Genérico', NULL, 220.000000, 40.000000, 'lampada'),
        -- Copa (3)
        (5, 'funcional', 'Não especificado', 'S/N-COP-01', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        (6, 'funcional', 'Não especificado', 'S/N-COP-02', 'Genérico', NULL, 127.000000, 60.000000, 'outro'),
        -- Sala Ite 41 (4)
        (7, 'funcional', 'Gree', 'S/N-ITE-01', 'Standard', 36000.00, 220.000000, 4200.000000, 'ar-condicionado'),
        (8, 'funcional', 'Não especificado', 'S/N-ITE-02', 'Genérico', NULL, 220.000000, 80.000000, 'lampada'),
        (9, 'funcional', 'Não especificado', 'S/N-ITE-03', 'Genérico', NULL, 127.000000, 60.000000, 'outro'),
        -- Sanitários e Outros (5, 6, 7)
        (10, 'funcional', 'Não especificado', 'S/N-SM-01', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        (11, 'funcional', 'Não especificado', 'S/N-SF-01', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        (12, 'funcional', 'Não especificado', 'S/N-AP-01', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        -- Sala de Maurício (8)
        (13, 'funcional', 'Elgin', 'S/N-MAU-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (14, 'funcional', 'Não especificado', 'S/N-MAU-02', 'Genérico', NULL, 127.000000, 80.000000, 'lampada'),
        -- Sala de Recurso Multifuncionais (9)
        (15, 'funcional', 'Gree', 'S/N-MUL-01', 'Standard', 36000.00, 220.000000, 4200.000000, 'ar-condicionado'),
        (16, 'funcional', 'Não especificado', 'S/N-MUL-02', 'Genérico', NULL, 220.000000, 240.000000, 'lampada'),
        -- Sala de Ciro (10)
        (17, 'funcional', 'Elgin', 'S/N-CIR-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (18, 'funcional', 'Não especificado', 'S/N-CIR-02', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        -- Sala dos Professores (11)
        (19, 'funcional', 'Carrier/Midea', 'S/N-PRF-01', 'Standard', 36000.00, 220.000000, 2880.000000, 'ar-condicionado'),
        (20, 'funcional', 'Não especificado', 'S/N-PRF-02', 'Genérico', NULL, 220.000000, 240.000000, 'lampada'),
        -- Sala do Neabi (12)
        (21, 'funcional', 'Gree', 'S/N-NEA-01', 'Standard', 24000.00, 220.000000, 2190.000000, 'ar-condicionado'),
        (22, 'funcional', 'Não especificado', 'S/N-NEA-02', 'Genérico', NULL, 220.000000, 160.000000, 'lampada'),
        -- Banheiros da Cantina e Hall (13, 14, 15)
        (23, 'funcional', 'Não especificado', 'S/N-BCF-01', 'Genérico', NULL, 127.000000, 40.000000, 'lampada'),
        (24, 'funcional', 'Não especificado', 'S/N-BCM-01', 'Genérico', NULL, 127.000000, 40.000000, 'lampada'),
        (25, 'funcional', 'Não especificado', 'S/N-HAL-01', 'Genérico', NULL, 127.000000, 240.000000, 'lampada'),
        -- Cores e Sala de Reunião (16)
        (26, 'funcional', 'Gree', 'S/N-COR-01', 'Standard', 12000.00, 220.000000, 1080.000000, 'ar-condicionado'),
        (27, 'funcional', 'Gree', 'S/N-COR-02', 'Standard', 12000.00, 220.000000, 1080.000000, 'ar-condicionado'),
        (28, 'funcional', 'Não especificado', 'S/N-COR-03', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        -- Sala da Iti 11 (17)
        (29, 'funcional', 'Gree', 'S/N-I11-01', 'Standard', NULL, 220.000000, 2047.000000, 'ar-condicionado'),
        (30, 'funcional', 'Não especificado', 'S/N-I11-02', 'Genérico', NULL, 127.000000, 543.000000, 'outro'),
        (31, 'funcional', 'Não especificado', 'S/N-I11-03', 'Genérico', NULL, 127.000000, 120.000000, 'lampada'),
        -- Sala da Iti 32 (18)
        (32, 'funcional', 'Gree', 'S/N-I32-01', 'Standard', 24000.00, 220.000000, 2190.000000, 'ar-condicionado'),
        (33, 'funcional', 'Não especificado', 'S/N-I32-02', 'Genérico', NULL, 127.000000, 60.000000, 'outro'),
        (34, 'funcional', 'Não especificado', 'S/N-I32-03', 'Genérico', NULL, 127.000000, 60.000000, 'lampada'),
        -- Sala da CGTI 1 (19)
        (35, 'funcional', 'Elgin', 'S/N-CGT-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (36, 'funcional', 'Elgin', 'S/N-CGT-02', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (37, 'defeituoso', 'Não especificado', 'S/N-CGT-03', 'Genérico', NULL, 127.000000, 140.000000, 'lampada'),
        -- Sala da DAP (20)
        (38, 'funcional', 'Elgin', 'S/N-DAP-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (39, 'defeituoso', 'Não especificado', 'S/N-DAP-02', 'Genérico', NULL, 127.000000, 60.000000, 'outro'),
        (40, 'funcional', 'Não especificado', 'S/N-DAP-03', 'Genérico', NULL, 127.000000, 160.000000, 'lampada'),
        -- Coordenação de Estágio (21)
        (41, 'funcional', 'Elgin', 'S/N-CES-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (42, 'funcional', 'Não especificado', 'S/N-CES-02', 'Genérico', NULL, 127.000000, 160.000000, 'lampada'),
        -- Sala do Áudio Visual (22)
        (43, 'funcional', 'Elgin', 'S/N-PAV-01', 'Standard', 12000.00, 220.000000, 1000.000000, 'ar-condicionado'),
        (44, 'funcional', 'Não especificado', 'S/N-PAV-02', 'Genérico', NULL, 127.000000, 200.000000, 'lampada'),
        -- Auditório (23)
        (45, 'funcional', 'Philco', 'S/N-AUD-01', 'Standard', 24000.00, 220.000000, 2360.000000, 'ar-condicionado'),
        (46, 'funcional', 'Philco', 'S/N-AUD-02', 'Standard', 24000.00, 220.000000, 2360.000000, 'ar-condicionado'),
        (47, 'funcional', 'Philco', 'S/N-AUD-03', 'Standard', 24000.00, 220.000000, 2360.000000, 'ar-condicionado'),
        (48, 'funcional', 'Philco', 'S/N-AUD-04', 'Standard', 24000.00, 220.000000, 2360.000000, 'ar-condicionado'),
        (49, 'funcional', 'Não especificado', 'S/N-AUD-05', 'Genérico', NULL, 127.000000, 1120.000000, 'lampada');
