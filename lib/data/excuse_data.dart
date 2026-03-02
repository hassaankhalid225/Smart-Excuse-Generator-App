class ExcuseCategory {
  final String id;
  final String title;
  final String emoji;
  final List<String> funnyExcuses;
  final List<String> seriousExcuses;

  ExcuseCategory({
    required this.id,
    required this.title,
    required this.emoji,
    required this.funnyExcuses,
    required this.seriousExcuses,
  });
}

final List<ExcuseCategory> excuseCategories = [
  ExcuseCategory(
    id: 'office_leave',
    title: 'Office Leave',
    emoji: '🏢',
    funnyExcuses: [
      "My cat filed a restraining order and I legally can't leave the house.",
      "I accidentally superglued my hand to the TV remote watching motivational videos.",
      "My horoscope said today is a 'rest or regret' day. I choose rest.",
      "I sneezed so hard I pulled a muscle. Doctor said: Netflix and rest.",
      "My WiFi router is sick and I need to give it emotional support.",
      "I tried to iron my shirt and ironed myself. Burns are minor but ego is broken.",
    ],
    seriousExcuses: [
      "I'm experiencing a severe migraine and cannot focus on work today.",
      "I have a family emergency that requires my immediate attention.",
      "I have a doctor's appointment that was scheduled weeks ago and cannot be rescheduled.",
      "I'm feeling unwell with flu-like symptoms and don't want to risk spreading illness.",
      "There's an urgent plumbing issue at home that requires a technician today.",
      "I have a mandatory legal appointment I cannot miss.",
    ],
  ),
  ExcuseCategory(
    id: 'friend_plan',
    title: 'Cancel Friend Plan',
    emoji: '🤝',
    funnyExcuses: [
      "My houseplant is sick and I promised not to leave until it perks up.",
      "I accidentally started a Netflix series and I'm legally obligated to finish it tonight.",
      "My zodiac sign said socializing today could cause irreversible karma damage.",
      "I sat down on the couch and it has adopted me. I cannot leave.",
      "My dog gave me puppy eyes and now I'm emotionally paralyzed.",
      "I tried to get ready and my mirror said no. Can't argue with that.",
    ],
    seriousExcuses: [
      "I'm really not feeling well today and don't want to cancel on short notice but I have no choice.",
      "Something came up at home that I need to handle urgently.",
      "I'm exhausted from the week and need to recharge. Can we reschedule?",
      "I have a family commitment I forgot about that conflicts with our plan.",
      "I'm dealing with some personal stuff right now, I'll explain later.",
      "Work ran over and I'm too drained to be good company tonight.",
    ],
  ),
  ExcuseCategory(
    id: 'school_leave',
    title: 'School Leave',
    emoji: '🎒',
    funnyExcuses: [
      "I was doing homework and my pen ran out — it was a sign from God.",
      "I dreamt the teacher said 'holiday tomorrow' and I took it as official notice.",
      "My uniform is in a diplomatic dispute with the washing machine.",
      "I was studying so hard last night, my brain requested a day off.",
      "My backpack has stage fright. We're working through it together.",
      "The school bus winked at me and drove away. What could I do?",
    ],
    seriousExcuses: [
      "I have a fever and my parents have advised me to rest at home.",
      "I have a dental appointment scheduled for today that couldn't be rescheduled.",
      "I've been experiencing stomach issues since last night and cannot attend.",
      "There's a family event today that requires my presence.",
      "I had a minor accident and the doctor recommended rest for a day.",
      "I'm on prescribed medication that causes drowsiness and makes attending unsafe.",
    ],
  ),
  ExcuseCategory(
    id: 'college_leave',
    title: 'College Leave',
    emoji: '🎓',
    funnyExcuses: [
      "I submitted my assignment at 3am and my body entered shutdown mode immediately after.",
      "My laptop called in sick so I'm taking a solidarity day.",
      "I was reading the syllabus so hard I entered a new dimension and just returned.",
      "I tried to attend online but my bed physically restrained me.",
      "My notes are on strike. Attending class without them would be pointless.",
      "I have an existential crisis scheduled for today. Please excuse the absence.",
    ],
    seriousExcuses: [
      "I'm unwell and visiting a doctor today.",
      "I have a visa appointment that I cannot reschedule.",
      "I have a family function I'm required to attend.",
      "I'm experiencing severe fatigue and headaches since yesterday.",
      "I have an internship interview that conflicts with today's lecture.",
      "I need to travel urgently due to a family matter.",
    ],
  ),
  ExcuseCategory(
    id: 'gym_skip',
    title: 'Skip Gym',
    emoji: '🏋️',
    funnyExcuses: [
      "I was going to go but I flexed in the mirror and scared myself.",
      "My muscles texted me asking for a day off. Who am I to say no?",
      "I read an article that said rest is 70% of fitness. Today I'm 100% committed.",
      "The gym is crowded and I have social cardio anxiety.",
      "I burned 400 calories carrying my gym bag to the door and back.",
      "My protein shake looked at me with disappointment. I can't face them today.",
    ],
    seriousExcuses: [
      "I'm experiencing joint pain and don't want to risk an injury.",
      "I've been feeling under the weather and physical exertion could worsen it.",
      "I have a work deadline and need to use this time productively.",
      "My physiotherapist recommended a rest day after yesterday's session.",
      "I didn't sleep well and pushing through could compromise my recovery.",
      "I have a prior commitment that came up unexpectedly.",
    ],
  ),
  ExcuseCategory(
    id: 'missed_deadline',
    title: 'Missed Deadline',
    emoji: '⏰',
    funnyExcuses: [
      "I finished it but my cat sat on the keyboard and filed it under a different name.",
      "I was so focused I lost track of time — and also the days — and also the month.",
      "Mercury was in retrograde and it affected my Google Calendar.",
      "I submitted it but I think it got caught in the email Bermuda Triangle.",
      "My alarm clock and I are in couples therapy. Things are tense.",
      "I was working so hard I forgot to eat, sleep, or check the deadline.",
    ],
    seriousExcuses: [
      "I encountered unexpected technical issues that set back my progress significantly.",
      "A family emergency required my attention during the final stages.",
      "I underestimated the scope of the task. I take full responsibility and will submit ASAP.",
      "I was unwell during the critical final days and couldn't work at full capacity.",
      "I had conflicting deadlines from multiple sources and this one was delayed as a result.",
      "There was a miscommunication about the deadline date. I apologize for the confusion.",
    ],
  ),
  ExcuseCategory(
    id: 'meeting_skip',
    title: 'Skip Meeting',
    emoji: '📊',
    funnyExcuses: [
      "My calendar app had an emotional breakdown and deleted the invite.",
      "I was in such deep thought about the meeting agenda that I forgot the meeting itself.",
      "I joined 10 minutes late and someone had already summarized everything — so technically I was efficient.",
      "My mute button and I had a disagreement. I chose not to embarrass either of us.",
      "I prepared so well that I felt the meeting was no longer necessary for me specifically.",
      "I was on a 'think walk' and forgot to come back.",
    ],
    seriousExcuses: [
      "I had a conflicting urgent call I couldn't reschedule.",
      "I was dealing with a technical issue right before the meeting time.",
      "There was a family matter that required my attention at that hour.",
      "I wasn't aware the meeting time had been changed — I only saw the original invite.",
      "I was finishing a deliverable that was time-sensitive and couldn't step away.",
      "I wasn't feeling well and didn't want to be unproductive in the session.",
    ],
  ),
  ExcuseCategory(
    id: 'party_skip',
    title: 'Skip Party',
    emoji: '🎉',
    funnyExcuses: [
      "I was getting ready and my mirror filed a noise complaint about my outfit.",
      "I RSVP'd with my heart but my body voted no.",
      "I started getting ready at 7pm. It is now 11pm. I am still not ready. I give up.",
      "My social battery is at 2% and I can't find the charger.",
      "I showed up in spirit — my spirit had a great time.",
      "I wanted to come but the vibe check at my own front door failed.",
    ],
    seriousExcuses: [
      "I'm not feeling well and don't want to spoil the vibe for everyone.",
      "I have an early commitment tomorrow I need to prepare for.",
      "Something personal came up that I need to handle tonight.",
      "I've had an exhausting week and genuinely need the rest.",
      "I have a family obligation I forgot was tonight.",
      "I'm on medication that doesn't mix with late nights or social environments right now.",
    ],
  ),
];
