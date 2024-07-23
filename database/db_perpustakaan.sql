

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `kategori_buku` varchar(125) NOT NULL,
  `penerbit_buku` varchar(125) NOT NULL,
  `pengarang` varchar(125) NOT NULL,
  `tahun_terbit` varchar(125) NOT NULL,
  `isbn` int(50) NOT NULL,
  `j_buku_baik` varchar(125) NOT NULL,
  `j_buku_rusak` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `buku` (`id_buku`, `judul_buku`, `kategori_buku`, `penerbit_buku`, `pengarang`, `tahun_terbit`, `isbn`, `j_buku_baik`, `j_buku_rusak`) VALUES
(1, 'Cantik Itu Luka', 'Novel ', 'Gramedia Pustaka Utama', 'Eka Kurniawan', '2002', 2147483647, '38', '2'),
(2, 'Home Sweet Loan', 'Novel ', 'Gramedia Pustaka Utama', 'Almira Bastari', '2022', 2147483647, '40', '0'),
(3, 'Heartbreak Motel', 'Novel ', 'Gramedia Pustaka Utama', 'Ika Natassa', '2022', 2147483647, '40', '0');


CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `nama_app` varchar(50) NOT NULL,
  `alamat_app` text NOT NULL,
  `email_app` varchar(125) NOT NULL,
  `nomor_hp` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `identitas` (`id_identitas`, `nama_app`, `alamat_app`, `email_app`, `nomor_hp`) VALUES
(1, 'MA NW SURALAGA', 'Jl. Suralaga, Lombok Timur', 'laluhabil@gmail.com', '087814072378');



CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `kategori` (`id_kategori`, `kode_kategori`, `nama_kategori`) VALUES
(1, 'KT-001', 'SKI '),
(2, 'KT-002', 'AKIDAH'),
(3, 'KT-003', 'BAHASA INDO'),
(4, 'KT-004', 'Biografi'),
(5, 'KT-005', 'BAHASA INGGRIS'),
(6, 'KT-006', 'PRAKARYA'),
(7, 'KT-007', 'Sejarah'),
(8, 'KT-008', 'SENI BUDAYA'),
(9, 'KT-009', 'TEKNOLOGI'),
(10, 'KT-010', 'PKWN');



CREATE TABLE `pemberitahuan` (
  `id_pemberitahuan` int(11) NOT NULL,
  `isi_pemberitahuan` varchar(255) NOT NULL,
  `level_user` varchar(125) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `pemberitahuan` (`id_pemberitahuan`, `isi_pemberitahuan`, `level_user`, `status`) VALUES
(1, '<i class=\'fa fa-exchange\'></i> #Reza  Saputra Telah meminjam Buku', 'Admin', 'Belum dibaca'),
(2, '<i class=\'fa fa-repeat\'></i> #Reza  Saputra Telah mengembalikan Buku', 'Admin', 'Belum dibaca');



CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nama_anggota` varchar(125) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `tanggal_peminjaman` varchar(125) NOT NULL,
  `tanggal_pengembalian` varchar(50) NOT NULL,
  `kondisi_buku_saat_dipinjam` varchar(125) NOT NULL,
  `kondisi_buku_saat_dikembalikan` varchar(125) NOT NULL,
  `denda` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `peminjaman` (`id_peminjaman`, `nama_anggota`, `judul_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `kondisi_buku_saat_dipinjam`, `kondisi_buku_saat_dikembalikan`, `denda`) VALUES
(1, 'Reza  Saputra', 'Cantik Itu Luka', '08-08-2022', '08-08-2022', 'Baik', 'Baik', 'Tidak ada');



CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `kode_penerbit` varchar(125) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `verif_penerbit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `penerbit` (`id_penerbit`, `kode_penerbit`, `nama_penerbit`, `verif_penerbit`) VALUES
(1, 'P001', 'Gramedia Pustaka Utama', 'Terverifikasi'),
(2, 'P002', 'Mizan Pustaka', 'Terverifikasi'),
(3, 'P003', 'Bentang Pustaka', 'Terverifikasi'),
(4, 'P004', 'Erlangga', 'Terverifikasi'),
(5, 'P005', 'Republika', 'Terverifikasi');


CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `judul_pesan` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_kirim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `kode_user` varchar(25) NOT NULL,
  `nis` char(20) NOT NULL,
  `fullname` varchar(125) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `verif` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `join_date` varchar(125) NOT NULL,
  `terakhir_login` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `user` (`id_user`, `kode_user`, `nis`, `fullname`, `username`, `password`, `kelas`, `alamat`, `verif`, `role`, `join_date`, `terakhir_login`) VALUES
(1, '-', '-', 'Administrator', 'admin', 'admin', '-', '-', 'Iya', 'Admin', '04-05-2021', '08-08-2022 ( 13:58:17 )'),
(2, 'AP001', '100011', 'Reza  Saputra', 'reza', 'Reza', 'X - Rekayasa Perangkat Lunak', 'Desa Sambiroto, Kecamatan Tayu, Kabupatem Pati', 'Tidak', 'Anggota', '08-08-2022', '08-08-2022 ( 13:55:52 )');


ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);


ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);


ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);


ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`id_pemberitahuan`);


ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);


ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);


ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);




ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `pemberitahuan`
  MODIFY `id_pemberitahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

