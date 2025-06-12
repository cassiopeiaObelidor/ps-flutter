import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatalogView(),
    );
  }
}

class CatalogView extends StatefulWidget {
  CatalogView({Key? key}) : super(key: key);

  @override
  _CatalogViewState createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  // Sample product data
  final List<Product> products = [
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/1.jpg'),
    Product(name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/2.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/3.jpg'),
    Product(name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/4.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/5.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/6.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/7.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/8.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/9.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/10.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/11.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/12.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/13.jpg'),
    Product(
        name: 'Sport Jersey', price: 600, imageUrl: 'assets/catalog/14.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/15.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/16.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/17.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/18.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/19.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/20.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/21.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/22.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/23.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/24.jpg'),
    Product(
        name: 'Jersey pattern\n sport design',
        price: 600,
        imageUrl: 'assets/catalog/25.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/26.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/27.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/28.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/29.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/30.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/31.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/32.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/33.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/34.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/35.jpg'),
    Product(
        name: 'Soccer jersey EPS10',
        price: 800,
        imageUrl: 'assets/catalog/36.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/37.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/38.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/39.jpg'),
    Product(name: 'Sponsor', price: 600, imageUrl: 'assets/catalog/40.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/41.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/42.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/43.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/44.jpg'),
    Product(
        name: 'Jersey design EPS 10',
        price: 600,
        imageUrl: 'assets/catalog/45.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/46.jpg'),
    Product(
        name: 'Sport jersey', price: 600, imageUrl: 'assets/catalog/47.jpg'),
    Product(
        name: 'EPS background vector',
        price: 650,
        imageUrl: 'assets/catalog/48.jpg'),
  ];

  late List<Product> filteredProducts;

  @override
  void initState() {
    super.initState();
    filteredProducts = List.from(products);
  }

  void filterProducts(String query) {
    setState(() {
      filteredProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Sample Catalog'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: ProductSearch(products));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          return ProductItem(product: filteredProducts[index]);
        },
      ),
    );
  }
}

class ProductSearch extends SearchDelegate<String> {
  final List<Product> products;

  ProductSearch(this.products);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(); // Not used for this example
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? []
        : products
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index].name),
          onTap: () {
            query = suggestionList[index].name;
            close(context, query);
          },
        );
      },
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Adjusted crossAxisAlignment
        children: [
          Expanded(
            child: Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '\₱${product.price.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
