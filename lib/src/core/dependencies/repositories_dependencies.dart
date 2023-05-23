import 'package:test_eclipseworks/main.dart';

initRepositoriesDependencies() {
  I.registesDependency<IGetAllToDosRepository>(
    GetAllToDosRepository(
      data: I.get<IGetAllToDosDataLocal>(),
    ),
  );

  I.registesDependency<ISaveToDoRepository>(
    SaveToDosRepository(
      data: I.get<ISaveToDosDataLocal>(),
    ),
  );
}
