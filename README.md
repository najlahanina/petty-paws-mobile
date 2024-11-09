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

