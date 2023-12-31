
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/features/auth/auth.dart';
import 'package:teslo_shop/features/products/products.dart';

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  
  final accesToken = ref.watch(authProvider).user?.token ?? '';

  final productsRepository = ProductsRepositoryImpl(
    ProductsDataSourceImpl(accessToken: accesToken)
  );
  
  return productsRepository;
});