import 'package:flutter/material.dart';

class CafesDescription {
  final int id;
  final String name;
  final String descripcion;
  final double precing;
  final String image;

  CafesDescription({
    @required this.id,
    @required this.name,
    @required this.descripcion,
    @required this.precing,
    @required this.image,
  });
}
