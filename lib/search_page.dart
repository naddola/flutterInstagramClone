import 'package:flutter/material.dart';
import 'package:instaclon/create_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePage()))
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        });
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network('https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg',
    fit: BoxFit.cover,);
  }
}
