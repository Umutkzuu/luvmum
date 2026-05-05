import 'package:flutter/material.dart';
import 'poetry_model.dart';

class PoetryView extends StatelessWidget {
  const PoetryView({super.key});

  @override
  Widget build(BuildContext context) {
    final gununSiiri = SiirServisi.getGununSiiri();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      appBar: AppBar(
        title: const Text(
          "Günün Şiiri",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.brown),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.format_quote, size: 60, color: Colors.purple.shade200),
              const SizedBox(height: 20),
              Text(
                gununSiiri.baslik,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade800,
                  fontFamily: 'Georgia',
                ),
              ),
              const SizedBox(height: 30),
              Text(
                gununSiiri.icerik,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.8,
                  color: Colors.brown.shade900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Georgia',
                ),
              ),
              const SizedBox(height: 40),
              Divider(color: Colors.purple.shade100, endIndent: 50, indent: 50),
              const SizedBox(height: 10),
              Text(
                gununSiiri.yazar,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                gununSiiri.kitap,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
