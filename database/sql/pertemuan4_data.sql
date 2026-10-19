USE praktikum_web_2401020058;

-- 1. Tambahkan 2 Program Studi
INSERT INTO program_studi (nama_prodi) VALUES
('Teknik Elektro'),
('Teknik Informatika');

-- 2. Tambahkan 4 Data Mahasiswa (Termasuk 1 Data Sementara)
INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES
('2401010001', 'Rifki', 'rifki@gmail.com', 22, 1),
('2401010047', 'Fadhil', 'fadhil@gmail.com', 21, 1),
('2401020057', 'Rauf', 'rauf@gmail.com', 19, 2);


-- 3. Lakukan UPDATE Email (Contoh update email Fadhil sesuai gambar)
UPDATE mahasiswa 
SET email = 'fadhil.ferdinan@gmail.com' 
WHERE nim = '2401010047';

-- 4. Tambahkan Data Kamu (Muhammad Rahman Afrialdi)
INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES
('2401020058', 'Muhammad Rahman Afrialdi', 'm.rahman.afrialdi@gmail.com', 21, 2);

-- 5. Lakukan DELETE Data Sementara
DELETE FROM mahasiswa 
WHERE nim = '2401020001';

-- 6. Tampilkan Hasil Akhir 4 Mahasiswa dengan SELECT JOIN
SELECT m.nim, m.nama, m.email, m.usia, p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p ON p.id = m.program_studi_id
ORDER BY m.nim;