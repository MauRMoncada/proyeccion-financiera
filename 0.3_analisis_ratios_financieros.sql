-- =============================================================
-- FASE 3: ANÁLISIS DE RATIOS FINANCIEROS HISTÓRICOS (2023-2025)
-- =============================================================

SELECT 
    bg.anio,
    bg.cartera_creditos,
    bg.depositos_publico,
    er.margen_financiero_bruto,
    er.utilidad_neta,
    bg.patrimonio,
    -- Cálculo de ROE (Return on Equity)
    ROUND((er.utilidad_neta / NULLIF(bg.patrimonio, 0)) * 100, 2) AS roe_pct,
    -- Cálculo de ROA (Return on Assets)
    ROUND((er.utilidad_neta / NULLIF(bg.total_activos, 0)) * 100, 2) AS roa_pct,
    -- Ratio de eficiencia / intermediación
    ROUND((er.gastos_operativos / NULLIF(er.ingresos_financieros, 0)) * 100, 2) AS indice_gastos_ingresos
FROM balance_general bg
JOIN estado_resultados er ON bg.empresa_id = er.empresa_id AND bg.anio = er.anio
WHERE bg.empresa_id = 1
ORDER BY bg.anio ASC;
