import 'package:get_server/get_server.dart';

import 'controllers/home.dart';

class Routes {
  static const toHome = '/';
  static const toLogin = '/login';
  static const toUserDetails = '/user-details';
  static const toDashboard = '/dashboard';
  static const toFeed = '/feed';
  static const toFavorites = '/favorites';
  static const toShopping = '/shopping';
  static const toMovie = '/movie';

  static List<GetPage> routes = [
    GetPage(
      name: toHome,
      page: () => Home(),
      method: Method.get,
    ),
    GetPage(
      name: toLogin,
      page: () => Home(),
      method: Method.get,
    ),
  ];
}
