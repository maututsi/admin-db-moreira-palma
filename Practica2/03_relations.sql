USE `moreira-palma`;

-- ============================================
-- RELACION MASCOTA -> CLIENTE
-- ============================================

ALTER TABLE mascota
ADD CONSTRAINT fk_mascota_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente(id);

-- ============================================
-- RELACION ATENCION -> VETERINARIO
-- ============================================

ALTER TABLE atencion
ADD CONSTRAINT fk_atencion_veterinario
FOREIGN KEY (id_veterinario)
REFERENCES veterinario(id);

-- ============================================
-- RELACION ATENCION -> MASCOTA
-- ============================================

ALTER TABLE atencion
ADD CONSTRAINT fk_atencion_mascota
FOREIGN KEY (id_mascota)
REFERENCES mascota(id);

-- ============================================
-- RELACION PRESCRIPCION -> MEDICAMENTO
-- ============================================

ALTER TABLE prescripcion
ADD CONSTRAINT fk_prescripcion_medicamento
FOREIGN KEY (id_medicamento)
REFERENCES medicamento(id);

-- ============================================
-- RELACION PRESCRIPCION -> ATENCION
-- ============================================

ALTER TABLE prescripcion
ADD CONSTRAINT fk_prescripcion_atencion
FOREIGN KEY (id_atencion)
REFERENCES atencion(id);