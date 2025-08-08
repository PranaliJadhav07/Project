// import 'package:flutter/material.dart';
// import 'package:project/courses_provider.dart';
// import 'package:provider/provider.dart';

// class DescriptionPage extends StatelessWidget {
//   const DescriptionPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final product = context.watch<ProductProvider>().selectedProduct;
//     if (product == null) {
//       return const Scaffold(body: Center(child: Text("No product Selected")));
//     }

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text("Course Details"),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         elevation: 3,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.network(product.image, height: 300),
//               const SizedBox(height: 20),
//               Text(
//                 product.name,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 "Price: ₹${product.price}",
//                 style: const TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 children: [
//                   Icon(Icons.access_time, color: Colors.black87, size: 20),
//                   SizedBox(width: 5),
//                   Text(
//                     product.duration,
//                     style: const TextStyle(fontSize: 15, color: Colors.black87),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),

//               Text(
//                 product.desc,
//                 style: const TextStyle(fontSize: 15, color: Colors.black87),
//               ),
//               const SizedBox(height: 16),

//               ElevatedButton.icon(
//                 onPressed: () {
//                   // cartProvider.addToCart(product);
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => CheckoutPage()),
//                   // );
//                 },
//                 icon: const Icon(Icons.shopping_bag),
//                 label: const Text("Buy now"),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black, // Navy Blue
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                     vertical: 14,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   textStyle: const TextStyle(fontSize: 16),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/courses_provider.dart';
import 'package:provider/provider.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.watch<CoursesProvider>().selectedProduct;

    if (product == null) {
      return const Scaffold(
        body: Center(child: Text("No product selected")),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Course Details"),
        backgroundColor: Color(0xFFCCF3F1),
        centerTitle: true,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Centered Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  product.image,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Title
            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Price
            Text(
              "Price: ₹${product.price}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),

            // Duration with icon
            Row(
              children: [
                const Icon(Icons.access_time, color: Colors.black87, size: 20),
                const SizedBox(width: 6),
                Text(
                  product.duration,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Description
            const Text(
              "Description:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              product.desc,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 30),

            // Centered Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // cartProvider.addToCart(product);
                  // Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                icon: const Icon(Icons.shopping_bag),
                label: const Text("Buy Now"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
