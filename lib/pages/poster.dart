import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class PosterPage extends StatefulWidget {
  const PosterPage({Key? key}) : super(key: key);
  @override
  State<PosterPage> createState() => _PosterPageState();
}

class _PosterPageState extends State<PosterPage> {
  double width = 500;
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('海報張貼系統')),
        drawer: const MyDrawer(),
        body: Scrollbar(
          controller: scrollController,
          isAlwaysShown: true,
          child: SingleChildScrollView(
              controller: scrollController,
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          width:
                              (MediaQuery.of(context).size.width > width * 1.5)
                                  ? width
                                  : double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '申請系統(測試中)',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '社團/系學會名稱',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '社長/系會長姓名',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '連絡電話',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'E-mail',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '張貼時間(如申請兩個地點之時間不同，請詳細備註~) ',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                minLines: 3,
                                maxLines: 10,
                                autofocus: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '張貼事由(e.g.迎新、宿營等等 & 如為聯合活動請備註～)',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text('選擇張貼位置',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16)),
                              const PosterPositionCheckBox(),
                              const SizedBox(height: 15),
                              Center(
                                child: OutlinedButton(
                                    onPressed: () {}, child: Text('送出申請')),
                              )
                            ],
                          ))))),
        ));
  }
}

class PosterPositionCheckBox extends StatefulWidget {
  const PosterPositionCheckBox({Key? key}) : super(key: key);
  @override
  State<PosterPositionCheckBox> createState() => _PosterPositionCheckBoxState();
}

class _PosterPositionCheckBoxState extends State<PosterPositionCheckBox> {
  final Map<String, bool> _list = {
    'A1': false,
    'A2': false,
    'A3': false,
    'A4': false,
    'A5': false,
    'B1': false,
    'B2': false,
    'B3': false,
    'B4': false,
    'B5': false,
    'B6': false,
    'C1': false,
    'D1': false,
    'D2': false,
    'E1': false,
    'E2': false
  };
  List<Widget> widgetList = [];
  @override
  Widget build(BuildContext contet) {
    widgetList = [];
    _list.forEach((k, v) {
      widgetList.add(Row(children: [
        Checkbox(
          checkColor: Colors.white,
          value: _list[k],
          onChanged: (bool? value) {
            setState(() {
              _list[k] = !_list[k]!;
            });
          },
        ),
        const SizedBox(width: 5),
        Text(k)
      ]));
    });
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(children: widgetList));
  }
}
