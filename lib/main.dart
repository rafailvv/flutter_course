import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'api/api_config.dart';
Future<void> main() async {
  await Supabase.initialize(
      url: ApiConfig.projectUrl,
      anonKey: ApiConfig.apiKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ToDo App',
      home: MyWidget(),
); }
}