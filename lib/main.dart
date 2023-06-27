// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: const Color(0xffff00ff),
      ),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).data.canvasColor,
    );
  }
}

class Theme extends InheritedWidget {
  final ThemeData data;

  const Theme({
    super.key,
    required this.data,
    required super.child,
  });

  static Theme of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<Theme>();
    return widget!;
  }

  @override
  bool updateShouldNotify(covariant Theme oldWidget) {
    return data != oldWidget.data;
  }
}

class ThemeData {
  final Color canvasColor;
  ThemeData({
    required this.canvasColor,
  });
}
