import 'package:get_server/get_server.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Json({
      "msg": "You have successfully created your Get Server project",
      "success": true,
      "data": {
        "name": "Get Server",
        "version": "1.0.0",
        "description":
            "Get Server is a simple server that allows you to create a server with a simple API.",
        "author": "Shashwat Mishra",
        "license": "MIT",
        "repository": "https://github.com/shashwatxx/getx-server-demo.git"
      },
    });
  }
}
