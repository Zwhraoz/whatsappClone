import 'package:flutter/material.dart';

class Call {
  final String name;
  final String time;
  final IconData callTypeIcon;
  final Color callTypeColor;

  Call({
    required this.name,
    required this.time,
    required this.callTypeIcon,
    required this.callTypeColor,
  });
}

class CallScreen extends StatelessWidget {
  final List<Call> callHistory = [
  Call(
    name: 'Ahmet Yılmaz',
    time: '10:30',
    callTypeIcon: Icons.call_made,
    callTypeColor: const Color.fromARGB(255, 39, 214, 45),
  ),
  Call(
    name: 'Ayşe Kaya',
    time: 'Dün',
    callTypeIcon: Icons.call_received,
    callTypeColor: Colors.red,
  ),
  Call(
    name: 'Mehmet Öz',
    time: 'Bugün 09:45',
    callTypeIcon: Icons.call_made,
    callTypeColor: const Color.fromARGB(255, 39, 214, 45),
  ),
  Call(
    name: 'Fatma Can',
    time: 'Salı 15:20',
    callTypeIcon: Icons.call_made,
    callTypeColor: const Color.fromARGB(255, 39, 214, 45),
  ),
  Call(
    name: 'Zeynep Demir',
    time: 'Çarşamba 14:10',
    callTypeIcon: Icons.call_received,
    callTypeColor: Colors.red,
  ),
  Call(
    name: 'Ali Gür',
    time: 'Pazartesi 11:55',
    callTypeIcon: Icons.call_made,
    callTypeColor: const Color.fromARGB(255, 39, 214, 45),
  ),
  Call(
    name: 'Selin Yıldız',
    time: 'Cuma 17:30',
    callTypeIcon: Icons.call_received,
    callTypeColor: Colors.red,
  ),
];


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set background color to white
      child: ListView.builder(
        itemCount: callHistory.length,
        itemBuilder: (context, index) {
          final call = callHistory[index];
          IconData trailingIcon;
          if (call.callTypeIcon == Icons.call_made) {
            trailingIcon = Icons.phone;
          } else {
            trailingIcon = Icons.videocam  ;
          }
          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  call.callTypeIcon,
                  color: call.callTypeColor,
                ),
                SizedBox(width: 16), // Add spacing between icon and avatar
                CircleAvatar(
                  backgroundImage: NetworkImage("https://surgassociates.com/wp-content/uploads/610-6104451_image-placeholder-png-user-profile-placeholder-image-png.jpg"),
                ),
              ],
            ),
            title: Text(call.name),
            subtitle: Row(
              children: [
                Icon(Icons.access_time, size: 14, color: Colors.grey),
                SizedBox(width: 4),
                Text(call.time),
              ],
            ),
            trailing: Icon(trailingIcon),
            onTap: () {
              print("tıklandı");
              },
          );
        },
      ),
    );
  }
}
