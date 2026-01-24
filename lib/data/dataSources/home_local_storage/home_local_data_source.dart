import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';


abstract class HomeLocalDataSource {
  List<BookEntity> getLocalBooks();
  List<ApiBooksEntity> getLocalApiBooks();
}
