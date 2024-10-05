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
      required this.DwonUrl});
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
  Artifact(
    name: 'Overcome depression anxiety stress — Bhagavad Gita',
    DwonUrl:
        'https://runjhun-gold.medium.com/overcome-depression-anxiety-stress-bhagavad-gita-686582fbfaa9',
    description:
        'To overcome depression, anxiety, and stress with the help of Bhagavad Gita we must start it with the spiritual power questions like who am I, what is the reason for my birth.'
        '\nDepression obediently adheres to the floral path of achievement and good luck. ',
    imageUrl:
        'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*yQBAONtxyM_6F9z62CJ7Xg.jpeg',
    article: 'A glimpse of Anxiety and stress upon Arjun'
        'Chapter 1 of verse 29 implicit about the stress and anxiety of Arjun in the form of shivering of limbs, mouth dry, and shivering of the whole body with the Goosebumps effect.'
        'All the allies with bewildering of mind and senses, skin burning, not proper standing, and burning of skin make unbalance Arjun that’s why the Gandivam is falling from my hand.'
        'Negative thoughts, chapter 1 verse 32 of Bhagavad Gita state about Arjun, he didn’t want to victory, he didn’t want kingdom, joy, luxury.\n'
        '\nStress condition of Arjun\n'
        'Chapter 2 verses 21–22, Arjuna had great valor at the beginning of the war. After that, due to the attachment of his relatives who did not want to fight, the Lord preached them and shooed away their attachment.\n'
        '\nOvercome depression anxiety stress — Bhagavad Gita\n'
        '\nI think you too might be striving to come out from stress and depression but it seems very difficult to cover it. If we keenly observe our state of mind, we would find the basic problem of the starting of depression with the solution to over out from the problem as well.'
        'Unproductive thoughts can get us composed in a deep depression. It is guaranteed to come back to your own state of mental balance and progressive thinking.'
        'When we abide in any depressive, anxiety, and stress matter, we live only with disturbed minds. Yeah, I agree it is very difficult to face but do you feel that it is a success ladder to step out one by one movement towards success if we take this in a positive way.'
        'All dark allies despondence, distress, dejection, stress, anxiety, and despair all that are true friends. Might be you get angry upon me. But, think if you live only in joy, happiness, or in a relaxed mode the men make oneself a little better to find success?'
        'But a struggling people have more potential to fight all these allies, because the shortcomings and taunt of others get make him strong to follow the only a great path. And then we do get filled with a revenge angriness, that forces us to do something unique in the own world.'
        'We have most of the time depression, profoundly, and think about overcoming depression methods. Depression shows the soul’s need, to be with Lord Krishna.'
        'Ultimately, the worldly things are of binding us by which we cannot satisfy. To learn the vast lesson of depression in our own way Lord Krishna gave us a prominent quality of cover-up all tiny defects in us at the outer of the external pattern.'
        'The devotee of Lord Krishna faced despondency and fight against unjust works — Arjun he wants to go from their duty as a warrior and get into the depth of the depression, likewise, we don’t want to be involved in our real duties and neglects all the basic responsibilities, that direct us towards depression and anxiety.'
        'Arjun tells Krishna — I am not able to find any solution to do away from grief, which is pushing me into only depression and stress.'
        'Noticeably, nothing is the material solution in this world that can bring me peace or calm. After saying this he has gone into the shelter of Lord Krishna.'
        'To give Arjuna great help for depression and spiritual consciousness, Krishna then speaks of the unfathomable knowledge of the Bhagavad Gita, this ritualistic dialogue with Krishna fills Arjuna with his severe soreness and he acts, as instructed by God, allows for.',
  ),
  Artifact(
    name: 'David Eagleman: On Time',
    DwonUrl: 'https://rubinmuseum.org/spiral/david-eagleman-on-time/',
    description: 'Living in the present is probably impossible'
        'It’s extraordinarily difficult for a human to live in the present. I recognize this is the goal of many spiritual practices, but what makes our brains special is our capacity to unhook from the present and transport to different points in time. We spend time living in simulated futures, thinking, for example, “What will happen if I say this?” We also live in the past, reliving moments that no longer exist. And we spend time in the world of counterfactuals, questioning, “Where would I be if I had done that instead of this?”',
    imageUrl:
        'https://rubinmuseum.org/wp-content/uploads/2018/03/on_time_hero_new.jpg',
    article: '\nLiving in the present is probably impossible\n'
        'It’s extraordinarily difficult for a human to live in the present. I recognize this is the goal of many spiritual practices, but what makes our brains special is our capacity to unhook from the present and transport to different points in time. We spend time living in simulated futures, thinking, for example, “What will happen if I say this?” We also live in the past, reliving moments that no longer exist. And we spend time in the world of counterfactuals, questioning, “Where would I be if I had done that instead of this?” We constantly travel these other roads in time. It’s a big part of what makes us successful as a species. If you can play out possibilities, future and past, then you can simulate the effects of a new hunting strategy, an improved way to plant crops, or a novel social maneuver. Instead of attempting everything in the real world, you can test it in the dark safety of your skull. As the philosopher Karl Popper said, this capacity “allows your hypotheses to die in your stead.” Children don’t have the same prospective view as adults. As adults, we’ve had a great deal of experience, so we have a rich notion of the future and past. Children don’t have the same experience and long timescale to draw on, so they live closer to the moment. I don’t mean this in a spiritual way; I simply mean they don’t yet have the capacity to think about consequences or options, or richly analyze past outcomes. Instead they experience what is happening right now. As they learn more, they lay down an increasingly wide lawn of the future and the past, eventually growing into all of the joys and sorrows of adulthood.\n'
        '\nWe live behind the times.\n'
        '\nThere is no such thing as now. We live in the past by about half a second. Why? Because the brain is always collecting information from all the senses: from your eyes and ears to your fingertips and toes. These pathways process information at different speeds, so information comes streaming into different parts of your brain at slightly different times. The job of your consciousness is to collect the information, stitch it together, and serve a story of what just happened. It takes time to put everything together, and as a result, we are always living in the past. By the time you’ve processed all the information about a moment, the moment is long gone. Your conscious perception of the world is always lagging, so your experience of the moment right now is actually a delayed reality. It is similar to a live TV show like Saturday Night Live, which is not truly live but slightly delayed in case someone cusses, an actor falls, or a clothing mishap occurs. It mirrors our perceptual experience: we are always living in the past.'
        'The distance you live in the past can change. When you are a child, it takes a certain amount of time to send signals out to your limbs and have sensory feedback return to the brain. As you grow and your body gets larger, the round-trip time for signals is longer. Adults therefore live slightly further in the past than children. For that matter, I suspect that tall people live further in the past than short people.',
  ),
  Artifact(
    name: 'What Dr Joseph Murphy Taught Me About “I AM”',
    DwonUrl:
        'https://medium.com/publishous/what-dr-joseph-murphy-taught-me-about-i-am-a8ec48a58a0c',
    description:
        'Ever found yourself stuck in a perpetual loop yearning for the person you want to be?'
        'I know that sentiment all too well. But everything changed for me about two decades ago after I stumbled upon Dr. Joseph Murphy’s profound insight into the immense value of preceding any affirmation with the words “I AM.”'
        'Together, we’ll unravel the secrets that can unleash the feeling of abundance within you to replace the scarcity in your life with the joy of riches in your real-world experiences.'
        'Together, we’ll discover how these two simple words have the power to redefine your life.',
    imageUrl:
        'https://fatstacksblog.com/wp-content/uploads/2019/11/Person-writing-article-nov26.jpg',
    article: '\nUnpacking the Hidden Power of the “I AM” Concept\n'
        'Navigating feeling trapped in your life situation can be a real challenge, and I’ve been there. But Dr. Joseph Murphy’s insights, especially the invisible power of “I AM,” have been a guiding light for many, including myself.The “I Am” concept is a simple yet potent assertion, rooted in ancient wisdom, both Eastern and Western, that has shaped human evolution and personal development for centuries.Also, keep in mind inner transformation and outer miracles are not just about deploying robotic affirmations and hoping for the best in a challenging situation; it’s more about embodying what we aspire to be, accessing divine wisdom, and mining boundless inner resources.Confidently stating self-concepts about the best version of ourselves aligns us with universal principles like strength, intelligence, harmony, and joy within.'
        'Shifting from understanding to action means consistently using positive affirmations and fostering a growth mindset. This unleashes profound changes in every aspect of life.'
        'In short, my friend, it’s about embracing our natural state of divine light, propelling us forward without perpetuating past limitations and revisiting traumatic experiences.'
        'In summary, at the core of Dr. Murphy’s teachings lies the potent phrase “I am,” a declaration of intrinsic power. What’s more, saying these words isn’t a mere statement: it’s a connection to something deep and ancient, unlocking our fullest potential.'
        'When you affirm “I am strong” or “I am successful,” you’re not just wishing for it — you’re aligning with these qualities.\n'
        '\nTracing Back the Origins of this Big Idea\n'
        'Within the Judeo-Christian tradition, this principle traces back to biblical times, reflecting God’s name as “I AM THAT I AM.”'
        'This means that every time I use it, I’m not just talking about myself; I’m linking to the infinite source of everything.'
        'It means recognizing that my true essence extends beyond the physical self, acknowledging an eternal presence within me, holding endless possibilities and divine creativity.'
        'Embracing this concept has reshaped how I view myself and paved the way to realizing my deepest desires through the Law of Attraction.'
        'Tracing back the origins of the “I am” concept, we find that its profound roots trace back to a pivotal moment in Exodus.'
        'God reveals Himself to Moses as “I AM THAT I AM,” a declaration echoing through centuries as a testament to divine self-existence and authority.'
        'This ancient phrase captures the limitless nature of God’s presence, which Dr. Joseph Murphy suggests we can use to get out of any difficult situation to create a life that we will love.'
        'By acknowledging this connection, Murphy teaches that when we use the term “I am,” it’s not just empty words; it’s invoking something powerful — a direct link to the Ultimate Source of all creation.'
        'This ‘I AM’ spoken at Mount Sinai carries an incredible force for transformation in our lives.'
        'Let’s now take a deeper look into how embracing this concept unlocks a reservoir of spiritual energy, where each “I am” affirmation becomes more than words — an invocation of God’s love, power, and abundance within each of us.',
  ),
  Artifact(
    name:
        'Of 2 Minds: How Fast and Slow Thinking Shape Perception and Choice [Excerpt]',
    DwonUrl:
        'https://www.scientificamerican.com/article/kahneman-excerpt-thinking-fast-and-slow/',
    description:
        'To survive physically or psychologically, we sometimes need to react automatically to a speeding taxi as we step off the curb or to the subtle facial cues of an angry boss. That automatic mode of thinking, not under voluntary control, contrasts with the need to slow down and deliberately fiddle with pencil and paper when working through an algebra problem. These two systems that the brain uses to process information are the focus of Nobelist Daniel Kahnemans new book, Thinking, Fast and Slow (Farrar, Straus and Giroux, LLC., 2011). The following excerpt is the first chapter, entitled "The Characters of the Story'
        'which introduces readers to these systems. (Used with permission.)',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWX6Vs0dTn-n79fF7OBHbJ4GOlLHhs4M29Q&s',
    article:
        'To survive physically or psychologically, we sometimes need to react automatically to a speeding taxi as we step off the curb or to the subtle facial cues of an angry boss. That automatic mode of thinking, not under voluntary control, contrasts with the need to slow down and deliberately fiddle with pencil and paper when working through an algebra problem. These two systems that the brain uses to process information are the focus of Nobelist Daniel Kahnemans new book, Thinking, Fast and Slow (Farrar, Straus and Giroux, LLC., 2011). The following excerpt is the first chapter, entitled "The Characters of the Story,which introduces readers to these systems. (Used with permission.)'
        'Understanding fast and slow thinking could help us find more rational solutions to problems that we as a society face. For example, a commentary in the March issue of the journal Nature Climate Change outlined how carbon labeling that appeals to both systems could be more successful than previous efforts to change consumer habits. (Scientific American is part of Nature Publishing Group.) Understanding how we think can also guide more personal decisions. Last month, Kahneman highlighted in a lecture given at the National Academy of Sciences "The Science of Science Communication" conference how realizing the limitations of each system can help us catch our own mistakes.  '
        'Your experience as you look at the woman’s face seamlessly combines what we normally call seeing and intuitive thinking. As surely and quickly as you saw that the young woman’s hair is dark, you knew she is angry. Furthermore, what you saw extended into the future. You sensed that this woman is about to say some very unkind words, probably in a loud and strident voice. A premonition of what she was going to do next came to mind automatically and effortlessly. You did not intend to assess her mood or to anticipate what she might do, and your reaction to the picture did not have the feel of something you did. It just happened to you. It was an instance of fast thinking.'
        'You knew immediately that this is a multiplication problem, and probably knew that you could solve it, with paper and pencil, if not without. You also had some vague intuitive knowledge of the range of possible results. You would be quick to recognize that both 12,609 and 123 are implausible. Without spending some time on the problem, however, you would not be certain that the answer is not 568. A precise solution did not come to mind, and you felt that you could choose whether or not to engage in the computation. If you have not done so yet, you should attempt the multiplication problem now, completing at least part of it.'
        '\n\n TWO SYSTEMS\n'
        '\nPsychologists have been intensely interested for several decades in the two modes of thinking evoked by the picture of the angry woman and by the multiplication problem, and have offered many labels for them. I adopt terms originally proposed by the psychologists Keith Stanovich and Richard West, and will refer to two systems in the mind, System 1 and System 2.'
        'When we think of ourselves, we identify with System 2, the conscious, reasoning self that has beliefs, makes choices, and decides what to think about and what to do. Although System 2 believes itself to be where the action is, the automatic System 1 is the hero of the book. I describe System 1 as effortlessly originating impressions and feelings that are the main sources of the explicit beliefs and deliberate choices of System 2. The automatic operations of System 1 generate surprisingly complex patterns of ideas, but only the slower System 2 can construct thoughts in an orderly series of steps. I also describe'
        'circumstances in which System 2 takes over, overruling the freewheeling impulses and associations of System 1. You will be invited to think of the two systems as agents with their individual abilities, limitations, and functions.',
  ),
  Artifact(
    name:
        'Nagarjuna’s ‘Commentary on the Awakening Mind’ and Avalokiteshvara Empowerment',
    DwonUrl:
        'https://www.dalailama.com/news/2014/nagarjunas-commentary-on-the-awakening-mind-and-avalokiteshvara-empowerment',
    description:
        'New York, NY, USA, 2 November 2014 - Strong cold winds blew under the steely light of early winter as His Holiness the Dalai Lama drove through New York, down along the Hudson River, to the Manhattan Center this morning. He had been invited by the Danang Foundation led by Karma Kagyu Lama, Tsewang Tashi Rinpoche, to teach Nagarjuna’s ‘Commentary on the Awakening Mind’ and bestow a One-thousand Armed Avalokiteshvara Empowerment. Of the 1100 people filling the theater, 800 were Chinese from the Chinese mainland, Hong Kong, Taiwan, Singapore, Malaysia and North America. They were joined by Tibetans, Mongolians and Americans.',
    imageUrl: 'https://img.fruugo.com/product/2/23/14416232_max.jpg',
    article:
        'New York, NY, USA, 2 November 2014 - Strong cold winds blew under the steely light of early winter as His Holiness the Dalai Lama drove through New York, down along the Hudson River, to the Manhattan Center this morning. He had been invited by the Danang Foundation led by Karma Kagyu Lama, Tsewang Tashi Rinpoche, to teach Nagarjuna’s ‘Commentary on the Awakening Mind’ and bestow a One-thousand Armed Avalokiteshvara Empowerment. Of the 1100 people filling the theater, 800 were Chinese from the Chinese mainland, Hong Kong, Taiwan, Singapore, Malaysia and North America. They were joined by Tibetans, Mongolians and Americans.\n'
        '\nHis Holiness arrived early while the theater was still empty to perform preparatory rituals for the empowerment. At the appointed time he took his seat on the teaching throne before large scroll paintings of Buddha Shakyamuni and Nagarjuna, surrounded by venerable monks and nuns from Chinese and Tibetan traditions. Speaking Tibetan translated into Mandarin, he explained that they would begin with a recitation of the Heart Sutra in Chinese followed by verses of salutation to the Buddha and the Heart Sutra mantra.\n'
        '\n“In this world, in general, human beings have a right to acquire happiness and avoid suffering,” His Holiness began. “And as we evolved, firstly in response to fear and danger, we developed thoughts of religion based on faith and hope. In due course we elaborated these thoughts with philosophical ideas, developing theistic and non-theistic traditions. Buddhism, along with a branch of the Samkhyas and Jainism, is one of the non-theistic traditions. However, Buddhism is the only tradition to teach a theory of no-self.”\n'
        '\nHis Holiness explained that the Buddha’s first teaching, the first turning of the wheel of dharma, consisted of an explanation of the Four Noble Truths. This instruction is common to all traditions of Buddhism in both the Pali and Sanskrit traditions. The Four Noble Truths, with their 16 characteristics and the 37 wings of enlightenment form the basis of all the later teachings of the Buddha. They would have been taught in the existing Indian vernacular language and were eventually recorded first in Pali.\n'
        '\nThe ‘Unravelling of Thought Sutra’ describes three turnings of the wheel of dharma among which the second involved the teachings of the Perfection of Wisdom. The ‘Unravelling of Thought Sutra’ is popular in China and there is a commentary to it in Chinese. Consequently, some Chinese traditions tend towards the Mind Only school of thought. Because Buddhism first reached China in the 3rd and 4th centuries CE, His Holiness refers to the Chinese as the senior disciples. Tibetans first encountered Buddhism in the 7th century and it was established in Tibet in 8th century. This was done principally by Shantarakshita, a leading Buddhist master from Nalanda University. He was a bhikshu, an eminent Vinaya holder, a thinker, a proponent of his own school of Madhyamaka philosophy and a logician.\n',
  ),
  Artifact(
    name: 'Observation of the Mind in Buddhism and Mindfulness\n'
        'Kenryo Minowa',
    DwonUrl:
        'https://www.mindandlife.org/session/observation-of-the-mind-in-buddhism-and-mindfulness/',
    description:
        'The process of observing the mind in Buddhism is called samatha and vipassanā, and involves placing attention on a certain object (or objects) with awareness. Important facets of this type of observation, also called mindfulness, are noticing objects without using language, and accepting them as they are. According to Buddhism, suffering emerges from a state of not accepting the outer world, and from labeling it with words. ',
    imageUrl:
        'https://thebettercambodia.com/wp-content/uploads/2024/05/DALL%C2%B7E-2024-05-05-09.12.03-A-tranquil-landscape-depicting-Buddha-sitting-under-a-large-Bodhi-tree-with-several-followers-seated-around-him-engaged-in-meditation.-The-setting-is.webp',
    article:
        'The process of observing the mind in Buddhism is called samatha and vipassanā, and involves placing attention on a certain object (or objects) with awareness. Important facets of this type of observation, also called mindfulness, are noticing objects without using language, and accepting them as they are. According to Buddhism, suffering emerges from a state of not accepting the outer world, and from labeling it with words. \n'
        '\nIn this presentation, I will explore the mental functions under- lying mindfulness as described in Buddhism, with a particular emphasis on language. When we become aware of the outer world, something which is grasped occurs in our mind. Then, a mental function that grasps it arises. Next, a mental function arises that grasps it with words (language). Language becomes a seed of subsequent functions, and that lineage of functions is claimed to be the real cause of suffering. The Buddha realized that these mental functions can be stopped if we pay attention to them. Therefore, Shakyamuni believed that suffering could be relieved by understanding the system that creates it. Since language plays a causal role in the chain of mental functions, paying attention without using words becomes important. \n'
        '\nConsciousness can also be understood within Buddhism as a threefold process. The first grasping is to catch the outer world briefly, the second is to catch it without language, and the third is to catch it with language. The first grasping may be a fundamental function of consciousness; the state in which only this function exists is called nirvikalpa, or muhunbetsu. In this state, we understand that our world—and our suffering—is constructed by our own mind, and we can exist apart from that construction.\n',
  ),
  Artifact(
    name: 'The mind according to patanjali\n',
    DwonUrl:
        'https://heartfulness.org/magazine/the-mind-according-to-patanjali',
    description:
        'DAN ALDER explores the topic of mental well-being during a Yoga4Unity 2023 masterclass. He asks: how does the sage Patanjali view the mind? What does Patanjali believe to be our potential, what gets in the way of us attaining that potential, and what solutions are offered to us to remove those barriers?',
    imageUrl:
        'https://cdn-prod-static.heartfulness.org/the_mind_patanjali1_0b9678c069.jpg?&q=100',
    article:
        'DAN ALDER explores the topic of mental well-being during a Yoga4Unity 2023 masterclass. He asks: how does the sage Patanjali view the mind? What does Patanjali believe to be our potential, what gets in the way of us attaining that potential, and what solutions are offered to us to remove those barriers?\n'
        '\nYoga is the goal not the practice\n'
        '\nYou may think that there is no goal to yoga, but Patanjali states that yoga is the cessation of the mind’s fluctuations. So yoga is the goal, not the practice. When we talk about yogic practice, in a way we’re not talking about it correctly. Patanjali’s final result is yoga. And how do we reach that final result? By bringing the mind’s fluctuations to stillness so that there is no thought in your mind. Then we have yoga, and yoga is union.\n'
        '\nThe ego, the aspect of the mind that refers to “I,” tells us that we are different and separate from everything else. And along with that separateness comes suffering, whether it’s just a little bit or a huge amount of suffering. As long as there is perceived separation, we believe that union is the answer to our problem in life.\n'
        '\nThe reason? Because everything is already whole and united, it cannot be any other way. That is the natural state of things. Whether it’s a galaxy trillions of miles away, you, me, or the grass outside, it is already part of the whole, already unified with that which it should be unified with. We are already whole, complete, and unified with all things.\n'
        '\nAnother way of expressing it is to say that when we are in samadhi (another term for bringing the mind’s fluctuations to stillness), our own nature vanishes. Normally we’re inquisitive, asking“Is this true? Is this false? Is this right? Is this wrong?” The nature of our mind, to be constantly on the go, vanishes. And what’s left is the ineffable, unspeakable peace of samadhi, yoga, kaivalya. What makes it difficult to attain this state? There are many things, and Patanjali is thorough about naming them.\n'
        '\nProblems\n'
        '\n1. Thoughts\n'
        '\nThe first difficulty or problem is thought itself. If yoga is cessation of the mind’s fluctuations, then thought is part of the problem.Patanjali tells us that thoughts come in five types, and each of those five types will be either pleasant or painful. Sometimes I think we just want the mind to be full of pleasant, kind, compassionate, and loving thoughts, and it is a good thing to cultivate. But those very virtuous thoughts also prevent the mind coming to stillness. That is another big idea – we’re trying to remove both goodness and wickedness equally from our mind. That is how the mind comes to stillness.In Patanjali’s mind there is no good thought or bad thought, there is only yoga or not yoga; there is only a mind that is fluctuating or a mind that is not fluctuating. So thoughts are a problem that we all encounter on our way toward finding absolute peace.',
  ),

   Artifact(
    name: 'Music and the brain: the neuroscience of music and musical appreciation\n',
    DwonUrl:
        'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5618809/',
    description:
        'There have been many attempts to identify behaviours which reliably distinguish our species, Homo sapiens, from our closest living cousins. Ascribed activities, from tool-making to having a theory of mind and empathy, have been rejected, as observations of anthropologists and ethnologists continue to emphasise similarities rather than differences placing us within the great chain of beings. There can be no doubt about the greater development of our cognitive attributes, linked closely with the evolutionary developments of our brain, in terms of both size and structure. Bipedalism, the use of fire, the development of effective working memory and our vocal language efficient communication have all emerged from these genetic–environmental adaptations over several million years (Pasternak, 2007).',
    imageUrl:
        'https://images.squarespace-cdn.com/content/v1/5aff44443e2d0967ac49fd37/1551047779875-VG8U3ETQKTO6K2ZNV5KG/musicbrain-814x520.jpg',
    article:
        'There have been many attempts to identify behaviours which reliably distinguish our species, Homo sapiens, from our closest living cousins. Ascribed activities, from tool-making to having a theory of mind and empathy, have been rejected, as observations of anthropologists and ethnologists continue to emphasise similarities rather than differences placing us within the great chain of beings. There can be no doubt about the greater development of our cognitive attributes, linked closely with the evolutionary developments of our brain, in terms of both size and structure. Bipedalism, the use of fire, the development of effective working memory and our vocal language efficient communication have all emerged from these genetic–environmental adaptations over several million years (Pasternak, 2007).\n'
        '\nSomewhere along the evolutionary way, our ancestors, with very limited language but with considerable emotional expression, began to articulate and gesticulate feelings: denotation before connotation. But, as the philosopher Susanne Langer noted, ‘The most highly developed type of such purely connotational semantic is music’ (Langer, 1951, p. 93). In other words, meaning in music came to us before meaning given by words.\n'
        '\nYThe mammalian middle ear developed from the jaw bones of earlier reptiles and carries sound at only specific frequencies. It is naturally attuned to the sound of the human voice, although has a range greater than that required for speech. Further, the frequency band which mothers use to sing to their babies, and so-called motherese or child-directed speech, with exaggerated intonation and rhythm, corresponds to that which composers have traditionally used in their melodies. In the same way that there is a limited sensitive period in which the infant can learn language and learn to respond to spoken language, there must be a similar phase of brain development for the incorporation of music.\n'
        '\nOne of the differences between the developed brains of Homo sapiens and those of the great apes is the increase in area allocated to processing auditory information. Thus, in other primates the size of the visual cortex correlates well with brain size, but in Homo sapiens it is smaller. In contrast, increases in size elsewhere in the human brain have occurred, notably in the temporal lobes, especially the dorsal area that relates to the auditory reception of speech. The expansion of primary and association auditory cortices and their connections, associated with the increased size of the cerebellum and areas of prefrontal and premotor cortex linked through basal ganglia structures, heralded a shift to an aesthetics based on sound, and to abilities to entrain to external rhythmic inputs. The first musical instrument used by our ancestors was the voice. The ear is always open and, unlike vision and the eyes or the gaze, sound cannot readily be averted. From the rhythmic beating within and with the mother’s body for the fetus and young infant, to the primitive drum-like beating of sticks on wood and hand clapping of our adolescent and adult proto-speaking ancestors, the growing infant is surrounded by and responds to rhythm. But, as Langer (1951, p. 93) put it, ‘being more variable than the drum, voices soon made patterns and the long endearing melodies of primitive song became a part of communal celebration’. Some support for these ideas comes from the work of Mithen, who has argued that spoken language and music evolved from a proto-language, a musi-language which stemmed from primate calls and was used by the Neanderthals; it was emotional but without words as we know them (Mithen, 2005).\n'
        '\nThe suggestion is that our language of today emerged via a proto-language, driven by gesture, framed by musicality and performed by the flexibility which accrued with expanded anatomical developments, not only of the brain, but also of the coordination of our facial, pharyngeal and laryngeal muscles. Around the same time (with a precision of many thousands of years), the bicameral brain, although remaining bipartite, with the two cooperating cerebral hemispheres coordinating life for the individual in cohesion with the surrounding environment, became differently balanced with regard to the functions of the two sides: pointing and proposition (left) as opposed to urging and yearning (right) (Trimble, 2012).',
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
