import 'package:flutter/material.dart';
import '../models/chapter.dart';

class BookOutlineScreen extends StatelessWidget {
  const BookOutlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Chapter> chapters = [
      Chapter(
        title: 'BAB 1: Pengenalan Scrabble Ber-Computational Thinking dan Ber-Coding',
        subtitles: [
          '1.1 Apa itu Scrabble dalam Konteks Computational Thinking (CT) dan Coding?',
          '1.2 Sejarah Permainan Scrabble dan Hubungannya dengan Pendidikan Teknologi',
          '1.3 Keunggulan Menggunakan Scrabble sebagai Metode Pembelajaran CT dan Coding',
          '1.4 Tujuan dan Sasaran Buku Ini',
          '1.5 Struktur Buku dan Cara Menggunakan',
        ],
      ),
      Chapter(
        title: 'BAB 2: Dasar-Dasar Computational Thinking',
        subtitles: [
          '2.1 Pengenalan Computational Thinking',
          '2.2 Empat Pilar Computational Thinking: Decomposition, Pattern Recognition, Abstraction, dan Algorithm',
          '2.3 Pengembangan Keterampilan Berpikir Komputasional',
          '2.4 Contoh Aplikasi Computational Thinking dalam Kehidupan Sehari-hari',
          '2.5 Hubungan antara Computational Thinking dan Pemrograman',
          '2.6 Tantangan dalam Mengembangkan Computational Thinking',
        ],
      ),
      Chapter(
        title: 'BAB 3: Dasar-Dasar Coding dan Pemrograman',
        subtitles: [
          '3.1 Pengenalan Bahasa Pemrograman',
          '3.2 Logika Dasar Pemrograman (Algoritma dan Pseudocode)',
          '3.3 Variabel, Tipe Data, dan Operator',
          '3.4 Struktur Kontrol (If-Else, Loop)',
          '3.5 Fungsi dan Modularitas Kode',
          '3.6 Debugging dan Error Handling',
        ],
      ),
      Chapter(
        title: 'BAB 4: Scrabble sebagai Alat Pembelajaran',
        subtitles: [
          '4.1 Aturan Dasar Permainan Scrabble',
          '4.2 Adaptasi Scrabble untuk Pembelajaran Computational Thinking',
          '4.3 Adaptasi Scrabble untuk Pembelajaran Coding',
          '4.4 Manfaat Edukasi dari Scrabble dalam CT dan Coding',
          '4.5 Studi Kasus: Implementasi Scrabble di Kelas Pemrograman',
          '4.6 Alat dan Bahan yang Dibutuhkan',
        ],
      ),
      Chapter(
        title: 'BAB 5: Membangun Algoritma melalui Scrabble',
        subtitles: [
          '5.1 Konsep Algoritma dalam Scrabble',
          '5.2 Teknik Decomposition melalui Pembentukan Kata',
          '5.3 Pattern Recognition dalam Pencarian Kata',
          '5.4 Abstraction dalam Strategi Permainan',
          '5.5 Proyek Praktis: Membuat Algoritma Sederhana dengan Scrabble',
          '5.6 Tantangan dan Solusi dalam Pembelajaran Algoritma',
        ],
      ),
      Chapter(
        title: 'BAB 6: Problem Solving dengan Scrabble',
        subtitles: [
          '6.1 Simulasi Problem Solving dalam Permainan Scrabble',
          '6.2 Mengenali Pola Masalah seperti Mengenali Pola Kata',
          '6.3 Strategi Computational Thinking melalui Logika Scrabble',
          '6.4 Skenario Latihan: Menyelesaikan Puzzle Algoritma',
          '6.5 Penggunaan Scrabble untuk Pengembangan Keterampilan Problem Solving',
          '6.6 Evaluasi Solusi melalui Analogi Scrabble',
        ],
      ),
      Chapter(
        title: 'BAB 7: Integrasi Computational Thinking dan Coding dalam Scrabble',
        subtitles: [
          '7.1 Membuat Game Scrabble dengan Elemen Coding',
          '7.2 Menambahkan Aspek Computational Thinking ke dalam Game',
          '7.3 Pengembangan Aplikasi untuk Scrabble CT-Coding',
          '7.4 Penggunaan Teknologi dalam Scrabble Interaktif',
          '7.5 Kolaborasi Tim dalam Proyek Scrabble',
          '7.6 Uji Coba dan Feedback dari Pengguna',
        ],
      ),
      Chapter(
        title: 'BAB 8: Studi Kasus dan Aplikasi Nyata',
        subtitles: [
          '8.1 Implementasi di Sekolah dan Universitas',
          '8.2 Penggunaan di Pelatihan Keterampilan Teknologi',
          '8.3 Kasus Sukses: Institusi yang Menggunakan Metode Ini',
          '8.4 Tantangan Implementasi dan Cara Mengatasinya',
          '8.5 Dampak Jangka Panjang pada Pembelajaran',
          '8.6 Survei dan Analisis Hasil',
        ],
      ),
      Chapter(
        title: 'BAB 9: Masa Depan Scrabble Ber-Computational Thinking dan Ber-Coding',
        subtitles: [
          '9.1 Tren Teknologi yang Mempengaruhi',
          '9.2 Pengembangan Lebih Lanjut dari Metode Ini',
          '9.3 Integrasi dengan Teknologi Baru (VR, AR, AI)',
          '9.4 Rekomendasi untuk Penelitian Lanjutan',
          '9.5 Kesimpulan dan Pesan Penutup',
          '9.6 Lampiran: Sumber Daya Tambahan',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kerangka Buku: Scrabble Ber-Computational Thinking dan Ber-Coding'),
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
