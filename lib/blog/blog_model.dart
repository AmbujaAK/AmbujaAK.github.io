import 'package:flutter/material.dart';

class BlogModel {
  bool isExpanded;
  final String header;
  final Widget body;

  BlogModel({
    this.isExpanded,
    this.header,
    this.body,
  });
}
