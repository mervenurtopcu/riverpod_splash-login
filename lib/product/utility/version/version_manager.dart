import '../exceptions/firebase_custom_exception.dart';

//Telefonun versiyonu ile firebase versiyonunu karşılaştırır.
//Küçükse telefonun versiyonu güncellenmesi gerektiğini bildirir.
class VersionManager {
  VersionManager({
    required this.deviceValue,
    required this.databaseValue,
  });

  final String deviceValue;
  final String databaseValue;

  bool isNeedUpdate() {
    final deviceNumberSplit = deviceValue.split('.').join();
    final databaseNumberSplit = databaseValue.split('.').join();

    final deviceNumber = int.tryParse(deviceNumberSplit);
    final databaseNumber = int.tryParse(databaseNumberSplit);

    if (deviceNumber == null || databaseNumber == null) {
      throw VersionCustomException(
        '$deviceValue or $databaseValue is not valid for parse',
      );
    }

    return deviceNumber < databaseNumber;
  }
}
