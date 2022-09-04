import 'dart:async';
import 'dart:io';
import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:english_spoken_cafe/Screens/Videos/Videos.dart';
import 'package:english_spoken_cafe/videoabout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Aboutus extends StatefulWidget {
  Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: "gEkJYWN98Fs",
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '''
IŞLEYİŞ
English Spoken Cafe sosyal bir ortamda, ana dilini konuşan yabancı ekip arkadaşlarımız eşliğinde konuşarak, İngilizcenizi yurt dışında yaşıyormuş gibi geliştirebileceğiniz ve İngilizce öğretmenleri tarafından hazırlanmış 2009 yılında Türkiye’de bu formatta kurulmuş ilk konsepttir. Müfredat, yöntem ve sistem olarak dünyada tektir. Sistem “iletişimsel yaklaşım ve dil edinimi” üzerine kuruludur.

Üyelerimizi; “anlıyorum konuşamıyorum”, “konuşabiliyorum”, “akıcı konuşabiliyorum” şeklinde üçe ayırıyoruz. Haftalık programımızın gün ve saatlerini ve seviyeleri güncel olarak program sekmemizdeki görselde ve güncel haftalık konularımızı görselin hemen altında görebilirsiniz. Grup başına en çok 10 üye alıyoruz. Bir grup katılım durumuna göre ortalama 7-8 kişi arasında değişmektedir.

Gösterdiğiniz çabaya göre, “konuşamıyorum” seviyesinden “konuşabiliyorum” seviyesine ortalama 2-3 ay, “konuşabiliyorum” seviyesinden “akıcı konuşabiliyorum” seviyesine 3-4 ayda geçebilirsiniz. Şunu da belirtelim; “konuşamıyorum” seviyelerinden başlayan katılımcılarımız yeterli alt yapıları varsa, ortalama 2-3 haftada “konuşabiliyorum” seviyemize geçiyorlar. Dil yeteneklerinizi ve alt yapınızı hafife almayın. Başarmak kendinize inanmakla başlar.

Yukarıdakiler 2009’dan bu yana oluşturduğumuz ortalama istatistiklerdir. Kafemize gelip gruplarımıza katılarak gözlemleyebilir ve üyelerimizden istatistiklerle ilgili teyit alabilirsiniz.

Bunlarla birlikte ayda bir kez yurt dışı gezileri ya da doğada dil kampları düzenlemekteyiz. Kamplarımız, yurt dışı gezilerimiz ve diğer etkinliklerimiz için etkinlikler sekmemizi tıklayınız. Sosyal medya hesaplarında paylaştığımız deyimlere ve eğitici videolarımıza ulaşmak için “learn” menüsünü tıklayınız.

Konular sekmesinde gördüğünüz haftalık müfredat tüm şubeler için bu haftanın güncel konuları, okuma parçaları ve günün deyimleridir. Katıldığınız oturumda konularla birlikte o günün deyimini de işleyip konuşarak, hedef dilin kültürünü ayrıca tanımış olup, konuşmanızı deyim ve kalıplarla renklendirmiş olursunuz. Ayrıca okuma içeriğimizle okuma yeteneğinizi geliştirip, konuşma içeriğinizi renklendirirsiniz. Haftalık konularınıza hazırlanırken, konu başlığını tıklayarak, kurucu şubemizin hocaları tarafından hazırlanmış; konunuzun İngilizce alt yazılı videosunu izleyebilirsiniz. Konuya hazırlanırken okuma ve yazmanızı geliştirdiğiniz gibi, dinleme ve okumanızı daha da ilerletip, konularınıza daha kolay hazırlanabilirsiniz. Başlangıç seviyesindeki katılımcılarımız konular haricinde konunun hemen altındaki “Grammar” yazan bağlantıyı tıklayarak konuyla alakalı 1 dakikalık basit gramer anlatımlarını izleyebilirler. 
''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
          ),
          Text(
            '''
Diğer şubelerimizle ilgili güncel bilgi almak için üst menüdeki şubelerimiz sekmesinden sayfalarına ve telefon numaralarımıza ulaşabilirsiniz.

Programda gördüğünüz hocalarımızın örnek videolarını konular sekmesindeki görselin hemen altındaki isimleri tıklayarak izleyebilirsiniz.

Tüm üyelerimiz ve takipçilerimiz uygulamamızı aşağıdaki bağlantılardan indirerek güncellenen konuları, güncel video-görsel paylaşımlarını ve yeni etkinlikleri uygulama üzerinden takip edebilir, online oturumlara direkt uygulama üzerinden giriş yapabilirler. Uygulamamız tüm şubelerimiz için bir nevi İngilizce ders kitabı gibi kullanılır.

GATHER: 

Gather: Dileyen herkesin toplanıp kendi arasında, üyelerimizle ya da hocalarımızla video konferans lobimiz üzerinden ulaşıp, sosyalleşebileceği sosyal platformumuzdur. Gather’a uygulamamızdan ulaşabilirsiniz: uygulama için tıklayın

Junior Gather:  Junior öğrencilerimizin; o günün konusuna hazırlanıp, Spoken Cafe’deymiş gibi konuları kendi aralarında konuştukları video konferans odalarımızdır.

ONLINE SISTEMİMİZ:

-Uygulamamız üzerinden çalışan, her girişinizde sadece size verdiğimiz kodu girdiğiniz, veri gizliliğini düşünmeden katılabileceğiniz online sistemdir. Uygulamamıza girdiğiniz kodunuzla açılan eklentiyle çalıştığından, ekstra bir video konferans uygulamasıyla uğraşmak zorunda kalmazsınız.
-Normal programlarımızda olduğu gibi gruplar seviyelere ayrılır; konuşamıyorum, konuşuyorum, akıcı konuşuyorum, sistemimiz üzerindeki konular üzerinden ilerlersiniz.
-Dilerseniz tek başınıza, dilerseniz arkadaşlarınızla aldığınız 20 ya da 30 dakikaları birleştirerek, kesintisiz 40, 60, 90 dakikalık; en fazla 3 kişilik grup oluşturabilirsiniz. 3 kişinin üzerinde oluşan gruplar eğitim açısından sağlıksız olduğundan 3 kişiye kadar grup oluşturuyoruz.

 

JUNIOR PROGRAMIMIZ:

-Seviyelerimiz Junior gruplarında J1 (konuşamıyorum), J2 (konuşuyorum) olarak 2 seviyedir. Her seviye 20 hafta sürer.
-Haftalık program, ders öncesi video izleme-yazma ön hazırlığı (sunum ve uygulama aşaması), online gruba katılım (üretim aşaması), bir seviyede 80 ders saatine eşit bir programdır.
-Müfredat, kelimeler ve videolar kurucumuz İngilizce Öğretmeni Altan Çarıkçıoğlu ve alanında uzman İngilizce öğretmeni ekibimiz tarafından hazırlanmıştır.
-Dilerseniz kurucu şubemizde online ya da kendi şubelerinizde online ya da fiziksel grup şeklinde kayıt olabilirsiniz. Fiziksel gruplarda liste fiyatlarımız ya da şubenizin teklif edeceği indirimler geçerlidir.

* Her hafta güncellenen eğlenceli müfredat, konu videoları, kelime içerikleri, ödev. Derse hazırlığı kolaylaştırıcı örnek metinler ve hazırlık videosu. Çocuğunuz alanında uzman yabancı hocalar eşliğinde konuşarak İngilizce öğrenir.

*Öğrenci, video konferans dersi hazırlığında; 20 haftada görsel ve okunuşuyla 200 hedef kelimeyi öğrenir, videodaki diğer cümle ve kelimelerle 20 hafta sonunda 400-500 kelime ve cümle yapısı öğrenir. Video konferans aşamasında, gruptaki diğer arkadaşları ve hocanın 300-1000 arası cümlesine ve anlatımına maruz kalır, yaklaşık 100 cümleyle kendini yazılı ve konuşarak ifade etmiş olur. 

*Online sistemimize kulaklıklı telefon, tablet ve PC ile rahatça bağlanabilirsiniz Ayrıca sadece size verdiğimiz kodla tüm oturumlarınıza katılacağınız için bilgileriniz saklı kalır. Online sistemimiz kullanışlı ve basittir.

*Android-Ios uygulamamızdan hem haftalık konu ve videonuza ulaşabilir, hem online sisteme bağlanabilir, hem de konularınız güncellendiğinde bildirim alırsınız.

* Sistemi denemeniz adına 10 tlye deneme katılımı hakkınızı kurucu şubemizden talep edebilirsiniz

*Bu haftanın Junior konularını ve videolarını Junior 1-2 konular üzerinden ya da sistemimizi  Junior işleyiş sekmesi daha ayrıntılı inceleyebilirsiniz.
''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  final url = 'https://www.facebook.com/spokencafe.findikzade';

                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Tab(
                  icon: Image.asset(
                    "images/Facebook.png",
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final url = 'https://www.instagram.com/englishspokencafe/';

                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Tab(
                  icon: Image.asset(
                    "images/instegram.png",
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final url = 'https://www.youtube.com/c/EnglishSpokenCafecom';

                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Tab(
                  icon: Image.asset(
                    "images/youtube.jpg",
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () async {
                  final url =
                      'https://play.google.com/store/apps/details?id=mobi.androapp.englishspokencafe.c9274';

                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Tab(
                  icon: Image.asset(
                    "images/google-play.jpg",
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final url =
                      'https://apps.apple.com/us/app/english-spoken-cafe/id1515344399?l=tr&ls=1';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Tab(
                  icon: Image.asset(
                    "images/appstore.png",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
