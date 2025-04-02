-- Schema : Join
-- Demo : Database Preparation
CREATE TABLE mahasiswa (
    id INT PRIMARY KEY auto_increment,
    nim INT,
    nama_depan VARCHAR(255),
    nama_belakang VARCHAR(255),
    jenis_kelamin VARCHAR(20),
    tanggal_lahir DATE,
    usia INT,
    alamat VARCHAR(255)
);

describe mahasiswa;

INSERT INTO mahasiswa (id, nim, nama_depan, nama_belakang, jenis_kelamin, tanggal_lahir, usia, alamat) VALUES
    (1, 101, 'Ahmad', 'Santoso', 'Laki-laki', '1995-05-15', 18, 'Jl. Jenderal Sudirman No. 123'),
    (2, 102, 'Fatimah', 'Wulandari', 'Perempuan', '1997-09-20', 18, 'Jl. Pahlawan No. 45'),
    (3, 103, 'Rizki', 'Pratama', 'Laki-laki', '1998-11-08', 22, 'Jl. Diponegoro No. 78'),
    (4, 104, 'Nurul', 'Hidayah', 'Perempuan', '1996-02-14', 22, 'Jl. A. Yani No. 56'),
    (5, 105, 'Irfan', 'Hakim', 'Laki-laki', '1999-07-30', 19, 'Jl. Merdeka No. 89'),
    (6, 106, 'Dewi', 'Rahayu', 'Perempuan', '1997-03-25', 20, 'Jl. Gatot Subroto No. 34'),
    (7, 107, 'Eko', 'Wijaya', 'Laki-laki', '1994-08-12', 21, 'Jl. Gajah Mada No. 12'),
    (8, 108, 'Rina', 'Sari', 'Perempuan', '1998-12-18', 21, 'Jl. S. Parman No. 67'),
    (9, 109, 'Andi', 'Susanto', 'Laki-laki', '1996-06-05', 23, 'Jl. Ahmad Yani No. 90'),
    (10, 110, 'Diana', 'Cahyani', 'Perempuan', '1995-09-22', 20, 'Jl. Veteran No. 21'),
    (11, 111, 'Budi', 'Hartono', 'Laki-laki', '1997-04-14', 19, 'Jl. Pemuda No. 56'),
    (12, 112, 'Siti', 'Nurlela', 'Perempuan', '1998-01-30', 18, 'Jl. K.H. Agus Salim No. 78'),
    (13, 113, 'Feri', 'Setiawan', 'Laki-laki', '1996-10-08', 22, 'Jl. Soekarno-Hatta No. 45'),
    (14, 114, 'Yuli', 'Rahayu', 'Perempuan', '1999-05-20', 22, 'Jl. Diponegoro No. 34'),
    (15, 115, 'Arif', 'Prasetyo', 'Laki-laki', '1997-11-15', 21, 'Jl. Gajah Mada No. 56'),
    (16, 116, 'Linda', 'Sulistyo', 'Perempuan', '1995-02-28', 19, 'Jl. A. Yani No. 78'),
    (17, 117, 'Joko', 'Wijaya', 'Laki-laki', '1998-07-10', 18, 'Jl. S. Parman No. 89'),
    (18, 118, 'Ani', 'Saputra', 'Perempuan', '1996-04-15', 20, 'Jl. Merdeka No. 12'),
    (19, 119, 'Agus', 'Santoso', 'Laki-laki', '1997-09-05', 20, 'Jl. Pemuda No. 67'),
    (20, 120, 'Rahmat', 'Wijaya', 'Laki-laki', '1996-03-10', 23, 'Jl. Merdeka No. 67');
    
select * from mahasiswa;

--

CREATE TABLE transaksi (
    id INT PRIMARY KEY auto_increment,
    id_user INT,
    id_barang INT,
    jumlah_transaksi INT,
    total_transaksi INT
);

describe transaksi;

INSERT INTO transaksi (id, id_user, id_barang, jumlah_transaksi, total_transaksi) VALUES
    (1, 101, 201, 3, 12000),
    (2, 102, 202, 2, 8500),
    (3, 103, 203, 1, 3500),
    (4, 104, 204, 4, 19800),
    (5, 105, 205, 2, 9000);
    
select * from transaksi;

--  Demo : String Function
select * from mahasiswa;

-- Concat: Menggabungkan isi 2 kolom
select concat(nama_depan,' ',nama_belakang) as nama_lengkap from mahasiswa;

-- Substring: mengambil bagian tertentu dari nama
select nama_depan, substring(nama_depan, 1, 3) as nama_pendek from mahasiswa;
select nama_belakang, substring(nama_belakang, 1, 3) as nama_pendek from mahasiswa;

-- Replace
select nama_depan, replace(nama_belakang, 'S', 'X') as nama_ganti_s from mahasiswa;
select nama_depan,nama_belakang from mahasiswa ;
-- select nama_depan from mahasiswa ;

select * from transaksi;

select id_barang, jumlah_transaksi,total_transaksi, format(total_transaksi, 0) as total_transaksi_format
from transaksi;

