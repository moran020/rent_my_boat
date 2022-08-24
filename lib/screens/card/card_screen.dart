import 'package:flutter/material.dart';
import '../../data/card.dart';
import '../../data/colors.dart';
import 'card_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late Future<CardsList> futureData;

  final CarouselController carouselController = CarouselController();

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
            const SizedBox(height: 32.0),
            Expanded(
              child: FutureBuilder(
                future: futureData, //TODO: получить данные из  firebase
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
                              margin: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        alignment: AlignmentDirectional.bottomCenter,
                                        children: [
                                          CarouselSlider(
                                            carouselController: carouselController,
                                            options: CarouselOptions(
                                                height: 200,
                                                viewportFraction: 1,
                                                enlargeCenterPage: true,
                                                onPageChanged: (indexSlide, reason) {
                                                  setState(() {
                                                    items[index].activeImage = indexSlide;
                                                  });
                                                }),
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

                                          Container(
                                            padding: const EdgeInsets.only(bottom: 8.0),
                                            alignment: Alignment.bottomCenter,
                                            child: AnimatedSmoothIndicator(
                                              activeIndex: items[index].activeImage,
                                              count: items[index].carouselImg!.length,
                                              effect: ScrollingDotsEffect(
                                                dotWidth: 8,
                                                dotHeight: 8,
                                                dotColor: background,
                                                activeDotColor: background,
                                                activeDotScale: 1.5,
                                              ),
                                            ),
                                          ),
                                        ],
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
                                            onPressed: () {
                                              setState(() {
                                                items[index].isLiked = !items[index].isLiked!;
                                              });
                                            },
                                            child: Image.asset(
                                              items[index].isLiked == true
                                                  ? 'assets/icons/like_active.png'
                                                  : 'assets/icons/like_disabled.png',
                                              width: 20,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
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
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 9),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 4),
                                                        child: Image.asset(
                                                          'assets/icons/passenger.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        items[index].seatsNumber.toString(),
                                                        style: const TextStyle(
                                                          fontSize: 11,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 4),
                                                      child: Image.asset(
                                                        'assets/icons/anchor_sm.png',
                                                      ),
                                                    ),
                                                    Text(
                                                      items[index].city.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${items[index].price.toString()} ₽",
                                                  style: const TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.41,
                                                    // height: 1.2,
                                                  ),
                                                ),
                                                Text(
                                                  "*",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: greyDisabled,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            items[index].name.toString().toUpperCase(),
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              height: 1.2,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "${items[index].totalPrice.toString().toUpperCase()} ₽/день",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              height: 1.2,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "* ",
                                              style: TextStyle(
                                                fontSize: 11,
                                                height: 1.2,
                                                color: greyDisabled,
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                "Стоимость аренды лодки на 1 пассажира при заполнении всех спальных мест",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2,
                                                  color: greyDisabled,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 32.0),
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
