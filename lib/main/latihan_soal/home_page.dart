import 'package:flutter/material.dart';
import 'package:project_final_edspert_batch3/constants.dart';
import 'package:project_final_edspert_batch3/main/latihan_soal/mapel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            _buildUserHomeProfile(),
            _buildTopBanner(context),
            _buildHomeListMapel(context),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Terbaru',
                        style: pilihPelajaranText,
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 170,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset('assets/banner_image.png'),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildHomeListMapel(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Pilih Pelajaran',
                style: pilihPelajaranText,
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MapelPage.route);
                },
                child: Text('Lihat Semua'),
              )
            ],
          ),
          MapelWidget(),
          MapelWidget(),
          MapelWidget(),
        ],
      ),
    );
  }

  Container _buildTopBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(20)),
      height: 147,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'Mau kerjain latihan soal apa hari ini?',
                style: homeText,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/home_image.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildUserHomeProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai,  Nama User',
                  style: haiText,
                ),
                Text(
                  'Selamat Datang',
                  style: selamatDatangText,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/avatar_icon.png',
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}

class MapelWidget extends StatelessWidget {
  const MapelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 21),
      child: Row(
        children: [
          Container(
            height: 53,
            width: 53,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/mtk_icon.png',
              width: 28,
              height: 27,
            ),
          ),
          SizedBox(
            width: 11,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Matematika',
                  style: pelajaranText,
                ),
                Text(
                  '0/50 Paket latihan soal',
                  style: subtitlePelajaranText,
                ),
                SizedBox(
                  height: 11,
                ),
                Stack(
                  children: [
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
