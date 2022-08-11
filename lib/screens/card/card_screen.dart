import 'package:flutter/material.dart';
import '../../data/colors.dart';


class Card {
  String? name;
  String? description;
  String? price;
  String? img; // list? //слайдер
  bool? isLabel;
  String? labelTitle;
  Color? labelColor;

  late List<Card>? subCategories; //?

  Card({
    required this.name,
    this.description,
    required this.price,
    this.img,
    this.isLabel,
    this.labelTitle,
    this.labelColor,
    this.subCategories,
  });

// сделать подгрузку из JSON

}

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  static List<Card> getCards() {
    return [
      Card(
        name: 'Лодка',
        description: 'лодка лодка',
        price: '1000',
        img: 'https://mot63.ru/upload/iblock/c16/c168f833e19dca05c1c662b21aa9b51a.jpg',
        isLabel: false,
        labelTitle: '',
        labelColor: null,
        subCategories: [],
      ),
      Card(
        name: 'Яхта',
        description: 'Яхта Яхта',
        price: '2000',
        img: 'https://s0.rbk.ru/v6_top_pics/media/img/1/80/756503489146801.jpg',
        isLabel: true,
        labelTitle: 'Скидка',
        labelColor: todaysDate,
        subCategories: [],
      ),
      Card(
        name: 'Бригантина',
        description: 'Бригантина Бригантина',
        price: '10000',
        img: 'https://media.team2.travel/user_image/26869/f60301aeec28f08c00406f935366a3cf.jpg',
        isLabel: true,
        labelTitle: 'Скидка',
        labelColor: todaysDate,
        subCategories: [],
      ),
      Card(
        name: 'Катер',
        description: 'Катер Катер Катер',
        price: '1000',
        img: 'https://ufa-lodki.ru/articles/wp-content/uploads/2020/12/2_005-1024x683.jpg',
        isLabel: true,
        labelTitle: 'Скидка',
        labelColor: todaysDate,
        subCategories: [],
      ),
    ];
  }

  List<Card> card = getCards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBAR будет???????????????? (название с локализацией)
        backgroundColor: activeButton,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: background),
          onPressed: () {},
        ),
        title: Text('Boats',
            style: TextStyle(
              color: background,
              // fontWeight: FontWeight.w600
            )),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.notifications_none, color: background),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // тут фильтры
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              //Текст с локализацией + количество лодок
              child: Text("${card.length} boats available", style: const TextStyle(fontSize: 20.0)),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: card.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20.0),
                      height: 150.0,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                              // Image.asset СЛАЙДЕР!!!!!!!!!!
                              child: Image.network(
                                  card[index].img.toString(),
                                  fit: BoxFit.cover),
                            ),
                          ),



                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
