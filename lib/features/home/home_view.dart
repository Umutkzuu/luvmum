import 'package:flutter/material.dart';
import '../prayers/prayers_view.dart';
import '../finance/finance_view.dart';
import '../poetry/poetry_view.dart';
import '../poetry/poetry_model.dart';
import '../quotes/quote_view.dart';
import '../quotes/quote_model.dart';
import '../photos/photos_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final gununSiiri = SiirServisi.getGununSiiri();
    final gununSozu = SozServisi.getGununSozu();

    final siirSatirlari = gununSiiri.icerik.split('\n');
    final siirOnizleme = siirSatirlari.length > 1
        ? "${siirSatirlari[0]}\n${siirSatirlari[1]}..."
        : gununSiiri.icerik;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: PageView(
                children: [
                  _buildTopCard(
                    context,
                    "Günün Sözü",
                    '"${gununSozu.icerik}"\n- ${gununSozu.yazar}',
                    Colors.indigo.shade100,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuoteView(),
                        ),
                      );
                    },
                  ),
                  _buildTopCard(
                    context,
                    "Günün Şiiri",
                    '$siirOnizleme\n- ${gununSiiri.yazar}',
                    Colors.blue.shade100,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PoetryView(),
                        ),
                      );
                    },
                  ),
                  _buildTopCard(
                    context,
                    "Günlük Burç Yorumun",
                    "Bugün Aslan burçları için harika bir gün! Yorumun tamamını okumak için dokun...",
                    Colors.orange.shade100,
                    () async {
                      final Uri url = Uri.parse(
                        "https://www.mynet.com/kadin/burclar-astroloji/aslan-burcu-gunluk-yorumu.html",
                      );
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      )) {
                        debugPrint('Link açılamadı: $url');
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 8, color: Colors.grey.shade400),
                const SizedBox(width: 4),
                Icon(Icons.circle, size: 10, color: Colors.pink.shade300),
                const SizedBox(width: 4),
                Icon(Icons.circle, size: 8, color: Colors.grey.shade400),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2,
                  children: [
                    _buildMenuButton(
                      context,
                      "Dua",
                      Icons.volunteer_activism,
                      Colors.teal,
                    ),
                    _buildMenuButton(
                      context,
                      "Günün Sözü",
                      Icons.format_quote,
                      Colors.indigo,
                    ),
                    _buildMenuButton(
                      context,
                      "Şiir",
                      Icons.menu_book,
                      Colors.purple,
                    ),
                    _buildMenuButton(
                      context,
                      "Burç",
                      Icons.auto_awesome,
                      Colors.orange,
                    ),
                    _buildMenuButton(
                      context,
                      "Fotoğraflarımız",
                      Icons.photo_library,
                      Colors.pink,
                    ),
                    _buildMenuButton(
                      context,
                      "Mesai Hesaplayıcı",
                      Icons.calculate,
                      Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopCard(
    BuildContext context,
    String title,
    String content,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context,
    String title,
    IconData icon,
    MaterialColor color,
  ) {
    return InkWell(
      onTap: () async {
        if (title == "Dua") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PrayersView()),
          );
        } else if (title == "Mesai Hesaplayıcı") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FinanceView()),
          );
        } else if (title == "Şiir") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PoetryView()),
          );
        } else if (title == "Günün Sözü") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuoteView()),
          );
        } else if (title == "Fotoğraflarımız") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PhotosView()),
          );
        } else if (title == "Burç") {
          final Uri url = Uri.parse(
            "https://www.mynet.com/kadin/burclar-astroloji/aslan-burcu-gunluk-yorumu.html",
          );
          if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
            debugPrint('Link açılamadı: $url');
          }
        } else {
          debugPrint("$title tıklandı!");
        }
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color.shade400),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
