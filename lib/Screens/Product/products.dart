import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Products',
              style: TextStyle(fontSize: 24.0),
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/products/product1');
                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) => e.history.map((val) => val.routeInformation.location))
                    .toList());
              },
              child: const Text('Product 1'),
            ),
            TextButton(
              onPressed: () {
                context.beamToNamed('/products/product2');
                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) => e.history.map((val) => val.routeInformation.location))
                    .toList());
              },
              child: const Text('Product 2'),
            ),
          ],
        ),
      ),
    );
  }
}
