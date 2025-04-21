import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool openModal = false;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('确认'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('退出确认.'),
                Text('您确定想要退出系统?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: GestureDetector(
                      onTap: (){
                        _showMyDialog();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        color: Colors.cyanAccent,
                        child: Text('退出登录', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                      ),
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

