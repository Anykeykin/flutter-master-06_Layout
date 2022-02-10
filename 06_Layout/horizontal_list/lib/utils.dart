import 'package:flutter/material.dart';

// НЕ НУЖНО В ИТОГЕ
final listgen = (int count, [bool showprint = false]) => List<Widget>.generate(
    count,
        (i) {
          if(showprint) print(i);
          return ListTile(
                  title: Text('$i'),
                );
        }
        );