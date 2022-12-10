import 'package:flutter/cupertino.dart';

class IdentityLogo extends StatelessWidget {
  const IdentityLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: MediaQuery.of(context).size.height * 0.08,
      image: const AssetImage('assets/images/e-rozgaar-logo.png'),
    );
  }
}
