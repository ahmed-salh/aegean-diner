import 'package:aegean_mobile/models/cart_item.dart';
import 'package:aegean_mobile/models/food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Moussaka",
      description:
          "طبق يوناني بطبقاته الغنية من الباذنجان و اللحم و صوص البشاميل",
      imagePath: "lib/assets/images/Moussaka.png",
      price: 275,
      type: FoodCategory.MainCourse,
    ),
    Food(
      name: "Sourlaki",
      description: "اسياخ لحم مشوية علي الطريقة اليونانيه تقدم مع خبز البيتا",
      imagePath: "lib/assets/images/Sourlaki.png",
      price: 235,
      type: FoodCategory.MainCourse,
    ),
    Food(
      name: "Gehista",
      description: "طبق لحم او دجاج متبل و مطهو بتوابل متوسطه، غني بالنكهه",
      imagePath: "lib/assets/images/default.png",
      price: 150,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Kleftiko",
      description: "طبق يوناني تقليدي من اللحم داخل ورق عنب أو خبز",
      imagePath: "lib/assets/images/default.png",
      price: 235,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Adana Kebab",
      description: "كباب تركي حار من لحم مفروم متبل مشوي على الفحم",
      imagePath: "lib/assets/images/default.png",
      price: 215,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Inkender Kebab",
      description: "شرائح لحم فوق خبز مغمور بالصلصة ولبن الزبادي",
      imagePath: "lib/assets/images/default.png",
      price: 250,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Dolma",
      description: "ورق عنب محشي بالأرز والخضار المتبلة بزيت الزيتون",
      imagePath: "lib/assets/images/default.png",
      price: 90,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Manti1",
      description: "زلابية تركية محشوة باللحم وتُقدم مع اللبن والثوم",
      imagePath: "lib/assets/images/default.png",
      price: 80,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Lahnac",
      description: "عجينة رقيقة ومقرمشة بنكهة شرق أوسطية محشوة باللحم",
      imagePath: "lib/assets/images/default.png",
      price: 120,
      type: FoodCategory.MainCourse,
    ),

    Food(
      name: "Tzatziki",
      description: "زبادي كريمي بنكهة الخيار والثوم",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Appetizer,
    ),

    Food(
      name: "Spanakopita",
      description: "فطيرة مقرمشة محشوة بالسبانخ وجبنة الفيتا",
      imagePath: "lib/assets/images/default.png",
      price: 55,
      type: FoodCategory.Appetizer,
    ),

    Food(
      name: "Saganaki",
      description: "جبن يوناني مقلي بطبقة ذهبية",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.Appetizer,
    ),

    Food(
      name: "Sucuk Izgara",
      description: "سجق مشوي بطابع تركي حار",
      imagePath: "lib/assets/images/default.png",
      price: 60,
      type: FoodCategory.Appetizer,
    ),

    Food(
      name: "Mercimek Kofresi",
      description: "كرات نباتية من العدس والبرغل مع بهارات شرقية",
      imagePath: "lib/assets/images/default.png",
      price: 55,
      type: FoodCategory.Appetizer,
    ),

    Food(
      name: "Horiatiki",
      description: "سلطة يونانية تقليدية مع طماطم، خيار، زيتون، وجبنة فيتا",
      imagePath: "lib/assets/images/default.png",
      price: 65,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Tzatziki Salad",
      description: "سلطة زبادي بالخيار والثوم، خفيفة ومنعشة",
      imagePath: "lib/assets/images/default.png",
      price: 40,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Bean Bliss",
      description: "سلطة فاصوليا بيضاء متبلة بنكهات متوسطية",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Hellas Potatoes",
      description: "بطاطا مشوية أو مقلية بنكهات متوسطية",
      imagePath: "lib/assets/images/default.png",
      price: 35,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Melitzano Salatasi",
      description: "باذنجان مشوي مع الثوم والليمون",
      imagePath: "lib/assets/images/default.png",
      price: 30,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Goban Salatasi",
      description: "سلطة فول أو حمص بنكهة لذيذة",
      imagePath: "lib/assets/images/default.png",
      price: 40,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Kisir",
      description: "سلطة برغل مع خضار طازجة وتوابل",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "Pattican Salatasi",
      description: "باذنجان مفروم مع التوابل",
      imagePath: "lib/assets/images/default.png",
      price: 40,
      type: FoodCategory.Salad,
    ),

    Food(
      name: "BaBa Ganas",
      description: "باذنجان مدخن مع طحينية",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Salad,
    ),
    Food(
      name: "Lentill Warmth ",
      description: "شوربة العدس الدافئة مع الخضار و التوابل",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Soup,
    ),

    Food(
      name: "Lush Yogert",
      description: "زبادي يوناني مع العسل و المكسرات",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Soup,
    ),
    Food(
      name: "Tarhana Corbasi",
      description: "شوربة تركية مصنوعه من مزيج الحبوب و الخضار المجفف",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Soup,
    ),
    Food(
      name: "Golden Chicken Soup ",
      description: "شوربة دجاج ذهبيه غنية بالنكهه و مليئة بالدفء",
      imagePath: "lib/assets/images/default.png",
      price: 90,
      type: FoodCategory.Soup,
    ),

    Food(
      name: "Fresh Labneh ",
      description: "لبنة طازجة مع زيت الزيتون و الزعتر",
      imagePath: "lib/assets/images/default.png",
      price: 90,
      type: FoodCategory.SideDish,
    ),

    Food(
      name: "Hellenic Bread",
      description: "خبز يوناني طازج مع زيت الزيتون",
      imagePath: "lib/assets/images/default.png",
      price: 80,
      type: FoodCategory.SideDish,
    ),

    Food(
      name: "Imam Bayldi",
      description: "باذنجان محشي بالارز و الطماطم و التوابل",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.SideDish,
    ),
    Food(
      name: "Pasha's Dish",
      description: "طبق تركي غني بالنكهات",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.SideDish,
    ),
    Food(
      name: "Aegean Rolls ",
      description: "لفائف محشية",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.SideDish,
    ),
    Food(
      name: "Cheese Fillo",
      description: "رقائق مقرمشه محشوه بالجبن",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.SideDish,
    ),

    Food(
      name: "Golden Baklaval",
      description: "حلوى باكلاوة محشوة بالمكسرات و العسل",
      imagePath: "lib/assets/images/Golden Baklaval.png",
      price: 70,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Royal Kunafa",
      description: "حلوى كنافة محشوة بالجبنة و العسل",
      imagePath: "lib/assets/images/Royal Kunafa.png",
      price: 70,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Pasha's Bite",
      description: "حلوى بسبوسة محشوة بالمكسرات و العسل",
      imagePath: "lib/assets/images/default.png",
      price: 65,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Orangella Cake",
      description: "كيك بنكهة البرتقال الطازج",
      imagePath: "lib/assets/images/default.png",
      price: 65,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Pasha's Treat",
      description: "حلويات شرقية متنوعة بنكهة مميزة",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Creme Tart",
      description: "تارت محشو بكريمة ناعمة",
      imagePath: "lib/assets/images/default.png",
      price: 60,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Dulcia",
      description: "حلوى لذيذة ذات قوام كريمي",
      imagePath: "lib/assets/images/default.png",
      price: 55,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Melia Tart",
      description: "تارت محشو بنكهات شرقية",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Amarelle",
      description: "حلوى فاكهية منعشة بنكهة الكرز",
      imagePath: "lib/assets/images/default.png",
      price: 110,
      type: FoodCategory.Dessert,
    ),

    Food(
      name: "Ayran",
      description: "مشروب لبن مالح و بارد منعش",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Frostine",
      description: "مشروب مثلج منعش",
      imagePath: "lib/assets/images/default.png",
      price: 50,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Amber Buzza",
      description: "مشروب غازي بنكهة مميزة",
      imagePath: "lib/assets/images/default.png",
      price: 30,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Frost Frappe",
      description: "قهوة مثلجة منعشة",
      imagePath: "lib/assets/images/default.png",
      price: 60,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Blush Tea",
      description: "شاي مثلج بنكهة الفواكه",
      imagePath: "lib/assets/images/default.png",
      price: 60,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Turkish Coffee",
      description: "قهوة تركية قوية و غنية",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Mango Royale",
      description: "عصير مانجو فاخر",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Soda",
      description: "صودا",
      imagePath: "lib/assets/images/default.png",
      price: 45,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Greek Coffee",
      description: "قهوة يونانية غنية",
      imagePath: "lib/assets/images/default.png",
      price: 65,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Ginger Tea",
      description: "شاي بالزنجبيل",
      imagePath: "lib/assets/images/default.png",
      price: 20,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Spiced Tea",
      description: "شاي بالتوابل",
      imagePath: "lib/assets/images/default.png",
      price: 15,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Sweet Milk",
      description: "حليب محلى",
      imagePath: "lib/assets/images/default.png",
      price: 55,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Date Milk",
      description: "حليب بالتمر",
      imagePath: "lib/assets/images/default.png",
      price: 70,
      type: FoodCategory.Drink,
    ),

    Food(
      name: "Hot Sahlab",
      description: "مشروب ساخن من الحليب و النشا",
      imagePath: "lib/assets/images/default.png",
      price: 60,
      type: FoodCategory.Drink,
    ),
  ];

  List<Food> get menu => _menu;

  final List<CartItem> cart = [];

  void addToCard(Food food) {
    CartItem? cartItem = cart.firstWhereOrNull((item) {
      return (item.food == food);
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      cart.add(CartItem(food: food, quantity: 1));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (cart[cartIndex].quantity > 1) {
        cart[cartIndex].quantity--;
      } else {
        cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double totalPrice = 0.0;
    for (CartItem cartItem in cart) {
      double itemPrice = cartItem.food.price;
      totalPrice += itemPrice * cartItem.quantity;
    }
    return totalPrice;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem item in cart) {
      totalItemCount += item.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    cart.clear();
    notifyListeners();
  }
}
