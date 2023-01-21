import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepali_handicraft/product_detail_page.dart';

class Product {
  final String name, image, price, description;
  final int count;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.count,
  });
}

List<Product> products = [
  Product(
    name: 'Dolpo Incense',
    image: 'images/3.webp',
    price: 'Rs: 523',
    description:
        'Dolpo incense is based on a centuries-old formula used in the unique tradition of medical and ritual incense making practiced in the Dolpo region of the Himalayas. This wonderfully aromatic incense can be used to purify your environment, cleanse yourself and others of negative energy, support relaxation and mental well-being. It can be burned while making prayers of offering (puja) and to increase positive, auspicious energy and bring good fortune to homes and offices. It comes with clay incense holder too.',
    count: 1,
  ),
  Product(
    name: 'Hand loomed Yak Wool Blanket',
    image: 'images/2.webp',
    price: 'Rs: 1,307',
    description:
        'Our hand-loomed yak wool blanket is made up of a mixture of 70% Wool and 30% acrylic. It is soft, warm, and quite big enough which can be used as a throw for the sofa or couch. ',
    count: 1,
  ),
  Product(
    name: 'White Howlite Stone Bracelet',
    image: 'images/1.webp',
    price: 'Rs:392',
    description:
        'This White Howlite Stone Bracelet provide soothing energy, healing, improve focus, and assist you on your quest for greater spiritual knowledge.',
    count: 1,
  ),
  Product(
    name: 'Yak Wool Shawl Stripe Beige',
    image: 'images/5.webp',
    price: 'Rs:588',
    description:
        'This is a beautiful hand-loomed yak wool shawl made by local women of Nepal. It is very soft, cozy, and warm. You can use this shawl as a wrap, throw and scarf. Take this shawl wherever you travel because it’s super-light and perfect for winter.',
    count: 1,
  ),
  Product(
    name: 'Hemp Minimal Side Bag',
    image: 'images/4.webp',
    price: 'Rs:784',
    description:
        'This Hemp Minimal Side bag have been beautifully handcrafted with cotton lining inside and is very sturdy. Carry all your essentials for your short trips either to a shopping mall or to your local grocery store. It’s so light you can carry it all day without feeling it’s even there.',
    count: 1,
  ),
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index];
          return Card(
            color: Theme.of(context).primaryColorLight,
            child: ListTile(
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return DetailPage(
                      product: product,
                    );
                  },
                ),
              ),
              title: Text(product.name),
              leading: Hero(
                tag: Text(product.image),
                child: Image.asset(
                  product.image,
                  height: 100,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              subtitle: Text(product.price),
            ),
          );
        },
      ),
    );
  }
}
