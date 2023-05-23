import 'package:test_eclipseworks/main.dart';

initDatasDependencies() {
  I.registesDependency<IGetAllToDosDataLocal>(
    GetAllToDosDataLocal(
      I.get<ISharedPreference>(),
    ),
  );

  I.registesDependency<ISaveToDosDataLocal>(
    SaveToDosDataLocal(
      I.get<ISharedPreference>(),
    ),
  );
}
