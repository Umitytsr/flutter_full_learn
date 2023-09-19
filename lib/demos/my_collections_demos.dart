import 'package:flutter/material.dart';


class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().padingSymetric,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },)
    ); 
    
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({super.key, required CollectionModel model,}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Expanded(child: Container(color:Colors.red,child: Image.asset(_model.imagePath))),
            Padding(
              padding: PaddingUtility().paddingAll,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth')
                ],
                ),
            )
          ]),
      ),
    );
  }
}

class CollectionItems{
  late final List<CollectionModel> items;
  
  CollectionItems(){
    items=[
    CollectionModel(imagePath: 'assets/png/Apple-logo.png', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/Apple-logo.png', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/Apple-logo.png', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/Apple-logo.png', title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/Apple-logo.png', title: 'Abstract Art', price: 3.4),
    ];
  }
}


class CollectionModel{
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}


class PaddingUtility{
  final padingSymetric = const EdgeInsets.symmetric(horizontal: 10);
  final paddingAll = const EdgeInsets.all(8.0);
}