import 'package:batch_2/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {

  String productCollection = "Product Collection";
  ///Create Product
  Future createProduct(ProductModel model)async{
    await FirebaseFirestore.instance
        .collection(productCollection)
        .add(model.toJson());
  }
  ///Update Product
  Future updateProduct(ProductModel model)async{
    await FirebaseFirestore.instance
        .collection(productCollection)
        .doc(model.docId)
        .update({"productName" : model.productName});
  }
  ///Delete Product
  Future deleteProduct(ProductModel model)async{
    await FirebaseFirestore.instance
        .collection(productCollection)
        .doc(model.docId)
        .delete();
  }
  ///Mark Product
  ///Get All Products
  ///Get Out of Stock Products
  ///Get In Stock Products
}