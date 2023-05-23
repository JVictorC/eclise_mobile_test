




import 'package:test_eclipseworks/src/core/dependencies/core_dependencies.dart';
import 'package:test_eclipseworks/src/core/dependencies/data_dependencies.dart';
import 'package:test_eclipseworks/src/core/dependencies/repositories_dependencies.dart';
import 'package:test_eclipseworks/src/core/dependencies/usecases_dependencies.dart';


initAllDependencies() {
  initCoreDependencies();
  initDatasDependencies();
  initRepositoriesDependencies();
  initUseCasesDependencies();
}
