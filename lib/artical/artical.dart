// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// Sample Data for Artifacts
class Artifact {
  final String name;
  final String description;
  final String imageUrl;
  final String article;
  final String DwonUrl;

  Artifact(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.article,
      required this.DwonUrl
      });
}

// Sample Artifact Data
final List<Artifact> artifacts = [
  Artifact(
      name: 'The roots of mental illness',
      description:
          'Diagnosing mental illness isnt like diagnosing other chronic diseases. Heart disease is identified with the help of blood tests and electrocardiograms. Diabetes is diagnosed by measuring blood glucose levels. But classifying mental illness is a more subjective endeavor. No blood test exists for depression; no X-ray can identify a child at risk of developing bipolar disorder.',
      imageUrl: 'https://www.apa.org/images/2012-06-roots_tcm7-136663.jpg',
      article: 'Diagnosing mental illness isn'
          't like diagnosing other chronic diseases. Heart disease is identified with the help of blood tests and electrocardiograms. Diabetes is diagnosed by measuring blood glucose levels. But classifying mental illness is a more subjective endeavor. No blood test exists for depression; no X-ray can identify a child at risk of developing bipolar disorder. At least, not yet.\n'
          '\nThanks to new tools in genetics and neuroimaging, scientists are making progress toward deciphering details of the underlying biology of mental disorders. Yet experts disagree on how far we can push this biological model. Are mental illnesses simply physical diseases that happen to strike the brain? Or do these disorders belong to a class all their own?\n'
          '\nEric Kandel, MD, a Nobel Prize laureate and professor of brain science at Columbia University, believes its all about biology. "All mental processes are brain processes, and therefore all disorders of mental functioning are biological diseases," he says. "The brain is the organ of the mind. Where else could [mental illness] be if not in the brain?"\n'
          '\nThat viewpoint is quickly gaining supporters, thanks in part to Thomas R. Insel, MD, director of the National Institute of Mental Health, who has championed a biological perspective during his tenure at the agency.\n'
          '\nTo Insel, mental illnesses are no different from heart disease, diabetes or any other chronic illness. All chronic diseases have behavioral components as well as biological components, he says. "The only difference here is that the organ of interest is the brain instead of the heart or pancreas. But the same basic principles apply."\n'
          '\nPsychological Factors\n'
          '\nPsychological factors encompass individual traits and past experiences. Personality traits, such as high levels of neuroticism or low resilience, can predispose individuals to mental health issues. Moreover, cognitive patterns—how one thinks about themselves and their world—can contribute to conditions like anxiety and depression.\Traumatic experiences, particularly in childhood, are significant predictors of later mental health problems. Adverse events, such as abuse, neglect, or loss of a loved one, can have lasting psychological effects, shaping an individuals ability to cope with stress and adversity.'
          '\nEnvironmental Factors\n'
          '\nThe environment in which a person lives also plays a crucial role in mental health. Factors such as socioeconomic status, community support, and access to healthcare significantly impact an individuals mental well-being. Poverty, for instance, is associated with higher rates of mental illness due to the stressors it brings, such as instability, lack of resources, and social isolation.\nSocial relationships and support systems are vital as well. Strong connections can act as protective factors, while social isolation or bullying can exacerbate mental health issues.',
      DwonUrl: 'https://www.apa.org/monitor/2012/06/roots'),
  Artifact(
      name: 'What Causes Mental Illness?',
      description:
          'A few years back in a sathsang you mentioned that the highest point of human suffering is mental illness. What causes a person to suddenly have a mental illness? And is there any possibility or hope that they would come out of their illness and off medication?',
      imageUrl:
          'https://static.sadhguru.org/d/46272/1633178534-1633178533866.jpg',
      article:
          'In this weeks Spot, Sadhguru addresses the causes of mental illness in todays society, and how one can understand and nurture those around them. "If you have witnessed it, you know there is no other suffering like mental illness because the human mind has enormous capabilities. If these capabilities work in your favor, life becomes fantastic. If they work against you, there is no escape because the stimuli for suffering is not even coming from outside."\n'
          '\nf you have witnessed it, you know there is no other suffering like mental illness because the human mind has enormous capabilities. If these capabilities work in your favor, life becomes fantastic. If they work against you, there is no escape because the stimuli for suffering is not even coming from outside. If the stimuli for your suffering were coming from your neighbor, your mother-in-law or your boss, you could run away. Nobody can cause suffering to you, mentally. They do things and you react to it in a certain way. But if you come to a place where, without anyone doing anything, suffering is simply happening, it is a psychological condition.\n'
          '\n How does one come out of it? It depends on the level of damage. There are some who can come out of it, but in some pathological cases, it would have manifested in a physical form in the brain. Such conditions have to be supported chemically from outside. Sedating it is largely what people are doing, but you cannot just put down one aspect of your mind or brain – the whole system gets affected.\n'
          '\nThe line between sanity and insanity is very thin. Many of you enjoy crossing it.  Suppose you burst out on someone in anger and they got scared and did what you wanted. You will say, “You know what? I got really mad at him and he immediately squirmed and did what I wanted.” You got mad and you came back, so you seem to enjoy it. Suppose you got mad and did not come back, then it is a different matter.\n'
          '\nYou keep crossing the line with anger, hatred, jealousy, alcohol or drugs. You are crossing the line of sanity, enjoying the little bit of madness that you go through, and coming back. I want you to know that many of the people who have lost it were perfectly “normal” people like you. Just one day, it is gone. Something fused out and suddenly they are on the streets.\n'
          '\nIt is like how the physical body can get ailments. You could be fine today, but tomorrow morning your doctor tells you something. These things happen to people every day. Similar things can happen to the mind. At least if it happens to your body, you will get sympathy from everyone around you. When it happens to your mind, you do not get sympathy; no one wants to be anywhere around you because it is very difficult. You do not know when they are acting up or when it is for real – you cannot make a judgment. When they are acting up, you want to get tough on them, when it is real, you have to be compassionate with them. It is a tightrope walk; it is not easy. It is painful for that person and even more painful for people around them.\n'
          '\n We need to build structures in society where the margin for mental illness is very low. Why I go back pining for the culture that existed in this land is because about 200 to 300 years ago, there were hardly any mentally ill people in this country simply because of certain structures in the society. Slowly, without awareness, we are pulling it down. Today, even in villages, there are psychologically broken people, which was never so in the past. If it happened, it was an extremely negligible percentage of people. The percentage is increasing. You can distinctly see that in so-called “affluent” societies, the percentage is becoming quite high. This is because a human being is a social animal unless he transcends certain things. Either we should work for transcendence or we should create a society which is supportive, which is not demanding. Right now, the social structures that we have created are horribly demanding\n\nThis is happening to urban India, but it has happened even more so in the West. If you want to live in America, even if you fast for the next 30 days, your bills will still add up to 3,000 dollars. The society is structured in such a way that it is very demanding on the individual person – someone cannot take a break and just sit down.  Not everyone may be capable of continually being on. A whole lot of people need to withdraw from certain things. If there is sufficient sadhana in their life, then you can drive them 24 hours, 365 days because life is brief and we don’t want to sit back. But if there is no sadhana, it is very important that people have space and time.\n\nWe have created societies which are a constant challenge to live in, always in a mode of competition. There is something called “fight and flight” response within the human being. Irresponsibly, people are using the words, “I like the adrenaline.” You do not understand what adrenaline is. Adrenaline is an emergency device in the system. If a tiger comes at you, adrenaline pumps so that you can escape. But if you simply pump adrenaline and go walking in New York City, you will burst. You are not supposed to be in that state all the time. If you do not die, you will break.\n\nOur education systems are horribly demanding. Not everyone is geared for it. For someone, it may be a cakewalk. For somebody else, they may read one sentence 25 times and not get it, but they may be capable of doing something else. “No, we don’t allow them to do something else. They must do this first.”  There are so many horribly cruel structures – these are not structures for the well-being of the human being. We are trying to manufacture cogs for a larger machine we have built. We want the machine to live; we do not care what happens to the individual human being. We need to produce parts for that big machine we have built which is fake; it may collapse any time.  If you are not made of the material to make a proper part for that big machine, you will break in so many ways.\n',
      DwonUrl:
          'https://isha.sadhguru.org/en/wisdom/sadhguru-spot/understanding-mental-illness'),
  Artifact(
    name: 'Over-obsession With Happiness Is Misery: Gaur Gopal Das',
    description:
        'The World Health Organisation (WHO) data indicated that in 2019, one in every eight people around the world was suffering from a mental disorder, anxiety, or depressive disorder. This meant approximately 970 million people around the world were impacted. ',
    DwonUrl: '',
    imageUrl:
        'https://static.businessworld.in/1678813842_FipU4c_PhotoGrid_1678813767074.jpg',
    article:
        'The World Health Organisation (WHO) data indicated that in 2019, one in every eight people around the world was suffering from a mental disorder, anxiety, or depressive disorder. This meant approximately 970 million people around the world were impacted. The pandemic drove this number up by 26 per cent within a year. The thing about anxiety is that it is sneaky, one doesn’t realise when it creeps up on you and becomes a way of life. There is a similar pattern with stress, and over time we become ‘okay’ with it.\n'
        '\nDepression too has roots in everyday life stressors in addition to genetics and other factors. The key here is awareness and conversations about not feeling okay. There is help available and it is generally quite effective as long as the issues are identified early. India too has seen improvement, society has been transforming and conversations about stress, anxiety, and depression have gained prominence. According to the WHO data, economic loss due to mental health conditions, between 2012-2030, is estimated at USD 1.03 trillion. As per the national mental health programme 6-7 per cent of the Indian population suffers from mental health issues. A Blume report suggests the mental health market in India is around USD 3 billion, with self-help apps constituting USD 130 million, online therapy USD 1700 million, and offline therapy USD 400 million for the adult age group between the ages of 25-65.\n'
        '\nGaur Gopal Das, the Indian monk, lifestyle coach, and motivational speaker in an exclusive conversation with Dr  Annurag Batra, Editor-in-Chief, BW Businessworld, spoke about the inspiration behind his app, Monkify. The app provides affirmations, therapy sessions, laughter therapy, sleep tools, guided meditation sessions, music, that help people relax and unwind themselves out of stress and anxiety. “A lot of times we are not in the place to get professional therapy or medication. The reason we are launching Monkify is to help people, so they can take charge of their mind and feelings,” says Das.\n'
        '\nThe world sees you as a monk who advises people to live a better life. How do you see yourself?\n'
        '\nI see myself as a servant to this world. I am here to serve in whichever way, and in whatever capacity I can. I am here to see if I can help someone, and add value to their lives.\n'
        '\nWhat is in your book ‘Energise Your Mind’ that will help a person live a better life? Why should one have the app and the book?\n'
        '\n‘Energise Your Mind’ is a book that has four sections. The first section called ‘Me and My Mind’ is about how choices affect the mind. The second section, ‘Others and My Mind’ dwells on how the behaviour of others, criticism, and toxic behaviour affect the mind. The third section, ‘Me and Others Mind’ is about how one can affect the minds of other people. And, the fourth section called the ‘Universe and the Mind’ talks about the way universal forces affect the mind. So, the idea behind writing this book was to help people process guilt, criticism, different feelings and emotions. Having the app along with the book will help. The book is probably more about philosophy and thought processes though it has some interactive exercises. Whereas, the app is like a tool that can be used. One can practise an activity, listen to an affirmation, etc.\n',
  ),
  Artifact(
    name: 'Who is in charge of your emotions?',
    DwonUrl:
        'https://medium.com/thrive-global/who-is-in-charge-of-your-emotions-e533396a7806',
    description:
        'Everyone wants to enhance their quality of life. Everyone wants to be more fulfilled. But almost all of us get stuck at times in our limiting beliefs and emotional patterns. We make habits out of feeling frustrated, worried, sad or overwhelmed. ',
    imageUrl:
        'https://miro.medium.com/v2/resize:fit:1400/format:webp/0*JExYc0wqHDvvXePm.png',
    article:
        'Everyone wants to enhance their quality of life. Everyone wants to be more fulfilled. But almost all of us get stuck at times in our limiting beliefs and emotional patterns. We make habits out of feeling frustrated, worried, sad or overwhelmed. But it is these disempowering habits that prevent us from doing what we are really capable of — even if that something is just being happy.\n'
        '\nWhile we cannot control the events that happen in our lives, we can master how we experience these events. People are always going to encounter stressful times. It could be losing a job, losing your health or even losing a loved one. Something happens that is outside our control, and it knocks us down. But stress, anger, sadness — these feelings don’t come from the facts, they come from the meaning that we give the facts. Of course, the terrible things that happen are real. But the question is, how are you going to allow that to shape your life? Are you going to let it tear you down, or are you going to use it to empower and enlighten the way you go through life?\n'
        '\nIt’s all about the meaning that you give the events and experiences of your life. Because when you come up with a new meaning, you can get a new perspective, and, ultimately, a new life.\n'
        '\nTHE STORIES WE TELL OURSELVES\n'
        'We unconsciously decide what events and experiences in our life mean; we do it all the time, but may not be aware of it.\n'
        '\nTake a downturn in the economy, for example. One person could interpret that as, “I’m going to be broke.” Another person, though, might say, “This means I’m going to work harder and I’m going to be more creative about saving.”\n'
        '\nWhat do you think the outcome of this thought pattern will be for each of these individuals? Pretty different, right? Is it apparent why each will have very different approaches to life, and why each will experience very different emotions? That all comes from the meaning each person assigned to the event.\n'
        '\nNow, let’s move to something a little more personal. Consider a woman who had been adopted as a baby. One path she could take is to devalue herself, to believe that because she was adopted, that she wasn’t good enough to be loved. She could also take the opposite approach, and consider the fact that someone chose her and chose to love her. What’s the significance of her decisions over what story to choose? How will this impact her decisions in her daily life? How will it affect her bigger decisions?\n'
        '\nThe former story creates a sense of loss, while the latter celebrates her life and her worth. And the story she chooses will impact her whole life — because the decisions that control us are the decisions about meaning, and meaning equals emotion.\n',
  ),
];

class ArtifactListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Resources(Articles)',
          style: GoogleFonts.openSans(
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: artifacts.length,
          itemBuilder: (context, index) {
            final artifact = artifacts[index];
            return Card(
              color: Colors.white,
              elevation: 6,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ArtifactDetailScreen(artifact: artifact),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Column(
                    children: [
                      Image.network(artifact.imageUrl),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              artifact.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              artifact.description,
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Artifact Detail Screen
class ArtifactDetailScreen extends StatelessWidget {
  final Artifact artifact;

  ArtifactDetailScreen({required this.artifact});

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
        title: Text(artifact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(artifact.imageUrl),
            const SizedBox(height: 20),
            Text(
              artifact.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              artifact.article,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () =>
                  _launchURL(artifact.DwonUrl), // Launch download URL
              child: const Text(
                'More Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
