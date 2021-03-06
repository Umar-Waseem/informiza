import 'package:flutter/material.dart';

class News {
  final String? id;
  final String? title;
  final String? path;
  final String? description;
  final num? time;

  News({
    required this.id,
    required this.title,
    required this.path,
    required this.description,
    required this.time,
  });
}

class NewsItems with ChangeNotifier {
  final List<News> _items = [
    News(
      id: DateTime.now().toString(),
      title: "Logo",
      path: "assets/images/logo1.png",
      description:
          "This is a sample logo, this is a transparent logo, this is a green logo",
      time: 2,
    ),
    News(
      id: DateTime.now().toString(),
      title: "News 1",
      path: "assets/images/news1.jpg",
      description:
          "This is a sample news item 1, This is a sample news item 1, This is a sample news item 1",
      time: 3,
    ),
    News(
      id: DateTime.now().toString(),
      title: "News 2",
      path: "assets/images/news2.jpg",
      description:
          "This is a sample news item 2, This is a sample news item 2, This is a sample news item 2",
      time: 4,
    ),
    News(
      id: DateTime.now().toString(),
      title: "News 2",
      path: "assets/images/news2.jpg",
      description:
          "This is a sample news item 2, This is a sample news item 2, This is a sample news item 2",
      time: 4,
    ),
    News(
      id: DateTime.now().toString(),
      title: "News 2",
      path: "assets/images/news2.jpg",
      description:
          "This is a sample news item 2, This is a sample news item 2, This is a sample news item 2",
      time: 4,
    ),
  ];

  late List<News> backUp = _items;

// ~......................................
  List<News> get items {
    return [..._items];
  }

// -......................................
  void addNewsItem(News news) {
    final newNews = News(
      id: news.id,
      path: news.path,
      description: news.description,
      time: news.time,
      title: news.title,
    );

    _items.add(newNews);
    notifyListeners();
  }

  void deleteNewsItem(String id) {
    final index = _items.indexWhere((element) => element.id == id);

    _items.removeAt(index);
  }

  News findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  // void refreshItems() {
  //   _items = backUp;
  //   notifyListeners();
  // }
}
