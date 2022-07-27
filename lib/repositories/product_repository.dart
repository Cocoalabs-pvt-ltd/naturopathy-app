import 'dart:html';
import 'package:naturopathy/apis/api_provider.dart';
import 'package:naturopathy/apis/apis.dart';
import 'package:naturopathy/models/product.dart';

class ProductRepository {
  ApiProvider? _provider;

  // Get all products
  Future<Product> getAllProducts() async {
    final response =
        await _provider!.getJsonInstance().get(Apis.getAllProducts);
    return Product.fromJson(response.data);
  }

  // Get product details by Id
  Future<Product> getProductsById(String productId) async {
    final productUrl = "${Apis.getAllProducts}/$productId";
    final response = await _provider!.getJsonInstance().get(productUrl);
    return Product.fromJson(response.data);
  }

  // Create products
  Future<Product> createProduct(FormData data) async {
    final response = await _provider!
        .getMultipartInstance()
        .post(Apis.createProduct, data: data);
    return Product.fromJson(response.data);
  }

  //update product
  Future<Product> updateProductById(String productId, FormData data) async {
    final updateProductUrl = "${Apis.getAllProducts}/update/$productId";
    final response = await _provider!
        .getMultipartInstance()
        .post(updateProductUrl, data: data);
    return Product.fromJson(response.data);
  }

  //delete product
  Future<Product> deleteProductById(String productId) async {
    final deleteProductUrl = "${Apis.getAllProducts}/delete/$productId";
    final response =
        await _provider!.getMultipartInstance().post(deleteProductUrl);
    return Product.fromJson(response.data);
  }
}
