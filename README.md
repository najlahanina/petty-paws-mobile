## TUGAS 7
## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
#### *STATELESS WIDGET:*

- Tidak dapat diubah (Immutable): Setelah widget di build, keadaan atau informasi yang ditampilkan tidak dapat dimodifikasi.

- Method: Stateless widget mengoverride metode build() untuk merender user interface. Proses ini hanya terjadi sekali saat widget pertama kali dibuat, sehingga tidak ada pembaruan yang terjadi setelah itu.

- Contoh penggunaan: Umumnya digunakan untuk elemen UI yang tidak memerlukan pembaruan atau interaksi dinamis, seperti Text, RaisedButton, dan Icon. Stateless widget ideal untuk tampilan yang statis, di mana informasi yang ditampilkan tidak akan berubah seiring waktu.

#### *STATEFUL WIDGET:*

- Dapat diubah (Mutable): Stateful widget dapat mengalami perubahan sesuai dengan interaksi pengguna atau perubahan variabel dalam aplikasi.

- Method: Stateful widget mengoverride metode createState() untuk membuat objek State. Objek ini bertanggung jawab untuk menyimpan dan memperbarui keadaan widget, sehingga memungkinkan perubahan yang responsif terhadap interaksi pengguna.

- Contoh penggunaan: Cocok untuk elemen antarmuka pengguna yang memerlukan pembaruan dinamis, seperti CheckBox, RadioButton, Form, dan TextField. Stateful widget sangat berguna dalam situasi di mana data perlu diperbarui secara real-time, misalnya saat pengguna mengisi formulir atau berinteraksi dengan berbagai pilihan dalam aplikasi.
## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
#### *main.dart*

- runApp: Fungsi yang memulai aplikasi Flutter. runApp akan menjalankan aplikasi dengan widget MyApp sebagai widget utama aplikasi.

- MyApp: main widget yang bersifat StatelessWidget dan berfungsi untuk menetapkan tema aplikasi serta menentukan MyHomePage sebagai home app.

- MaterialApp: widget yang berfungsi untuk membuat aplikasi Flutter dan menyediakan beberapa parameter seperti title, theme, dan home.

- ThemeData: Objek konfigurasi yang digunakan untuk menentukan tema atau gaya keseluruhan aplikasi, seperti warna dan teks.

- ColorScheme.fromSeed: Membuat skema warna otomatis berdasarkan warna seed.

- MyHomePage: Widget halaman utama yang ditampilkan saat aplikasi pertama kali dijalankan.

#### *menu.dart*

- MyHomePage: main widget yang bersifat StatelessWidget dan berfungsi sebagai main page dari app. Widget ini memiliki daftar ItemHomepage dan menggunakan GridView.count untuk menampilkan daftar Itemcard. 

- ItemCard: widget bersifat StatelessWidget yang mewakili ItemHomepage card. Ini menampilkan ikon, teks, dan warna yang terkait dengan item yang diberikan.

- Scaffold: Struktur utama halaman yang menyediakan kerangka dasar aplikasi dengan AppBar di bagian atas dan body untuk konten utama.

- AppBar: Header yang berada di atas halaman. Dalam contoh ini, AppBar digunakan untuk menampilkan judul aplikasi "Petty Paws🐾".

- Padding: Menambahkan ruang di sekitar widget yang dibungkusnya. Dalam kode ini, Padding digunakan untuk memberikan jarak pada seluruh konten di dalam Scaffold dan beberapa elemen lainnya.

- Column: Widget yang menyusun widget-widget anaknya secara vertikal. Digunakan untuk menyusun elemen-elemen halaman seperti Row dan Center.

- Row: Widget yang menyusun widget-widget anaknya secara horizontal. Di sini, Row digunakan untuk menampilkan informasi NPM, nama, dan kelas secara sejajar di dalam InfoCard.

- Center: Menempatkan widget anaknya di tengah ruang yang tersedia. Di sini, Center digunakan untuk menyusun elemen-elemen kolom secara terpusat.

- Text: Menampilkan teks statis. Dalam kode ini, Text digunakan untuk menampilkan judul, nama pengguna, kelas, dan teks pada tombol di dalam ItemCard.

- GridView.count: Widget yang menampilkan grid dari widget-widget anaknya dengan jumlah kolom tetap (crossAxisCount). Di sini digunakan untuk menampilkan item pada halaman beranda dalam bentuk grid dengan tiga kolom.

- Card: Widget yang digunakan untuk membuat tampilan seperti kartu. Dalam kode ini, Card digunakan dalam InfoCard untuk menampilkan informasi seperti NPM, nama, dan kelas.

- Container: Widget dasar yang digunakan untuk menambahkan gaya dan layout, seperti padding dan ukuran. Container digunakan di dalam Card di InfoCard untuk mengatur ukuran dan jarak.

- Material: Memberikan efek visual seperti bayangan dan warna latar belakang sesuai standar Material Design. Dalam ItemCard, Material digunakan untuk mengatur warna latar dari tiap item.

- InkWell: Widget yang menambahkan efek ripple saat pengguna menekan widget. Di sini, InkWell mengelilingi ItemCard untuk memberikan interaksi tap, yang menampilkan pesan SnackBar ketika ditekan.

- Icon: Menampilkan ikon. Dalam ItemCard, Icon digunakan untuk menunjukkan ikon yang relevan dengan setiap item (seperti Icons.checklist untuk "Lihat Daftar Produk").

- SnackBar: Menampilkan pesan sementara di bagian bawah halaman saat suatu aksi terjadi. SnackBar ini ditampilkan ketika pengguna menekan salah satu ItemCard.

- SizedBox: Menambahkan ruang kosong dengan tinggi atau lebar tertentu. Di sini SizedBox digunakan untuk memberikan jarak vertikal antara elemen-elemen di dalam InfoCard.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah metode di Flutter yang digunakan dalam StatefulWidget untuk memberi tahu framework bahwa ada perubahan dalam *state* yang memerlukan pembaruan tampilan (UI). Berikut adalah beberapa fungsi dari setState():

- Sebagai penanda bahwa state pada widget telah diperbarui

- Sebagai pemicu framework untuk melakukan pembaruan (rebuild) pada tampilan widget

- Memastikan UI diperbarui agar mencerminkan perubahan terbaru

- Menjaga sinkronisasi antara *state* dan tampilan yang terlihat

Variabel yang terdampak setState():

- Variabel instance atau member dalam kelas State

- Koleksi seperti List, Map, dan Set

- Objek atau kelas khusus yang disimpan dalam state

## 4. Jelaskan perbedaan antara const dengan final.
const dan final digunakan untuk mendeklarasikan sebuah variable, berikut lengkapnya:

#### *CONST:*

- Variable yang dideklarasikan dengan const merupakan konstanta dan nilainya harus diketahui pada waktu kompilasi. Sehingga nilai var tersebut tidak dapat diubah setelah diinisialisasi.

- Karena ditentukan diawal kompilasi, dart dapat mengoptimalkan penggunaan memori dan kinerja sehingga dapat menghemat resource saat membuat objek yang sama.

- contoh: conts pi = 3.14;

#### *FINAL:*

- Variable yang dideklarasikan dengan final juga tidak dapat diubah setelah diinisialisasi, tetapi nilai tersebut tidak harus diketahui pada waktu kompilasi. Sehingga nilai dapat diberikan pada saat eksekusi program. 

- Lebih fleksibel karena memungkinkan inisialisasi berdasarkan kondisi yang dapat berubah saat program berjalan.

- contoh: final currentTime = DateTime.now();
## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### *Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.*

1. Melakukan instalasi flutter.

2. Melakukan instalasi IDE (VS Code) lalu install extension Dart dan Flutter di dalamnya.

3. Buka terminal di direktori tempat penyimpanan proyek yang diinginkan lalu jalankan perintah berikut:
```
flutter create gameshop
cd gameshop
```
4. Jalankan proyek lalu pilih browser yang diinginkan untuk menampilkan app dengan menjalankan perintah berikut:
```
flutter run
```
5. Jika proyek sudah berjalan, inisiasi repositori baru dalam github lalu add, commit, dan push proyek flutter tersebut.

#### *Membuat tiga tombol sederhana dan memunculkan Snackbar dengan tulisan*

1. Buat file baru bernama menu.dart pada direktori petty-paws/lib dan tambahkan kode berikut:
```
import 'package:flutter/material.dart';
```
2. Buka file main.dart lalu cut kode baris 39 hingga akhir yang berisi kedua class yaitu MyHomePage dan _MyHomePageState ke file menu.dart

3. Buka file main.dart lalu tambahkan kode berikut untuk menghindari unidentified error MyHomePage:
```
import 'package:petty_paws/menu.dart';
```

4. Atur tema aplikasi dengan menambahkan kode berikut pada file main.dart:
```dart
theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 45, 88)),
        useMaterial3: true,
      ),
```
5. Buka file main.dart dan ubah sifat widget halaman menu menjadi stateless dengan cara mengubah MyHomePage(title: 'Flutter Demo Home Page') menjadi MyHomePage()

6. Buka file menu.dart dan ubah sifat widget halaman menjadi stateless dengan mengubah ({super.key, required this.title}) menjadi MyHomePage({super.key}); lalu hapus semua isi class MyHomePage dan hapus class _MyHomePageState extends State<MyHomePage>

7. Buat class baru bernama ItemHomePage yang berisi atribut-atribut card seperti berikut:
```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
```
8. Tambahkan kode berikut pada class MyHomePage yang berisi list 
```dart
ItemHomePage yaitu button-button yang ingin ditampilkan
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.checklist, Color(0xFFBF7896)),
    ItemHomepage("Tambah Produk", Icons.add, Color(0xFFD895B1)),
    ItemHomepage("Logout", Icons.logout, Color(0xFFDFB8CC)),
  ];
```
9. Buat class baru bernama ItemCard yang berguna untuk menampilkan button-button tersebut. Saat button ditekan akan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [Lihat Daftar Produk/Tambah Produk/Logout]". Berikut isi kodenya:
```dart
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.
  final ItemHomepage item; 
  const ItemCard(this.item, {super.key}); 
  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}
```
10. Integrasikan Itemcard untuk ditampilkan di MyHomePage dengan mengoverride WidgetBuild pada class MyHomePage seperti berikut:
```dart
@override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
        title: const Text(
          'Petty Paws🐾',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Petty Paws',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
```
## TUGAS 8
## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const pada Flutter digunakan untuk mendeklarasikan objek atau widget yang bersifat konstan dan tidak berubah selama siklus hidup aplikasi. Ada beberapa keuntungan dari penggunaan const di Flutter, yaitu:

- Meningkatkan performa karena dengan const objek akan dibuat sekali kemudian dapat dipakai kembali di seluruh aplikasi.

- Mengoptimalkan penggunaan memori karena flutter akan menyimpan objek di memori selama app berjalan yang berarti flutter tidak perlu membuat salinan baru dari objek tersebut setiap kali dibutuhkan.

- Menghindari rebuild yang tidak perlu karena widget dengan const tidak akan terpengaruh oleh perubahan status sehingga tidak akan berubah tiap kali ada pembaruan dalam app.

- Kode yang dibuat akan lebih mudah dipahami dan lebih aman karena dengan const akan secara eksplisit menunjukkan bahwa objek tersebut tidak akan berubah.

const sebaiknya digunakan pada objek atau widget yang memiliki nilai tetap dan tidak bergantung pada data yang berubah, seperti ikon, teks, atau warna. Sebaliknya, tidak disarankan menggunakan const pada widget yang membutuhkan pembaruan berdasarkan data dinamis, seperti saat memanipulasi tampilan berdasarkan input pengguna.

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
| Fitur                  | Column                                                                | Row                                                                  |
|------------------------|-----------------------------------------------------------------------|----------------------------------------------------------------------|
| **Arah Susunan**       | Menyusun widget secara vertikal (dari atas ke bawah)                 | Menyusun widget secara horizontal (dari kiri ke kanan)               |
| **Perataan Utama**     | `mainAxisAlignment` mengatur jarak antar widget secara vertikal      | `mainAxisAlignment` mengatur jarak antar widget secara horizontal    |
| **Perataan Samping**   | `crossAxisAlignment` mengatur perataan widget secara horizontal      | `crossAxisAlignment` mengatur perataan widget secara vertikal        |
| **Penyesuaian Ukuran** | Menyesuaikan tinggi dengan ruang yang tersedia secara default        | Menyesuaikan lebar dengan ruang yang tersedia secara default         |
| **Penggunaan Scroll**  | Membutuhkan `SingleChildScrollView` jika widget melebihi tinggi layar | Membutuhkan `SingleChildScrollView` jika widget melebihi lebar layar |

Implementasi Column
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('teks pertama'),
    Text('teks kedua'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Tombol'),
    ),
  ],
)
```
Implementasi Row
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.home),
    Text('Beranda'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Klik'),
    ),
  ],
)
```
## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form ProductEntryFormPage, elemen input yang digunakan adalah:

- **TextFormField**: digunakan untuk menerima input teks, seperti nama produk, URL gambar, brand, harga, kategori, deskripsi, dan kuantitas produk. Setiap TextFormField diatur untuk memiliki validasi, misalnya memeriksa apakah nilai kosong atau tidak sesuai tipe data yang diharapkan.

- **ElevatedButton**: digunakan sebagai tombol untuk menyimpan data. Saat tombol ditekan, terdapat validasi pada semua TextFormField, dan jika lolos, data akan ditampilkan dalam dialog sebagai konfirmasi.

Selain elemen-elemen tersebut, terdapat beberapa elemen input lain di Flutter yang tidak digunakan dalam tugas ini, seperti:

- **DropdownButton**: digunakan untuk memilih satu opsi dari daftar pilihan, misalnya, kategori produk yang sudah ada.

- **Checkbox**: digunakan untuk input yang membutuhkan opsi ya atau tidak.

- **Slider**: digunakan untuk memilih nilai dari rentang, misalnya rating.

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam aplikasi yang saya buat ini, saya menggunakan ThemeData di dalam widget MaterialApp pada file main.dart. Dengan ThemeData, dapat mengatur warna utama (primary) dan warna aksen (secondary) agar konsisten tampilannya di seluruh aplikasi.
```dart
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 45, 88)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
```
Dengan menerapkan tema, setiap widget di aplikasi yang menggunakan parameter Theme.of(context) akan mengikuti gaya yang telah ditentukan, sehingga tidak perlu diatur secara manual pada setiap halaman.
## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam aplikasi Flutter saya, untuk menangani navigasi antar halaman, saya menggunakan Navigator.push dan Navigator.pushReplacement

- Navigator.push() menambahkan suatu route ke dalam stack route yang dikelola oleh Navigator. Method ini membuat route yang ditambahkan berada pada paling atas stack, sehingga route tersebut akan muncul dan ditampilkan kepada pengguna. Contoh implementasinya:
```dart
if (item.name == "Tambah Produk") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductEntryFormPage(),
    ),
  );
}
```
Pada contoh tersebut Navigator.push() digunakan di dalam MyHomePage() tersebut untuk pindah ke dalam halaman ProductEntryFormPage() dan saat pengguna sudah selesai, mereka akan secara automatis kembali ke halaman MyHomePage().

- Navigator.pushReplacement() akan menghapus route yang sedang ditampilkan dan menggantikannya dengan route baru. Metode ini memindahkan aplikasi dari route yang sedang aktif ke route yang ditentukan. Pada stack route yang dikelola oleh Navigator, route yang lama di bagian atas stack akan digantikan oleh route baru yang diberikan, sementara elemen-elemen di bawahnya dalam stack tetap tidak terpengaruh. Contoh implementasinya:
```dart
onTap: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => MyHomePage(),
    ));
},
```
Pada contoh tersebut Navigator.pushReplacement() digunakan untuk replace stack route yang ada di paling atas dengan MyHomePage(). Hal ini dilakukan agar pengguna tidak kembali ke halaman lain setelah selesai dari MyHomePage().

## TUGAS 9
## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk melakukan pengambilan ataupun pengiriman data JSON perlu dilakukan karena beberapa alasan berikut:

- Dapat menyederhanakan proses parsing karena dengan model kita dapat mendefinisikan struktur data yang diharapkan dan memastikan data yang diterima atau dikirim sudah sesuai dengan format yang benar.

- Dapat memudahkan dalam mengolah data karena model menyediakan cara untuk mendefinisikan relasi antar data.

- Dapat memudahkan proses serialisasi (konversi objek python menjadi format JSON) dan deserialisasi (konversi data JSON menjadi objek python)

Jika tidak membuat model terlebih dahulu, pengambilan data JSON tetap bisa dilakukan dan tidak langsung menyebabkan error. Namun, terdapat kelemahan yaitu data yang dihasilkan biasanya kurang terstruktur sehingga akan mempersulit kita dalam pemeliharaan kode.
## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
- **Registrasi**: aplikasi mengirim permintaan POST berisi data username dan password ke endpoint Django (auth/register/). Dengan http, respons yang diterima dapat diproses untuk menampilkan pesan berhasil atau gagal registrasi.

- **Login**: http digunakan untuk mengirim permintaan POST ke endpoint login (auth/login/) dengan data autentikasi user. Jika berhasil, user diarahkan ke homepage dan session disimpan. Jika gagal, aplikasi menampilkan pesan kesalahan.

- **List Product**: aplikasi mengirim permintaan GET ke API Django untuk mengambil data produk dalam bentuk JSON lalu menampilkannya di halaman daftar produk (ProductEntryPage).

- **Logout**: http digunakan untuk mengirim permintaan ke endpoint logout (auth/logout/). Saat pengguna logout, session akan dihentikan di server, dan aplikasi menampilkan pesan logout berhasil.
## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest merupakan sebuah class pada Flutter yang berfungsi:

- Untuk menyimpan cookie yang diterima dari server saat login atau lainnya. cookie berguna untuk mempertahankan sesi login sehingga user tidak perlu login kembali tiap kali membuka aplikasi.

- Untuk menangani permintaan http seperti GET dan POST ke server. CookieRequest menyertakan cookie secara otomatis pada setiap permintaan, sehingga server dapat mengenali sesi pengguna.

Agar pengalaman pengguna lebih lancar, instance CookieRequest perlu dibagikan ke seluruh komponen aplikasi untuk:

- Mempertahankan sesi user karena dengan instance yang sama di seluruh komponen maka semua halaman atau fitur dapat menggunakan cookie yang sama.

- Meningkatkan efisiensi karena komponen lain dapat memeriksa status login atau mengirim permintaan ke server tanpa perlu membuat objek CookieRequest baru

- Menghindari redudansi jika membuat beberapa instance CookieRequest, karena menyebabkan sesi tidak sinkron sehingga user harus login berkali-kali
## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. 

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
**REGISTER:**
Input data (username dan password) di Flutter dengan mengisi form registrasi. Selanjutnya, flutter akan mengirim data ke endpoint register di server Django melalui POST request. Di Django, endpoint register menerima data, lalu melakukan validasi. Jika validasi berhasil, Django membuat akun baru dan menyimpan data pengguna di database. Django mengembalikan respons sukses ke Flutter. Terakhir, Flutter memeriksa respons yang diterima dari Django. Jika sukses, Flutter dapat menampilkan pesan berhasil atau mengalihkan pengguna ke halaman login.

**LOGIN:**
Input data (username dan password) di Flutter dengan mengisi form login. Selanjutnya, flutter akan mengirim data ke endpoint login di server Django melalui POST request. Lalu, Django menerima request dan memvalidasi kredensial pengguna. Jika login berhasil, Django mengembalikan token autentikasi yang berisi informasi user dan masa berlaku. Setelah menerima token, Flutter menyimpannya secara lokal agar dapat digunakan untuk autentikasi di permintaan selanjutnya. Setelah login berhasil, Flutter mengalihkan user ke halaman utama yang hanya dapat diakses oleh user yang sudah login.

**LOGOUT:**
Ketika user memilih untuk logout, Flutter menghapus token dari penyimpanan lokal untuk memastikan bahwa aplikasi tidak lagi menyertakan token pada permintaan berikutnya. Setelah logout, Flutter mengarahkan user kembali ke halaman login.
## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
#### Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
1. Buat file baru dengan nama login.dart di folder screens dengan isi seperti berikut:
```dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:petty_paws/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      final response = await request.postJson(
                          "http://localhost:8000/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
#### Membuat halaman login pada proyek tugas Flutter.
1. Instalasi package yang sesuai untuk autentikasi user melalui perintah berikut:
```dart
flutter pub add provider
flutter pub add pbp_django_auth
```
2. Memodifikasi main.dart agar bisa menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider melalui pengubahan kelas MyApp.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Petty Paws',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 45, 88)),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
```
3. Buat file baru dengan nama login.dart di folder screens dengan isi seperti berikut:
```dart
import 'package:petty_paws/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:petty_paws/screens/register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 45, 88)),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Cek kredensial
                      final response = await request
                          .login("http://localhost:8000/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Selamat datang, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
#### Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
1. Buat sebuah django-app baru dengan nama "authentication" pada proyek Django sebelumnya.

2. Tambahkan "authentication" ke INSTALLED_APPS pada main project settings.py aplikasi Django.

3. Jalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan. 

4. Tambahkan django-cors-headers di requirements.txt

5. Tambahkan "corsheaders" ke INSTALLED_APPS pada main project settings.py aplikasi Django.

6. Tambahkan "corsheaders.middleware.CorsMiddleware" pada main project settings.py aplikasi Django.

7. Tambahkan beberapa variabel berikut ini pada main project settings.py aplikasi Django.
```python
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
8. Buat beberapa fungsi baru untuk autentikasi (register, login, logout) di authentication/views.py.
```python
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User
import json
from django.contrib.auth import logout as auth_logout

@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)


@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
9. Buat file urls.py pada folder authentication dan tambahkan URL routing pada fungsi yang baru dibuat.
```python
from django.urls import path
from authentication.views import login, register, logout

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
    path('register/', register, name='register'),
    path('logout/', logout, name='logout'),
]
```
10. Tambahkan ```python path('auth/', include('authentication.urls')),``` pada file main/urls.py. 
#### Membuat model kustom sesuai dengan proyek aplikasi Django.
1. Buka endpoint JSON yang sudah dibuat sebelumnya dan salin data tersebut ke dalam Quicktype. Sesuaikan parameter di dalam Quicktype dengan kebutuhan (setup name, source type, dan language)
2. Salin hasil konversi dari Quicktype ke dalam file baru bernama item.dart di folder baru di dalam lib (lib/models/product_entry.dart). Hasil konversi dapat dilihat sebagai berikut.
```dart
import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String brands;
    int price;
    String categories;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.brands,
        required this.price,
        required this.categories,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        brands: json["brands"],
        price: json["price"],
        categories: json["categories"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "brands": brands,
        "price": price,
        "categories": categories,
        "description": description,
    };
}
```
#### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
1. Buat file baru pada folder lib/screens dengan nama list_productesntry.dart. Lalu, tambahkan import yang sesuai.
```dart
import 'package:flutter/material.dart';
import 'package:petty_paws/models/product_entry.dart';
import 'package:petty_paws/screens/product_detail.dart';
import 'package:petty_paws/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
```
2. Tambahkan kode berikut untuk menampilkan data - data yang sesuai dengan parameter tambahan id untuk melakukan filter sesuai dengan item yang ditambahkan oleh tiap pengguna.
```dart
class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _MoodEntryPageState();
}

class _MoodEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchMood(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object MoodEntry
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data produk pada petty paws.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman detail saat item ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          ProductDetail(product: snapshot.data![index]),
                      ),
                    );
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data![index].fields.name}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Brand: ${snapshot.data![index].fields.brands}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.price}"),
                        const SizedBox(height: 10),
                        Text("Category: ${snapshot.data![index].fields.categories}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.description}"),  
                      ],
                    )
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```
3. Tambahkan halaman list_productentry.dart ke dalam left_drawer.dart
```dart
ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Tambah Produk'),
    // Bagian redirection ke ProductEntryFormPage
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductEntryFormPage(),
      ),
    );
  },
),
```
4. Ubah fungsi button Lihat Daftar Produk pada halaman utama dan sesuaikan import dari setiap file.
```dart
else if (item.name == "Lihat Daftar Produk") {
  Navigator.push(context,
    MaterialPageRoute(
    builder: (context) => const ProductEntryPage()
    ),
  );
}
```
#### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
1. Membuat file baru dengan nama product_detail.dart pada folder screens dan import file tersebut ke dalam list_productentry.dart.
2. Isi file dengan kode berikut untuk menunjukkan detail item secara spesifik.
```dart
import 'package:flutter/material.dart';
import 'package:petty_paws/models/product_entry.dart'; // Import model Item untuk digunakan di halaman detail

class ProductDetail extends StatelessWidget {
  final ProductEntry product; // Terima objek Item dari halaman sebelumnya

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: const Color.fromARGB(255, 116, 45, 88),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: ${product.fields.price}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Brand: ${product.fields.brands}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: ${product.fields.categories}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Description: ${product.fields.description}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
```
3. Menggunakan GestureDetector pada list_productentry untuk mengetahui adanya interaksi dari user dan menambahkan route ke ProductDetail dari file product_detail.dart untuk menampilkan detail item secara spesifik.
```dart
itemBuilder: (_, index) => GestureDetector(
  onTap: () {
    // Navigasi ke halaman detail saat ditekan
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
          ProductDetail(product: snapshot.data![index]),
      ),
    );
  },
  child: Container(
    margin:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${snapshot.data![index].fields.name}",
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text("Brand: ${snapshot.data![index].fields.brands}"),
          const SizedBox(height: 10),
          Text("${snapshot.data![index].fields.price}"),
          const SizedBox(height: 10),
          Text("Category: ${snapshot.data![index].fields.categories}"),
          const SizedBox(height: 10),
          Text("${snapshot.data![index].fields.description}"),  
        ],
      )
    ),
  ),
```
#### Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.