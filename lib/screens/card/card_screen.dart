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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              //TODO: Текст с локализацией + количество лодок
              child: Text("58 boats available", style: const TextStyle(fontSize: 20.0)),
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
                              margin: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(
                                    children: [
                                      CarouselSlider(
                                        options: CarouselOptions(
                                          height: 150,
                                          viewportFraction: 1,
                                        ),
                                        items: items[index].carouselImg?.map((item) => Container(
                                          decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                item,
                                              ),
                                            ),
                                          ),
                                        )).toList(),
                                      ),
                                      items[index].isLabel == true
                                          ? Container(
                                              margin: const EdgeInsets.all(16.0),
                                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                              decoration: BoxDecoration(
                                                color: todaysDate,
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                              ),
                                              child: Text(
                                                items[index].labelTitle.toString(),
                                                style: const TextStyle(color: Colors.white),
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                  Container(
                                    // margin: const EdgeInsets.all(16.0),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                        ),
                                        boxShadow: [
                                          BoxShadow(blurRadius: 5, color: Colors.black45, offset: Offset(0, 3))
                                        ]),
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
                    return const Center(
                      child: CircularProgressIndicator(),
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
