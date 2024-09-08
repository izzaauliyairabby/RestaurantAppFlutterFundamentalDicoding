class Restaurant {
  final String id;
  final String name;
  final String description;
  final String pictureId;
  final String city;
  final double rating;
  final Menus menus;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menus,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      pictureId: json['pictureId'],
      city: json['city'],
      rating: json['rating'].toDouble(),
      menus: Menus.fromJson(json['menus']),
    );
  }
}

class Menus {
  final List<MenuItem> foods;
  final List<MenuItem> drinks;

  Menus({
    required this.foods,
    required this.drinks,
  });

  factory Menus.fromJson(Map<String, dynamic> json) {
    return Menus(
      foods: (json['foods'] as List)
          .map((item) => MenuItem.fromJson(item))
          .toList(),
      drinks: (json['drinks'] as List)
          .map((item) => MenuItem.fromJson(item))
          .toList(),
    );
  }
}

class MenuItem {
  final String name;

  MenuItem({required this.name});

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(name: json['name']);
  }
}

// Example: Parsing the JSON data into Dart objects
final List<Restaurant> restaurants = [
  {
    "id": "rqdv5juczeskfw1e867",
    "name": "Melting Pot",
    "description":
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit...",
    "pictureId": "https://restaurant-api.dicoding.dev/images/medium/14",
    "city": "Medan",
    "rating": 4.2,
    "menus": {
      "foods": [
        {"name": "Paket rosemary"},
        {"name": "Toastie salmon"},
        {"name": "Bebek crepes"},
        {"name": "Salad lengkeng"}
      ],
      "drinks": [
        {"name": "Es krim"},
        {"name": "Sirup"},
        {"name": "Jus apel"},
        {"name": "Jus jeruk"},
        {"name": "Coklat panas"},
        {"name": "Air"},
        {"name": "Es kopi"},
        {"name": "Jus alpukat"},
        {"name": "Jus mangga"},
        {"name": "Teh manis"},
        {"name": "Kopi espresso"},
        {"name": "Minuman soda"},
        {"name": "Jus tomat"}
      ]
    }
  },
  {
    "id": "s1knt6za9kkfw1e867",
    "name": "Kafe Kita",
    "description":
        "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue...",
    "pictureId": "https://restaurant-api.dicoding.dev/images/medium/25",
    "city": "Gorontalo",
    "rating": 4.0,
    "menus": {
      "foods": [
        {"name": "Kari kacang dan telur"},
        {"name": "Ikan teri dan roti"},
        {"name": "roket penne"},
        {"name": "Salad lengkeng"},
        {"name": "Tumis leek"},
        {"name": "Salad yuzu"},
        {"name": "Sosis squash dan mint"}
      ],
      "drinks": [
        {"name": "Jus tomat"},
        {"name": "Minuman soda"},
        {"name": "Jus apel"},
        {"name": "Jus mangga"},
        {"name": "Es krim"},
        {"name": "Kopi espresso"},
        {"name": "Jus alpukat"},
        {"name": "Coklat panas"},
        {"name": "Es kopi"},
        {"name": "Teh manis"},
        {"name": "Sirup"},
        {"name": "Jus jeruk"}
      ]
    }
  },
  // Add more restaurants here...
].map((data) => Restaurant.fromJson(data)).toList();
