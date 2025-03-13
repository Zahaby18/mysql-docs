-- video 1 operasi insert
--  create table mahasiswa_new(
-- 	id int primary key auto_increment,
--     nim varchar(30),
--     nama varchar(100),
--     usia int,
--     jurusan varchar(50)
--  );
 
 -- insert 
 insert into mahasiswa_new(nim,nama,usia,jurusan)
 values ('12321321321','zahab','20','mm');
 
 -- insert multiple 
insert into mahasiswa_new(nim,nama,usia,jurusan)
values 
('12321321321','zahaby','20','dev'),
('12321321321','miswa','20','marketing');

-- insert tanpa manggil kolom
-- test perubahan untuk git
insert into mahasiswa_new
values
('','12321321321','miswa','20','JPA');

-- video 2 operasi update
SET SQL_SAFE_UPDATES = 0;
update mahasiswa_new set usia='23' where nim='20212112';
update mahasiswa_new set nama='BIO',jurusan='antikode' where nim='20212112';

-- video 3 operasi delete
delete from mahasiswa_new where id='3';
delete from mahasiswa_new where usia='20' and jurusan='JPA';

-- video 4 operasi select
insert into mahasiswa_new
values
('','111','miswa','20','JPA'),
('','222','azzahra','24','JPA'),
('','333','zhb','25','antikode');

select * from mahasiswa_new where jurusan='JPA';
select nama,jurusan from mahasiswa_new where jurusan='antikode';
select * from mahasiswa_new where usia < 23;
select * from mahasiswa_new where jurusan!='JPA';

select * from mahasiswa_new where usia < 23 and jurusan='JPA';
select * from mahasiswa_new where usia between 18 and 21;

select * from mahasiswa_new where jurusan in('JPA','antikode');

select * from mahasiswa_new where
(usia='25' and jurusan='antikode') or (usia='20' and jurusan='JPA');

-- panggil
describe mahasiswa_new;
select * from mahasiswa_new;


-- Data Analisis DEMO
 create table penjualan(
	id int primary key auto_increment,
    no int,
    tanggal varchar(100),
    kode_pelanggan varchar(100),
    nama_pelanggan varchar(100),
    kode_produk varchar(100),
    nama_produk varchar(100),
    qty int,
    harga_satuan int,
    total_penjualan int,
    diskon varchar(10)
);

describe penjualan;
delete from penjualan;
select * from penjualan;

-- Tampilkan daftar transaksi pelanggan yang membeli produk dengan kode P-10
select * from penjualan where kode_produk='p-10';
-- Tampilkan nama pelanggan yang diakhiri dengan huruf 'i'.
select * from penjualan where nama_pelanggan like '%i';
-- Tampilkan transaksi yang memiliki penjualan qty diatas 500
select * from penjualan where qty > 500;
-- Tampilkan data penjualan untuk ‘Toko Nofri’ pada tanggal 2 Agustus
select * from penjualan where nama_pelanggan = 'Toko Nofri' and tanggal = '2-Aug';
-- Perbarui harga satuan produk dengan kode B-10 menjadi 400000.
update penjualan set harga_satuan = '400000' where kode_produk = 'b-10';
select * from penjualan where kode_produk = 'b-10';
-- Hapus data transaksi pada tanggal 1 Agustus.
delete from penjualan where tanggal = '1-Aug';
-- Hapus semua transaksi dengan total penjualan satuan di bawah 40000000.
delete from penjualan where total_penjualan < 40000000;

select * from penjualan;
 
 