import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String title;
  const Product({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24.0),
            ),
            TextButton(
              onPressed: () {
                // to Pop all the routes and push Profile page
                Beamer.of(context).popToNamed('/profile');

                // Second way to pop all the routes
                // and push a single page
                // Beamer.of(context).popRoute();

                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) =>
                        e.history.map(
                          (val) => val.routeInformation.location))
                    .toList());
              },
              child: const Text(
                'Go Back to Profile(popToNamed)',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
