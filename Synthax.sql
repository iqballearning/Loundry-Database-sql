-- ### MENAMPILKAN DATA SEMUA KOLOM DALAM TABEL####

select*from barangmasuk
select*from barangkeluar
select*from karyawan
select*from pelanggan
select*from pencucian


-- MENAMPILKAN BEBERAPA KOLOM YANG DIPILIH DALAM TABEL

select Id_transaksi, Id_pelanggan, Tanggal_masuk, Berat_barang from barangmasuk;


-- /// JOIN ///
--DATA BARANG MASUK dan BARANG KELUAR

select*from barangmasuk
inner join barangkeluar on (barangmasuk.Id_transaksi = barangkeluar.Id_transaksi);



--DATA BARANG MASUK dan KARYAWAN

select*from barangmasuk
inner join karyawan on (barangmasuk.Id_transaksi = karyawan.Id_transaksi);


--DATA BARANG MASUK dan PELANGGAN

select*from barangmasuk
inner join pelanggan on (barangmasuk.Id_pelanggan = pelanggan.Id_pelanggan);


--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN SERTA MEMBUAT TABEL TOTAL BAYAR SETIAP PELANGGAN

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi);


--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG DIBATALKAN

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Status_order = 'Dibatalkan';


--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG DALAM PROSES

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Status_order = 'Dalam proses';


--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG SELESAI

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Status_order = 'Selesai';


--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG DIBATALKAN ATAU DALAM PROSES

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Status_order = 'Dalam proses' or Status_Order = 'Dibatalkan';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG DALAM PROSES DAN BELUM LUNAS

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Status_order = 'Dalam proses' and Status_pembayaran = 'Belum lunas';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET CUCI SETRIKA REGULER

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET CUCI SETRIKA REGULER';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET CUCI REGULER

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET CUCI REGULER';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET SETRIKA REGULER

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET SETRIKA REGULER';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET CUCI SETRIKA EXPRESS

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET CUCI SETRIKA EXPRESS';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET CUCI EXPRESS

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET CUCI EXPRESS';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET SETRIKA EXPRESS

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry = 'PAKET SETRIKA EXPRESS';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PAKET CUCI SETRIKA REGULER DAN EXPRESS 

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry in ('PAKET CUCI SETRIKA REGULER', 'PAKET CUCI SETRIKA EXPRESS');



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET REGULER

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry like '%REGULER%';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN YANG PAKET EXPRESS

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where paket_loundry like '%EXPRESS%';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN DIANTARA TANGGAL 10-20

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
where Tanggal_masuk between '2023-01-10' and '2023-01-20';



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN TERBESAR KE TERKECIL

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
order by Berat_barang desc;



--JOIN TABEL BARANG MASUK, BARANG KELUAR, PELANGGAN, DAN PENCUCIAN UNTUK MELIHAT PESANAN PELANGGAN MEMBATASI HASIL QUERY    

select bm.Id_transaksi, bm.Id_pelanggan, bm.Nama_karyawan, pelanggan.Nama_pelanggan, pelanggan.NoTelpon, pencucian.paket_loundry,
bm.Berat_barang, bm.Harga_paket, bm.Tanggal_masuk, barangkeluar.Tanggal_keluar, bm.Berat_barang*Harga_paket as 'TOTAL BAYAR', 
barangkeluar.Status_order, barangkeluar.Status_pembayaran 
from barangmasuk as bm
inner join pelanggan on (bm.Id_pelanggan = pelanggan.Id_pelanggan)
inner join pencucian on (bm.Id_transaksi = pencucian.Id_transaksi)
inner join barangkeluar on (bm.Id_transaksi = barangkeluar.Id_transaksi)
order by Id_transaksi limit 3;


-- AGREGATE FUNCTION 
-- MENGHITUNG TOTAL TRANSAKSI

select COUNT(Id_transaksi) as 'TOTAL TRANSAKSI' from barangmasuk;



-- MENGHITUNG TOTAL JUMLAH PELANGGAN 

select COUNT(Id_pelanggan) as 'TOTAL PELANGGAN' from pelanggan;



-- MENGHITUNG PELANGGAN SETIAP PAKET

select count(Kode_paket) as 'TOTAL PELANGGAN PER PAKET', Kode_paket from barangmasuk group by Kode_paket;



-- MENGHITUNG TOTAL PENGHASILAN 

select sum(Berat_barang*Harga_paket) as 'TOTAL PENGHASILAN' from barangmasuk;



-- MENGHITUNG TOTAL PENGHASILAN SETIAP PAKET

select sum(Berat_barang*Harga_paket) as 'TOTAL PENGHASILAN PER PAKET', Kode_paket from barangmasuk group by Kode_paket;



-- MENGHITUNG PENGHASILAN PERHARI

select sum(Berat_barang*Harga_paket) as 'PENGHASILAN PER HARI', Tanggal_masuk from barangmasuk group by Tanggal_masuk;

