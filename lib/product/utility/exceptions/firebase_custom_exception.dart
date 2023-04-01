class FirebaseCustomException {
  final String description;

  FirebaseCustomException(this.description);

  @override
  String toString() {
    return '$this $description';
  }
}

class VersionCustomException implements Exception {
  VersionCustomException(this.description);

  final String description;

  @override
  String toString() {
    return '$this $description';
  }
}
