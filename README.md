# Motor de Valoración DCF y Proyección Bancaria (BVC: BPB)

## Descripción del Proyecto
Este repositorio alberga la arquitectura e implementación técnica de un **Modelo de Valoración por Flujo de Caja Descontado (DCF) determinista** y un motor de **proyección de estados financieros a 5 años**, adaptado específicamente a la estructura de intermediación financiera de la banca privada. 

Como caso de estudio, se analiza el **Banco Provincial (BVC: BPB)**, institución líder en el sistema financiero venezolano, modelando sus partidas clave (cartera de créditos, depósitos del público, margen financiero bruto y estructura de capital) mediante consultas avanzadas en SQL.

---

## Stack Tecnológico
* **Base de Datos:** PostgreSQL 13+
* **Entorno de Gestión:** DBeaver Community
* **Dominio:** Finanzas Corporativas / Banca / Análisis de Datos Financieros

---

## Arquitectura del Esquema de Datos (Fase 1)
El modelo relacional normalizado consta de cuatro tablas principales diseñadas bajo estrictas buenas prácticas de ingeniería de datos (tipos de datos precisos `NUMERIC(18,2)` para evitar errores de redondeo contable e integridad referencial estricta):

1. **`empresas`**: Tabla maestra que almacena los datos de la institución analizada (Ticker: BPB).
2. **`balance_general`**: Registro histórico de activos, pasivos, patrimonio, cartera de créditos y captaciones del público.
3. **`estado_resultados`**: Evolución histórica de ingresos financieros, gastos financieros, margen financiero bruto, gastos operativos y utilidad neta.
4. **`proyeccion`**: Tabla de supuestos financieros que almacena las tasas de crecimiento de créditos, el costo de capital ($K_e$) y la tasa de crecimiento a perpetuidad ($g$) para el horizonte de proyección.

---

## Fases del Proyecto
- **Fase 1: Diseño DDL y Arquitectura Relacional** *(Completada)*
- **Fase 2: Inserción de Datos Históricos (DML)** *(En desarrollo)*
- **Fase 3: Vistas de Diagnóstico Financiero Histórico** *(Próximamente)*
- **Fase 4: Motor de Proyección de Estados Financieros y DCF** *(Próximamente)*

---

## Autor
**Mauricio Moncada**  
*Estudiante de Economía (UCV) | Analista de Datos y Finanzas Corporativas*  
[Perfil de LinkedIn](https://www.linkedin.com/in/mauricio-moncada-795231444) | [Portafolio Técnico en GitHub](https://github.com/MauRMoncada)
