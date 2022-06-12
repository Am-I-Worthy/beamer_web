import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamBack();
                print(Beamer.of(context)
                    .beamingHistory
                    .map((e) => e.history[0].routeInformation.location)
                    .toList());

                // context.beamBack();
              },
              child: const Text(
                'Go Back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
