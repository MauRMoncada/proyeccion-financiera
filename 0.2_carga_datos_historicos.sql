-- =====================================================
-- PROYECTO: VALORACIÓN DCF BANCO PROVINCIAL (BVC: BPB)
-- FASE 2: DML (Carga de Datos Históricos y Supuestos) 
-- =====================================================

-- 1. Inserción de la Institución Financiera Maestra
INSERT INTO empresas (nombre, ticker, sector) 
VALUES ('Banco Provincial, S.A. Banco Universal', 'BPB', 'Banca y Servicios Financieros');

-- 2. Inserción de Balance General Histórico (Años 2023 - 2025)
-- Nota: empresa_id = 1 hace referencia al Banco Provincial recién insertado.
INSERT INTO balance_general (empresa_id, anio, cartera_creditos, total_activos, depositos_publico, total_pasivos, patrimonio) 
VALUES 
(1, 2023, 8137821234.00, 23406292881.00, 13685573001.00, 16641609561.00, 6764683320.00),
(1, 2024, 18500000000.00, 43871500000.00, 29000000000.00, 30308498117.00, 13563052336.00),
(1, 2025, 152127000000.00, 303645100000.00, 142878000000.00, 181099112768.00, 122545987232.00);

-- 3. Inserción de Estado de Resultados Histórico (Años 2023 - 2025)
INSERT INTO estado_resultados (empresa_id, anio, ingresos_financieros, gastos_financieros, margen_financiero_bruto, gastos_operativos, utilidad_neta) 
VALUES 
(1, 2023, 2214063056.00, 106661646.00, 2107401410.00, 1587419466.00, 1494244899.00),
(1, 2024, 2466000000.00, 503000000.00, 1963000000.00, 1450000000.00, 1350000000.00),
(1, 2025, 45391000000.00, 2700000000.00, 42690500000.00, 16695000000.00, 275854000000.00);

-- 4. Inserción de Supuestos de Proyección (Horizonte 2026 - 2030)
-- Definimos crecimiento anual de créditos, tasa de descuento (Ke) y tasa terminal (g)
INSERT INTO proyeccion (empresa_id, anio_proyeccion, crecimiento_creditos, costo_patrimonio_ke, tasa_crecimiento_terminal) 
VALUES 
(1, 2026, 0.2000, 0.2500, 0.0300),
(1, 2027, 0.1800, 0.2500, 0.0300),
(1, 2028, 0.1500, 0.2500, 0.0300),
(1, 2029, 0.1200, 0.2500, 0.0300),
(1, 2030, 0.1000, 0.2500, 0.0300);
