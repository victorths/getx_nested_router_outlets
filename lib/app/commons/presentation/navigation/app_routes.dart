part of 'app_pages.dart';

abstract class Routes {
  static const root = _Paths.root;

  static const signIn = _Paths.signIn;

  static const home = _Paths.home;

  // Home Children
  static const homeA = home + _Paths.homeA;
  static const c = homeA + _Paths.c;
  static const d = homeA + _Paths.d;
  static const homeB = home + _Paths.homeB;
}

abstract class _Paths {
  static const root = '/';
  static const signIn = '/sign_in';

  static const home = '/home';
  static const homeA = '/home_a';
  static const c = '/c';
  static const d = '/d';

  static const homeB = '/home_b';
}
