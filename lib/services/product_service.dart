import 'package:batch_2/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {

  String productCollection = "Product Collection";
  ///Create Product
  Future createProduct(ProductModel model)async{
   return await FirebaseFirestore.instance
        .collection(productCollection)
        .add(model.toJson());
  }
  ///Update Product
  Future updateProduct(ProductModel model)async{
   return await FirebaseFirestore.instance
        .collection(productCollection)
        .doc(model.docId)
        .update({"productName" : model.productName});
  }
  ///Delete Product
  Future deleteProduct(String docID)async{
   return await FirebaseFirestore.instance
        .collection(productCollection)
        .doc(docID)
        .delete();
  }
  ///Mark Product
  Future markProduct(String docID, bool productStock)async{
    return await FirebaseFirestore.instance
        .collection(productCollection)
        .doc(docID)
        .update({"productStock" : productStock});
  }
  ///Get All Products
  Stream<List<ProductModel>> getAllProducts(){
    return FirebaseFirestore.instance
        .collection(productCollection)
        .snapshots()
        .map((productList) => productList.docs
        .map((productJson) => ProductModel.fromJson(productJson.data())
    ).toList());
  }
  ///Get Out of Stock Products
  Stream<List<ProductModel>> getOutOfStockProducts(){
    return FirebaseFirestore.instance
        .collection(productCollection)
        .where("productStock" , isEqualTo: false)
        .snapshots()
        .map((productList) => productList.docs
        .map((productJson) => ProductModel.fromJson(productJson.data())
    ).toList());
  }
  ///Get In Stock Products
  Stream<List<ProductModel>> getInStockProducts(){
    return FirebaseFirestore.instance
        .collection(productCollection)
        .where("productStock" , isEqualTo: true)
        .snapshots()
        .map((productList) => productList.docs
        .map((productJson) => ProductModel.fromJson(productJson.data())
    ).toList());
  }
}