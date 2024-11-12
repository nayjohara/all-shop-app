# Tugas 7
## Perbedaan Stateless Widget dan Statefull Widget
`Stateless Widget` merupakan widget yang tidak dapat diubah setelah dibuat. Tampilannya statis dan tidak bisa memperbarui diri. Contohnya seperti `Text, Icon`.

`Statefull Widget` merupakan widget yang dapat berubah selama aplikasi berjalan. Dia memiliki tampilan yang dapat diperbarui berdasarkan dengan interaksi dengan user ataupun dengan ada nya perubahan pada data. Contohnya seperti `Checkbox, TextField`.

## Widget yang digunakan pada proyek ini
1) **MaterialApp**: membuat aplikasi yang berbasis Material Design dan mengatuh tema dan struktur data aplikasi
2) **ThemeData**: mengatur tema aplikasi seperti warna `primary` dan `secondary`
3) **Scaffold**: struktur dasar halaman yang menyediakan kerangka seperti `AppBar`, `body`(konten utama), dan lain-lain.
4) **AppBar**: menampilkan bagian atas halaman yang memiliki judul "All Shop" dengan warna dan style text tertentu
5) **Padding**: memberikan jarak di sekitar widget 
6) **Column**: untuk menyusun widget secara vertikal dalam satu kolom
7) **Row**: menyusun widget secara horizental dalam satu baris
8) **InfoCard**: widget khusus yang dibuat untuk menampilkan informasi berupa `title` dan `content` seperti NPM, Nama, Kelas
9) **Text**: menampilkan teks dengan style tertentu. Untuk menampilkan judul, konten, dan lain-lain.
10) **SizedBox**: menambahkan `padding` secara vertikal atau horizontal antara widget.
11) **Center**: menempatkan widget di tengah layar
12) **GridView.count**: menampilkan item dalam bentuk grid dengan jumlah kolom tertentu
13) **ItemCard**: widget khusus yang dibuat untuk menampilkan `Icon` dan nama dari setiap item dalam bentuk kartu.
14) **Icon**: menampilkan ikon dalam widget `ItemCard`, seperti `Icons.mood`, `Icons.add`, dan `Icons.logout`.
15) **Material**: membuat latar belakang untuk kartu `ItemCard` sesuai dengan warna tema aplikasi.
16) **InkWell**: menambahkan efek klik pada widget dan aksi saat ditekan pengguna, contohnya menampilkan pesan `SnackBar`.
17) **SnackBard**: menampilkan pesan sementara dibagain bawah layar saat item ditekan

## Fungsi dari `setState()` dan variabel yang terdampak oleh fungsi tersebut
`setState()` digunakan dalam Stateful Widgets untuk memperbarui UI ketika data berubah. Saat `setState()` dipanggil, widget akan "rebuild" dengan data baru. Variabel yang dideklarasikan dalam `State` dari Stateful Widget dapat terpengaruh oleh `setState()`.

## Perbedaan antara `const` dengan `final`
`const` digunakan utuk nilai yang tetap dan sudah diketahui saat compile time. Nilainya tidak dapat diubah. Contoh penggunaannya: `const String appName = "All Shop"`

`final` digunakan untuk nilai yang tetap tapi bisa diketahui saat runtime. Nilainya ditentukan sekali dan tidak bisa diubah setelah itu. Contoh penggunaannya: `final DateTime currentTime = dateTime.now()`

## Checklist secara step-by-step
1) Membuat direktori lokal dengan nama all-shop-apps dan menghubungkannya dengan Github
2) Melakukan pembuatan proyek flutter di terminal dengan `flutter create all_shop`
3) Pada direktori all_shop/lib, dibuat file baru `menu.dart`
4) Memindahkan class `MyHomePage` dan class `_MyHomePageState` dari `main.dart` ke `menu.dart`. Lalu, menambahkan `import all_shop/menu.dart` di `main.dart` agar program mengenali class `MyHomePage`
5) Membuat widget yang ada di `menu.dart` menjadi stateless widget
6) Membuat `InfoCard` dan `ButtonCard` dengan `Icon` di `menu.dart`
7) Mengubah tema warna aplikasi di main.dart

# Tugas 8
## Kegunaan `const` di Flutter, kapan sebaiknya menggunakan `const` dan sebaiknya tidak digunakan
`const` dugunakan untuk membuat widget yang bersifat immutable atau tidak bisa diubah dan sudah diketahui nilainya dari compile-time. Dengan penggunaan `const` kita dapat memngoptimalkan penyimpanan dan performa karena tidak perlu membuat ulang setiap kali aplikasi melakukan render.

Keuntungan menggunakan `const`:
1) **Menghemat memori**: objek yang bersifat _immutable_ hanya dibuat sekali saja dalam memori dan digunakan kembali, sehingga mengurangi alokasi memori yang berlebihan untuk hal yang sama
2) **Meningkatkan performa**: karena tidak ada pembuatan objek yang sama berulang kali, dapat mengurangi beban pemrosesan sehingga membuat aplikasi menjadi lebih ringan dan cepat
3) **Mengurangi risiko bug**: mengurangi risiko perubahan yang tidak disengaja pada data yang seharusnya tetap sama

`const` digunakan jika widget memiliki nilai yang tidak akan berubah selama aplikasi running. `const` tidak digunakan jika ingin membuat sebuah widget yang berubah sesuai dengan statenya.

## Penggunaan _Column_ dan _Row_ di Flutter
`Row` memungkinkan penyelarasan widget anak secara horizontal, ideal untuk meletakkan elemen berdampingan seperti tombol di toolbar atau ikon di menu navigasi. Arah utama (`main axis`) dari `Row` adalah horizontal (kiri ke kanan), sedangkan `cross axis`-nya bersifat vertikal (atas ke bawah). Sementara itu, `Column` cocok untuk menumpuk elemen satu di atas yang lain, misalnya dalam membuat bidang formulir atau daftar pesan. Pada `Column`, arah utama adalah vertikal (atas ke bawah), sementara `cross axis`-nya adalah horizontal (kiri ke kanan).

## Elemen Input yang digunakan pada halaman form dan yang tidak digunakan

- Elemen input yang digunakan:
`TextFromField`: pada tugas ini saya menggunakan sebanyak tiga kali. `TextFormField` digunakan untuk memasukkan nama produk, deskripsi produk, dan jumlah produk. Dengan elemen input ini memungkinkan user untuk memasukkan teks, serta terdapat validasi untuk memeriksa apakah input kosong ataupun sudah sesuia dengan format yang sudah ditentukan.

- Elemen input yang tidak digunakan:
1) `DropdownButtonFormField`: untuk memilih satu opsi dari beberapa pilihan yang tersedia dalam bentuk dropdown. Ini akan berguna jika kita ingin memberikan pilihan tetap, seperti kategori produk.
2) `CheckBox`:  untuk input berupa kotak centang, yang bisa berguna jika kita perlu memberikan opsi pilihan ya/tidak atau pilihan ganda dalam bentuk checklist.
3) `DatePicker`: untuk memilih tanggal, dan biasanya digunakan untuk input tanggal seperti tanggal produksi atau tanggal kedaluwarsa produk.

## Cara mengatur tema dan implementasi tema pada aplikasi
Untuk mengatur tema, digunakan `ThemeData` agar gaya pada aplikasi konsisten. Cara implementasinya yaitu dengan menggunakan `ThemeData` di dalam `MaterialApp`. digunakan warna utama (`primary`) dan warna sekunder (`secondary`) menggunakan `ColorScheme.light`, dengan warna hijau `Color(0xFF2A9D8F)`.

## Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter
Dalam Flutter, untuk menangani navigasi di aplikasi dengan banyak halaman, kita bisa menggunakan widget `Navigator`. `Navigator` memungkinkan untuk berpindah antar halaman dengan cara menambahkan atau menghapus halaman dari "tumpukan" (stack) halaman.

Berikut adalah beberapa cara yang  digunakan:

1. **Navigator.push()**: Digunakan untuk berpindah ke halaman baru dan menambahkannya ke stack. Misalnya, saat menekan tombol untuk membuka detail produk, kita bisa menggunakan `Navigator.push()` untuk berpindah ke halaman detail tanpa menutup halaman sebelumnya.

2. **Navigator.pop()**: Digunakan untuk kembali ke halaman sebelumnya dengan menghapus halaman teratas dari stack. Ini berguna saat kita ingin menutup halaman yang baru dibuka dan kembali ke halaman sebelumnya.

3. **Navigator.pushReplacement()**: Digunakan untuk mengganti halaman saat ini dengan halaman baru, tanpa menyimpan halaman sebelumnya di stack. Ini biasanya dipakai di halaman login, di mana setelah login sukses, kita mengganti halaman login dengan halaman utama.

4. **Navigator.pushAndRemoveUntil()**: Digunakan untuk menavigasi ke halaman baru sambil menghapus semua halaman sebelumnya dari stack. Ini berguna misalnya setelah proses registrasi selesai, kita ingin langsung ke halaman utama tanpa bisa kembali ke halaman registrasi.


