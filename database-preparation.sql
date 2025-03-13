create table mahasiswa(
	id_mahasiswa VARCHAR(20),
    nama VARCHAR(100),
    jurusan INT(2),
    gol_darah ENUM("A", "AB", "B"),
    tanggal_diterima DATETIME
);

-- describe mahasiswa;

-- video 2 

alter table mahasiswa
add primary key(id_mahasiswa);

-- Create table jurusan
create table jurusan(
	id_jurusan INT(2) PRIMARY KEY,
    nama_jurusan varchar(100)
); 

describe jurusan;

alter table mahasiswa
add constraint foreign_key_jurusan
foreign key (jurusan) references jurusan(id_jurusan);

-- add new column (usia)
alter table mahasiswa
add column usia INT(3);

-- add new multimple column (alamat,tgl lahir)
alter table mahasiswa
add column alamat varchar(300),
add column tanggal_lahir datetime;

-- delete/drop column
alter table mahasiswa
drop column usia;

-- drop multiple column
alter table mahasiswa
drop column alamat,
drop column tanggal_lahir;

-- modify 
alter table mahasiswa
modify column gol_darah VARCHAR(50);

-- change
alter table mahasiswa
change column gol_darah golongan_darah VARCHAR(20);

-- video 3
-- alter table mahasiswa rename mahamiswa;
describe mahasiswa;
