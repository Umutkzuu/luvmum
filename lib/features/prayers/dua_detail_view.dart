import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dua_model.dart';

class DuaDetailView extends StatefulWidget {
  final Dua dua;

  const DuaDetailView({super.key, required this.dua});

  @override
  State<DuaDetailView> createState() => _DuaDetailViewState();
}

class _DuaDetailViewState extends State<DuaDetailView> {
  late int _sayac;
  late bool _geriyeSayiyor;

  @override
  void initState() {
    super.initState();
    _geriyeSayiyor = widget.dua.hedefSayi > 1;
    _sayac = _geriyeSayiyor ? widget.dua.hedefSayi : 0;
  }

  void _butonaBasildi() {
    HapticFeedback.lightImpact();

    setState(() {
      if (_geriyeSayiyor) {
        if (_sayac > 0) {
          _sayac--;
        }
      } else {
        _sayac++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      appBar: AppBar(
        title: Text(
          widget.dua.baslik,
          style: const TextStyle(color: Colors.brown, fontSize: 18),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.brown),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.pink.shade100, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      widget.dua.okunus,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Divider(color: Colors.pink.shade50, thickness: 2),
                    const SizedBox(height: 10),
                    Text(
                      widget.dua.aciklama,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: InkWell(
              onTap: _butonaBasildi,
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: (_geriyeSayiyor && _sayac == 0)
                      ? Colors.green.shade400
                      : Colors.pink.shade300,
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    (_geriyeSayiyor && _sayac == 0) ? "Tamamlandı!" : "$_sayac",
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
