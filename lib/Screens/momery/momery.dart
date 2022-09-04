import 'package:flutter/material.dart';

class Momerys extends StatefulWidget {
  Momerys({Key? key}) : super(key: key);

  @override
  State<Momerys> createState() => _MomerysState();
}

class _MomerysState extends State<Momerys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etkinlik'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 5,
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                right: 30,
              ),
              child: Text(
                'ETKİNLİK',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/selanik.jpg'),
                ),
              ),
            ),
            Text(
              '''
18-20 Mart Selanik Gezisi

(Sadece kayıtlı üyelerimize ve eski üyelerimize) her şey dahil 180€
Özel otobüsle 3gün, 2gece Selanik’te 4 yıldızlı otelde konaklama+kahvaltı, profesyonel tur rehberi dahil
3gün, 2gece Selanik’te 4 yıldızlı otelde konaklama+kahvaltı, profesyonel tur rehberi dahil

1.Gün Cuma: İstanbul, Alexandroupolis(Dedeağaç), Porto Lagos, Gümülcine (Komotini), Selanik
2.Gün Cumartesi: Selanik
3.Gün Pazar: Selanik, Kavala, İskeçe (Xanthi) , İstanbul

Son kayıt: 28 Şubat 2022
''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/20.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/belgrad.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/5.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/open.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '''
16 EYLÜL PAZAR GÜNÜ 80 TL’YE GÜNÜBİRLİK ŞİLE’YE DOĞA YÜRÜYÜŞÜNE VE ÖDÜLLÜ UÇURTMA YARIŞMASINA GİDİYORUZ (Son Başvuru 11 Eylül Salı)

Program:
– 10.00 açık büfe kahvaltı, sınırsız çay.
– 11.00 Fındıkzade’den kalkış
– 12.30; Şile’de vardığımız yerde çay bahçesinde çay molası.
– 13.00; sahilde ve ormanda doğa yürüyüşü. (Kamp çevresi orman yolu, falezler, sahil tahmini 10 km)
– 17.00 dönüş yolunda sahilde duraklama ve akşam yemeği
– 17.30; deniz kenarında Ödüllü Uçurtma Turnuvası
– 19.00; varış noktamızdaki çay bahçesinde çay molası
– 20.00; Fındıkzade’ye dönüş

-Açıklamalar-
– Ücret üyelerimize 80 tl, dışarıdan katılım 100 tl’dir. Ücrete kafemizde açık büfe kahvaltı ve sınırsız çay, birer uçurtma ve ulaşım dahildir.
– Sahildeki akşam yemeği için tüm katılımcılarımızın sandviç, börek vb. yiyecek getirmeleri gerekmektedir.
– Etkinliğe 5-10 arası yabancı hocamız da katılacağından sınırsız pratik imkanınız vardır
– Uçurtma yarışmamızda ödüller; birinciye haftanın 2 günü 1 aylık üyelik, ikinciye haftanın 1 günü 1 aylık üyeliktir. Üyelik ödülleri Fındıkzade şubemizde geçerlidir.
Etkinliğe son kayıt 11 Eylül Salı’dır.
……………………………………………………………………………………………………………….


''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/londra.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '''
Kafemize 6 aylık haftanın 2 günü üyelik yapanlar için tüm şubelerimizde geçerlidir. Dilerseniz üyeliği kendinize, geziyi bir sevdiğinize hediye edebilirsiniz.

1. GÜN: Konaklama bölgesi gezisi, Poundland, süpermarket alışverişi
2. GÜN: Victoria Albert Museum, Science Museum, Natural History Museum, British Museum (müzeler ücretsizdir)
3. GÜN: London Eye, London Bridge, Big Ben, Buckingham Palace, National Gallery (Painting Museum), Trafalgar Square, Piccadilly Circus
4. GÜN: Oxford Street, Covent Garden, Piccadilly Circus, Akşam Tiyatro (The Phantom of the Opera. Gitmek isteyen kendi karşılayacaktır.)
5. GÜN: Hyde Park, Notting Hill, Baker Street (Sherlock Holmes Museum, Beatles Shop), King’s Cross (Harry Potter Platform)
6. GÜN: Camden Town, Oxford Street (Primark’da alışveriş)
Vizesi çıkmayanların gezi ücreti iade edilecektir.

ÖNEMLİ:
*Kampanya 6 aylık en az haftanın 2 günü üyelikler için geçerlidir.
*Ödemeler üyelik peşin, gezi ücreti bir sonraki ay şeklinde 2 taksitle ödenecektir.
*Uçak, vize, Londra içi ulaşım masrafları katılımcıya aittir.
*Katılımcı geziye üyelik tarihinden itibaren 2 ay sonra katılabilecektir. Geziye katılım tarihine katılımcı ve kurumumuz arasında ortaklaşa karar verilecektir.
*Vize konusunda yardımcı olacağız. Yine de vizesi çıkmayan katılımcının gezi ücreti iade edilecek, üyelikleri saklı kalacaktır.
*6 aylık üyelikler 6 ay sonunda sona erer. Devamsızlık katılımcının sorumluluğundadır.
……………………………………………………………………………………………………………….
''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ocak.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '''
– 20-25 Ocak 2018 Londra –

Evimiz Londra’da Wanstead-Ilford civarında, Metroya 10 dakika, Thames nehrine 6 km mesafededir. 6 odalı, bahçeli villa tipi evde konaklayacağız.
Kahvaltı sabahları evden çıkmadan imece usulü hazırlanacak, akşam yemekleri beraber planlanıp, aynı şekilde imece usulu hazırlanacaktır.
Son başvuru 01 Ocak Pazartesi, kontenjanımız 15 kişi ile sınırlıdır.
* Görseller konaklayacağımız eve ve sokağa aittir
……………………………………………………………………………………………………………….
''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bulgar.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '''
03-04-05 Kasım Varna-Nessebar-Burgaz Gezisi
……………………………………………………………………………………………………………….
''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/yunan.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '''
GEZİ PROGRAMI:
-15 Eylül Cuma 22.00: Fındıkzade şubemizden kalkış
-16 Eylül Cumartesi 06:00 Kavala’da kahvaltı.
-16 Eylül Cumartesi 09.30 Selanik’e varış
-16 Eylül Cumartesi: Atatürk’ün evini ziyaret
-16 Eylül Cumartesi: Selanik turu; Beyaz Kale, Aya Dimitrio Kilisesi, Aristotelous Meydanı, Tsimiski caddesi
-16 Eylül Cumartesi akşam: otelimize yerleşiyoruz
-16 Eylül Cumartesi gece: Ladadika’da yunan müziği, eğlence.
-17 Eylül Pazar sabahı: otelde kahvaltı
-17 Eylül Pazar 09.00: Kavala’ya seyahat, Kavala gezisi
-17 Eylül Pazar öğlen: İskeçe gezisi
-17 Eylül Pazar öğleden sonra: Gümülcine gezisi
-17 Eylül Pazar akşam+gece: Dedeağaç gezisi
-18 Eylül Pazartesi 06.00: Fındıkzade şubemize varış
Ücrete yukarıdaki gezi programı, ulaşım, Kavala’da kahvaltı, otelde konaklama+kahvaltı, yol boyunca su, çay, kahve vb. araç içi ikramlar dahildir.
……………………………………………………………………………………………………………….


''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bracknel.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '''
6-13 Ağustos 2017 İngiltere Gezisi;

1 haftalık gezimizde Bracknell’da villa tipi evde konaklayacağız ve yeme içme ihtiyaçlarımız için süpermarketten ya da lokal pazarlardan alışveriş yapıp evimizin mutfağında yemeğimizi hazırlayacağız.
Çevre şehirleri, 2 ya da 3 gün Londra’yı gezmeye çıkacağız. Tercihimiz katılımcılarımızın daha çok birbirinden bağımsız bireysel olarak gezmesi ve sosyalleşerek daha çok dil pratiği yapma imkanı bulmalarıdır.

* Görsel konaklayacağımız eve aittir
……………………………………………………………………………………………………………….
''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ilk.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '''
6-7 Mayıs 2017 ŞİLE KAMPIMIZ

6-7 Mayıs’ta Şile’ye kampa gidiyoruz. Doğal ortamında pratik yapıyoruz.
Ekteki fotoğraflar geçen yılki Şile gezimize aittir.

Program:
6 Mayıs Cumartesi 09:00 Fındıkzade’den kalkış
6 Mayıs öğleden sonra doğa gezileri, spor, çeşitli aktiviteler.
6 Mayıs akşam; yemek.
7 Mayıs sabahı ve öğleden sonra; doğa gezileri, spor, çeşitli aktiviteler.
7 Mayıs akşam; yemek.
7 Mayıs 22:00 Fındıkzade’ye varış.

Fiyata; çadır-yorgan-nevresim, ulaşım,
cumartesi ve pazar akşamı tavuk ve et akşam yemeği menüsü, pazar sabahı kahvaltı, sınırsız pratik imkanı dahildir. Etkinliğimize katılım sayısına göre ekibimizden en az 5-6 hocamız katılacaktır. İsteyenler 20tl farkla çadır yerine bungalov evlerde kalabilir, isteyen kendi çadırını getirebilir.
Kontenjan sınırlıdır. Kayıt akşamları mesai saatlerimiz içinde yalnızca kafemizde yapılmaktadır.

Son kayıt tarihi 4 Mayıs’tır.


''',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
