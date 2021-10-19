import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Soil{
  String desc;
  String title;
  Image image;
  int index;

  Soil({required this.desc, required this.title,required this.image,required this.index});

}

class Detail{
  String name;
  String about;
  String found;
  String character;
  String crop;
  Image photo;

  Detail({required this.name, required this.about, required this.found, required this.character, required this.crop, required this.photo});

}