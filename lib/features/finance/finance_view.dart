import 'package:flutter/material.dart';

class FinanceView extends StatefulWidget {
  const FinanceView({super.key});

  @override
  State<FinanceView> createState() => _FinanceViewState();
}

class _FinanceViewState extends State<FinanceView> {
  final double tabanMaas = 33000.0;
  final double devamPrimi = 2000.0;

  bool _devamPrimiHakEtti = true;
  int _normalMesaiGunu = 0;
  int _bayramMesaiGunu = 0;

  double _toplamMaasiHesapla() {
    double saatlikUcret = tabanMaas / 225;
    double mesaiSaatlikUcret = saatlikUcret * 1.5;

    double normalMesaiKazanci = (_normalMesaiGunu * 4) * mesaiSaatlikUcret;
    double bayramMesaiKazanci = (_bayramMesaiGunu * 8) * mesaiSaatlikUcret;

    double primKazanci = _devamPrimiHakEtti ? devamPrimi : 0;

    return tabanMaas + primKazanci + normalMesaiKazanci + bayramMesaiKazanci;
  }

  @override
  Widget build(BuildContext context) {
    double toplamMaas = _toplamMaasiHesapla();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      appBar: AppBar(
        title: const Text(
          "Mesai & Maaş Hesaplayıcı",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.brown),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.green.shade100, width: 2),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Taban Maaş:",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      Text(
                        "₺33.000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Devam Primi (₺2.000)",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      Switch(
                        value: _devamPrimiHakEtti,
                        activeColor: Colors.green,
                        onChanged: (bool value) {
                          setState(() {
                            _devamPrimiHakEtti = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildMesaiArtirici(
              baslik: "Normal Mesai Günü",
              aciklama: "Günde ekstra 4 saat",
              deger: _normalMesaiGunu,
              artir: () => setState(() => _normalMesaiGunu++),
              azalt: () => setState(() {
                if (_normalMesaiGunu > 0) _normalMesaiGunu--;
              }),
            ),
            const SizedBox(height: 15),
            _buildMesaiArtirici(
              baslik: "Bayram Mesaisi",
              aciklama: "Günde ekstra 8 saat",
              deger: _bayramMesaiGunu,
              artir: () => setState(() => _bayramMesaiGunu++),
              azalt: () => setState(() {
                if (_bayramMesaiGunu > 0) _bayramMesaiGunu--;
              }),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: Colors.green.shade500,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Bu Ayki Tahmini Kazanç",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "₺${toplamMaas.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMesaiArtirici({
    required String baslik,
    required String aciklama,
    required int deger,
    required VoidCallback artir,
    required VoidCallback azalt,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                baslik,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade800,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                aciklama,
                style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: azalt,
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.red.shade300,
                ),
              ),
              Text(
                "$deger Gün",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: artir,
                icon: Icon(Icons.add_circle, color: Colors.green.shade400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
