import 'package:get_server/get_server.dart';

class NotFound404 extends StatelessWidget {
  const NotFound404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Json({
      'status': '404',
      'message': 'Not found',
    });
  }
}
