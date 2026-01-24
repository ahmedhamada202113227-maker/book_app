import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBlockOfBooksDescreption extends StatelessWidget {
  const CustomBlockOfBooksDescreption(
      {super.key, required this.apiBooksEntity});
  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: AspectRatio(
        aspectRatio: 10 / 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'المؤلف : ${apiBooksEntity.bookAuthor}',
                  style: const TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'التقييم :',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Icon(
                      FontAwesomeIcons.rankingStar,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ),
                  Text(
                    ' 4.5',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
