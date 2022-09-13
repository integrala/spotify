import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);
  @override
  State<LibraryScreen> createState() => _LibraryScreenViewState();
}

class _LibraryScreenViewState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                    radius: 17,
                  ),
                ),
                const Text(" Kitaplığın")
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          ),
          SliverGrid(
              delegate: SliverChildListDelegate(
                [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/rap");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/rap.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Rap                                       ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/up");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/up.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Up                                       ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/yabanci");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/yabanci.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Yabancı                              ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/turkce");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/turkce.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Turkçe Akustik-mix           ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/worldofmusic");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/worldofmusic.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Dünyadan Sesler                  ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/mix");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/mix.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "MIX                                      ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/turku");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/turku.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Türkü                                   ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · Oğuzhan ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/images/ortak.jpg",
                            fit: BoxFit.cover,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: const [
                                Text(
                                  "Sik Sik şarkılar                  ",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Çalma Listesi · İbrahim   ",
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.82))
        ],
      ),
    );
  }
}
