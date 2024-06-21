import 'package:flutter/material.dart';
import 'dosya.dart';

void main() {
//fonksiyon tanımlamak, fonksiyon isim vermek

  print('ilk işlem başarili olarak başlatildi.');
  islem(selamlamaMetni, sayi);

  String name = 'Ahmet';

  bool isDeBug = false;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Ahmet';

    bool isDeBug = false;

    return MaterialApp(
      debugShowCheckedModeBanner: isDeBug,
      home: Scaffold(
        appBar: AppBar(
          title: Text('myshop'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
        ),
        body: const Column(
          children: [
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Anything...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6B7200),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/fashion.png'),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '1 Ay içinde sizlerleyiz..',
            ),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

// veri tipleri
// değişken tanımlamak

String selamlamaMetni = 'Merhaba arkadaşlar';

int sayi = 5;

String isim = 'Sezai';
String soyisim = ' Yılmaz';

int yas = 28;

double kilo = 58;

bool askerlikyaptimi = true;

List<int> okullagecenyillar = [2000, 2006, 2010, 2014, 2018];

Insan Sezai =
    Insan('Sezai', 'Yilmaz', 28, 58, true, [2000, 2006, 2010, 2014, 2018]);

Ogrenci Ece = Ogrenci(
  'Ece',
  'Yilmaz',
  25,
  56,
  true,
  [2000, 2006, 2010, 2014, 2018],
  '123456',
  'Istanbul Teknik Üniversitesi',
);

class Insan {
  String isim;
  String soyisim;
  int yas;
  double kilo;
  bool askerlikyaptimi;
  List<int> okullagecenyillar;

// Oluşturucu fonksiyon  (constructor)
  Insan(this.isim, this.soyisim, this.yas, this.kilo, this.askerlikyaptimi,
      this.okullagecenyillar) {
    print('insan sinifi oluşturuldu.');
  }
}

class Ogrenci extends Insan {
  String okulNumara;
  String okulIsmi;

  Ogrenci(
    super.isim,
    super.soyisim,
    super.yas,
    super.kilo,
    super.askerlikyaptimi,
    super.okullageceyillar,
    this.okulNumara,
    this.okulIsmi,
  ) {
    print('Öğrenci sinifi oluşturuldu.');
  }
}
