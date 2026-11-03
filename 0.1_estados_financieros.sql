-- =====================================================
-- Proyecto de valoracion financiera de un Banco Privado
-- Sujeto de estudio 'Banco Provincial' (BVC: BPB)
-- =====================================================

-- Tabla #1 Empresa
create table empresas (
id SERIAL primary key,
nombre varchar (100) not null,
ticker varchar(20) not null,
sector varchar(100) not null
);

-- Tabla #2 Balance General Historico
create table balance_general (
id SERIAL primary key,
empresa_id int not null,
anio int not null,
cartera_creditos numeric(18, 2) not null,
total_activos numeric(18, 2) not null,
depositos_publico numeric(18, 2) not null,
total_pasivos numeric(18, 2) not null,
patrimonio numeric(18, 2) not null,
CONSTRAINT fk_balance_empresa FOREIGN KEY (empresa_id) REFERENCES empresas(id) ON DELETE CASCADE
);

-- Tabla #3 Estado de resultados de la empresa
create table estado_resultados (
id SERIAL primary key,
empresa_id int not null,
anio int not null,
ingresos_financieros numeric(18, 2) not null,
gastos_financieros numeric(18, 2) not null,
margen_financiero_bruto numeric(18, 2) not null, -- (Ingresos - Gastos Financieros)
gastos_operativos numeric(18, 2) not null,
utilidad_neta numeric(18, 2) not null,
CONSTRAINT fk_resultados_empresa FOREIGN KEY (empresa_id) REFERENCES empresas(id) ON DELETE cascade
);

-- Tabla #4 Supuestos de proyeccion
create table proyeccion (
id SERIAL primary key,
empresa_id int not null,
anio_proyeccion int not null,
crecimiento_creditos numeric(5, 4) not null, -- 0,100 para un 10%
costo_patrimonio_ke numeric(5, 4) not null, -- Tasa g a perpetuidad
tasa_crecimiento_terminal numeric(5, 4) not null, -- Tasa g a perpetuidad
CONSTRAINT fk_supuestos_empresa FOREIGN KEY (empresa_id) REFERENCES empresas(id) ON DELETE cascade
);
