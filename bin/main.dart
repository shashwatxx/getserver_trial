import 'package:get_server/get_server.dart';

import 'controllers/not_found_404.dart';
import 'routes.dart';

void main() {
  runApp(getServer);
}

final getServer = GetServerApp(
  cors: true,
  port: 8080,
  jwtKey: "ThisIsMySecretKey",
  onNotFound: NotFound404(),
  getPages: Routes.routes,
);


//! To retreive Jwt Token from the request
// final claimSet = JwtClaim(
//   expiry: DateTime.now().add(Duration(days: 3)),
//   issuer: 'get is awesome',
//   issuedAt: DateTime.now(),
// );

// var token = TokenUtil.generateToken(claim: claimSet);