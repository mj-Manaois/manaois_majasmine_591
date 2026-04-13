
import 'package:modelhandling/model/product_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class ProductController {
  final supabase = Supabase.instance.client;
  // Get all Products
  Future<List<Product>> getproducts() async {
    final data = await supabase.from('products').select();
    return data.map((item) => Product.fromMap(item)).toList();
  }

  // Add Products
  Future<void> addProduct(Product product) async {
    await supabase.from('products').insert(product.toMap());
  }

  // Delete Products
  Future<void> deleteProduct(int id) async {
    await supabase.from('products').delete().eq('id', id);
  }

  //Calculate  grand total
  double calculateGrandTotal(List<Product> products){
    double total = 0;
    for(var product in products){
      total += product.price * product.quantity;
    }
    return total;
  }

  //count total items
  int countTotalItems(List<Product> products){
    int count = 0;
    for(var product in products){
      count += product.quantity;
    }
    return count;
  }
}