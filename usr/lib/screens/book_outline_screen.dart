import 'package:flutter/material.dart';
import '../models/chapter.dart';

class BookOutlineScreen extends StatelessWidget {
  const BookOutlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Chapter> chapters = [
      Chapter(
        title: 'BAB 1: Pengenalan Flutter',
        subtitles: [
          '1.1 Apa itu Flutter?',
          '1.2 Sejarah dan Perkembangan Flutter',
          '1.3 Keunggulan Flutter dibanding framework lain',
          '1.4 Arsitektur Flutter',
        ],
      ),
      Chapter(
        title: 'BAB 2: Instalasi dan Konfigurasi',
        subtitles: [
          '2.1 Kebutuhan Sistem',
          '2.2 Instalasi Flutter SDK',
          '2.3 Konfigurasi Editor (VS Code/Android Studio)',
          '2.4 Membuat dan Menjalankan Aplikasi Pertama',
        ],
      ),
      Chapter(
        title: 'BAB 3: Dasar-dasar Dart',
        subtitles: [
          '3.1 Pengenalan Bahasa Dart',
          '3.2 Variabel, Tipe Data, dan Operator',
          '3.3 Struktur Kontrol (if, for, while)',
          '3.4 Fungsi dan Class',
          '3.5 Null Safety',
        ],
      ),
      Chapter(
        title: 'BAB 4: Widget di Flutter',
        subtitles: [
          '4.1 Konsep Widget',
          '4.2 Stateless vs Stateful Widget',
          '4.3 Widget Dasar (Text, Container, Row, Column)',
          '4.4 Layouting dengan Flutter',
        ],
      ),
      Chapter(
        title: 'BAB 5: Navigasi dan Routing',
        subtitles: [
          '5.1 Konsep Navigasi',
          '5.2 Navigator 1.0 vs Navigator 2.0',
          '5.3 Passing Data antar Halaman',
          '5.4 Named Routes',
        ],
      ),
      Chapter(
        title: 'BAB 6: State Management',
        subtitles: [
          '6.1 Pengenalan State Management',
          '6.2 setState',
          '6.3 Provider',
          '6.4 BLoC (Business Logic Component)',
        ],
      ),
      Chapter(
        title: 'BAB 7: Bekerja dengan API',
        subtitles: [
          '7.1 Pengenalan HTTP Request',
          '7.2 Menggunakan package http',
          '7.3 Menampilkan Data dari API',
          '7.4 Mengirim Data ke API',
        ],
      ),
      Chapter(
        title: 'BAB 8: Firebase Integration',
        subtitles: [
          '8.1 Pengenalan Firebase',
          '8.2 Firebase Authentication',
          '8.3 Cloud Firestore',
          '8.4 Firebase Storage',
        ],
      ),
      Chapter(
        title: 'BAB 9: Testing dan Deployment',
        subtitles: [
          '9.1 Pengenalan Testing di Flutter',
          '9.2 Unit Testing',
          '9.3 Widget Testing',
          '9.4 Deployment ke Google Play Store dan Apple App Store',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kerangka Buku Flutter'),
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final chapter = chapters[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: Text(
                chapter.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              children: chapter.subtitles
                  .map((subtitle) => ListTile(
                        title: Text(subtitle),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
