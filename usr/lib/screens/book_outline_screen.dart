import 'package:flutter/material.dart';
import '../models/chapter.dart';

class BookOutlineScreen extends StatelessWidget {
  const BookOutlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Chapter> chapters = [
      Chapter(
        title: 'BAB 1: Pengenalan Scrabble Ber-CT dan Ber-Coding',
        subtitles: [
          '1.1 Apa itu Scrabble dalam Kontekst Cyber Threat (CT) dan Coding?',
          '1.2 Sejarah Permainan Scrabble dan Hubungannya dengan Teknologi',
          '1.3 Keunggulan Menggunakan Scrabble sebagai Metode Pembelajaran CT dan Coding',
          '1.4 Tujuan dan Sasaran Buku Ini',
          '1.5 Struktur Buku dan Cara Menggunakan',
        ],
      ),
      Chapter(
        title: 'BAB 2: Dasar-Dasar Coding dan Pemrograman',
        subtitles: [
          '2.1 Pengenalan Bahasa Pemrograman',
          '2.2 Logika Dasar Pemrograman (Algoritma dan Pseudocode)',
          '2.3 Variabel, Tipe Data, dan Operator',
          '2.4 Struktur Kontrol (If-Else, Loop)',
          '2.5 Fungsi dan Modularitas Kode',
          '2.6 Debugging dan Error Handling',
        ],
      ),
      Chapter(
        title: 'BAB 3: Pengenalan Cyber Threat (CT)',
        subtitles: [
          '3.1 Definisi Cyber Threat',
          '3.2 Jenis-Jenis Cyber Threat (Malware, Phishing, DDoS, dll.)',
          '3.3 Dampak Cyber Threat pada Individu dan Organisasi',
          '3.4 Evolusi Cyber Threat dari Masa ke Masa',
          '3.5 Statistik dan Tren Terbaru Cyber Threat',
          '3.6 Prinsip Dasar Keamanan Siber',
        ],
      ),
      Chapter(
        title: 'BAB 4: Scrabble sebagai Alat Pembelajaran',
        subtitles: [
          '4.1 Aturan Dasar Permainan Scrabble',
          '4.2 Adaptasi Scrabble untuk Pembelajaran Coding',
          '4.3 Adaptasi Scrabble untuk Pembelajaran CT',
          '4.4 Manfaat Edukasi dari Scrabble dalam CT dan Coding',
          '4.5 Studi Kasus: Implementasi Scrabble di Kelas Pemrograman',
          '4.7 Alat dan Bahan yang Dibutuhkan',
        ],
      ),
      Chapter(
        title: 'BAB 5: Membangun Kata dalam Coding',
        subtitles: [
          '5.1 Konsep Membangun Kode seperti Membangun Kata',
          '5.2 Teknik Debugging melalui Scrabble',
          '5.3 Logika Algoritma dalam Scrabble',
          '5.4 Proyek Praktis: Membuat Program Sederhana dengan Scrabble',
          '5.5 Integrasi Coding dengan Elemen Scrabble',
          '5.6 Tantangan dan Solusi dalam Pembelajaran',
        ],
      ),
      Chapter(
        title: 'BAB 6: Mengidentifikasi Threat melalui Scrabble',
        subtitles: [
          '6.1 Simulasi Cyber Threat dalam Permainan Scrabble',
          '6.2 Mengenali Pola Threat seperti Mengenali Pola Kata',
          '6.3 Strategi Pertahanan Siber melalui Logika Scrabble',
          '6.4 Skenario Latihan: Menangani Serangan Phishing',
          '6.5 Penggunaan Scrabble untuk Awareness CT',
          '6.6 Evaluasi Risiko melalui Analogi Scrabble',
        ],
      ),
      Chapter(
        title: 'BAB 7: Integrasi CT dan Coding dalam Scrabble',
        subtitles: [
          '7.1 Membuat Game Scrabble dengan Elemen Coding',
          '7.2 Menambahkan Aspek Keamanan Siber ke dalam Game',
          '7.3 Pengembangan Aplikasi Mobile untuk Scrabble CT-Coding',
          '7.4 Penggunaan AI dalam Scrabble Pintar',
          '7.5 Kolaborasi Tim dalam Proyek Scrabble',
          '7.6 Uji Coba dan Feedback dari Pengguna',
        ],
      ),
      Chapter(
        title: 'BAB 8: Studi Kasus dan Aplikasi Nyata',
        subtitles: [
          '8.1 Implementasi di Sekolah dan Universitas',
          '8.2 Penggunaan di Pelatihan Korporat',
          '8.3 Kasus Sukses: Perusahaan yang Menggunakan Metode Ini',
          '8.4 Tantangan Implementasi dan Cara Mengatasinya',
          '8.5 Dampak Jangka Panjang pada Pembelajaran',
          '8.6 Survei dan Analisis Hasil',
        ],
      ),
      Chapter(
        title: 'BAB 9: Masa Depan Scrabble Ber-CT dan Ber-Coding',
        subtitles: [
          '9.1 Tren Teknologi yang Mempengaruhi',
          '9.2 Pengembangan Lebih Lanjut dari Metode Ini',
          '9.3 Integrasi dengan Teknologi Baru (VR, AR)',
          '9.4 Rekomendasi untuk Penelitian Lanjutan',
          '9.5 Kesimpulan dan Pesan Penutup',
          '9.6 Lampiran: Sumber Daya Tambahan',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kerangka Buku: Scrabble Ber-CT dan Ber-Coding'),
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