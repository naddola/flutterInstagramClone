import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double _rowImageSize = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Instagram clone',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.white,
        ),
        body: _buildBody_original());
  }

  Widget _buildBody() {
    return Center(
      child: Column(children: [
        const Text(
          'Instagram에 오신걸 환영합니다.',
          style: const TextStyle(fontSize: 24),
        ),
        const Text(
          '사진과 동영상을 보려면 팔로우하세요.',
          style: const TextStyle(fontSize: 12),
        ),
        Card(
            child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://w.namu.la/s/59bbf73b123d0f9f693be3c3de9506b24a1f2a3067b4ffd0207a3a08eee32d750ebf1ca3e33084aa3bbcd6916bd0a8a187cc4556b87fa269c25f1a7ff3ea279f1e372d23aa0a6eee8d5932c70d5dac0e845cba7c6dd13e7f4328c9144f893f2e1df7a32fd4e1c095da3b46ffa0609348'),
              ),
              const Text(
                'naddola@naver.com',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('hcjeon'),
              Row(
                children: [
                  Image(
                      fit: BoxFit.fill,
                      width: _rowImageSize,
                      height: _rowImageSize,
                      image: const NetworkImage(
                          'https://file.mk.co.kr/meet/neds/2022/09/image_readtop_2022_802387_16627716615153649.jpg')),
                  Image(
                      fit: BoxFit.fill,
                      width: _rowImageSize,
                      height: _rowImageSize,
                      image: const NetworkImage(
                          'https://file.mk.co.kr/meet/neds/2022/09/image_readtop_2022_802387_16627716615153649.jpg')),
                  Image(
                      fit: BoxFit.fill,
                      width: _rowImageSize,
                      height: _rowImageSize,
                      image: const NetworkImage(
                          'https://file.mk.co.kr/meet/neds/2022/09/image_readtop_2022_802387_16627716615153649.jpg')),
                ],
              ),
              const Text('Facebook 친구'),
              ElevatedButton(
                onPressed: () => {},
                child: const Text('팔로우'),
              )
            ],
          ),
        ))
      ]),
    );
  }

  Widget _buildBody_original() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Instagram에 오신걸 환영합니다.',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요.'),
                Padding(padding: EdgeInsets.all(16)),
                SizedBox(
                  width: 260,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text(
                            'email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('hcjeon'),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg')),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg')),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://cdn.spotvnews.co.kr/news/photo/202209/549843_768741_590.jpg')),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          ElevatedButton(onPressed: () {}, child: Text('팔로우')),
                          Padding(padding: EdgeInsets.all(8.0)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
