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
    author: 'Suryakant Tripathi Nirala',
    description:
        'Description: The Mahabharata is one of the longest epic poems in the world, attributed to the sage Vyasa. It narrates the story of the epic conflict between two groups of cousins, the Pandavas and the Kauravas, culminating in the great battle of Kurukshetra. This monumental text explores complex themes such as duty (dharma), morality, justice, and the consequences of ones actions. Central to the narrative are the heroic figures of the Pandavas—Yudhishthira, Bhima, Arjuna, Nakula, and Sahadeva—who embody righteousness, contrasted with the Kauravas, led by the ambitious Duryodhana. A pivotal segment of the Mahabharata is the Bhagavad Gita, a 700-verse dialogue between Lord Krishna and Arjuna, addressing profound philosophical and spiritual questions about duty, righteousness, and the nature of existence. Through its rich tapestry of stories, characters, and moral dilemmas, the Mahabharata serves as a timeless exploration of human nature and ethical conduct.',
    imageUrl: 'asset/b12.jpeg',
    downloadUrl: 'https://www.google.co.in/books/edition/Mahabharat/AXDamVM8gEUC?hl=en&gbpv=1&dq=mahabharat&pg=PP1&printsec=frontcover', // Add download link
  ),
  Book(
    name: 'Introduction to the Study of The Holy Quran',
    author: 'Harzit Mirza Bashir',
    description: 'Description: "Introduction to the Study of The Holy Quran" by Muhammad Abdul Haleem provides a comprehensive overview of the Quran, its context, themes, and significance in Islamic tradition. The book aims to enhance readers understanding of the Quran as a sacred text, exploring its historical background, linguistic style, and the various interpretations that have emerged over time.\nHaleem discusses the structure of the Quran, its major themes—such as justice, compassion, and the relationship between God and humanity—and the impact it has had on Muslim culture and spirituality. The author also addresses the challenges of translation and interpretation, emphasizing the importance of context in understanding the Quran’s messages. Overall, this introduction serves as a valuable resource for anyone seeking to engage deeply with the Quran, fostering a greater appreciation of its literary and spiritual dimensions.',
    imageUrl: 'asset/b14.jpeg',
    downloadUrl: 'https://www.google.co.in/books/edition/Introduction_to_the_Study_of_The_Holy_Qu/Ca-6EAAAQBAJ?hl=en&gbpv=1&dq=quran&pg=PA1&printsec=frontcover',
  ),
  Book(
    name: 'The Bible',
    author: 'Andrew Ollerton',
    description: 'Description: The King James Version Bible Commentary is a scholarly resource designed to enhance the understanding of the biblical text as presented in the King James Version (KJV). This commentary provides detailed explanations, historical context, and theological insights for each book of the Bible, making it accessible to both lay readers and scholars alike. It features verse-by-verse commentary, exploring the original languages, cultural backgrounds, and literary styles that inform the scriptures. Additionally, the commentary addresses key themes and doctrines, offering reflections that illuminate the texts relevance to contemporary faith and practice. With a focus on the rich legacy of the KJV, this resource serves as a valuable tool for study, teaching, and personal devotion, helping readers to engage deeply with the timeless truths of the Bible.',
    imageUrl: 'asset/b13.jpeg',
    downloadUrl: 'https://www.google.co.in/books/edition/The_Bible_A_Story_that_Makes_Sense_of_Li/jZH3DwAAQBAJ?hl=en&gbpv=1&dq=bible&pg=PP1&printsec=frontcover',
  ),
  
   Book(
    name: 'Interpretation of Dreams',
    author: 'Sigmund Freud',
    description:
        'Description: "Interpretation of Dreams" by Sigmund Freud explores the idea that dreams are a window into our unconscious mind, revealing hidden desires and unresolved conflicts. Freud posits that dreams serve as a form of wish fulfillment, where repressed thoughts and emotions manifest in symbolic ways. He introduces the concepts of manifest content (the actual storyline of the dream) and latent content (the underlying meaning). Through this lens, dreams can be analyzed to uncover deeper psychological truths, making them crucial for understanding human behavior and mental processes. Freuds work laid the foundation for modern psychoanalysis, emphasizing the importance of the unconscious in shaping our thoughts and actions.',
    imageUrl: 'asset/freudo.jpeg',
    downloadUrl: 'https://www.google.co.in/books/edition/The_Interpretation_of_Dreams/-pB1UoFnjZcC?hl=en&gbpv=1&dq=the%20interpretation%20of%20dreams&pg=PR11&printsec=frontcover', // Add download link
  ),
  Book(
    name: 'Awaken The Giant Within',
    author: 'Tony Robbins',
    description: 'Description: "Awaken the Giant Within" by Tony Robbins is a motivational guide aimed at empowering individuals to take control of their lives and unlock their full potential. Robbins emphasizes the importance of personal responsibility and the ability to change ones emotional state, beliefs, and behaviors. He introduces practical strategies for setting clear goals, making effective decisions, and harnessing the power of language and emotion to create lasting change. Through personal anecdotes and actionable techniques, Robbins encourages readers to overcome limiting beliefs and cultivate a mindset of success, ultimately guiding them toward a more fulfilling and purposeful life.',
    imageUrl: 'asset/book4.jpeg', 
    downloadUrl: 'https://books.google.co.in/books?id=8TyZAoyMiDsC&printsec=frontcover&dq=awaken+the+giant+within&hl=en&newbks=1&newbks_redir=0&sa=X&redir_esc=y#v=onepage&q&f=false'
    ),
    Book(
    name: 'Bhagavad-gita As It Is',
    author: 'Swami Prabhupada',
    description: '"Description: Bhagavad-gita As It Is," translated by A.C. Bhaktivedanta Swami Prabhupada, presents the ancient Hindu scripture as a conversation between Prince Arjuna and Lord Krishna on the battlefield of Kurukshetra. This sacred text addresses profound philosophical and spiritual questions, focusing on duty, righteousness, and the nature of reality. Prabhupada’s translation emphasizes the importance of devotion (bhakti) to God and the practice of yoga as paths to spiritual realization. The text explores concepts such as the immortality of the soul, the significance of selfless action, and the pursuit of knowledge. Ultimately, it serves as a guide for living a life aligned with spiritual principles, offering insights into achieving inner peace and fulfillment.',
    imageUrl: 'asset/book5.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Bhagavad_gita_As_It_Is/dSA3hsIq5dsC?hl=en&gbpv=1&dq=bhagavad%20gita&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Zen: The Art of Simple Living',
    author: 'Shunmyo Masuno',
    description: 'Description: "Zen: The Art of Simple Living" by Shunmyo Masuno is a guide to embracing simplicity and mindfulness in everyday life through the principles of Zen Buddhism. The book offers practical advice and insights aimed at reducing stress and enhancing well-being. Masuno emphasizes the importance of living in the present moment, cultivating a sense of awareness, and finding beauty in simplicity. Through meditative practices, mindful routines, and reflections on nature, the author encourages readers to declutter their minds and surroundings, leading to a more peaceful and meaningful existence. This work serves as an accessible introduction to Zen philosophy, promoting a lifestyle that values tranquility, clarity, and harmony.',
    imageUrl: 'asset/book6.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Zen_The_Art_of_Simple_Living/eHxqDwAAQBAJ?hl=en&gbpv=1&dq=zen%20the%20art%20of%20simple%20living&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Transactional Analysis in Psychotherapy',
    author: 'Eric Berne',
    description: 'Description: Transactional Analysis (TA) in psychotherapy, developed by Eric Berne, is a psychological theory and therapeutic approach that examines interpersonal communication and relationships. It focuses on the concept of "ego states," which are defined as the Parent, Adult, and Child aspects of the psyche. These states influence how individuals think, feel, and interact with others.\nTA helps clients understand their behavior patterns and communication styles by analyzing transactions—interactions between people. The goal is to promote awareness and facilitate healthier interactions by identifying and changing negative patterns rooted in past experiences. By fostering a strong Adult ego state, clients can make informed decisions and improve their relationships. Overall, TA provides a structured framework for personal growth and effective communication, empowering individuals to achieve greater emotional well-being.',
    imageUrl: 'asset/book7.jpeg', 
    downloadUrl: 'https://books.google.co.in/books?id=hLG3zgEACAAJ&dq=eric+berne&hl=en&newbks=1&newbks_redir=0&sa=X&ved=2ahUKEwjnmraPvOWIAxXKcGwGHRxxEZIQ6AF6BAgLEAI'
    ),

  Book(
    name: 'Attitude Is Everything',
    author: 'Jeff Keller',
    description: 'Description: "Attitude Is Everything: Change Your Attitude ... Change Your Life!" by Jeff Keller is an inspiring self-help book that emphasizes the profound impact of mindset on personal and professional success. Keller argues that a positive attitude is essential for overcoming challenges and achieving goals. Through practical advice, relatable anecdotes, and actionable steps, he guides readers in cultivating a more optimistic outlook and shifting their perspective on adversity.\nThe book covers key concepts such as the power of positive thinking, the importance of self-belief, and the role of personal responsibility in shaping one’s experiences. Keller encourages readers to take charge of their attitudes, highlighting that by changing their thoughts and beliefs, they can transform their lives. Ultimately, the book serves as a motivational roadmap for anyone seeking to enhance their mindset and create a fulfilling life.',
    imageUrl: 'asset/b8.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Attitude_Is_Everything/FaRLDQAAQBAJ?hl=en&gbpv=1&dq=attitude%20is%20everything&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Learning to Silence the Mind',
    author: 'Osho',
    description: 'Description: "Learning to Silence the Mind" by Tessa Watt is a guide that explores the practice of quieting mental chatter and cultivating inner peace through mindfulness and meditation. The book emphasizes the importance of silence in achieving clarity and emotional well-being. Watt provides practical techniques and exercises designed to help readers quiet their thoughts, reduce stress, and enhance focus.\nBy incorporating insights from various meditation traditions, the author offers a holistic approach to managing anxiety and fostering a deeper connection to oneself. The book encourages readers to embrace stillness and develop a more conscious awareness of their thoughts and feelings. Ultimately, it serves as a valuable resource for anyone seeking to create a more peaceful and centered life.',
    imageUrl: 'asset/b9.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Learning_to_Silence_the_Mind/eyxolsdDbH0C?hl=en&gbpv=1&dq=learning%20to%20silence%20the%20mind&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'The Awakening of Intelligence',
    author: 'J. KRISHNAMURTI',
    description: 'Description: "The Awakening of Intelligence" by Jiddu Krishnamurti is a thought-provoking exploration of human consciousness and the nature of intelligence. In this work, Krishnamurti challenges readers to question their assumptions, beliefs, and conditioning, urging them to look beyond traditional educational and social frameworks. He emphasizes the importance of self-awareness and understanding ones own thought processes to achieve true intelligence.\nThrough a series of dialogues and reflections, Krishnamurti addresses themes such as the nature of thought, perception, and the relationship between the individual and society. He advocates for a transformation of the mind that goes beyond intellectual understanding, promoting a holistic awakening that encompasses emotional and spiritual dimensions. Ultimately, the book serves as an invitation to engage deeply with oneself and the world, fostering a greater sense of clarity, freedom, and insight.',
    imageUrl: 'asset/b10.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Awakening_of_Intelligence/4R-6EAAAQBAJ?hl=en&gbpv=1&dq=the+awakening+of+intelligence&printsec=frontcover'
    ),

  Book(
    name: 'Psychology from an Empirical Standpoint',
    author: 'Franz Brentano',
    description: 'Description: "Psychology from an Empirical Standpoint" by Wilhelm Wundt is a foundational text in the field of psychology, emphasizing a scientific approach to understanding human behavior and consciousness. Wundt, often referred to as the father of experimental psychology, advocates for empirical methods to study mental processes, distinguishing psychology as a distinct discipline from philosophy.\nIn this work, Wundt explores concepts such as sensation, perception, and emotion, employing rigorous experimental techniques to gather data. He argues for the importance of introspection combined with experimental observation to achieve a comprehensive understanding of psychological phenomena. The text underscores the necessity of a systematic, scientific methodology in psychology, laying the groundwork for future research and the development of various psychological schools of thought. Ultimately, Wundts work champions the integration of empirical research and theoretical analysis in the pursuit of knowledge about the human mind.',
    imageUrl: 'asset/b11.png', 
    downloadUrl: 'https://www.google.co.in/books/edition/Psychology_from_an_Empirical_Standpoint/caK-s6i4yDwC?hl=en&gbpv=1&dq=psychology%20from%20an%20empirical%20standpoint&pg=PA1&printsec=frontcover'
    ),

  Book(
    name: 'The Basic Writings of C.G. Jung',
    author: 'C. G. Jung',
    description: 'Description: "The Basic Writings of C.G. Jung" is a comprehensive collection of key texts by the influential Swiss psychiatrist and psychoanalyst Carl Gustav Jung. This anthology encompasses Jungs foundational concepts, including his theories of the collective unconscious, archetypes, and individuation. The writings explore the interplay between the conscious and unconscious mind, the significance of dreams, and the role of mythology in understanding human behavior.\nJungs work emphasizes the importance of self-discovery and the integration of different aspects of the psyche for achieving psychological wholeness. Through essays and excerpts from his major works, the collection highlights Jungs innovative approach to psychology, spirituality, and culture. This compilation serves as an essential resource for students and scholars seeking to understand Jungs profound impact on psychology and the exploration of the human experience.',
    imageUrl: 'asset/b15.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Basic_Writings_of_C_G_Jung/G-wWEAAAQBAJ?hl=en&gbpv=1&dq=carl%20jung%20books&pg=PR1&printsec=frontcover'
    ),

  Book(
    name: 'The Path of Yoga',
    author: 'Osho',
    description: 'Description: "The Path of Yoga" by Osho explores the transformative practice of yoga as a holistic approach to achieving spiritual awakening and inner peace. Osho emphasizes that yoga is not just a physical exercise but a profound journey that encompasses the body, mind, and spirit. He discusses various yogic traditions, including Hatha Yoga, Bhakti Yoga, and Kundalini Yoga, highlighting their unique practices and philosophical underpinnings.Through his teachings, Osho encourages readers to embrace meditation, mindfulness, and self-awareness as essential components of the yogic path. He also addresses common misconceptions about yoga, emphasizing the importance of personal experience and inner exploration. The book serves as both a guide and an invitation to delve deeper into the spiritual dimensions of yoga, encouraging individuals to discover their true selves and cultivate a deeper connection with the universe.',
    imageUrl: 'asset/b16.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Path_of_Yoga/lI91CAAAQBAJ?hl=en&gbpv=1&dq=patanjali%20yoga%20sutras%20osho&pg=PA1&printsec=frontcover'
    ),

  Book(
    name: 'Thinking, Fast and Slow',
    author: 'Daniel Kahneman',
    description: 'Description: "Thinking, Fast and Slow" by Daniel Kahneman explores the dual systems of thought that shape our decision-making processes. Kahneman, a Nobel laureate in economics, identifies two modes of thinking: "System 1," which is fast, intuitive, and emotional, and "System 2," which is slower, more deliberate, and logical. \nThe book delves into how these systems influence our judgments and choices, often leading to cognitive biases and errors. Kahneman discusses various concepts such as heuristics, loss aversion, and the impact of framing on decision-making. By examining both the strengths and weaknesses of our thought processes, he highlights the complexities of human behavior and the ways in which we can improve our thinking.\nOverall, "Thinking, Fast and Slow" provides valuable insights into the psychology of decision-making, urging readers to become more aware of their cognitive patterns and the factors that influence their choices.',
    imageUrl: 'asset/b17.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Thinking_Fast_and_Slow/oV1tXT3HigoC?hl=en&gbpv=1&dq=thinking%20fast%20and%20slow&pg=PA1&printsec=frontcover'
    ),

  Book(
    name: 'The Dhammapada',
    author: 'No Information',
    description: 'Description: "The Dhammapada" is a revered collection of verses attributed to the Buddha, encapsulating the core teachings of Buddhism in a poetic and accessible format. Comprising 423 verses, it addresses key concepts such as ethics, mindfulness, and the path to enlightenment. The text emphasizes the importance of mental discipline, compassion, and the cultivation of wisdom as essential for overcoming suffering.\nOrganized into themes, the verses offer practical guidance on living a virtuous life, understanding the nature of reality, and achieving inner peace. The Dhammapada highlights the significance of personal responsibility in shaping ones destiny and underscores the transformative power of right thought and action. As one of the most important texts in the Pali Canon, it serves as a timeless source of inspiration for those seeking spiritual growth and understanding.',
    imageUrl: 'asset/b18.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Dhammapada/tuibMIJPz_kC?hl=en&gbpv=1&dq=dhammapada&pg=PT1&printsec=frontcover'
    ),

  Book(
    name: 'The Secret',
    author: 'Rhonda Byrne',
    description: 'Description: "The Secret" by Rhonda Byrne explores the concept of the Law of Attraction, which posits that positive thinking and visualization can attract success, happiness, and abundance into ones life. The book emphasizes the power of belief and the importance of maintaining a positive mindset to manifest desires and achieve personal goals.\nByrne presents a variety of anecdotes and testimonials from individuals who have transformed their lives through these principles. She outlines practical techniques, such as affirmations and visualization exercises, to help readers focus their thoughts and intentions effectively. The central message of "The Secret" is that individuals can create their own reality by harnessing the power of their thoughts, encouraging a proactive approach to life and personal fulfillment.',
    imageUrl: 'asset/b19.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Secret/MagHtB5NKVcC?hl=en&gbpv=1&dq=the%20secret&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'The Power of Your Subconscious Mind',
    author: 'Joseph Murphy',
    description: 'Description: "The Power of Your Subconscious Mind" by Joseph Murphy explores the profound influence of the subconscious mind on our thoughts, behaviors, and overall well-being. Murphy argues that by understanding and harnessing the power of the subconscious, individuals can transform their lives, achieve their goals, and overcome obstacles.\nThe book delves into techniques for reprogramming the subconscious through positive affirmations, visualization, and meditation. Murphy explains how our beliefs and thoughts shape our reality, encouraging readers to replace negative patterns with empowering ones. He provides practical exercises and examples to illustrate how tapping into the subconscious can lead to success, improved health, and personal happiness. Ultimately, the book serves as a guide to unlocking the potential within, fostering a greater sense of control and fulfillment in life.',
    imageUrl: 'asset/b20.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Power_of_Your_Subconscious_Mind/VYrTDwAAQBAJ?hl=en&gbpv=1&dq=the%20power%20of%20subconscious%20mind&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'The Psychopathology of Everyday Life',
    author: 'Sigmund Freud',
    description: 'Description: "The Psychopathology of Everyday Life" by Sigmund Freud examines the unconscious influences on everyday behavior, exploring how slips of the tongue, forgetfulness, and minor mistakes reveal deeper psychological conflicts. Freud introduces the concept of the "Freudian slip," suggesting that these seemingly trivial errors are manifestations of repressed thoughts and emotions.\nThrough detailed case studies and analyses, Freud illustrates how our unconscious mind affects our daily experiences, often reflecting unresolved desires or anxieties. The book emphasizes the significance of these moments in understanding human psychology, highlighting the interplay between the conscious and unconscious. Ultimately, it serves as a foundational text in psychoanalysis, demonstrating how everyday occurrences can provide insight into the complexities of the human psyche.',
    imageUrl: 'asset/b21.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/The_Psychopathology_of_Everyday_Life/XJAEWCaZepAC?hl=en&gbpv=1&dq=psychopathology%20of%20everyday%20life&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Tao Te Ching',
    author: 'Victor H. Mair',
    description: 'Description: "Tao Te Ching: The Classic Book of Integrity and The Way" is a revered text attributed to Laozi, central to Taoist philosophy. This ancient work consists of 81 chapters, blending poetry and prose to convey profound insights about life, harmony, and the nature of existence.\nThe "Tao Te Ching" emphasizes the concept of "Tao" (the Way) as the underlying principle of the universe, advocating for a life of simplicity, humility, and balance. It teaches the importance of aligning oneself with the natural order, embracing non-action (wu wei) as a way to achieve true effectiveness without force or struggle.\nThrough its paradoxical statements and rich imagery, the text explores themes of integrity, wisdom, and the interconnectedness of all things. It serves as a guide for personal and spiritual growth, encouraging readers to cultivate inner peace and live in harmony with the world around them. This classic work continues to inspire those seeking deeper understanding and a more meaningful way of life.',
    imageUrl: 'asset/b22.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Tao_Te_Ching/uE7thB_vwQQC?hl=en&gbpv=1&dq=tao%20te%20ching&pg=PR3&printsec=frontcover'
    ),

  Book(
    name: 'Mind Is Your Business',
    author: 'Sadhguru',
    description: '"Mind Is Your Business" by Sadhguru is a thought-provoking exploration of the minds role in shaping our experiences and perceptions. In this book, Sadhguru emphasizes that understanding and managing the mind is crucial for personal growth and fulfillment.\nHe discusses how the mind can either empower us or lead us into confusion and suffering, highlighting the importance of mindfulness and self-awareness. Through practical insights and teachings, Sadhguru encourages readers to take charge of their thoughts and emotions, cultivating a sense of inner clarity and peace.\nThe book serves as a guide for navigating the complexities of the mind, urging individuals to recognize that their true potential lies beyond their mental limitations. Ultimately, Sadhguru inspires readers to transform their relationship with their minds to lead more purposeful and vibrant lives.',
    imageUrl: 'asset/b23.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Mind_Is_Your_Business/Lt0PEAAAQBAJ?hl=en&gbpv=1&dq=mind%20is%20your%20business&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Aesops Fables',
    author: 'Aesop',
    description: '"Aesops Fables," attributed to the ancient Greek storyteller Aesop, is a collection of short, allegorical tales that feature animals as characters, each illustrating moral lessons. These fables often convey timeless wisdom about human behavior and ethical conduct, making them accessible and relevant across cultures and generations.\nEach story typically concludes with a moral, such as "slow and steady wins the race" from "The Tortoise and the Hare," or "dont count your chickens before they hatch" from "The Goose That Laid the Golden Eggs." Aesops clever use of anthropomorphism allows readers to reflect on their own lives and the nature of society through the actions and decisions of the animal characters.\nThe simplicity and depth of these fables have secured their place in literary history, providing both entertainment and moral guidance for readers of all ages.',
    imageUrl: 'asset/b24.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Aesop_s_Fables/jsfMkK8JL9QC?hl=en&gbpv=1&dq=aesop''s%20fables&pg=PP1&printsec=frontcover'
    ),

  Book(
    name: 'Atomic Habits',
    author: 'James Clear',
    description: '"Atomic Habits" by James Clear is a practical guide that highlights the transformative power of small, incremental changes in building good habits and breaking bad ones. Clear introduces a framework centered around four key principles: Cue, Craving, Response, and Reward, which help readers understand how habits are formed and maintained. He emphasizes the idea of making just 1% improvements over time, suggesting that these tiny changes can lead to significant results. Additionally, the book explores the importance of identity in habit formation, encouraging readers to focus on becoming the person they aspire to be rather than merely chasing specific goals. With actionable strategies and relatable anecdotes, "Atomic Habits" provides a comprehensive approach to enhancing daily routines and achieving lasting personal growth.',
    imageUrl: 'asset/b25.jpeg', 
    downloadUrl: 'https://www.google.co.in/books/edition/Atomic_Habits/Jrx6EAAAQBAJ?hl=en&gbpv=1&dq=Atomic%20Habits&pg=PP1&printsec=frontcover'
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
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (screenWidth < 600) ? 2 : 3, // Responsive grid
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
                child: const Text(
                  'Download Book',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
