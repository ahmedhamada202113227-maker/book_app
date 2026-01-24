import 'package:book_app/core/Constants.dart';
import 'package:book_app/data/dataSources/home_local_storage/home_local_data_source.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:hive/hive.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> getLocalBooks() {
    var box = Hive.box<BookEntity>(kGetLocalBookBox);
    return box.values.toList();
  }

  @override
  List<ApiBooksEntity> getLocalApiBooks() {
    var box = Hive.box<ApiBooksEntity>(kGetLocalAPIBookBox);
    return box.values.toList();
  }
}
