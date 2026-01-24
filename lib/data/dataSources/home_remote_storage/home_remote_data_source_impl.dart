import 'package:book_app/core/Constants.dart';
import 'package:book_app/core/services/api_service.dart';
import 'package:book_app/data/models/api_books_model/api_books_model.dart';
import 'package:book_app/data/models/book_model/book_model.dart';
import 'package:book_app/data/dataSources/home_remote_storage/home_remote_data_source.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> getRemoteBooks() async {
    var data = await apiService.getBooks(
      'lists/current/hardcover-fiction.json?api-key=wx91uSOiwvsvsfzAxJdpQYFOm6fAnLcc',
    );

    List<BookEntity> books = [];

    for (var book in data['results']['books']) {
      books.add(BookModel.fromJson(book));
    }

    var box = Hive.box<BookEntity>(kGetLocalBookBox);
    box.addAll(books);
    return books;
  }

  @override
  Future<List<ApiBooksEntity>> getRemoteApiBook() async {
    var data = await apiService.getApiBooks(
      'volumes/?q=general&langRestrict=en&filter=full&projection=full&orderBy=newest',
    );
    List<ApiBooksEntity> apiBooks = [];
    for (var book in data['items']) {
      apiBooks.add(ApiBooksModel.fromJson(book));
    }

    var box = Hive.box<ApiBooksEntity>(kGetLocalAPIBookBox);
    box.addAll(apiBooks);
    return apiBooks;
  }

  @override
  Future<List<ApiBooksEntity>> getRemoteApiBookByCategory(
      {required String rCategory}) async {
    var data = await apiService.getApiBooksByCategory(
      'volumes/?q=$rCategory&langRestrict=en&filter=full&projection=full',
    );
    List<ApiBooksEntity> apiBooksByCategory = [];
    for (var book in data['items']) {
      apiBooksByCategory.add(ApiBooksModel.fromJson(book));
    }

    // var box = Hive.box<ApiBooksEntity>(kGetLocalAPIBookBox);
    // box.addAll(apiBooksByCategory);
    return apiBooksByCategory;
  }
}
