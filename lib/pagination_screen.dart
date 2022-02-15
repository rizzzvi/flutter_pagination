import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({Key? key}) : super(key: key);

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  @override
  void initState() {
    callApi();
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination in FLutter'),
      ),
      body: Container(),
    );
  }

  callApi() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
