class Siir {
  final String baslik;
  final String icerik;
  final String yazar;
  final String kitap;

  Siir({
    required this.baslik,
    required this.icerik,
    required this.yazar,
    required this.kitap,
  });
}

class SiirServisi {
  static final List<Siir> _siirListesi = [
    Siir(
      baslik: "Eksilmesin Penceremden",
      icerik:
          "Ne doğan güne hükmüm geçer,\nNe halden anlayan bulunur;\nAh aklımdan ölümüm geçer;\nSonra bu kuş, bu bahçe, bu nur.\n\nVe gönül Tanrısına der ki:\n- Pervam yok verdiğin elemden;\nHer mihnet kabulüm, yeter ki\nGün eksilmesin penceremden!",
      yazar: "Cahit Sıtkı Tarancı",
      kitap: "Otuz Beş Yaş",
    ),
    Siir(
      baslik: "Güzel Havalar",
      icerik:
          "Beni bu güzel havalar mahvetti,\nBöyle havada istifa ettim\nEvkaftaki memuriyetimden.\nTütüne böyle havada alıştım,\nBöyle havada aşık oldum;\nEve ekmekle tuz götürmeyi\nBöyle havalarda unuttum;\nŞiir yazma hastalığım\nHep böyle havalarda nüksetti;\nBeni bu güzel havalar mahvetti.",
      yazar: "Orhan Veli Kanık",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Sevgilerde",
      icerik:
          "Sevgileri yarınlara bıraktınız\nÇekingen, tutuk, saygılı.\nBütün yakınlarınız\nSizi yanlış tanıdı.\n\nBitmeyen işler yüzünden\nSiz böyle olsun istemezdiniz\nBir bakış bile yeterken anlatmaya her şeyi\nKalbinizi dolduran duygular\nKalbinizde kaldı.",
      yazar: "Behçet Necatigil",
      kitap: "Sevgilerde",
    ),
    Siir(
      baslik: "Bugün Pazar",
      icerik:
          "Bugün pazar.\nBugün beni ilk defa güneşe çıkardılar.\nVe ben ömrümde ilk defa gökyüzünün\nbu kadar benden uzak\nbu kadar mavi\nbu kadar geniş olduğuna şaşarak\nkımıldamadan durdum.\nSonra saygıyla toprağa oturdum,\ndayadım sırtımı duvara.\nBu anda ne düşmek dalgalara,\nbu anda ne kavga, ne hürriyet, ne karım.\nToprak, güneş ve ben...\nBahtiyarım...",
      yazar: "Nazım Hikmet Ran",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Nefes Almak",
      icerik:
          "Nefes almak, içten içe, derin derin,\nTaze, ılık, serin,\nDuymak havayı bağrında.\n\nNefes almak, her sabah uyanık.\nAğaran güne penceren açık.\nBir ağaç gölgesinde, bir su kenarında.\nÜstünde gökyüzü, ufuklara karşı.\n\nSenin her yer: Caddeler, meydan, çarşı...\nKardeşim, nefes alıyorsun ya!",
      yazar: "Ziya Osman Saba",
      kitap: "Geçen Zaman",
    ),
    Siir(
      baslik: "Yaşadıklarımdan Öğrendiğim",
      icerik:
          "Yaşadıklarımdan öğrendiğim bir şey var:\nYaşadın mı büyük yaşayacaksın, ırmaklara, göğe, bütün evrene karışırcasına\nÇünkü ömür dediğimiz şey, hayata sunulmuş bir armağandır\nVe hayat, sunulmuş bir armağandır insana.\n\nÇoğaltmak gerek yaşamı, her bir zerresiyle\nKıymetini bilmek, her yeni doğan günün.",
      yazar: "Ataol Behramoğlu",
      kitap: "Yaşadıklarımdan Öğrendiğim Bir Şey Var",
    ),
    Siir(
      baslik: "Yerçekimli Karanfil",
      icerik:
          "Biliyor musun az az yaşıyorsun içimde\nOysaki seninle güzel olmak var\nÖrneğin rakı içiyoruz, içimize bir karanfil düşüyor gibi\nBir ağaç işliyor tıkır tıkır yanımızda\nMidemdi aklımdı şu kadarcık kalıyor.\nSen o karanfile eğilimlisin, alıp sana veriyorum işte\nSen de bir başkasına veriyorsun daha güzel\nO başkası yok mu bir yanındakine veriyor\nDerken karanfil elden ele.",
      yazar: "Edip Cansever",
      kitap: "Yerçekimli Karanfil",
    ),
    Siir(
      baslik: "Memleket İsterim",
      icerik:
          "Memleket isterim\nGök mavi, dal yeşil, tarla sarı olsun;\nKuşların çiçeklerin diyarı olsun.\n\nMemleket isterim\nNe başta dert, ne gönülde hasret olsun;\nKardeş kavgasına bir nihayet olsun.\n\nMemleket isterim\nNe zengin fakir, ne sen ben farkı olsun;\nKış günü everyoneın evi barkı olsun.",
      yazar: "Cahit Sıtkı Tarancı",
      kitap: "Otuz Beş Yaş",
    ),
    Siir(
      baslik: "Masalların Masalı",
      icerik:
          "Su başında durmuşuz,\nçınarla ben.\nSuda suretimiz çıkıyor,\nçınarla benim.\nSuyun şavkı vuruyor bize,\nçınarla bana.\n\nSu başında durmuşuz,\nçınarla ben, bir de kedi.\nSuda suretimiz çıkıyor,\nçınarın, benim, bir de kedinin.",
      yazar: "Nazım Hikmet Ran",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "İlk Yaz",
      icerik:
          "İşte yine güldü gün ışığı\nGeçip gitti hüzünlü bulutlar\nBir kez daha doğruldu yaşam\nYepyeni bir umutla.\n\nKim diyebilir ki her şey bitti?\nSabahın şu serin rüzgarında\nBir kuş sevinçle uçarken\nAğaçların aydınlık dallarında.",
      yazar: "Ataol Behramoğlu",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "An",
      icerik:
          "Gülüş bir yanaşımdır bir öbür kişiye;\nBirden iki kişiyi döndürür bir kişiye..\nAnılarından kale yapıp sığınsa bile,\nYetmez yalnız başına bir ömür bir kişiye.",
      yazar: "Özdemir Asaf",
      kitap: "Çiçek Senfonisi",
    ),
    Siir(
      baslik: "Çocuklar Gibi",
      icerik:
          "Bende hiç tükenmez bir hayat vardı\nKırlara yayılan ilkbahar gibi\nKalbim hiç durmadan hızla çarpardı\nGöğsümün içinde ateş var gibi\n\nBaşımı göğsüne sakla sevgilim\nGüzel saçlarında dolaşsın elim\nBir gün ağlayalım, bir gün gülelim\nSevişen yaramaz çocuklar gibi.",
      yazar: "Sabahattin Ali",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Bedava",
      icerik:
          "Bedava yaşıyoruz, bedava;\nHava bedava, bulut bedava;\nDere tepe bedava;\nYağmur çamur bedava;\nOtomobillerin dışı,\nSinemaların kapısı,\nCamekânlar bedava;\nKelle fiyatına hürriyet,\nEsirlik bedava;\nBedava yaşıyoruz, bedava.",
      yazar: "Orhan Veli Kanık",
      kitap: "Garip",
    ),
    Siir(
      baslik: "Göğe Bakma Durağı",
      icerik:
          "İkimiz birden sevinebiliriz göğe bakalım\nŞu kaçamak ışıklardan şu şeker kamışlarından\nBebe dişlerinden güneşlerden yaban otlarından\nDurmadan harcadığım şu gözlerimi al kurtar\nŞu aranıp duran korkak ellerimi tut\nBu evleri atla bu evleri de bunları da\nGöğe bakalım.",
      yazar: "Turgut Uyar",
      kitap: "Dünyanın En Güzel Arabistanı",
    ),
    Siir(
      baslik: "Aydınlık",
      icerik:
          "Ne zaman gözlerinin içine baksam,\nBiliyorum\nBeni bekler bir yıldız kümesi,\nBeni bekler sonsuz bir aydınlık.\nGecenin içinden geçip giden,\nBir ışık seli gibi akar yüreğim.\nKorkmam karanlıktan artık,\nÇünkü senin gülüşün var içimde.",
      yazar: "Attila İlhan",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Umut",
      icerik:
          "Umut, bir tohumdur yüreğe ekilen,\nSessizce büyür karanlık günlerde.\nBeklemediğin bir anda çiçek açar,\nBütün dünyayı boyar taze renklere.\nYeter ki sulamasını bil, gözyaşınla değil,\nİnancınla, sevginle ve sabrınla.",
      yazar: "Gülten Akın",
      kitap: "Kestim Kara Saçlarımı",
    ),
    Siir(
      baslik: "Her Şey Sende Gizli",
      icerik:
          "Yerin seni çektiği kadar ağırsın,\nKanatların çırpındığı kadar hafif..\nKalbinin attığı kadar canlısın,\nGözlerinin uzağı gördüğü kadar genç...\nSevdiklerin kadar iyisin,\nNefret ettiklerin kadar kötü..\nYaşadıklarını kâr sayma:\nYaşadığın kadar yakınsın sonuna.",
      yazar: "Can Yücel",
      kitap: "Sevgi Duvarı",
    ),
    Siir(
      baslik: "Ihlamurlar Çiçek Açtığı Zaman",
      icerik:
          "Dilinde sabah keyfiyle yeni bir umut türküsü\nKar yağmış dağlara, bozulmamış ütüsü\nRahvan atlar gibi ırgalanan gökyüzü\nGözlerimi kamaştırsa da geleceğim sana\nŞimdilik bağlayıcı bir takvim sorma bana\nIhlamurlar çiçek açtığı zaman.",
      yazar: "Bahaettin Karakoç",
      kitap: "Ihlamurlar Çiçek Açtığı Zaman",
    ),
    Siir(
      baslik: "Çiçek Senfonisi",
      icerik:
          "Bekle dedi gitti\nBen beklemedim, o da gelmedi.\nÖlüm gibi bir şey oldu\nAma kimse ölmedi.\nHayat bir şekilde devam etti,\nSessiz, sakin ve derinden.",
      yazar: "Özdemir Asaf",
      kitap: "Çiçek Senfonisi",
    ),
    Siir(
      baslik: "Yaşamak",
      icerik:
          "Yaşamak şakaya gelmez,\nBüyük bir ciddiyetle yaşayacaksın\nBir sincap gibi mesela,\nYani, yaşamanın dışında ve ötesinde hiçbir şey beklemeden,\nYani bütün işin gücün yaşamak olacak.",
      yazar: "Nazım Hikmet Ran",
      kitap: "Yaşamaya Dair",
    ),
    Siir(
      baslik: "İnsan",
      icerik:
          "İnsan, denizin içindeki damla,\nDamlanın içindeki denizdir.\nBir yanımız kopar fırtınalarda,\nBir yanımız daima dingin bir kordur.\nAramakla bulunmaz belki gerçeği,\nAma arayışın kendisidir insanı büyüten.",
      yazar: "Cahit Zarifoğlu",
      kitap: "Yedi Güzel Adam",
    ),
    Siir(
      baslik: "Sevgi Duvarı",
      icerik:
          "Sen miydin o yalnızlığım mıydı kör karanlıkta\nAçardık saklı penceresini rüzgara karşı\nSenin yüzün müydü o, yoksa benim umudum mu?\nGeceyi bölen, sabahı çağıran bir kuş cıvıltısı\nNeyi bekliyorsak, o gelecekti sanki\nSırtımızı dayadığımız sevgi duvarında.",
      yazar: "Can Yücel",
      kitap: "Sevgi Duvarı",
    ),
    Siir(
      baslik: "Benden Sonra Mutluluk",
      icerik:
          "Sana güzel sabahlar vadediyorum,\nBenden sonra başlayacak olan mutluluklar.\nBelki benimle göremediğin baharlar,\nBelki bensiz daha parlak doğacak güneşler.\nYeter ki sen hep gülümse,\nGökyüzü zaten senin için mavidir.",
      yazar: "Ümit Yaşar Oğuzcan",
      kitap: "Şiir Denizi",
    ),
    Siir(
      baslik: "Hürriyete Doğru",
      icerik:
          "Gün doğmadan,\nDeniz daha bembeyazken çıkacaksın yola.\nKürekleri tutmanın şehveti avuçlarında,\nİçinde bir iş görmenin saadeti,\nGideceksin;\nGideceksin ırıpların sarsıntısı içinde.\nBirdenbire bir kıyamettir kopacak ufuklarda.",
      yazar: "Orhan Veli Kanık",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Gül Kokuyorsun",
      icerik:
          "Gül kokuyorsun, bir de amansız bir yaşama sevinci,\nÖyle bir seviniyorsun ki her yeni güne,\nSanki dünya ilk defa kurulmuş,\nSanki güneş sadece senin için doğmuş.\nNe güzel şey seninle aynı nefesi almak,\nNe güzel şey senin yanında yaşlanmak.",
      yazar: "Edip Cansever",
      kitap: "Sonrası Kalır",
    ),
    Siir(
      baslik: "Yön",
      icerik:
          "Seni bulmaktan önce aramak isterim.\nSeni sevmekten önce anlamak isterim.\nSeni bir yaşam boyu bitirmek değil de,\nSana hep yeniden başlamak isterim.",
      yazar: "Özdemir Asaf",
      kitap: "Yalnızlık Paylaşılmaz",
    ),
    Siir(
      baslik: "Sende Ben",
      icerik:
          "Sende ben imkânsızlığı seviyorum;\nFakat asla ümitsizliği değil...\nSende ben kendimi seviyorum,\nBenim sana olan sevgimi seviyorum.\nSende, senin bana verebilme ihtimalini,\nHayatı, umudu ve güzelliği seviyorum.",
      yazar: "Ümit Yaşar Oğuzcan",
      kitap: "Aşka Dair Şiirler",
    ),
    Siir(
      baslik: "Eskisi Gibi",
      icerik:
          "Seneler sürer her günüm,\nYalnız gitmekten yorgunum;\nZannetme sana dargınım,\nBen gene sana vurgunum.\nBaşkalarına gülsem de,\nSenden uzak kalsam da,\nSevmediğini bilsem de,\nBen gene sana vurgunum.",
      yazar: "Sabahattin Ali",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Her Akşam",
      icerik:
          "Her akşam seninle yeşil bir çınar altı,\nHer akşam sessizce dinlenen o musiki.\nBir yanımızda hafif bir rüzgar,\nBir yanımızda hiç bitmeyen hayat sevinci.\nGökyüzü yavaş yavaş kararırken,\nİçimizde aydınlanan yıldızlar gibi.",
      yazar: "Ziya Osman Saba",
      kitap: "Geçen Zaman",
    ),
    Siir(
      baslik: "Güz",
      icerik:
          "Biliyorum sana giden yollar kapalı\nÜstelik sen de hiçbir zaman sevmedin beni\nNe kadar yakından ve arada uçurum;\nİnsanlar, evler, aramızda duvarlar gibi\nUyandım uyandım, hep seni düşündüm\nYalnız seni, yalnız senin gözlerini.",
      yazar: "Cemal Süreya",
      kitap: "Sevda Sözleri",
    ),
    Siir(
      baslik: "İlk Yaz Coşkusu",
      icerik:
          "Bütün ağaçlar çiçek açmış,\nBütün kuşlar gökyüzüne sevdalı.\nKim tutabilir artık içimizdeki bu neşeyi?\nKim durdurabilir denize doğru akan nehirleri?\nHayat, ellerimizde büyüyen bir fidan,\nBiz, onu sevgiyle sulayan sabahçılarıyız.",
      yazar: "Gülten Akın",
      kitap: "Bütün Şiirleri",
    ),
    Siir(
      baslik: "Aydınlık Bir Gelecek",
      icerik:
          "Yarınlar her zaman daha güzel olacak,\nİçindeki inancı kaybetmediğin sürece.\nBir tohum nasıl direnirse toprağa,\nSen de öyle tutunmalısın hayata.\nGülümsemen, en büyük silahındır karanlığa,\nVe sevgin, en aydınlık rehberindir yarına.",
      yazar: "Ataol Behramoğlu",
      kitap: "Bütün Şiirleri",
    ),
  ];

  static Siir getGununSiiri() {
    int gecenGun = DateTime.now().difference(DateTime(2024, 1, 1)).inDays;
    int index = gecenGun % _siirListesi.length;
    return _siirListesi[index];
  }
}
