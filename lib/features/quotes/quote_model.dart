class Soz {
  final String icerik;
  final String yazar;
  final String unvan;

  Soz({required this.icerik, required this.yazar, required this.unvan});
}

class SozServisi {
  static final List<Soz> _sozListesi = [
    Soz(
      icerik: "Dünyada her şey kadının eseridir.",
      yazar: "Mustafa Kemal Atatürk",
      unvan: "Türkiye Cumhuriyeti'nin Kurucusu",
    ),
    Soz(
      icerik:
          "Umutsuz durumlar yoktur, umutsuz insanlar vardır. Ben hiçbir zaman umudumu yitirmedim.",
      yazar: "Mustafa Kemal Atatürk",
      unvan: "Türkiye Cumhuriyeti'nin Kurucusu",
    ),
    Soz(
      icerik:
          "Ey kahraman Türk kadını! Sen yerde sürünmeye değil, omuzlar üzerinde göklere yükselmeye layıksın.",
      yazar: "Mustafa Kemal Atatürk",
      unvan: "Türkiye Cumhuriyeti'nin Kurucusu",
    ),
    Soz(
      icerik:
          "Bir toplum, cinslerden yalnız birinin yüzyılımızın gerektirdiklerini elde etmesiyle yetinirse, o toplum yarı yarıya zayıflamış olur.",
      yazar: "Mustafa Kemal Atatürk",
      unvan: "Türkiye Cumhuriyeti'nin Kurucusu",
    ),
    Soz(
      icerik:
          "Kadınlar bütün adaletsizlikleri göğüsleyecek kadar güçlü, dünyayı değiştirecek kadar cesurdur.",
      yazar: "Şirin Tekeli",
      unvan: "Feminist Yazar ve Aktivist",
    ),
    Soz(
      icerik:
          "Hiçbir zincir, birbirine kenetlenmiş kadınların ellerinden daha sağlam değildir.",
      yazar: "Türkan Saylan",
      unvan: "Tıp Doktoru ve Eğitim Gönüllüsü",
    ),
    Soz(
      icerik:
          "Kendi ayakları üzerinde duran bir kadından daha güçlü bir silah henüz icat edilmemiştir.",
      yazar: "Virginia Woolf",
      unvan: "Yazar ve İkon",
    ),
    Soz(
      icerik:
          "Benim özgürlüğüm, diğer kadınların özgürlüğünden ayrı düşünülemez.",
      yazar: "Simone de Beauvoir",
      unvan: "Filozof ve Yazar",
    ),
    Soz(
      icerik:
          "Kadının adı yok diyenlere inat, kadınların sesi her yerde yankılanacak.",
      yazar: "Duygu Asena",
      unvan: "Gazeteci ve Yazar",
    ),
    Soz(
      icerik:
          "Biz kadınlar, hakkımız olanı alana dek mücadelemizden dönmeyeceğiz.",
      yazar: "Nezihe Muhiddin",
      unvan: "Kadın Hakları Savunucusu",
    ),
    Soz(
      icerik:
          "Kadınların zincirlerini kırması, bir milletin özgürleşmesi demektir.",
      yazar: "Şüküfe Nihal",
      unvan: "Şair ve Kadın Hakları Savunucusu",
    ),
    Soz(
      icerik:
          "Bir kadının gülümsemesi, karanlığa yakılmış en aydınlık isyandır.",
      yazar: "Frida Kahlo",
      unvan: "Ressam",
    ),
    Soz(
      icerik: "Hak verilmez, alınır.",
      yazar: "Rosa Luxemburg",
      unvan: "Sosyalist Devrimci ve Kuramcı",
    ),
    Soz(
      icerik:
          "Dünyanın yarısını oluşturan kadınlar, yaşamın ve mücadelenin de tam merkezindedir.",
      yazar: "Clara Zetkin",
      unvan: "Kadın Hakları Savunucusu",
    ),
    Soz(
      icerik:
          "Zincirlerimizden başka kaybedecek hiçbir şeyimiz yok, kazanacağımız koskoca bir dünya var!",
      yazar: "Karl Marx",
      unvan: "Filozof ve Ekonomist",
    ),
    Soz(
      icerik:
          "İnsanlık, ancak emeğin ve dayanışmanın yüceldiği bir dünyada gerçek anlamını bulur.",
      yazar: "Maksim Gorki",
      unvan: "Yazar",
    ),
    Soz(
      icerik:
          "Yoksulluğun ve adaletsizliğin olmadığı bir world, ancak ellerimizi birleştirdiğimizde kurulabilir.",
      yazar: "Eduardo Galeano",
      unvan: "Gazeteci ve Yazar",
    ),
    Soz(
      icerik:
          "Yaşamak bir ağaç gibi tek ve hür ve bir orman gibi kardeşçesine...",
      yazar: "Nâzım Hikmet Ran",
      unvan: "Şair",
    ),
    Soz(
      icerik:
          "Baskıya boyun eğmeyen bir kadın, tüm kadınların yolunu aydınlatır.",
      yazar: "Behice Boran",
      unvan: "Sosyolog ve Siyasetçi",
    ),
    Soz(
      icerik:
          "Biz hiçbir zaman bütün çabamızı bir şey karşılığında harcamadık, inandığımız şeyler uğruna harcadık.",
      yazar: "Deniz Gezmiş",
      unvan: "Öğrenci Lideri ve Devrimci",
    ),
    Soz(
      icerik: "Kadınlar insandır, biz insanoğlu.",
      yazar: "Neşet Ertaş",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik:
          "Aşk biterse yorulur insan. Ben ne zaman ölürsem, o zaman yorulurum.",
      yazar: "Neşet Ertaş",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik:
          "Nerede bir türkü söyleyen görürsen korkma yanına otur. Çünkü kötü insanların türküleri yoktur.",
      yazar: "Neşet Ertaş",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik: "Güzelliğin on par'etmez, bu bendeki aşk olmasa.",
      yazar: "Aşık Veysel",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik: "Siz benim nasıl yandığımı, nerden bileceksiniz?",
      yazar: "Ahmet Kaya",
      unvan: "Özgün Müzik Sanatçısı",
    ),
    Soz(
      icerik:
          "Biraz da kendi emeğimize, kendi yüreğimize güvenelim. Dağları yerinden oynatacak güç bizdedir.",
      yazar: "Ruhi Su",
      unvan: "Türk Halk Müziği Sanatçısı",
    ),
    Soz(
      icerik: "Dostun gülü yaralar beni.",
      yazar: "Pir Sultan Abdal",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik: "Bozuk düzen, sağlam çarkla dönmez.",
      yazar: "Pir Sultan Abdal",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik: "Yüreği yakan felaketler, türkülerle küle döner.",
      yazar: "Mahzuni Şerif",
      unvan: "Halk Ozanı",
    ),
    Soz(
      icerik: "Bizim memleketin dağları kabadır ama yürekleri yufkadır.",
      yazar: "Hasret Gültekin",
      unvan: "Ozan",
    ),
    Soz(
      icerik: "İnsanların umutlarını öldürmek, en büyük cinayettir.",
      yazar: "Yaşar Kemal",
      unvan: "Yazar",
    ),
    Soz(
      icerik: "Bilgi sahibi olmadan fikir sahibi olunmaz.",
      yazar: "Uğur Mumcu",
      unvan: "Araştırmacı Gazeteci",
    ),
    Soz(
      icerik:
          "Gerçeği söylemekten korkmayanlar, karanlığı en çabuk yırtanlardır.",
      yazar: "Sabiha Sertel",
      unvan: "İlk Kadın Gazeteci",
    ),
    Soz(
      icerik: "Güneşin doğuşunu engellemeye kimsenin gücü yetmez.",
      yazar: "Victor Hugo",
      unvan: "Yazar ve Şair",
    ),
    Soz(
      icerik:
          "İyilik demek kimseye kötülüğü dokunmamak değil, kötülük yapacak cevheri içinde taşımamak demektir.",
      yazar: "Sabahattin Ali",
      unvan: "Yazar",
    ),
  ];

  static Soz getGununSozu() {
    int gecenGun = DateTime.now().difference(DateTime(2024, 1, 1)).inDays;
    int index = gecenGun % _sozListesi.length;
    return _sozListesi[index];
  }
}
