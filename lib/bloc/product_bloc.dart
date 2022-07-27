import 'dart:html';

import 'package:naturopathy/models/product.dart';
import 'package:naturopathy/repositories/product_repository.dart';

class ProductBloc {
  late ProductRepository _productRepository;

  ProductBloc() {
    _productRepository = ProductRepository();
  }

  // Get all products
  getAllProducts() {
    try {
      Stream<Product> products = _productRepository.getAllProducts().asStream();
      return products;
    } catch (err) {
      rethrow;
    }
  }

  // Get products by Id
  getProductsById(String productId) {
    try {
      Stream<Product> productDetails =
          _productRepository.getProductsById(productId).asStream();
      return productDetails;
    } catch (err) {
      rethrow;
    }
  }

  //create a product
  Future<Product> createProduct(FormData data) async {
    try {
      final product = _productRepository.createProduct(data);
      return product;
    } catch (err) {
      rethrow;
    }
  }

  // update individual product
  Future<Product> updateProduct(String productId, FormData data) async {
    try {
      final product = _productRepository.updateProductById(productId, data);
      return product;
    } catch (err) {
      rethrow;
    }
  }

  // delete individual product
  Future<Product> deleteProduct(String productId) async {
    try {
      final product = _productRepository.deleteProductById(productId);
      return product;
    } catch (err) {
      rethrow;
    }
  }
}
