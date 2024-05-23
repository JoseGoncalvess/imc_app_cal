import 'package:hive_flutter/adapters.dart';
import 'package:imc_app_cal/models/historic_model.dart';

class HiveRepository {
  static late Box _box;
  HiveRepository._instace();
  static Future<HiveRepository> loadrepository() async {
    if (Hive.isBoxOpen("HiveHistoricCalc")) {
      _box = Hive.box("HiveHistoricCalc");
    } else {
      _box = await Hive.openBox("HiveHistoricCalc");
    }
    return HiveRepository._instace();
  }

  void savehistoric(HistoricModel historic) {
    _box.add(historic);
  }

  List<HistoricModel> loadhistoric() {
    return _box.values.cast<HistoricModel>().toList();
  }
  void delethistoric(HistoricModel historic){
    _box.delete(historic.key);
  }
}
