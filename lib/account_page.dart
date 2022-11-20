import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBoddy(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
      ],
    );
  }

  Widget _buildBoddy() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg'),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.bottomRight,
                    child: Stack(alignment: Alignment.center, children: [
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: FloatingActionButton(
                          backgroundColor: Colors.blue,
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Text(
                '이름',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          Text(
            "0\n게시물",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "0\n팔로워",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "0\n팔로잉",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
