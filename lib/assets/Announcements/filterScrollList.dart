import 'package:flutter/material.dart';

class FilterScrollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color ieeeBlue = Color(0xFF00629B);
    return Container(
      height: 150,
      color: ieeeBlue,
      child: Center(
        child: Text('Filters'),
      ),
    );
  }
}
