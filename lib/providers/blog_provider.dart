import 'package:flutter/material.dart';
import 'package:my_personal_website/blog/blog_item.dart';

class BlogProvider extends ChangeNotifier {
  bool _isExpanded = false;
  List<BlogItem> _blogList = [];

  bool get isExpanded => _isExpanded;
  List<BlogItem> get getBlogItems => _blogList;

  void setExpanded(bool value) {
    this._isExpanded = value;
    notifyListeners();
  }

  void addNewBlogItem(BlogItem item) {
    _blogList.add(item);
    notifyListeners();
  }

  void deleteBlogItem(int index) {
    _blogList.removeAt(index);
    notifyListeners();
  }
}
