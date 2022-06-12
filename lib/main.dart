import 'package:beamer/beamer.dart';
import 'package:beamer_web/Screens/Product/product.dart';
import 'package:beamer_web/Screens/Product/products.dart';
import 'package:beamer_web/Screens/home.dart';
import 'package:beamer_web/Screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) => const Home(),
        '/profile': (context, state, data) => const Profile(),
        '/products': (context, state, data) => const Products(),

        // Parameter Passing
        '/products/:product': (context, state, data) {
          final product = state.pathParameters['product']!;
          return BeamPage(
            key: ValueKey('Product-$product'),
            title: 'A Product - $product',
            popToNamed: '/product3',
            type: BeamPageType.scaleTransition,
            child: Product(
              title: product,
            ),
          );
        },
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}


/// Things to Learn
/// 1. UnderStanding Boiler plate code and get Started. 
///    1.1 Understanding Code Structure
/// 2. beamToNamed() function
/// 3. beamBack() function
/// 4. popToNamed() function
///    4.1 Usage of popRoute() function
/// 5. Bonus Lesson for Understanding and Debugging.
