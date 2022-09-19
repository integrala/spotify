import 'package:flutter/material.dart';

class Yabanci extends StatefulWidget {
  const Yabanci({Key? key}) : super(key: key);
  @override
  State<Yabanci> createState() => _YabanciViewState();
}

class _YabanciViewState extends State<Yabanci> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(176, 187, 90, 25), Colors.black])),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            floating: true,
            pinned: true,
            //centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.52,
            flexibleSpace: FlexibleSpaceBar(
              //centerTitle: true,
              titlePadding: const EdgeInsets.only(left: 6, bottom: 8),
              title: const Text(
                "Yabancı",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              background: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width * 0.68,
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: Image.asset(
                      "assets/images/yabanci.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                        radius: 12,
                      ),
                    ),
                    Text(
                      "Oğuzhan",
                      style: TextStyle(color: Colors.white, fontSize: 14, decoration: TextDecoration.none),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Icon(
                        Icons.language,
                        size: 16,
                        color: Colors.white54,
                      ),
                    ),
                    Text(
                      "7s37d",
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: Colors.white54),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.auto_awesome_outlined,
                            size: 32,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.download_for_offline_rounded,
                            color: Colors.green.shade700,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Icon(Icons.person_add_outlined),
                          const SizedBox(
                            width: 12,
                          ),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.shuffle),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.play_circle_filled_outlined,
                            color: Colors.green,
                            size: 50,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: const [
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
                Card(
                  child: Text("data"),
                ),
              ],
            )
          ]))
        ],
      ),
    );
  }
}
