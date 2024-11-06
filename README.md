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
