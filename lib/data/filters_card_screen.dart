import 'package:flutter/material.dart';
import '/data/colors.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchField(),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [CheckBox(), FiltersButton()],
        ),
        SizedBox(height: 32),
        Text(
          'Выберите лодку',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: titleText,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.41,
          ),
        ),
        BoatsList(),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      // controller: controller,
      cursorColor: activeButton,

      decoration: InputDecoration(
        prefixIcon: Image.asset('assets/icons/anchor_search.png'),
        hintText: 'Введите город отправления',
        hintStyle: TextStyle(
            fontSize: 15,
            color: hintTextColor,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.0024),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: activeButton,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 2.5, color: activeButton),
        ),
        isDense: true,
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  late bool value;
  bool _withCap = false;
  bool _withoutCap = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // //SizedBox for get checkbox minimum padding around
              height: 19.0,
              width: 19.0,
              child: Checkbox(
                value: _withCap,
                onChanged: (bool? value) => setState(() => _withCap = value!),
                side: BorderSide(color: activeButton),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                activeColor: activeButton,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'С капитаном',
              style: const TextStyle(fontSize: 14, letterSpacing: 0.24),
            ),
          ],
        ),
        const SizedBox(width: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // //SizedBox for get checkbox minimum padding around
              height: 19.0,
              width: 19.0,
              child: Checkbox(
                value: _withoutCap,
                onChanged: (bool? value) =>
                    setState(() => _withoutCap = value!),
                side: BorderSide(color: activeButton),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                activeColor: activeButton,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'Без капитана',
              style: const TextStyle(fontSize: 14, letterSpacing: 0.24),
            ),
          ],
        ),
      ],
    );
  }
}

class FiltersButton extends StatelessWidget {
  const FiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 39,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: activeButton,
              width: 1,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/filters',
          );
        },
        child: Image.asset(
          'assets/icons/filters.png',
          height: 14,
          width: 29,
        ),
      ),
    );
  }
}

class BoatsList extends StatelessWidget {
  const BoatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class SearchField extends StatefulWidget {
//   const SearchField({Key? key}) : super(key: key);

//   @override
//   State<SearchField> createState() => _SearchFieldState();
// }

// class _SearchFieldState extends State<SearchField> {
//   final List<Actor> actors = [
//     Actor(age: 47, name: 'Leonardo', lastName: 'DiCaprio'),
//     Actor(age: 58, name: 'Johnny', lastName: 'Depp'),
//     Actor(age: 78, name: 'Robert', lastName: 'De Niro'),
//     Actor(age: 44, name: 'Tom', lastName: 'Hardy'),
//     Actor(age: 66, name: 'Denzel', lastName: 'Washington'),
//     Actor(age: 49, name: 'Ben', lastName: 'Affleck'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         children: [
//           const Text('Searchable list with divider'),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(15),
//               child: SearchableList<Actor>(
//                 onPaginate: () async {
//                   await Future.delayed(const Duration(milliseconds: 1000));
//                   setState(() {
//                     actors.addAll([
//                       Actor(age: 22, name: 'Fathi', lastName: 'Hadawi'),
//                       Actor(age: 22, name: 'Hichem', lastName: 'Rostom'),
//                       Actor(age: 22, name: 'Kamel', lastName: 'Twati'),
//                     ]);
//                   });
//                 },
//                 builder: (Actor actor) => ActorItem(actor: actor),
//                 loadingWidget: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     CircularProgressIndicator(),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text('Loading actors...')
//                   ],
//                 ),
//                 errorWidget: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Icon(
//                       Icons.error,
//                       color: Colors.red,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text('Error while fetching actors')
//                   ],
//                 ),
//                 asyncListCallback: () async {
//                   await Future.delayed(
//                     const Duration(
//                       milliseconds: 10000,
//                     ),
//                   );
//                   return actors;
//                 },
//                 asyncListFilter: (q, list) {
//                   return list
//                       .where((element) => element.name.contains(q))
//                       .toList();
//                 },
//                 emptyWidget: const EmptyView(),
//                 onRefresh: () async {},
//                 onItemSelected: (Actor item) {},
//                 inputDecoration: InputDecoration(
//                   labelText: "Search Actor",
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(
//                       color: Colors.blue,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: ElevatedButton(
//               onPressed: addActor,
//               child: const Text('Add actor'),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   List<Actor> _filterUserList(String searchTerm) {
//     return actors
//         .where(
//           (element) =>
//               element.name.toLowerCase().contains(searchTerm) ||
//               element.lastName.contains(searchTerm),
//         )
//         .toList();
//   }

//   void addActor() {
//     actors.add(Actor(
//       age: 10,
//       lastName: 'Ali',
//       name: 'ALi',
//     ));
//     setState(() {});
//   }
// }

// class ActorItem extends StatelessWidget {
//   final Actor actor;

//   const ActorItem({
//     Key? key,
//     required this.actor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 60,
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//           children: [
//             const SizedBox(
//               width: 10,
//             ),
//             Icon(
//               Icons.star,
//               color: Colors.yellow[700],
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Firstname: ${actor.name}',
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Lastname: ${actor.lastName}',
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Age: ${actor.age}',
//                   style: const TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EmptyView extends StatelessWidget {
//   const EmptyView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         Icon(
//           Icons.error,
//           color: Colors.red,
//         ),
//         Text('no actor is found with this name'),
//       ],
//     );
//   }
// }

// class Actor {
//   int age;
//   String name;
//   String lastName;

//   Actor({
//     required this.age,
//     required this.name,
//     required this.lastName,
//   });
// }
