// import 'package:five_o_four/cubits/auth/auth_cubit.dart';
// import 'package:five_o_four/cubits/auth/auth_state.dart';
// import 'package:five_o_four/screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _nameController = TextEditingController();
//   final _mobileController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _mobileController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final colorScheme = theme.colorScheme;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Sign Up",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: colorScheme.primary,
//         elevation: 0,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 colorScheme.primary,
//                 colorScheme.secondary,
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//       ),
//       body: BlocConsumer<AuthCubit, AuthState>(
//         listener: (context, state) {
//           if (state.isSignedUp) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (_) => HomeScreen()),
//             );
//           }
//         },
//         builder: (context, state) {
//           if (state.isLoading) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircularProgressIndicator(
//                     valueColor:
//                         AlwaysStoppedAnimation<Color>(colorScheme.primary),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     "Saving your details...",
//                     style: theme.textTheme.titleMedium,
//                   ),
//                 ],
//               ),
//             );
//           }

//           return SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.all(24),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Join Your Vocabulary Journey",
//                     style: theme.textTheme.titleLarge!.copyWith(
//                       fontWeight: FontWeight.bold,
//                       color: colorScheme.primary,
//                     ),
//                   ),
//                   SizedBox(height: 24),
//                   Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 8,
//                           offset: Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: TextField(
//                       controller: _nameController,
//                       decoration: InputDecoration(
//                         labelText: "Name",
//                         labelStyle: TextStyle(
//                           color: colorScheme.onSurface.withOpacity(0.6),
//                         ),
//                         filled: true,
//                         fillColor: theme.cardColor,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color: colorScheme.primary,
//                             width: 2,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 8,
//                           offset: Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: TextField(
//                       controller: _mobileController,
//                       decoration: InputDecoration(
//                         labelText: "Mobile Number",
//                         labelStyle: TextStyle(
//                           color: colorScheme.onSurface.withOpacity(0.6),
//                         ),
//                         filled: true,
//                         fillColor: theme.cardColor,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color: colorScheme.primary,
//                             width: 2,
//                           ),
//                         ),
//                       ),
//                       keyboardType: TextInputType.phone,
//                     ),
//                   ),
//                   SizedBox(height: 32),
//                   Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 8,
//                           offset: Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           context.read<AuthCubit>().signUp(
//                                 name: _nameController.text,
//                                 mobile: _mobileController.text,
//                               );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                           backgroundColor: colorScheme.primary,
//                           foregroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
