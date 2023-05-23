import 'package:test_eclipseworks/main.dart';


initCoreDependencies() {
  I.registesDependency<ISharedPreference>(
    SharedPreference(),
  );
}
