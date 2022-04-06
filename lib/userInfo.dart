import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            child: const Text(
              'Изм.',
              style: TextStyle(fontSize: 19),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [_UserCreditials(), _BlocMenu()],
      ),
    );
  }
}

class _UserCreditials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 45,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Jonibek Akhmedov',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          Text(
            '+998998597725',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey),
          ),
          Text(
            '@akhm3dovv',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class _BlocMenu extends StatelessWidget {
  List menu = [
    {"name": "Настройки", "icon": Icons.bookmark, "onTap": () {}},
    {"name": "Недавние звонки", "icon": Icons.call, "onTap": () {}},
    {"name": "Устройства", "icon": Icons.devices_rounded, "onTap": () {}},
    {"name": "Папки с чатом", "icon": Icons.folder, "onTap": () {}}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
      // padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        child: Column(children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        color: Colors.white,
        height: 40,
        width: double.infinity,
        child: Row(
          children: [Icon(menu[0]['icon'])],
        ),
      ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            color: Colors.white,
            height: 40,
            width: double.infinity,
            child: Row(
              children: [Icon(menu[1]['icon'])],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),

            color: Colors.white,
            height: 40,
            width: double.infinity,
            child: Row(
              children: [Icon(menu[2]['icon'])],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),

            color: Colors.white,
            height: 40,
            width: double.infinity,
            child: Row(
              children: [Icon(menu[3]['icon'])],
            ),
          )
    ]));
  }
}
