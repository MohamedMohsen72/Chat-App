import 'package:chat_app/colors.dart';
import 'package:chat_app/user.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});
  List<UserModel> user = [
    UserModel(
        Image: 'assets/my.jpg',
        name: 'mohamed mohsen',
        lastmessage: 'عامل اي ',
        time: "10:00 pm"),
    UserModel(
        Image: 'assets/my.jpg',
        name: 'ahmed mohsen',
        lastmessage: "حبيبي",
        time: '10:00 pm'),
    UserModel(
        Image: 'assets/my.jpg',
        name: 'mohamed tash',
        lastmessage: "عادي ياعم",
        time: '10:00 pm'),
    UserModel(
        Image: 'assets/my.jpg',
        name: 'shimoo',
        lastmessage: "ماشي",
        time: '10:00 pm'),
    UserModel(
        Image: 'assets/my.jpg',
        name: 'Elmodeer',
        lastmessage: "اشطا",
        time: '10:00 pm'),
    UserModel(
        Image: 'assets/my.jpg',
        name: 'abdalla Elsayed',
        lastmessage: "تمام",
        time: "10:00 pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primariKay,
      appBar: AppBar(
        backgroundColor: AppColor.primariKay,
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Favorite Catacts',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(user[index].Image),
                          radius: 30,
                        ),
                        Text(
                          user[index].name.split(' ')[0],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: user.length),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(user[index].Image),
                          radius: 30,
                        ),
                        title: Text(user[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(user[index].lastmessage,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Text(user[index].time),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        indent: 15,
                      );
                    },
                    itemCount: user.length),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
