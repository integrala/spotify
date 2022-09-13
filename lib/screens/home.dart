import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            title: Text(saat()),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.history_rounded)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
                ],
              )
            ],
          ),
          _SliverGrid(),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 4, top: 12),
              child: Text(
                "Programların",
                style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.29,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _program(context, "assets/images/kreatif.jpg", "Kreatif Durak", "Program · Kreatif Durak"),
                  _program(context, "assets/images/vb.png", "Bir garip VB hikayesi", "Program · Veli Bacık"),
                  _program(context, "assets/images/tekno.png", "5 Dakikada Tekno...", "Program · Buble Works Media"),
                  _program(context, "assets/images/finansal.jpg", "Finansal Özgürlük", "Program · Finansal Özgürlük"),
                  _program(context, "assets/images/olay.jpg", "Olay şu ki", "Program · Podcast BPT"),
                  _program(context, "assets/images/webtekno.jpg", "Podcast Röportajları", "Program · Webtekno"),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 4, top: 12),
              child: Text(
                "Çalma Listelerin",
                style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.28,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _program(context, "assets/images/relaxsoundtrak.jpg", "Relax Soundtrack", "Çalma listesi"),
                  _program(context, "assets/images/turkce.jpg", "Türkçe Akustik-mix", "Çalma listesi"),
                  _program(context, "assets/images/mountain.jpg", "Relax Edition", "Çalma listesi"),
                  _program(context, "assets/images/yabanci.jpg", "Yabancı", "Çalma listesi"),
                  _program(context, "assets/images/mix.jpg", "MIX", "Çalma listesi"),
                  _program(context, "assets/images/rap.jpg", "Rap", "Çalma listesi"),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 4, top: 12),
              child: Text(
                "Benzersiz Seçimlerin",
                style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.28,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _program(context, "assets/images/birdaha.jpg", "", "Şu anda sevdiğin şarkılar"),
                  _program(context, "assets/images/zamanKapsulu.jpg", "", " Seni zamanda geri götürecek.."),
                  _program(context, "assets/images/doyamadik.jpg", "", "Çalmaya doyamadıkların"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell _program(BuildContext context, String path, String name, String detail) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.39,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  name,
                  style: _listTextStyle().copyWith(fontSize: 16, height: double.minPositive),
                  textAlign: TextAlign.start,
                ),
                Text(
                  detail,
                  style: _listTextStyle().copyWith(color: Colors.white70),
                  textAlign: TextAlign.start,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverGrid _SliverGrid() {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/rap");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/rap.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        " Rap",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/worldfofmusic");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/worldofmusic.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        " Dünyadan\n sesler",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/relaxedition");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/mountain.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        " Relax edition",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/yabanci");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/yabanci.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        " Yabancı",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/relaxsoundttrack");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/relaxsoundtrak.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        " Relax\n Soundtrack",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/mix");
            },
            child: Card(
              shadowColor: Colors.transparent,
              elevation: 4,
              color: Colors.white24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/mix.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "MIX",
                        style: _listTextStyle(),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3.2,
      ),
    );
  }

  TextStyle _listTextStyle() => const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12);
}

dynamic saat() {
  final i = DateTime.now().hour;
  if (i == 7 || i == 8 || i == 9 || i == 10 || i == 11) {
    return "Günaydın";
  }
  if (i == 12 || i == 13 || i == 14) {
    return "İyi günler";
  }
  if (i == 15 || i == 16 || i == 17 || i == 18) {
    return "Tünaydın";
  }
  if (i == 19 || i == 20 || i == 21 || i == 22) {
    return "İyi akşamlar";
  }
  if (7 > i || i > 22) {
    return "İyi geceler";
  } else {
    return "";
  }
}
