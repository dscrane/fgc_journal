import 'package:fgc/constants.dart';
import 'package:fgc/utils.dart';
import 'package:flutter/material.dart';

enum LetterEntries {
  letterToPop_14Sept39,
  letterToPop_1May41,
  letterToPop_29May43,
  letterToPop_15June43,
  letterToPop_14July43,
  letterToPop_19July43,
  letterToPop_6Aug43,
  letterToPop_1Jan44,
  letterToPop_18Jan44,
  letterToPop_8Feb46,
  letterToJoyce_21June50,
  draftToJoyce_1,
  draftToJoyce_2,
  draftToJoyce_3,
  draftToJoyce_4,
  draftToJoyce_5,
  draftToJoyce_6,
  draftToJoyce_7,
  draftToJoyce_8,
  draftToJoyce_9,
  draftToJoyce_10,
  draftToJanWhite,
  activeDutyLetter,
  letterFromJoyce,
  letterFromTodd_15Mar52,
  letterFromPetter_2Feb,
  letterFromPop_10May50,
  errorEntry,
}

Map<LetterEntries, Map<String, dynamic>> letterEntries = {
  LetterEntries.letterToPop_14Sept39: {
    'key': LetterEntries.letterToPop_14Sept39,
    'title': 'Letter to Pop',
    'date': '14 September 1939',
    'entry':
        '''Dear Pop, $kParagraphBreak I have gone into A.G.C I hope you like that. I didn't do it on your account however. Hobe, Early and Red and all the best fellows went there, about 19. I guess that will practically pull the house out of the hole. $kParagraphBreak I wish you would send me some writing paper. As you may have noticed this is not mine but some that Wick left. I would like some the same as last time. $kParagraphBreak I am playing football on the Jay Vees, I was on the varsity for a while but I got cut. I am playing first team so far. I hope I can keep it up. $kParagraphBreak Tell Mom that my room is as neat as a pin. It is so big I can put stuff under the couch and it is not noticed. The old couch broke so we are using Red's which is fine. $kParagraphBreak Tell Jim I am sorry I didn't go P.A.E. and that Tim Hoopes is awful sore; they only got 4. $kParagraphBreak $kTab $kTab Lots of love, $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/14Sept39/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_1May41: {
    'key': LetterEntries.letterToPop_1May41,
    'title': 'Letter to Pop',
    'date': '1 May 1941',
    'entry':
        '''Dear Pop, $kParagraphBreak I was swell being home last weekend but it was too bad I had to leave so early. It is very hard getting back to work again after getting out of here for awhile. I', now right in the midst of mid-term exams; I took my French test yesterday and I'm not sure that I did very well on it. If I fail it I will start tutoring for the rest of the term, other wise I'll let it go. $kParagraphBreak Everyone is working to get the house fixed up for reunion. I think there are eleven or twelve coming back so far. I got a letter from Mac. today which said he was going to be here for the 10th. It will be good to see him again. Tell me what time you are coming. $kParagraphBreak I hope Mom got off to Buffallo OR because I think she needs a rest. She looked quite tired and rundown after taking care of so many sick kids. I hope no one else has gotten the mumps. $kParagraphBreak When are you going to take the Freedom out this year? I would certainly like to go for a sail some time soon. Its going to be quite awhile before I'll be able to, i guess. By the way I'll be able to get to New London in plenty of time to go in that race to Hampton Roads; my last boend[?] is on Friday morning. (thats a little hint.) $kParagraphBreak There is very little excitement to tell you about - no money trouble yet or anything else. Hope to see you soon. $kParagraphBreak $kTab $kTab Love, $kNewline $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/1May41/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_29May43: {
    'key': LetterEntries.letterToPop_29May43,
    'title': 'Letter to Pop',
    'date': '29 May 1943',
    'entry':
        '''Dear Admiral, $kParagraphBreak We are now in port after a very calm voyage in which most of the middies go sicker than dogs. Dicken and I however were in very good shape and watched the others look for mermaids. After they go their sea legs, Jim and I were hoping that it would get rough so that we could get enough to eat without fighting for it as we did the first few days out. $kParagraphBreak I have been working in the black gang all the way down. Its been quite interesting but I spent most of the time painting. It seems that's all they do on this ship is paint -- they paint it all over then scrape it off and paint again. You would like this ship because she is really clean and in beautiful shape. The skipper makes the boys work and keep her in shape. Which is more than I can say for some of the ships that the other boys are on. The corvette Moorhead is on is in really sad shape. $kParagraphBreak We have been getting quite a bit of training. We have to take a lot of sun and star sights, and the boys on the bridge have been plotting etc; also acting as assistant quartermasters. We have had lectures on gunnery "etc" and navigation all very usefull. Also a talk about health in "liberty ports". I can't tell you all the interesting details I guess for quite a while. $kParagraphBreak We are down where its fairly hot but I haven't gotten much a burn because of my black gang work but I will be topside on the way back. Dicken is very sore because his face peels every two days. He is looking sort of diseased. $kParagraphBreak This is the same old ship that we've seen before but she's a good ship. $kParagraphBreak I trust you've located your ship, see that she's being built OK. $kParagraphBreak Well I hope to see you sometime but don't know when. $kParagraphBreak $kTab $kTab Lots of love $kNewline $kTab $kTab $kTab Fred $kParagraphBreak F.G. Crane ASO-1''',
    'envelope': 'assets/letters/images/to_pop/29May43/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_15June43: {
    'key': LetterEntries.letterToPop_15June43,
    'title': 'Letter to Pop',
    'date': '15 June 1943',
    'entry':
        '''Dear Pop, $kParagraphBreak We had a fine cruise to Guantanimo Cuba. We had a little excitement on the way; going down we picked up a contact and drop some charges right off the stern something popped out of the water so we opened up with everything and it turned out to be a mast on a wreck and anticlimax but it gave us some excitement; on the way back we dropped some 40 cans and were at general quarters all night but I don't think we got anything. $kParagraphBreak The Nourmahul[?] was quite a good ship and they made a pretty good escort ship out of her. On the way back I spent most of my time peeling potatoes as I was mess cooking. I finally stood my first watch about 3 days from New York. I was helmsman and quartermaster. We learned quite a bit about navigation - we had to take 50 sights of the sun + stars. While we were at "Gitmo" as they call it, we went for 4 days to A.A. gunnery school, 3 days on the 20mm and the last day on the 40's. The crew that got on the gun after us got sort of blown up when there was a blow back. One guy got quite badly hurt. I have not gotten my service ribbon yet but Gib appeared with his when got back. $kParagraphBreak I am going to the Cape on Fri. after spending the night in Boston with Jack. I hope to be able to go thru his ship. I went thru one just like it at Gitmo. His exec is the birt that taught gunnery at Yale - he is sort of a jerk - I hope he will be better on a ship. Gib is coming too. $kParagraphBreak We have been playing a lot of tennis now that Gib is home. Mom got back from the hospital yesterday, she is still a little feeble but she is managing to get around without a crutch. Cal is all pleased with your potatoes - says they are the best in the town. He is still fighting with "that Sewis" but its not violent. $kParagraphBreak I had a long talk with Ken Hill about what to do with my income when I get through with Yale - I thought I had better get it settled now while I can. Ken said it was all confused because I am underage, but he said he would look into it. If you have any information worth while or any suggestions you might write Ken or I. I hope you are keeping out of the clutches of the 300 f-suiters especially the female ones. Dr G said he was plagued by them -- they thought he was one of them. $kParagraphBreak Well Admiral have fun at school. You have been to so many that everyone here is afraid that you will be so educated that you won't be able to talk to them. Have fun and I hope you won't have to wait too long for your ship. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/15June43/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_14July43: {
    'key': LetterEntries.letterToPop_14July43,
    'title': 'Letter to Pop',
    'date': '14 July 1943',
    'entry':
        '''Dear Pop $kParagraphBreak Well I guess I am really in the Navy now, and definately under Naval discipline. We get up every morning at 6:00 [I have been getting up at 5:30 to muster the others] and then have exercises with chow at 7:00. Classes all morning and lots of athletics drills and endurence contests all afternoon. At 5:45 we have inspection then chow, liberty until 2000 and then a chance to study for two hrs with lights out at 2200. You see they've thought od everything but when you can get your work done. They give us the same amount of work to do - 2 hrs for each assignment but some how its impossible to spend more than about an hour apiece on anything. My classes are the same as before but I have and awfull lot of them - much more than anyone else in the room - Dicken, Macdonald, Green, Moorhead, and Early. $kParagraphBreak Of course we have room inspections every morning but so far they haven't found our room yet so we're still OK. Dicken + I are living in a little closet with very little light and no air and so far the temp hasn't gone below 85\u{00B0} and the humidity below 90% so you can see we are very comfortable. $kParagraphBreak We have one really tough Marine corpral here to drill us - they are marines in the college with us - also a marine major straight from Guardal canal. Are they tough! After drilling us for 3 hrs he asked if anyone was tired on unfortunate replied yes. He made him lie down and marched the complete company over him 4 or 5 times with their heads in the air. The poor guy hasn't been seen since. $kParagraphBreak Most of the NROTC men have all the dirty jobs - such as waking the boys up and anything else they can think of. Dicken is a Company Commander and I am the Company C.P.O. which is an pretty easy job. The rest of the lad in 1301 are just mustering P.O's so we have labeled our closet - Ward Room. $kParagraphBreak The life at Yale is certainly different as you can guess. All the fraternities are closed except Zete which is open to all and does a rush business on liberty hours. The senior societies are still functioning which is the only tie to old Yale. The navy has given us liberty untill 2200 on Wednesday so we have meetings then. $kParagraphBreak I hope to be able to get home every now and then as they give us weekend liberty 'till 9:00 Sunday. Of course I'm assuming that they won't have to take my liberty card away for a messy room. $kParagraphBreak I hope your ship is coming along pretty well - write me about her. $kNewline Have fun out there. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/14July43/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_19July43: {
    'key': LetterEntries.letterToPop_19July43,
    'title': 'Letter to Pop',
    'date': '19 July 1943',
    'entry':
        '''Dear Pop, $kParagraphBreak Everything is getting to be pretty much of a routine now. They only thing we live for is weekends which break up the monotony nicely. We have gotten the corporal under out thumb so to speak - at least he hasn't bothered any of us much of late. So far we all have out liberty cards which is quite a feat as many of the boys have been forced to spend most of their time in Davenport because they lost them. I'm sure that Mom and Wees would be impressed with my neatness around this room; although when we get out of it there is an all most irresistible temptation to drop cigarette ashes on the floor just because we don't have to pick them up. $kParagraphBreak I hope to get home next weekend if all goes well. I went to New York this last and under went a great misfortune, some ___ ___ stole my cap in a night club so that I had to go back to New Haven uncovered - most humiliating. So today I bought an officers cap and put out trimmings on it. $kParagraphBreak All most every one has a uniform now and Tale looks like quite a camp with many different types of uniforms - marines, army, privates + cadets, gobs and us. Officers lead a miserable life because they have to salute so often. When I first got here I got a real thrill I was saluted by a brand new 2nd leut in the army - I felt quite important as you can imagine. I doesn't happen any more. $kParagraphBreak Drop me a line about how things are in Portland. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/19July43/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_6Aug43: {
    'key': LetterEntries.letterToPop_6Aug43,
    'title': 'Letter to Pop',
    'date': '6 August 1943',
    'entry':
        '''Dear Pop $kParagraphBreak Thanks for the letters and gift, both were greatly appreciated. I am going home tomorrow for the weekend and much needed relazation. Jim Kitt is coming home Sunday night so unfortunately I will just miss him. It will be nice to get home anyway and help prepare a new "Moo". $kParagraphBreak I'm not sure whether I told you or not about my financial affairs. Anyway I got it all fixed up with Ken and Win. When I tell them they are going to put all my money in an account and invest it for me when it has accumulated. So far I have been trying to get a little collected in the bank for my present use, so the program is not underway yet. Any further details can be obtained from Win. Right now I am feeling quite wealthy because with my first pay check I was able to pay up all my bills. Now I am in the black. $kParagraphBreak Room 1301 has been in a great turmoil all week do to may difficulties. Green has lost his liberty card and can't go to see his girl to whom he was going to get ingaged - he has been doing considerable moaning + groaning about it. Dicken has become bearly tolerable because he is constantly trying to assert his authority as highest ranking officer. Macdonald is very wretched just generally. However today being my birthday life has brightened up because it is "be-nice-to-Freddy" day. It's just because I am buying the boy a few drinks during our liberty period. $kParagraphBreak Well here's hoping you will be able to get your ship ready. I think you must be glad Mom is coming out there. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/6Aug43/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_1Jan44: {
    'key': LetterEntries.letterToPop_1Jan44,
    'title': 'Letter to Pop',
    'date': '1 January 1944',
    'entry':
        '''Dear Pop, $kParagraphBreak Thanks for the check as yet I have not decided just what to use it for but I have several ideas. I liked the picture of your ship very much. It looks as though you could have a bit of fun on her. I hope will be out on her shortly. I have a swell time at home; it certainly was nice to see Mom again after such a long time. My only regret, outside of the fact that we were not honored by Capt. Murgetroyd's presence, was that there wasn't enough snow for skiing. I was forced under those circumstances to play that wretched game of hockey. It always annoys me to have those wretched little children knocking me down. $kParagraphBreak I went through the mills with Bruce and found all running to my satisfaction. I also had a conference with Win over my financial matters which we have gotten nicely arranged. Enclosed is a copy of the letter Win sent to the bank. I wonder if it would be possible for you to change your pay allottment to the Agi. Bank, agent for Fred Crane Jr. In that way I won't have to endorse it every time. I have arranged to pay for my insurance this year and the bank will take care of it from then on. I hope you will approve of all this. $kParagraphBreak I had my picture taken with my ensign hat on, although it isn't too good I'm sending it anyway as soon as they are ready. I hope I'm not counting my chickens before they're hatched. We don't have long to go now. $kParagraphBreak I got my marks for the mid-term 85, 80, 80, 75, 65. One 85 was in Navy. $kParagraphBreak I'm glad to hear you had a good Christmas but it was too bad you couldn't have been home. A "Moo" is coming out soon to tell you all about it. Hope you can use the shirts I sent you. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred $kDoubleNewline $kTab $kTab P.S. I was sorry to hear about Capt. Gainard.''',
    // TODO: find way to attach the letter about insurance and holdings to the entry
    'envelope': 'assets/letters/images/to_pop/1Jan44/envelope.jpeg',
    'letter': [],
    'enclosed': '[HOLDINGS LETTER]',
  },
  LetterEntries.letterToPop_18Jan44: {
    'key': LetterEntries.letterToPop_18Jan44,
    'title': 'Letter to Pop',
    'date': '18 January 1944',
    'entry':
        '''Dear Pop, $kParagraphBreak I hope your ship is getting along pretty well by now. I read about your not to the Dalton Service Club in Frank Slouch's Press, very touching! $kParagraphBreak On Thurs. I am taking the day off so that I can go up and see Loomis' magnesium plant. I have to write a long paper on the production of it for one of my chem classes. It should be quite interesting. $kParagraphBreak I am pretty busy now getting equipped with uniforms, etc. Have you any suggestions on grey's or kahki's? It really is pleasant to think that we only have five weeks to go for our stripe, also a degree is a nice thought too. We rather excited about it. I can't say as I feel much more like an officer than I did two years ago, but I guess we'll get along all right. I don't know when we'll get our orders but probably not for a few weeks at least. It seems rather hopeless to think of anything other than landing craft. $kParagraphBreak By the way, did Frank Shafroth get on your ship? $kParagraphBreak Unfortunately I don't think that I'll be able to get home before we are through here. Its such a long trip because I can't get the right connections, and I have to leave so early that that I can only be home for a little white and it hardly seems worth it. I'm afraid I'll have to wait for my leave before I can do any skiing. Mac and Dicken are planning a trip some where for a few days; I may be forced to tag along. $kParagraphBreak Well, tell me how your ship is coming, and I'll let you know just what we get when we get our orders. Hope you can do some skiing before you leave too. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/18Jan44/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterToPop_8Feb46: {
    'key': LetterEntries.letterToPop_8Feb46,
    'title': 'Letter to Pop',
    'date': '8 February 1946',
    'entry':
        '''Dear Pop, $kParagraphBreak I just got your letter telling me about struggling to get a ride to Tremblant; despite the trials I wish I were going with you. I hope you have a fine time and the snow is good. $kParagraphBreak Yesterday I took the trial run of the Bausell (DD 845) down to Boston and it was a grand trip. We made 35 - 36 knots all the way with no strain at all. I think they are wonderful ships and only wish mine were all ready to go too. The engineering plant is a honey; it looks very complicated at first with steam lines running all over the place but once you catch on it really quite simple. I'm not half so scared of it now as I was before. The ship rides a little rough when she is making that speed and I may say that some of the boys didn't enjoy the trip as much as I; I found quite a few looking for mermaids and it was a wet day for that. $kParagraphBreak I enquired from the SupShips about your going down with us on our trip and he said it would be all right. I have to make out some kind of a letter or something but it will be OK for you to come. We will go down to Boston on the 5th, the same day we are commissioned. We leave here at 7 in the morning, get there about noon and are commissioned at 3 o'clock. I'll get the invitations for you and Mom and Pam if she can come. $kParagraphBreak A few more of my men have arrived and from the looks of it none of them will have any experience on the type of a ship; how ever I guess they will be able to get on t o the plant before we go into commission. One of my chiefs arrived and the very first night I had to rescue him from the local jail, but he seems to have squared a way now; at least I hope so. The skipper is due to arrive tomorrow and from all reports he is a pretty good man. He has just come from command of another can [??] which is a good sign at least, his name is Cmdr B.A,Smith and he was on the Murphy. The exec is also reported to be a square gut though I don't know first hand. Anyway it sounds good and all I can do is hope. There are still only two of us here but I expect there will be a few more with the skipper. I hope he won't think that I haven't done enough but I have been pretty handicapped by lack of personnel and not knowing just what he wanted done. $kParagraphBreak Write me about the snow conditions and how the flying mile looks to you. Give my best to the McCallum's. Have fun. $kParagraphBreak $kTab $kTab Love $kNewline $kTab $kTab $kTab Fred''',
    'envelope': 'assets/letters/images/to_pop/8Feb46/envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.letterFromPop_10May50: {
    'key': LetterEntries.letterFromPop_10May50,
    'title': 'From Pop',
    'date': '10 May 1950',
    'entry':
        '''Dear Fred, $kParagraphBreak Your letter was very interesting and very well put. I have had in mind for some time giving you the Cooper house, but didn't know for sure if you would really want it. I will though be glad to give it to you now with such land on eastern side of it as you may want which we can decide on when you get home. I will give [Suttruly?] notice to vacate as soon as he can find a place to live. Jimmy [Dawke?] pays \$18 per mo. rent which will be paid to you. You can probably make a deal with Mrs. Dawke to help you with cleaning etc. We can arrange the details about water, renovations etc when you get home, in the meantime I will get things moving. $kParagraphBreak I appreciate how you feel about living at home as I felt the same way myself. When I first started to work at the Co. and I am sure that you will be much more satisfied to have a place of your own. Maybe after [batching] it in a while you will feel the need of a woman which will be all to the good. $kParagraphBreak I am glad that you are getting some good ideas in inspiring the [?] and am also very please that you want to stay in Dalton and with Crane + Co. The Co. can surely use you to very good advantage and more so as time goes on. $kParagraphBreak So you can plan on assuming the duties and privileges of a house owner and land lord when you get home. You should be able to fix up the [Suttruly?] side quite minimally to start yourself for the time being. The best of luck. $kParagraphBreak $kNewlineTab Affectionately Pop ''',
    'envelope': 'assets/letters/images/from_pop/envelope.jpeg',
    'letter': [
      'assets/letters/images/from_pop/pg_1.jpeg',
      'assets/letters/images/from_pop/pg_2.jpeg',
    ],
    'enclosed': null,
  },
  LetterEntries.letterFromTodd_15Mar52: {
    'key': LetterEntries.letterFromTodd_15Mar52,
    'title': 'Letter From Todd',
    'date': '15 March 1952',
    'entry':
        '''Dear Freddy, $kParagraphBreak As per instructions from Dick Aldrich I am sending you George's address. It is: $kParagraphBreak$kTab Pilot Officer G.F. Hastings $kNewline$kTab$kTab Officers' [??] $kNewline$kTab$kTab R.A.F. [??] $kNewline$kTab$kTab Yorkshire $kParagraphBreak The whereabouts of Wheat is a mystery to us. The nearest we can get to his address is that he is or was in London. However if anyone knows it the Elwells probably do, so I am writing to ask Cathy + will let you know the result. $kParagraphBreak Joe is being kept in strictest darkness over these negotiations, but I would like to say that I think it's MOST kind of you to do all this. $kParagraphBreak I hope all goes well at the Holiday Farm + that the lawn is flourishing (6 feet under snow at the moment, probably). My love to Joyce. I expect she's brilliant on the boards by now. $kParagraphBreak Love, $kNewline $kTab $kTab Todd.''',
    'envelope': 'assets/letters/images/from_todd/envelope.jpeg',
    'letter': [
      'assets/letters/images/from_todd/pg_1.jpeg',
      'assets/letters/images/from_pop/pg_todd.jpeg',
    ],
    'enclosed': null,
  },
  LetterEntries.letterFromJoyce: {
    'key': LetterEntries.letterFromJoyce,
    'title': 'Letter From Joyce',
    'date': 'Thursday',
    'entry':
        '''Dearest Fredward, $kParagraphBreak I did have the most lovely time last weekend and really felt as if I had been away fro a week instead of a weekend. There is someting so peaceful and clean and nice about all that air and water-even when rolling over one's face and I loved my sailing lesson as well as the race and the fish. Many thanks for letting it be such a very watery weekend. The only trouble is that it has spoiled me and I wish I were going back to the sea instead of the hill of Vermont althoug I do look forward to that greatly too and I am sure that the four days of rest will leave the Misses Howard and Kinsey in much better shape for the festivities. $kParagraphBreak Freddy dear, you are so very good to me. I was really quite afraid of this weekend. You are aufully kind and a very wise guy and I do appreciate it/. I was so sort of tired and jangled on arrival and felt much more at ease with the world when I left. Thank you very very much. $kParagraphBreak I fear me that I wasn't a very good houseparty type guest what with dashing out almost constantly to mess about in boats with you but I am sure that Pam and Peter were just as happy to have us out of the way. $kParagraphBreak I have been thinking about you settling into your new home and hope that it that you are enjoying it and the peace and quiet very much. I imagine that the hurry and flurry and wedding talk is reaching a new high now that the party has returned to the scene of the crime and hope you are all not at each others throats yet. $kParagraphBreak Re your flying up some day over the weekend I don't think i can tell until I get up there and see the distance away from the airport, transportation situation, and generally whether I feel its ok. I do hope so as I think it would be much fun. May-be you could fly Pam up to get away from the wedding for a day. We should arrive chez Howard around Saturday afternoon. $kParagraphBreak Things here have been just as bad as ever this week which made me especially clad to have such a pleasant backlog wind and water and peace to work on as well as a nice fresh burn to cover the circles. By the way how is your operation? I hope that the continuous soakings did it no permanent harm. You are very good and non hypochondriac about your wounds. $kParagraphBreak The town the Howards are in is Underhill Center and the phone is Underhill 317 ring 4. bets says it is very much a party line so if  I don't hear from you I will give you a ring. $kParagraphBreak Have a lovely time with your house and I shall see you soon, $kParagraphBreak$kTab Very much love, $kNewlineTab$kTab Joie  ''',
    'envelope': 'assets/letters/images/no_envelope.jpeg',
    'letter': [],
    'enclosed': null,
  },
  LetterEntries.activeDutyLetter: {
    'key': LetterEntries.activeDutyLetter,
    'title': 'Active Duty Letter',
    'date': 'undated',
    'entry':
        '''Sire $kParagraphBreak I as a private individual who has just volenteered for active duty am writing to make public my reasons for doing so. $kNewlineTab I feel very strongly that this country is doing a great deal of wishful thinking, & very little action. hte time has come for all of us to realize that we are now engaged in war and for us to start taking some steps. $kNewlineTab It has been rather obvious for some time that communism & capitalism cannot long exist together on this earth. The communists have long realized that a struggle is inevitable between the two and we have been slow to realize it. The democracies with their high standard of living and sense of responsibility have long hoped for some kind of peaceful solution and have tried by compromise & arbitration to avert a war which we know will bring nothing but misery to us and all the people of the world. $kNewlineTab But gentlemen, when does the period of compromise and wishful thinking end? It seems to me obvious that now that this struggle must ensue with all its miseries & horror. It comes to a point where when we lose no matter what yet how shall we lose least and from which shall we be able to recover fastest. If we go over as we have been losing every small fight to Russia we will soon be in a position of fighting with our very backs against the wall. Though this is a serious crisis it is not as bad as it will be. We must now recognize that this is war - all out & bloody war. $kNewlineTab My point is this  we in this country must realize that we are in a long & bloody fight and a fight to the death. There will be no peace until one or the other is supreme. Let us not delude ourselves that we can have a negotiated peace; we should know by now that it will only be a truce while the communists rearm to fight us again. $kNewlineTab Anyone who reads the papers should see that Russia see this and is planning her campaign to constantly weaken us until such time as she feels strong enough to go to all out war. Then when she is ready she will hit us with a surprise attack which will make Pearl Harbor seem a [??] $kNewlineTab What must we do to combat this threat? We must realize that we are in total war. We must come to full mobilization, call all reserves, full draft - full industrial mobilization and all the inherant hardships, rationing price & wage control, industrial draft etc. We must realize that we are not fighting for [crossed_out] to make the world sage for democracy or life as we know it now or any of those lovely dreams; we are fighting for our lives & the philosophy upon which this country was founded that the human as an individual is important. $kNewlineTab This fight is not easy and can only be won by "guts". The U.S. soldier is a lousy soldier until all his luxuries are taken away. Remove his coke and cigarettes, his fancy equipment & gear, ship him to essentials and put a gun in his hand and he can fight better than any man in the world. The time has come when we must realize that we must discard a lot of these luxuries & much of this lovely high standard of living, and prove that we are men again. This time its our lives, our childrens and everything we know & respect. This is war. And feeling as I do I must volenteer once again for active duty.''',
    'envelope': 'assets/letters/images/no_envelope.jpeg',
    'letter': [
      'assets/letters/images/drafts/activeDutyLetter/pg_1.jpeg',
      'assets/letters/images/drafts/activeDutyLetter/pg_2.jpeg',
      'assets/letters/images/drafts/activeDutyLetter/pg_3.jpeg',
      'assets/letters/images/drafts/activeDutyLetter/pg_4.jpeg',
    ],
    'enclosed': null,
  },
  LetterEntries.letterFromPetter_2Feb: {
    'key': LetterEntries.letterFromPetter_2Feb,
    'title': 'From Peter',
    'date': 'February 9',
    'entry': '''''',
    'envelope': 'assets/letters/images/no_envelope.jpeg',
    'letter': [
      'assets/letters/images/from_peter/pg_1.jpeg',
    ],
    'enclosed': null,
  },
  LetterEntries.errorEntry: {
    'key': LetterEntries.errorEntry,
    'title': 'ERROR',
    'date': '',
    'entry': '''Please reload ''',
    'envelope': 'null',
    'letter': [],
    'enclosed': null,
  },
};
