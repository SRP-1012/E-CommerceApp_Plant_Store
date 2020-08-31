import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  bool _isSignedIn = true;

  bool get isSignedIn {
    return _isSignedIn;
  }

  void switchAuth() {
    _isSignedIn = !_isSignedIn;
    notifyListeners();
  }
}
