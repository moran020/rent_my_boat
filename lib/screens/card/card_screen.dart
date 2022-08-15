import 'package:flutter/material.dart';
import 'package:rent_my_boat/screens/home_screen.dart';
import '../../data/colors.dart';
import '../owner_form.dart';
import 'card_detail.dart';

class Card {
  int id;
  String? name;
  String? description;
  String? price;
  String? img; // list? //слайдер
  bool? isLabel;
  String? labelTitle;
  Color? labelColor;

  late List<Card>? subCategories; //?

  Card({
    required this.id,
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
        id: 0,
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
        id: 1,
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
        id: 2,
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
        id: 3,
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

  int currentMenuIndex = 0;
  final screens = [
    HomeScreen(),
    OwnerForm(),
    HomeScreen(),
    OwnerForm(),
    HomeScreen(),
  ];

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
      body: IndexedStack(
        index: currentMenuIndex,
        children: screens,
      ),
      // body: Container(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       // тут фильтры
      //       Padding(
      //         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      //         //Текст с локализацией + количество лодок
      //         child: Text("${card.length} boats available", style: const TextStyle(fontSize: 20.0)),
      //       ),
      //       Expanded(
      //         child: ListView.builder(
      //             itemCount: card.length,
      //             itemBuilder: (BuildContext context, int index) {
      //               return GestureDetector(
      //                 onTap: () {
      //                   //navigate to card details
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (context) => const CardDetailsScreen(),
      //                       ));
      //                 },
      //                 child: Container(
      //                   margin: const EdgeInsets.all(16.0),
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.stretch,
      //                     children: [
      //                       Stack(
      //                         children: [
      //                           Container(
      //                             width: MediaQuery.of(context).size.width,
      //                             height: 150,
      //                             decoration: BoxDecoration(
      //                               borderRadius: const BorderRadius.only(
      //                                   topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      //                               image: DecorationImage(
      //                                 fit: BoxFit.cover,
      //                                 // Image.asset СЛАЙДЕР!!!!!!!!!!
      //                                 image: NetworkImage(card[index].img.toString()),
      //                               ),
      //                             ),
      //                           ),
      //                           card[index].isLabel == true
      //                               ? Container(
      //                                   margin: const EdgeInsets.all(16.0),
      //                                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //                                   decoration: BoxDecoration(
      //                                     // color: card[index].labelColor.toString(),
      //                                     color: todaysDate,
      //                                     borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      //                                   ),
      //                                   child: Text(
      //                                     card[index].labelTitle.toString(),
      //                                     style: const TextStyle(color: Colors.white),
      //                                   ),
      //                                 )
      //                               : Container(),
      //                         ],
      //                       ),
      //                       Container(
      //                         // margin: const EdgeInsets.all(16.0),
      //                         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //                         decoration: const BoxDecoration(
      //                             color: Colors.white,
      //                             borderRadius: BorderRadius.only(
      //                               bottomLeft: Radius.circular(20.0),
      //                               bottomRight: Radius.circular(20.0),
      //                             ),
      //                             boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black45, offset: Offset(0, 3))]),
      //                         child: Column(
      //                           children: [
      //                             Align(
      //                               alignment: Alignment.centerLeft,
      //                               child: Text(
      //                                 card[index].name.toString(),
      //                                 style: const TextStyle(fontSize: 18),
      //                               ),
      //                             ),
      //                             Align(
      //                               alignment: Alignment.centerLeft,
      //                               child: Text(
      //                                 "${card[index].price.toString()} руб.",
      //                                 // style: const TextStyle(fontSize: 16),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               );
      //             }),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: background,
        selectedItemColor: todaysDate,
        unselectedItemColor: basicText,
        iconSize: 30,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        // showUnselectedLabels: false,
        currentIndex: currentMenuIndex,
        onTap: (index) => setState(() => currentMenuIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Избранное",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Сообщения",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Войти",
          ),
        ],
      ),
    );
  }
}
