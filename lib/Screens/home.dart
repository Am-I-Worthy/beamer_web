import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(fontSize: 24.0),
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/profile');
                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) => e.history.map((val) => val.routeInformation.location))
                    .toList());
              },
              child: const Text(
                'Profile',
              ),
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/products');
                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) => e.history.map((val) => val.routeInformation.location))
                    .toList());
              },
              child: const Text(
                'Products',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
