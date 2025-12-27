import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';
import 'package:project/widget/botMessage.dart';
import 'package:project/widget/userMessage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(174, 248, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.arrow_back_rounded, color: red),
          ),
        ),
        title: const Text(
          'Chat',
          style: TextStyle(
            color: red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                BotMessage(
                  text:'Hello! my name is Food Runs\nbefore we start, what is your name?',
                ),
                const SizedBox(height: 16),
                
                UserMessage(text:'Segun Phillips'),
                const SizedBox(height: 16),
                
                BotMessage(
                  text:'Hello! Segun 😊. I can converse\nin your preferred language. How\nmay I help you today?',
                ),
                const SizedBox(height: 16),
                
                UserMessage(text:'Is there Basmati Rice\nand pepper chicken?'),
              ],
            ),
          ),
          
          // Input field section
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[50],
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Type here...',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}