import 'package:flutter/material.dart';
import '../models/friend_data.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  // 📋 ข้อมูลเพื่อน ตามตัวอย่าง
  final List<FriendData> friends = [
    FriendData(
      name: "ธีรภัทร์ เกิดประกอบ",
      nickname: "ฟีม",
      age: 20,
      hometown: "ประจวบฯ",
      food: "ข้าวผัด",
      activity: "วิ่งออกกำลังกาย,ดูหนัง",
      image: "assets/images/8.png",
    ),
    FriendData(
      name: "สุคล คงกะพันธ์",
      nickname: "เเหม่ม",
      age: 20,
      hometown: "ราชบุรี",
      food: "ต้มยำกุ้ง",
      activity: "ฟังเพลง,ท่องเที่ยว",
      image: "assets/images/9.png",
    ),
    FriendData(
      name: "นายตี๋ ชอบกินม่า",
      nickname: "ตี๋",
      age: 21,
      hometown: "หัวหิน",
      food: "ส้มตำ",
      activity: "อ่านหนังสือ,เล่นกีฬา",
      image: "assets/images/10.png",
    ),
    FriendData(
      name: "กนก แจ่มสว่าง",
      nickname: "น้องเเอม",
      age: 22,
      hometown: "เพชรบุรี",
      food: "ข้าวยำ",
      activity: "ถ่ายรูป,เดินเล่น",
      image: "assets/images/11.png",
    ),
  ];

  // 🎨 สีพื้นหลังแต่ละการ์ด ตามรูปตัวอย่าง
  final List<Color> cardColors = [
    Colors.lightBlue.shade100,
    Colors.pink.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: friends.length,
      itemBuilder: (context, index) {
        final friend = friends[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: cardColors[index % cardColors.length],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🖼️ รูปภาพ
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  friend.image,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 70,
                    height: 70,
                    color: Colors.white54,
                    child: const Icon(Icons.person, size: 36),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // 📋 ข้อมูล
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ชื่อ-นามสกุล: ${friend.name}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Sarabun', // ✅ ปรับ Font ได้ตรงนี้
                        color: Colors.black87, // ✅ สีตัวอักษร
                      ),
                    ),
                    Text("ชื่อเล่น: ${friend.nickname}", style: const TextStyle(fontSize: 13)),
                    Text("อายุ: ${friend.age} ปี", style: const TextStyle(fontSize: 13)),
                    Text("บ้านเกิด: ${friend.hometown}", style: const TextStyle(fontSize: 13)),
                    Text("อาหารที่ชอบ: ${friend.food}", style: const TextStyle(fontSize: 13)),
                    Text("กิจกรรมที่ชอบ: ${friend.activity}", style: const TextStyle(fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}