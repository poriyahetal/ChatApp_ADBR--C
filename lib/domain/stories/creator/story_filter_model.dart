import 'dart:io';
import 'package:flutter/material.dart';

class StoryFilter {
  final File? img;
  final Color? color;

  StoryFilter({required this.img, required this.color});

  // Data
  static List<StoryFilter> filters(File? img) {
    return <StoryFilter>[
      StoryFilter(img: null, color: null),
      StoryFilter(img: img, color: Colors.black),
      StoryFilter(img: img, color: Colors.yellow),
      StoryFilter(img: img, color: Colors.red),
      StoryFilter(img: img, color: Colors.green),
      StoryFilter(img: img, color: Colors.blue),
      StoryFilter(img: img, color: Colors.orange),
      StoryFilter(img: img, color: Colors.brown),
      StoryFilter(img: img, color: Colors.grey),
      StoryFilter(img: img, color: Colors.pink),
      StoryFilter(img: img, color: Colors.purple),
    ];
  }
}
