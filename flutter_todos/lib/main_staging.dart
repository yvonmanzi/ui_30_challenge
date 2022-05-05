import 'package:flutter_services_binding/flutter_services_binding.dart';

import 'package:flutter_todos/bootstrap.dart';
import 'package:local_storage_todos_api/local_storage_todos_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  FlutterServicesBinding.ensureInitialized();
  final todosApi = LocalStorageTodosApi(
    plugin: await SharedPreferences.getInstance(),
  );
  bootstrap(todosApi: todosApi);
}
