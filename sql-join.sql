-- demo : join, data preparation
create table mahasiswa_join(
	id int auto_increment primary key,
    nim int,
    nama varchar(100)
);
INSERT INTO mahasiswa_join (id, nim, nama) VALUES
    (1, 101, 'Ahmad Santoso'),
    (2, 102, 'Fatimah Wulandari'),
    (3, 103, 'Rizki Pratama'),
    (4, 104, 'Nurul Hidayah'),
    (5, 205, 'Irfan Hakim');
-- 
create table nilai_join(
	id int primary key,
    nim int,
    nilai int
);
INSERT INTO nilai_join (id, nim, nilai) VALUES
    (1, 101, 80),
    (2, 102, 90),
    (3, 104, 70),
    (4, 201, 80),
    (5, 202, 75);


describe mahasiswa_join;
select * from mahasiswa_join;
describe nilai_join;
select * from nilai_join;

--  Demo : Inner Join
select mahasiswa_join.nim,mahasiswa_join.nama,nilai_join.nilai
from mahasiswa_join
inner join nilai_join
on mahasiswa_join.nim = nilai_join.nim;

-- Demo : Left Join
select mahasiswa_join.nim,mahasiswa_join.nama,nilai_join.nilai
from mahasiswa_join
left join nilai_join
on mahasiswa_join.nim = nilai_join.nim;

-- Demo : Right Join
select mahasiswa_join.nim,mahasiswa_join.nama,nilai_join.nilai
from mahasiswa_join
right join nilai_join
on mahasiswa_join.nim = nilai_join.nim;

-- Demo : Full Join
select mahasiswa_join.nim,mahasiswa_join.nama,nilai_join.nilai
from mahasiswa_join
left join nilai_join
on mahasiswa_join.nim = nilai_join.nim
union
select mahasiswa_join.nim,mahasiswa_join.nama,nilai_join.nilai
from mahasiswa_join
right join nilai_join
on mahasiswa_join.nim = nilai_join.nim;

-- Demo : Cross Join
CREATE TABLE barang (
    id_barang INT PRIMARY KEY,
    nama_barang VARCHAR(255)
);	

CREATE TABLE merek (
    id_merek INT PRIMARY KEY,
    nama_merek VARCHAR(255)
);

alter table barang rename barang_join;
alter table merek rename merek_join;

INSERT INTO barang_join (id_barang, nama_barang) VALUES
    (1, 'Laptop'),
    (2, 'Smartphone'),
    (3, 'Printer');

INSERT INTO merek_join (id_merek, nama_merek) VALUES
    (1, 'ASUS'),
    (2, 'Samsung');
    
select * from barang_join;
select * from merek_join;	

select barang_join.nama_barang, merek_join.nama_merek
from barang_join
cross join merek_join;

-- Demo Video Terakhir
alter table mahasiswa_join
add column status_kelulusan_join varchar(20);

describe mahasiswa_join;

select * from nilai_join;

SET SQL_SAFE_UPDATES = 0;
update mahasiswa_join inner join nilai_join		
on mahasiswa_join.nim = nilai_join.nim
set mahasiswa_join.status_kelulusan_join = "Lulus"
where nilai_join.nilai >= 80; 	

select * from nilai_join;

update nilai_join set nilai='85' where nim='104';

select * from mahasiswa_join;

