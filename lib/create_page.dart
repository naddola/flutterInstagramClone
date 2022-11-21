import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
            icon: Icon(Icons.send), onPressed: () {  },)
      ],
      title: Text('새 게시물'),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Text('noimage'),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력해주세요', contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
          controller: textEditingController,
        )
      ],
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
