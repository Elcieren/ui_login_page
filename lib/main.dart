import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blue.shade100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Giriş yazısı yerine resim ekle
                  Image.asset(
                    'assets/key.png', // Resmin dosya yolunu belirtin
                    width:
                        400, // İstenilen genişlik ve yükseklik değerlerini ayarlayın
                    height: 300,
                    fit: BoxFit.cover, // Resmin boyutunu ayarlayın
                  ),
                ],
              ),
            ),
            Expanded(
              child: Form(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
