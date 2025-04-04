-- schema : advance

-- Demo : DB Preparation
CREATE TABLE penjualan (
    id INT PRIMARY KEY auto_increment,
    produk VARCHAR(255),
    kategori VARCHAR(255),
    jumlah INT,
    harga DECIMAL(10, 2)
);
describe penjualan;

INSERT INTO penjualan (id, produk, kategori, jumlah, harga) VALUES
    (1, 'Laptop', 'Elektronik', 5, 1000000),
    (2, 'Smartphone', 'Elektronik', 8, 1000000),
    (3, 'Printer', 'Elektronik', 3, 800000),
    (4, 'Meja', 'Furniture', 2, 700000),
    (5, 'Kursi', 'Furniture', 4, 700000);
    
select * from penjualan;
-- 
CREATE TABLE mahasiswa_teknik (
    id INT PRIMARY KEY auto_increment,
    nim INT,
    nama VARCHAR(255),
    jurusan VARCHAR(255)
);

CREATE TABLE mahasiswa_sains(
    id INT PRIMARY KEY auto_increment,
    nim INT,
    nama VARCHAR(255),
    jurusan VARCHAR(255)
);

describe mahasiswa_teknik;

INSERT INTO mahasiswa_teknik (id, nim, nama, jurusan) VALUES
    (1, 101, 'Ahmad Santoso', 'Jurusan A'),
    (2, 102, 'Fatimah Wulandari', 'Jurusan B'),
    (3, 103, 'Rizki Pratama', 'Jurusan A'),
    (4, 104, 'Nurul Hidayah', 'Jurusan B'),
    (5, 205, 'Irfan Hakim', 'Jurusan X');
    
INSERT INTO mahasiswa_sains (id, nim, nama, jurusan) VALUES
    (1, 201, 'Aisyah Rahmawati', 'Jurusan A'),
    (2, 202, 'Muhammad Rizal', 'Jurusan C'),
    (3, 203, 'Siti Nurhayati', 'Jurusan A'),
    (4, 204, 'Firdaus Aulia', 'Jurusan X'),
    (5, 205, 'Irfan Hakim', 'Jurusan X');
    
select * from mahasiswa_teknik;
select * from mahasiswa_sains;
select * from penjualan;

-- Demo : SQL Sub Query 
-- Sub Query
select produk, jumlah from penjualan where jumlah > (select AVG(jumlah) from penjualan);
select produk, jumlah from penjualan
	where jumlah > (select AVG(jumlah) from penjualan);
    
select *, AVG(jumlah) as rata_rata_penjualan from penjualan;
SELECT 
    id,produk,kategori,jumlah,harga,
    AVG(jumlah) AS rata_rata_penjualan
FROM penjualan
GROUP BY id;

select * from penjualan;
    
-- Demo : SQL Having
-- Having
select kategori, count(*) as jumlah_penjualan from penjualan
group by kategori;
select kategori, count(*) as jumlah_penjualan from penjualan
group by kategori having jumlah_penjualan >= 3;

-- Demo : SQL Group By

-- Menghitung jumlah penjualan
select kategori, count(*) as jumlah_penjualan from penjualan
group by kategori;

-- Menghitung omzet
select kategori, SUM(harga) as omzet from penjualan
group by kategori;

-- Max Min
select kategori, MAX(harga) as penjualan_tertinggi from penjualan
group by kategori;

select * from Penjualan;
