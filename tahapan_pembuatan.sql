create database loundry_apsi;

use loundry_apsi;

create table karyawan(
Id_transaksi varchar(7) not null,
Id_karyawan varchar(7) not null,
Nama_karyawan varchar(50) not null,
primary key (Id_transaksi)
);

create table pelanggan(
Id_pelanggan varchar(7) not null,
Nama_pelanggan varchar(50) not null,
NoTelpon varchar(20) not null,
primary key (Id_pelanggan)
);

create table barangmasuk(
Id_transaksi varchar(7) not null,
Id_pelanggan varchar(7) not null,
Nama_karyawan varchar(50) not null,
Berat_barang decimal(10,2) not null,
Harga_paket int unsigned not null,
Tanggal_masuk date not null,
primary key (Id_transaksi),
constraint foreignkey_loundry
foreign key (Id_pelanggan) references pelanggan(Id_pelanggan)
);

create table barangkeluar(
Id_transaksi varchar(7) not null,    
Tanggal_keluar date not null,
Status_order enum('Dalam proses', 'Selesai', 'Dibatalkan'),
Status_pembayaran enum('Lunas', 'Belum lunas'),
foreign key(Id_transaksi) references barangmasuk(Id_transaksi)
);

create table pencucian(
Id_transaksi varchar(7) not null, 
Nama_karyawan varchar(50) not null,
paket_loundry varchar(50) not null,
primary key (Id_transaksi)
);


