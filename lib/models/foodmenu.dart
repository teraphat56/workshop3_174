

enum Foodpic {
menu1(image:"assets/images/1.png"),
menu2(image:"assets/images/2.png"),
menu3(image:"assets/images/3.png"),
menu4(image:"assets/images/4.png"),
menu5(image:"assets/images/5.png"),
menu6(image:"assets/images/6.png"),
menu7(image:"assets/images/7.png");

  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic});

  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
}
 List<FoodMenu> emp = [
  FoodMenu(
      name: "สุกี้ผักรวม", 
      type: "ต้ม", 
      component: "ไข่, ไก่,เกี๋ยวกุ้ง,ปูอัด,เบคอน,ผักสด", 
      price: 99,
      foodpic: Foodpic.menu1),
      
      
  FoodMenu(
      name: "สลัดผัก", 
      type: "สุขภาพ", 
      component: "แครรอท,มะเขีอเทศ,ผักรวม", 
      price: 159,
      foodpic: Foodpic.menu2),
  FoodMenu(
      name: "ข้าวผัด", 
      type: "จานด่วน", 
      component: "แครรอท,มะเขีอเทศ,ข้าว,ไข่ไก่", 
      price: 45,
      foodpic: Foodpic.menu3),
  FoodMenu(
      name: "สเต็ก", 
      type: "สเต็ก", 
      component: "แครรอท,มะเขีอเทศ,เนื้อวัว,หมู,ปลา", 
      price: 389,
      foodpic: Foodpic.menu4),
    FoodMenu(
      name: "แฮมเบอร์เกอร์", 
      type: "แฮมเบอร์เกอร์", 
      component: "ขนมปัง,เนื้อสัตว์,เครื่องเคียง,ซอส,เครื่องปรุง,", 
      price: 189,
      foodpic: Foodpic.menu5),
    FoodMenu(
      name: "พิซซ่า", 
      type: "พิซซ่า", 
      component: "แป้งโด,ซอส,ชีส,ท็อปปิ้ง,", 
      price: 139,
      foodpic: Foodpic.menu6),
    FoodMenu(
      name: "ก๋วยเตี๋ยว", 
      type: "ก๋วยเตี๋ยว", 
      component: "เส้น,น้ำซุป,เนื้อสัตว์,ผัก ,", 
      price: 88,
      foodpic: Foodpic.menu7),
      
  ];