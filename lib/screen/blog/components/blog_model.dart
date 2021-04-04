import 'package:flutter/material.dart';

class BlogModel {
  bool isExpanded;
  final String header;
  final Widget body;
  final Widget content;

  BlogModel({
    this.isExpanded,
    this.header,
    this.body,
    this.content,
  });
}
