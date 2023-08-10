import 'package:flutter/material.dart';
import 'package:kc_tv_app/widgets/suggestion_card.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
            "assets/images/portada.png",
          ),
        ),
        title: Text(
          'PRANKEDY',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recomendado para ti',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            const SuggestionCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
              color: Color.fromARGB(255, 252, 252, 252),
            ),
            label: 'Vida Salvaje',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_crash,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Bromas a Taxistas',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: Color.fromARGB(255, 247, 245, 244),
            ),
            label: 'El Señor de la tienda',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 3, 3, 3),
        unselectedItemColor: const Color.fromARGB(255, 255, 249, 249),
        unselectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 216, 211, 211), fontSize: 14),
        fixedColor: const Color.fromARGB(255, 255, 252, 252),
        onTap: null,
      ),
    );
  }
}
