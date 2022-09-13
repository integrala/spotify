import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  State<SearchScreen> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text("Ara"),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.photo_camera_outlined),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: TextFormField(
              maxLines: 1,
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                isDense: true,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                alignLabelWithHint: false,
                hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                focusColor: Colors.transparent,
                hintText: " ne dinlemek istiyorsun?",
                hoverColor: Colors.transparent,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                fillColor: Colors.white,
                filled: true,
                prefix: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        _text(text: "En çok dinlediğin türler"),
        SliverGrid(
            delegate: SliverChildListDelegate([
              _en(path: "assets/images/pop.jpeg"),
              _en(path: "assets/images/hip.jpeg"),
              _en(path: "assets/images/rock.jpeg"),
              _en(path: "assets/images/dans.jpeg"),
            ]),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.75)),
        _text(text: "Hepsine göz at"),
        SliverGrid(
            delegate: SliverChildListDelegate(
              [
                _en(path: "assets/images/podcast.jpeg"),
                _en(path: "assets/images/senin.jpeg"),
                _en(path: "assets/images/listeler.jpeg"),
                _en(path: "assets/images/radyo.jpeg"),
                _en(path: "assets/images/kesfet.jpeg"),
                _en(path: "assets/images/canlietk.jpeg"),
                _en(path: "assets/images/populer.jpeg"),
                _en(path: "assets/images/ruhhali.jpeg"),
                _en(path: "assets/images/equal.jpeg"),
                _en(path: "assets/images/donemmu.jpeg"),
                _en(path: "assets/images/movie.jpeg"),
                _en(path: "assets/images/party.jpeg"),
                _en(path: "assets/images/country.jpeg"),
                _en(path: "assets/images/latin.jpeg"),
                _en(path: "assets/images/evde.jpeg"),
                _en(path: "assets/images/alternatif.jpeg"),
                _en(path: "assets/images/saglik.jpeg"),
                _en(path: "assets/images/uyku.jpeg"),
              ],
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.75))
      ],
    );
  }

  SliverToBoxAdapter _text({required String text}) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 4),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  InkWell _en({required String path}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
