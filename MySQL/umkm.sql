create database umkm;

-- 1. cek tabel
select * from umkm_jabar;

-- 2. menujukan data yang di kota bandung
select * from umkm_jabar where nama_kabupaten_kota = "kota Bandung";

-- 3.  menujukan data umkm dari 2019 berdasarkan kategori usaha
select * from umkm_jabar where tahun >= 2019 order by kategori_usaha, tahun;

-- 4.  dibatasi tahun sampai 10 saja
select * from umkm_jabar where tahun >= 2019 order by kategori_usaha, tahun limit 10;

-- 5. kaetegori usaha apa saja yang ada di data set?
select distinct kategori_usaha from umkm_jabar;

-- 6. hanya menampilkan kategori usaha fashion dan makanan
select * from umkm_jabar where kategori_usaha in ("fashion","makanan");

-- 7. tunjukan seluruh data dengan kategori usaha fashion di karawang;
select * from umkm_jabar where kategori_usaha ="fashion" and nama_kabupaten_kota = "Kabupaten karawang";

-- 8. Tunjukkan seluruh data selain kategori usaha kuliner, makanan dan minuman!
select * from umkm_jabar where kategori_usaha not in ("kuliner", "makanan", "minuman");

-- 9. Apakah terdapat id yang memiliki jumlah_umkm yang tidak diketahui (NULL)?
select * from umkm_jabar where proyeksi_jumlah_umkm is null;

-- 10. Dari tahun 2018 s.d. 2020, bagaimana tren jumlah umkm di Kabupaten Tasikmalaya untuk kategori usaha Batik?
SELECT * FROM umkm_jabar WHERE nama_kabupaten_kota = "Kabupaten Tasikmalaya" AND kategori_usaha = "BATIK" 
AND tahun BETWEEN 2018 AND 2020 ORDER BY proyeksi_jumlah_umkm ASC;

-- 11. Di antara Kota Bandung, Kabupaten Bandung dan Kabupaten Bandung Barat, di manakah umkm kuliner terpusat pada tahun 2021?
select * from umkm_jabar where nama_kabupaten_kota like "%bandung%" and kategori_usaha ="kuliner"
and tahun = 2021 order by proyeksi_jumlah_umkm ASC;

-- 12. Kabupaten/Kota mana saja yang memiliki angka 7 pada digit ke 3 kode tersebut?
select distinct kode_kabupaten_kota, nama_kabupaten_kota from umkm_jabar where kode_kabupaten_kota like "__7%";


