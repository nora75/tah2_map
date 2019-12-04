import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApiList extends StatelessWidget {
// TODO リスト画面の作成
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // 画面の横幅取得
    double height = MediaQuery.of(context).size.height; // 画面の縦幅取得

    return Container(
        padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
        child: Container(
          child: Text("List"),
//          child: PrintText(width, height, context),
        )
    );
  }
}

Widget PrintText(width, height, context) {
  var result = [];    // 検索結果

  return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
        padding: EdgeInsets.only(
            top: height * 0.06,
            left: width * 0.1,
            right: width * 0.1
        ),
        itemBuilder: (BuildContext context, int index){
          return Card(    // リストの中身
              child: InkWell(   // タップイベントのため
                  onTap: (){      // タップイベント
                    print(index);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[     // ここが表示内容
                        Text(result[index], style: TextStyle(
                          fontSize: 40,
                        )),
                      ],
                    ),
                  )
              )
          );
        },
        itemCount: result.length,   // データ件数
      )
  );
}

