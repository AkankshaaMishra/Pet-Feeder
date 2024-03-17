import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/utils/extension/hover_extension.dart';
import 'dart:html' as html;

import 'package:pet_feeder/views/ProductDetail/product_detail.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String productlink;
  final int price;
  final String productRating;
  final String description;

  Product(
      {required this.name,
      required this.id,
      required this.productRating,
      required this.description,
      required this.imageUrl,
      required this.productlink,
      required this.price});
}

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: "1",
        productRating: "5.0",
        description:
            "Set of 2 stainless-steel food bowls for puppies, dogs, cats, or kittens Holds up to 700 ml each; perfect for dry kibble, wet food, treats, or waterRust resistant; offers a healthy alternative to plastic; doesn't hold odors No-tip design; rubber base protects floors and prevents bowls from sliding while your pet eats Dishwasher-safe for easy cleaning",
        name:
            'Pets Empire Stainless Steel Dog Bowl (Medium, Set of 2) (700 ml)',
        imageUrl:
            'https://m.media-amazon.com/images/I/81j2BHEDKkL._AC_UL480_FMwebp_QL65_.jpg',
        productlink:
            "https://www.amazon.in/Pets-Empire-Stainless-Steel-Medium/dp/B072XW1FSP",
        price: 200),
    Product(
        id: "2",
        productRating: "4.0",
        description:
            "Vacuum with 5 grooming accessories to take care of your pet easily- Grooming brush, deshedding tool, cleaning brush, blow dryer, trimmer with guiding combs.All-weather heater mode (Summers/ Monsoon/ Winter) 700 mL dust capacity with easy disposal.Multiple stages of filtration- Pre filter+ Metal mesh filter+ HEPA filter.Multi suction with 9 kPa & Easy Suction adjustment by knob (Comfy, Breeze, Powerful)",
        name:
            'Eureka Forbes Buddy Pet Grooming Vacuum Kit with 5 Accessories for Dogs|Multi-Stage Filtration',
        imageUrl: 'https://m.media-amazon.com/images/I/71WgkfgBVbL._SX679_.jpg',
        productlink: "https://amzn.eu/d/3ZLlNLS",
        price: 9999),
    Product(
        id: "3",
        productRating: "4.2",
        description:
            "USP - This body wash shampoo is a perfect natural option to care for your pet when it comes to bathe them or clean their coat and skin. Our all-natural body wash provide the best possible cleaning results and cleaning sensation to your pet. Nourishes fur, improves fur shine and softness, reduces shedding",
        name: 'PAPA PAWSOME Itch No More 2-In-1 Dog Shampoo&Conditioner',
        imageUrl:
            'https://m.media-amazon.com/images/I/71LFafQlIBL._AC_UL480_FMwebp_QL65_.jpg',
        productlink: "",
        price: 370),
    Product(
        id: "4",
        productRating: "4.1",
        description:
            "Munchy Sticks Are Long Lasting Chicken Avour Treats That Dog Loves, Material_Features:Non-Vegetarian, Low In Fat Content, Reduces Tartar Build Up And Promotes Healthy Teeth And Gum, Suitable For Pets Over 3 Months",
        name:
            'Meat Up Munchy Sticks, Chicken Flavour, Dog Treats 400 gm (Buy 1 Get 1 Free ), Total 800g',
        imageUrl: 'https://m.media-amazon.com/images/I/71A47+7BG5L._SX679_.jpg',
        productlink: "https://amzn.eu/d/eTtT3aR",
        price: 245),
    Product(
        id: "5",
        productRating: "4.8",
        description:
            "Topical Repellent Spray For your ultimate happiness here at dogz and dudez we are completely dedicated to creating pet products which are of immense quality and help to dog owners. We pets. Because of this you can rest assure that when you take us, you are covered, use for any size dogs and as flea and tick spray for puppies or flea and tick spray for cats",
        name:
            'Dogz & Dudez Neem Shield Tick, Flea, Flea Egg Spray for Dogs and Cats 200 ml',
        imageUrl: 'https://m.media-amazon.com/images/I/71GvFUpajbL._SX679_.jpg',
        productlink:
            "https://www.amazon.in/Dogz-Dudez-Repellent-Proprietary-Lemongrass/dp/B07YG9FHHK",
        price: 350),
    Product(
        id: "6",
        productRating: "4.3",
        description:
            "The High Tenacity dog leash is perfect for walking, running, and training. With shock-absorbing capabilities, tangle-free hooks, and a durable design made from wool, polyester, leather, fiber, rubber, and cotton, it offers both freedom and control for your furry friend. Ideal for various activities, it's the perfect solution for exercising and training sessions.",
        name:
            'Dog Combo Pack of Harness, Neck Collar Belt and Rope Set (Black, Medium, Waterproof, Rope Size 1.5M-2M)',
        imageUrl:
            'https://m.media-amazon.com/images/I/41BYDnIsfbS.AC_UF1000,1000_QL80_FMwebp.jpg',
        productlink: "https://amzn.eu/d/86tFM0Q",
        price: 399),
    Product(
        id: "7",
        productRating: "4.1",
        description:
            "BETTER DESIGN Just One-click Cleaning Button. You just have to Simply push the clean button to retract bristles and wipe hair off. Grooming pets can strengthen communication and further the bond between you and your pets.",
        name:
            'Dog Comb, Flea Comb for Dog, Self Cleaning Dog & Cat Comb, Pet Hair Comb, Pack of 1 ',
        imageUrl: 'https://m.media-amazon.com/images/I/51zuFYrCsJL.SL1500.jpg',
        productlink: "https://amzn.eu/d/5nrwXfz",
        price: 380),
    Product(
        id: "8",
        productRating: "5.0",
        description:
            "Introducing the DRILLY Washable Dog/Cat Bed with Blanket, the ultimate solution for providing comfort and warmth to your pets. This versatile dog bed is suitable for pets of all ages, making it the ideal pet bed for dogs and cats alike. Made with high-quality materials, this pet bed ensures durability and long-lasting use, living up to its reputation as a top-notch bed for dogs. The included cozy blanket adds an extra layer of comfort and promotes a sense of security, making it the perfect pet bed for dogs seeking ultimate relaxation. ",
        name:
            'Velvet Dog Bed with Blanket Washable Soft Reversible Dog Bed for |XXL|3XL|4XL Size Cushion Pillow (S)',
        imageUrl:
            'https://m.media-amazon.com/images/I/51uBJMPA5aL.AC_UL480_FMwebp_QL65.jpg',
        productlink: "https://amzn.eu/d/0lNHG5z",
        price: 1400),

    Product(
        id: "9",
        productRating: "5.0",
        description:
            "Pedigree Puppy Dry Dog Food contains minimum 24% crude protein from quality sources like chicken, min 10% crude fat, and max 5% fibre.This food provides various health benefits. These can include: a healthy digestive system, support for natural defences, healthy muscles, and bones and teeth. It can also contribute to a healthy skin & coat. This food contains vegetable oils for healthy skin. This 3kg pack contains 40* bowls of complete and balanced food for puppies (* example provided for a Pomeranian puppy under 10kg.)",
        name: 'Pedigree Puppy Dry Dog Food, Chicken & Milk, 3kg Pack',
        imageUrl: 'https://m.media-amazon.com/images/I/61IUJIyK2yL._SX679_.jpg',
        productlink: "https://amzn.eu/d/azoOlNL",
        price: 690),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.9,
        crossAxisCount: 5, // Number of columns
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductItem(product: products[index]).translateOnHover;
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});
  void openInWindow(String uri, String name) {
    html.window.open(uri, name);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: InkWell(
        onTap: () {
          //openInWindow(product.productlink, "");
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ProductDetails(
                    product: product,
                  )));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl,
                width: double.infinity, height: 150, fit: BoxFit.contain),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
