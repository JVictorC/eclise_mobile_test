import 'package:test_eclipseworks/main.dart';

initUseCasesDependencies() {
  I.registesDependency<IGetAllToDosUseCase>(
    GetAllToDosUseCase(
      repository: I.get<IGetAllToDosRepository>(),
    ),
  );

  I.registesDependency<ISaveToDoUsecase>(
    SaveToDoUsecase(
      repository: I.get<ISaveToDoRepository>(),
    ),
  );
}
