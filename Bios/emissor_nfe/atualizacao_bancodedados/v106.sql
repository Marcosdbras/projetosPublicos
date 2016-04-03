drop table if exists ibpt;

CREATE TABLE IF NOT EXISTS ibpt(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
codigo VARCHAR(10), 
ex VARCHAR(10),
tipo VARCHAR(10),
descricao VARCHAR(230),
nacionalfederal float(12,2),
importadosfederal float(12,2),
estadual float(12,2),
municipal float(12,2),
vigenciainicio varchar(10),
vigenciafim varchar(10),
chave VARCHAR(10),
versao VARCHAR(10),
fonte VARCHAR(10) );
