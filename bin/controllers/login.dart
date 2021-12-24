import 'package:get_server/get_server.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

class Login extends GetView {
  isValidUser(ContextRequest request) {
    var email = request.params!['email'];
    var password = request.params!['password'];
    if (email == 'shashwat@test.com' && password == 'password') {
      return true;
    } else {
      return false;
    }
  }

  String getauthToken() {
    final claimSet = JwtClaim(
      expiry: DateTime.now().add(Duration(days: 3)),
      issuer: 'Shashwat Mishra',
      issuedAt: DateTime.now(),
    );

    var token = TokenUtil.generateToken(claim: claimSet);
    return token;
  }

  @override
  Widget build(BuildContext context) {
    if (isValidUser(context.request)) {
      return Json({
        'status': "200",
        'email': "shashwat@test.com",
        'token': getauthToken(),
      });
    }
    return Json({
      'status': "401",
      'message': "Invalid Credentials",
    });
  }
}
