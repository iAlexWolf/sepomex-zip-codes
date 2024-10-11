-- Crear la tabla "estados"
CREATE TABLE estados (
    e_id INT AUTO_INCREMENT PRIMARY KEY,
    e_nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla "municipios"
CREATE TABLE municipios (
    m_id INT AUTO_INCREMENT PRIMARY KEY,
    m_nombre VARCHAR(100) NOT NULL,
    m_estado INT NOT NULL,
    FOREIGN KEY (m_estado) REFERENCES estados(e_id) ON DELETE CASCADE
);

-- Crear la tabla "colonias"
CREATE TABLE colonias (
    c_id INT AUTO_INCREMENT PRIMARY KEY,
    c_nombre VARCHAR(100) NOT NULL,
    c_tipo_asentamiento VARCHAR(100),
    c_municipio INT NOT NULL,
    c_codigo_postal VARCHAR(10),
    FOREIGN KEY (c_municipio) REFERENCES municipios(m_id) ON DELETE CASCADE
);
