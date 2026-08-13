import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/foodmenu.dart';


class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
 
}
class _ItemState extends State<Item> {
  Color getBgColor(String type) {
  switch (type.trim()) {
    case "ต้ม":
      return Colors.purple.shade200;
    case "สุขภาพ":
      return Colors.green.shade300;
    case "จานด่วน":
      return Colors.blue.shade200;
    case "สเต็ก":
      return Colors.orange.shade300;
    case "แฮมเบอร์เกอร์":
      return Colors.red.shade200;
    case "พิซซ่า":
      return Colors.pink.shade200;
    default:
      return Colors.amberAccent;
  }
}

      
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:emp.length,itemBuilder:(contect,index){
      return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: getBgColor(emp[index].type), 
  ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                emp[index].name,
                //style:const TextStyle(
                //fontSize:20,fontWeight:FontWeight.bold ),
                style: GoogleFonts.notoSansThai(
                  textStyle: const TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)
                ),),
                Text(
                "ประเภทอาหาร:${emp[index].type}",
                //style:const TextStyle(
                //fontSize:20,fontWeight:FontWeight.bold ),
                //),
                style: GoogleFonts.notoSansThai(
                  textStyle: const TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)
                ),),
                  Text(
                "ราคา:${emp[index].price} บาท",
                //style:const TextStyle(
                //fontSize:20,fontWeight:FontWeight.bold ),
                //),
                style: GoogleFonts.notoSansThai(
                  textStyle: const TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)
                ),),
            ],
          ),
          Image.asset(
              emp[index].foodpic.image,
              width: 100,
              height: 100,
              )
        ],
      ),
      );
    },
    );
  }
}