import 'dart:io';
import 'package:path_provider/path_provider.dart' as path;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStructure {

  initDirectory() async {
    Directory dir = await path.getApplicationCacheDirectory();
    _hiveInitializer(dir);
  }


  _hiveInitializer(Directory dicrectory ){
      if (dicrectory == null) {
          initDirectory();
      }
      else{
        Hive.init(dicrectory.path);
      }

  }


}
