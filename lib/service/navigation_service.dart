import 'package:flutter/material.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigatorKey;

  //initilize the navigationkey
  //!21
  NavigationService() {
    navigatorKey = GlobalKey<NavigatorState>();
  }

  navigate(Widget widget) {
    return navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  //!22
  navigateReplace(Widget widget) {
    return navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  //!23
  Future<void> showDialog(/*BuildContext? context,*/ Widget widget) async {
    await showAdaptiveDialog(
      barrierDismissible: true,
      context: /*context ??*/ navigatorKey.currentContext!,
      builder: (context) => widget,
    );
  }

  //!24
  void showSnackbar() {
    final context = navigatorKey.currentContext!;
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    const snackbarWidget = SnackBar(
      content: Text(
        "Hello World - a movies app",
        style: TextStyle(color: Colors.white),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbarWidget);
  }
}
