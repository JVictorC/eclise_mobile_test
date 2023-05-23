abstract class HomeException implements Exception {
  final String message;

  HomeException(this.message);
}

class GetAllToDosError implements HomeException {
  @override
  final String message;

  GetAllToDosError(this.message);
}

class SaveToDoError implements HomeException {
  @override
  final String message;

  SaveToDoError(this.message);
}