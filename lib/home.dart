// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numdadu1 = Random().nextInt(6) + 1;
  int numdadu2 = Random().nextInt(6) + 1;
  int jumlahDadu = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red.shade700, Colors.yellow.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            jumlahDadu == 1
                ? AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: Tween<double>(
                        begin: 0.8,
                        end: 1.0,
                      ).animate(animation),
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: Container(
                    key: ValueKey<int>(numdadu1),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.8),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellowAccent.withOpacity(0.6),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                          spreadRadius: 1,
                        ),
                      ],
                      border: Border.all(
                        color: Colors.yellow.shade600,
                        width: 3,
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/dice$numdadu1.png', scale: 2),
                  ),
                )
                : Column(
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 600),
                      transitionBuilder: (child, animation) {
                        return RotationTransition(
                          turns: Tween<double>(
                            begin: 0.8,
                            end: 1.0,
                          ).animate(animation),
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                      child: Container(
                        key: ValueKey<int>(numdadu1),
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.8),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.yellowAccent.withOpacity(0.6),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                              spreadRadius: 1,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.yellow.shade600,
                            width: 3,
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          'assets/dice$numdadu1.png',
                          scale: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 600),
                      transitionBuilder: (child, animation) {
                        return RotationTransition(
                          turns: Tween<double>(
                            begin: 0.8,
                            end: 1.0,
                          ).animate(animation),
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                      child: Container(
                        key: ValueKey<int>(numdadu2),
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.8),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.yellowAccent.withOpacity(0.6),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                              spreadRadius: 1,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.yellow.shade600,
                            width: 3,
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          'assets/dice$numdadu2.png',
                          scale: 2,
                        ),
                      ),
                    ),
                  ],
                ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (jumlahDadu == 1) {
                          numdadu1 = Random().nextInt(6) + 1;
                        } else {
                          numdadu1 = Random().nextInt(6) + 1;
                          numdadu2 = Random().nextInt(6) + 1;
                        }
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 315,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        'SPIN',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.yellow.shade600,
                        ),
                      ),
                    ),
                  ),
                  jumlahDadu == 1
                      ? GestureDetector(
                        onTap: () {
                          setState(() {
                            jumlahDadu = 2;
                          });
                        },
                        child: SizedBox(
                          width: 50,
                          child: Image.asset('assets/dice2.png'),
                        ),
                      )
                      : GestureDetector(
                        onTap: () {
                          setState(() {
                            jumlahDadu = 1;
                          });
                        },
                        child: SizedBox(
                          width: 50,
                          child: Image.asset('assets/dice1.png'),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
