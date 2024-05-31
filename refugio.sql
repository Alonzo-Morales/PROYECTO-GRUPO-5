create database if not exists refugio;
 # Crear la tabla personas
CREATE TABLE personas (
  ID_prs INT PRIMARY KEY,
  nombre_prs VARCHAR(100),
  genero_prs VARCHAR(50),
  domicilio_prs VARCHAR(200),
  telefono_prs VARCHAR(20)
);

# Crear la tabla mascotas
CREATE TABLE mascotas (
  ID_mct INT PRIMARY KEY,
  nombre_mct VARCHAR(100),
  edad_mct INT,
  genero_mct VARCHAR(50),
  especie_mct VARCHAR(100),
  estatus_mct VARCHAR(50),
  ID_prs INT,
  FOREIGN KEY (ID_prs) REFERENCES personas(ID_prs)
);