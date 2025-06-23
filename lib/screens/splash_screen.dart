import 'package:u_movieapp/export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyErrorWidget(errorText: "errorText", retryFunction: () {}),
    );
  }
}
