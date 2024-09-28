// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// Sample Data for Books
class Book {
  final String name;
  final String author;
  final String description;
  final String imageUrl;
  final String downloadUrl; // Add download URL

  Book({
    required this.name,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.downloadUrl, // Include download URL in constructor
  });
}

// Sample Book Data
final List<Book> books = [
  Book(
    name: 'The Mahabharata',
    author: 'Vyasa',
    description:
        'Description: The Mahabharata is one of the longest epic poems in the world, attributed to the sage Vyasa. It narrates the story of the epic conflict between two groups of cousins, the Pandavas and the Kauravas, culminating in the great battle of Kurukshetra. This monumental text explores complex themes such as duty (dharma), morality, justice, and the consequences of ones actions. Central to the narrative are the heroic figures of the Pandavas—Yudhishthira, Bhima, Arjuna, Nakula, and Sahadeva—who embody righteousness, contrasted with the Kauravas, led by the ambitious Duryodhana. A pivotal segment of the Mahabharata is the Bhagavad Gita, a 700-verse dialogue between Lord Krishna and Arjuna, addressing profound philosophical and spiritual questions about duty, righteousness, and the nature of existence. Through its rich tapestry of stories, characters, and moral dilemmas, the Mahabharata serves as a timeless exploration of human nature and ethical conduct.',
    imageUrl: 'asset/mahabharat.jpeg',
    downloadUrl: 'https://play.google.com/store/books/details/Vyasa_The_Mahabharata?id=r-ykAgAAQBAJ&hl=en', // Add download link
  ),
  Book(
    name: 'The Study Quran',
    author: 'Seyyed Hossein Nasr',
    description: 'The Study Quran: A New Translation and Commentary is a comprehensive and scholarly work that offers a contemporary English translation of the Quran, accompanied by extensive commentary and annotations. Edited by Seyyed Hossein Nasr and a team of renowned scholars, this edition aims to provide readers with not only a faithful rendition of the original Arabic text but also deep insights into its meanings, context, and interpretations throughout Islamic history. The commentary addresses theological, historical, and linguistic aspects, facilitating a better understanding of the Qurans verses. Additionally, the book includes references to classical and modern commentaries, making it a valuable resource for both scholars and general readers seeking to engage with the Qurans profound teachings. Through its thoughtful presentation, The Study Quran seeks to bridge the gap between ancient wisdom and contemporary thought, encouraging reflection and dialogue on the spiritual and ethical guidance found within the sacred text.',
    imageUrl: 'asset/quran.jpeg',
    downloadUrl: 'https://play.google.com/store/books/details/Seyyed_Hossein_Nasr_The_Study_Quran?id=GVSzBgAAQBAJ&hl=en',
  ),
  Book(
    name: 'Srimad-Bhagavatam, Second Canto',
    author: 'Swami Prabhupada',
    description: 'Description: The Second Canto of the Srimad-Bhagavatam delves into the themes of cosmic creation and the nature of the Supreme God, Lord Vishnu. It describes the process of creation, highlighting the role of Brahma as the first being and outlining the structure of the universe, including its various planetary systems. This canto emphasizes the importance of devotional service (bhakti) to Lord Vishnu, presenting Him as the Supreme Personality of Godhead and exploring His incarnations and divine qualities. It introduces key philosophical concepts such as Brahman (the ultimate reality), paramatma (the Supersoul), and bhagavan (the personal God), emphasizing the distinction between the impersonal and personal aspects of divinity. Additionally, it encourages devotees to engage in practices like hearing and chanting the glories of God, while imparting moral teachings on righteousness and the consequences of actions. Overall, the Second Canto serves as a profound guide to understanding the relationship between the individual soul and the Supreme, fostering a deeper connection to spiritual practice and realization.',
    imageUrl: 'asset/gita.jpeg',
    downloadUrl: 'https://play.google.com/store/books/details/His_Divine_Grace_A_C_Bhaktivedanta_Swami_Prabhupad?id=AoROCgAAQBAJ&hl=en',
  ),
  Book(
    name: 'King James Version Bible Commentary',
    author: 'Thomas Nelson',
    description: 'The King James Version Bible Commentary is a scholarly resource designed to enhance the understanding of the biblical text as presented in the King James Version (KJV). This commentary provides detailed explanations, historical context, and theological insights for each book of the Bible, making it accessible to both lay readers and scholars alike. It features verse-by-verse commentary, exploring the original languages, cultural backgrounds, and literary styles that inform the scriptures. Additionally, the commentary addresses key themes and doctrines, offering reflections that illuminate the texts relevance to contemporary faith and practice. With a focus on the rich legacy of the KJV, this resource serves as a valuable tool for study, teaching, and personal devotion, helping readers to engage deeply with the timeless truths of the Bible.',
    imageUrl: 'asset/bible.jpeg',
    downloadUrl: 'https://play.google.com/store/books/details/Thomas_Nelson_King_James_Version_Bible_Commentary?id=ewTvVTj6qUUC&hl=en',
  ),
];

// Main Application
class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> filteredBooks = books; // Initially, show all books
  TextEditingController searchController = TextEditingController();

  void _filterBooks(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredBooks = books;
      } else {
        filteredBooks = books
            .where((book) => book.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Text(
          'Book Library',
          style: GoogleFonts.openSans(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70), // Height of the search bar
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: searchController,
                  onChanged: _filterBooks,
                  decoration: const InputDecoration(
                    hintText: 'Search by book name',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none, // Remove borders
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    suffixIcon: Icon(Icons.search, color: Colors.blue), // Custom search icon
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 15, right: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: filteredBooks.length,
          itemBuilder: (context, index) {
            final book = filteredBooks[index];
            return AnimatedCard(book: book);
          },
        ),
      ),
    );
  }
}

// Animated Card Widget
class AnimatedCard extends StatefulWidget {
  final Book book;

  AnimatedCard({required this.book});

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> {
  double _scaleFactor = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scaleFactor = 0.95; // Scale down on tap
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scaleFactor = 1.0; // Scale back to normal
    });
    // Navigate to Detail Screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailScreen(book: widget.book),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_scaleFactor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white, // White background for a clean look
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.book.imageUrl, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.book.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                widget.book.author,
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Book Detail Screen
class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({required this.book});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          book.name,
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(book.imageUrl),
              const SizedBox(height: 20),
              Text(
                book.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'by ${book.author}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              Text(
                book.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                  ),
                onPressed: () => _launchURL(book.downloadUrl), // Launch download URL
                child: const Text('Download Book',style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
