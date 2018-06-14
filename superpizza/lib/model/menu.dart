import 'package:superpizza/model/food.dart';

class Menu {
  static List<Food> menu = [
    Food(
        id: "1",
        image: "assets/images/menu1.png",
        name: "LASAGNE",
        price: "\$12",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),    
    Food(
        id: "2",
        image: "assets/images/menu2.png",
        name: "TORTELLINI WITH BROCCOLI",
        price: "\$8",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",), 
    Food(
        id: "3",
        image: "assets/images/menu3.png",
        name: "MUSHROOM RISOTTO",
        price: "\$4",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "4",
        image: "assets/images/menu4.png",
        name: "CIOPPINO",
        price: "\$30",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),   
    Food(
        id: "5",
        image: "assets/images/menu5.png",
        name: "SEAFOOD PLATTER",
        price: "\$22",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "6", 
        image: "assets/images/menu6.png",
        name: "MEAT ROLLs",
        price: "\$19",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "7",
        image: "assets/images/menu7.png",
        name: "SALMON SALAD",
        price: "\$25",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "8",
        image: "assets/images/menu8.png",
        name: "MEATBALLS AND PASTA",
        price: "\$7",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "9",
        image: "assets/images/menu9.png",
        name: "STEAK AU POIVRE",
        price: "\$63",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oi",),
    Food(
        id: "10",
        image: "assets/images/menu10.png",
        name: "CHICKEN SALAD",
        price: "\$43",
        description: "1 PIZZA Basic pizza dough (can be used for all pizzas) INGREDIENTS FOR MARGHERITA TOPPING: 5 tablespoons tomato purée 2 oz fresh mozzarella 2 basil leaves 1 pinch of oregano  tablespoon of extra virgin olive oil",
        ),
        ];

  static Food getFoodById(id) {
    return menu.where((p) => p.id == id).first;
  }
}
