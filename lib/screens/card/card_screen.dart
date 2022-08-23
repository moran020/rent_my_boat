import 'package:flutter/material.dart';
import '../../data/card.dart';
import '../../data/colors.dart';
import 'card_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late Future<CardsList> futureData;

  @override
  void initState() {
    super.initState();
    futureData = getCardList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TODO: тут фильтры
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
              //TODO: Текст с локализацией + количество лодок
              child: Text("58 boats available", style: TextStyle(fontSize: 20.0)),
            ),
            Expanded(
              child: FutureBuilder(
                future: futureData,
                builder: (BuildContext context, data) {
                  if (data.hasError) {
                    return Center(child: Text("${data.error}"));
                  } else if (data.hasData) {
                    var cards = data.data as CardsList;
                    var items = cards.cards as List<CardItem>;
                    return ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              //TODO: передать параметры
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CardDetailsScreen(),
                                  ));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(
                                    children: [
                                      CarouselSlider(
                                        options: CarouselOptions(
                                          height: 200,
                                          viewportFraction: 1,
                                        ),
                                        items: items[index]
                                            .carouselImg
                                            ?.map((item) => Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                        item,
                                                      ),
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          items[index].isLabel == true
                                              ? Container(
                                                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                                                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                                                  decoration: BoxDecoration(
                                                    color: accentRed,
                                                    borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                                                  ),
                                                  child: Text(
                                                    items[index].labelTitle.toString().toUpperCase(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      letterSpacing: 0.1,
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                          TextButton(
                                            //TODO: нажатие на лайк
                                            onPressed: () {},
                                            child: Image.asset(
                                              'assets/icons/like_disabled.png',
                                              // лайкнутая иконка 'assets/icons/like_active.png',
                                              width: 20,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                      border: Border.all(color: activeButton),
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            items[index].name.toString(),
                                            style: const TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "${items[index].price.toString()} руб.",
                                            // style: const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  } else {
                    return Center(
                      child: Image.asset(
                        'assets/icons/vector.png',
                        width: 140,
                        fit: BoxFit.fill,
                        color: Colors.white.withOpacity(0.5),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
