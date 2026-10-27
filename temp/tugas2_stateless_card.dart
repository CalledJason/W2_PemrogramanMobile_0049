import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const navy = Color(0xFF183D70);
const babyBlue = Color(0xFF9ACFFF);
const paleBlue = Color(0xFFDCEEFF);
const cream = Color(0xFFFFFDF5);
const stateBlue = Color(0xFF526783);
const aliceBlue = Color(0xFFB9DDFF);
const steelBlue = Color(0xFF397CC5);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'monospace',
        scaffoldBackgroundColor: cream,
      ),
      home: const HalamanMahasiswa(),
    );
  }
}

class HalamanMahasiswa extends StatelessWidget {
  const HalamanMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: cream,
              border: Border.all(color: navy, width: 2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: navy,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // header with browser style
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: babyBlue,
                    border: Border(
                      bottom: BorderSide(color: navy, width: 2),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.language, color: navy),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: navy),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'student-profile://uisi',
                            style: TextStyle(
                              color: navy,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),
                      const Icon(Icons.circle, color: navy, size: 12),
                      const SizedBox(width: 5),
                      const Icon(Icons.close, color: navy, size: 18),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'YOUR CAMPUS, YOUR STORY',
                        style: TextStyle(
                          color: navy,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Student Directory',
                        style: TextStyle(
                          color: navy,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Get to know the students behind the stories.',
                        style: TextStyle(
                          color: stateBlue,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // three card of students
                      const KartuMahasiswa(
                        nama: 'Jason Silver',
                        nim: '3012410049',
                        prodi: 'Informatika',
                        list: 1,
                        warna: aliceBlue,
                      ),
                      const SizedBox(height: 14),
                      const KartuMahasiswa(
                        nama: 'Ayu Lestari',
                        nim: '3012410050',
                        prodi: 'Sistem Informasi',
                        list: 2,
                        warna: aliceBlue,
                      ),
                      const SizedBox(height: 14),
                      const KartuMahasiswa(
                        nama: 'Raka Pratama',
                        nim: '3012410051',
                        prodi: 'Teknik Komputer',
                        list: 3,
                        warna: aliceBlue,
                      ),

                      // panel profil mahasiswa
                      const ProfilMahasiswa(),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(13),
                  decoration: const BoxDecoration(
                    color: babyBlue,
                    border: Border(
                      top: BorderSide(color: navy, width: 2),
                    ),
                  ),
                  child: const Text(
                    'Made for the campus community ♡',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: navy,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          )
        )
      )
    );
  }
}


class KartuMahasiswa extends StatelessWidget {
final String nama;
final String nim;
final String prodi;
final int list;
final Color warna;

const KartuMahasiswa({
super.key,
required this.nama,
required this.nim,
required this.prodi,
required this.list,
required this.warna,
});

@override
Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: navy, width: 2),
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: navy,
          offset: Offset(3, 4),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: 55,
          height: 68,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(color: navy, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.school_rounded,
            color: navy,
            size: 30,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'STUDENT PROFILE #${list.toString().padLeft(3, '0')}',
                style: const TextStyle(
                  color: navy,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                nama,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: navy,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'NIM $nim',
                style: const TextStyle(
                  color: stateBlue,
                  fontSize: 11,
                ),
              ),
              const SizedBox(height: 7),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: paleBlue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: navy),
                ),
                child: Text(
                  prodi,
                  style: const TextStyle(
                    color: navy,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        Column(
          children: [
            const Icon(
              Icons.favorite,
              color: stateBlue,
              size: 20,
            ),
            const SizedBox(height: 8),
            Text(
              '#${list.toString().padLeft(3, '0')}',
              style: const TextStyle(
                color: navy,
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
}

class ProfilMahasiswa extends StatelessWidget {
  const ProfilMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: navy, width: 2),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: navy,
            offset: Offset(3, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: babyBlue,
              border: Border.all(color: navy),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'ABOUT ME',
              style: TextStyle(
                color: navy,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: babyBlue,
                child: Icon(
                  Icons.person,
                  color: navy,
                  size: 40,
                ),
              ),
              SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jason Silver',
                      style: TextStyle(
                        color: navy,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Informatics Undergraduate',
                      style: TextStyle(
                        color: stateBlue,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: paleBlue,
              border: Border.all(color: navy),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _IkonKontak(
                  ikon: Icons.email_outlined,
                  label: 'Email',
                ),
                _IkonKontak(
                  ikon: Icons.phone_outlined,
                  label: 'Phone',
                ),
                _IkonKontak(
                  ikon: Icons.location_on_outlined,
                  label: 'Location',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IkonKontak extends StatelessWidget {
  final IconData ikon;
  final String label;

  const _IkonKontak({
    required this.ikon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(ikon, color: navy, size: 22),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: navy,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}