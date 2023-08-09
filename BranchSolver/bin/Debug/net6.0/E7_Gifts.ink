// ------------------ BEACH AREA ------------------
// ----------- WHAT IS THE WAY FORWARD? -----------
// ---------------- <PLAY AS JEANNE> -----------------

== Intro1 ==
// Establish slow pacing of the scene with the camera.

// <AUDIO> A calm, faded ambiance. Whistling wind.
// <CAMERA> Fade in.
// <CAMERA> Smoke in the distance, from the trading post.
// <CAMERA> Water flowing from the river.
// <AUDIO> The water from the river "is added" the scene's ambiance.

TODO - TBD how this works out in practice / how we should be illustrating it through Growth Feedback.
// <CAMERA> A small mound in the sand clearly marks where Capitaine's body lays.
    // [IF G_Jeanne_Conservatism = HIGH] this is, a test, A cross ornates the grave. 
    // [ELSE] Flowers lay on the grave.

// <CAMERA> The camera pulls back, revealing JEANNE and MAIKAN seated by the river’s edge.
//Both seem especially tired, and melancholy after hearing each other’s stories.
// <ANIMATION> Consider a alternative/tired sitting stance for Maikan.

//Nearby, we can see a dimming campfire, CAPITAINE’s grave, the White wolf’s fur, and Jeanne’s tattered bible, resting on a stone.

    #SPEAKER: Jeanne
    //Concluding her tale from earlier:
    Now you know my story.        #LINEID: 00100
    //Turning to MAIKAN:
    ...And I guess I know yours, too.      #LINEID: 00200

//<VOICE ACTING> MAIKAN lets out a deep sigh.
->Intro2


== Intro2 ==
// <CAMERA> Enter first person.

    #SPEAKER: NormalMaikan
    //Slumping in his seat:
    I’m so sorry. The things I put you through, without even realizing it...        #LINEID: 00300
    
    #SPEAKER: Jeanne
    //With a glib scoff:
    Feels like *I’m* the one who should be saying that.      #LINEID: 00400

//The nature of the next line depends on previous grouping choices:
//[IF - G_Jeanne_Manipulative = HIGH] ->SorryLiar
//[ELSE / IF - G_Jeanne_Headstrong = HIGH] ->SorryStubborn
->DONE

== SorryLiar ==
    #SPEAKER: Jeanne
    //Ashamed:
    All I did was lie my way out of trouble and make things worse.        #LINEID: 00500
    I'm lucky you even believe a word I said.      #LINEID: 00600
->Intro3


== SorryStubborn ==
    #SPEAKER: Jeanne
    //Self-resenting:
    I was stubborn, and short-sighted, and *stupid*, and...     #LINEID: 00500
    ...I never wanted things to end this way.     #LINEID: 00600
->Intro3


== Intro3 ==
    #SPEAKER: NormalMaikan
    You did what you had to. We both did.       #LINEID: 00700
    //Looking to what lay in front of them:
    ...I just wish I knew what to do *now*.     #LINEID: 00800
-> DONE


// Three interactions are now available : White pelt, Capitaine's grave, Bible.


// The white wolf's fur is laying next to Jeanne, neatly placed.
== WhitePelt ==
// On player interact : 
    
    #SPEAKER: Jeanne
    This is the wolf you've been chasing all this time, isn’t it?     #LINEID: 00100

    #SPEAKER: NormalMaikan
    //Trailing off, heartbroken:
    Most likely. But...    #LINEID: 00200

//The nature of the next line depends on previous grouping choices:
// [IF - G_Maikan_Openness = HIGH] ->PeltNaive
// [ELSE / IF - G_Maikan_Traditionalism = HIGH] ->PeltSpirit
->DONE

== PeltNaive ==
    #SPEAKER: NormalMaikan
    I kept hoping this one fur would fix EVERYTHING the white men did.     #LINEID: 00300
->PeltConclusion

== PeltSpirit ==
    #SPEAKER: NormalMaikan
    I used to think appeasing the spirit's anger was all that really mattered.     #LINEID: 00300
->PeltConclusion

== PeltConclusion ==
    #SPEAKER: NormalMaikan
    And I'm not so sure it's that simple anymore.     #LINEID: 00400
    //Self-resentful, tired:
    ...Maybe it never will be simple, ever again.        #LINEID: 00500
->DONE


// The grave is directly in front of the characters.
== CapitainesGrave ==
// On player interact : 
//<CAMERA> Focuses on the mound of dirt.
//<VOICE ACTING> JEANNE has a quavering, heartbroken sigh.
    #SPEAKER: Jeanne
    [sigh]    #LINEID: 00100


    #SPEAKER: Jeanne
    I wish you could have met him.     #LINEID: 00200

    #SPEAKER: NormalMaikan
    //Morose, but trying to be kind.
    Me too. Sounds like he was a good friend.    #LINEID: 00300

-> DONE


// The bible is also laying close to Jeanne, ON HER RIGHT.
== Bible ==
//<ANIMATION> JEANNE picks up the Bible, takes it in her hands.
TODO - Use camera positioning to "cheat" the pickup animation if needed.
//<VOICE ACTING> A deep sigh.

    #SPEAKER: Jeanne
    [sigh]    #LINEID: 00100

    #SPEAKER: NormalMaikan
    I'm impressed you kept it, after all this time.        #LINEID: 00200

//The nature of the next line depends on previous grouping choices:
// [IF - F_Attack_BibleNo = TRUE] ->BibleNeeded
// [ELSE / IF - F_Attack_BibleRead = TRUE] ->BibleWanted
->DONE

== BibleNeeded ==
    #SPEAKER: Jeanne
    Honestly? It felt like I *had* to.      #LINEID: 00100
    Without my rosary... I had no other way to prove I was still faithful.      #LINEID: 00200
->BibleCommon

== BibleWanted ==
    #SPEAKER: Jeanne
    Just because reading it got me into trouble doesn't mean I wanted it gone.      #LINEID: 00100
->BibleCommon

== BibleCommon ==    
    #SPEAKER: Jeanne
    //With some emphasis on "this":
    This is how I made sure God would hear me cry for help.     #LINEID: 00100
    
//The nature of the next line depends on previous grouping choices:
// [IF - G_Jeanne_FreeSpirited = HIGH] ->GodIsDead
// [ELSE / IF - G_Jeanne_Conservative = HIGH] ->GodIsGone
->DONE    
    
== GodIsDead ==
    #SPEAKER: Jeanne
    //Miserable, resentful:
    ...But it didn't matter. No matter how loud I cried, He never listened.     #LINEID: 00100
    And for all I know, He never has.       #LINEID: 00200
->BibleEnd

== GodIsGone ==
    #SPEAKER: Jeanne
    //Miserable, heartbroken
    ...But I wish I could have heard Him answer. Just once.      #LINEID: 00100
    Maybe then, I'd know if He had a reason for doing this.       #LINEID: 00200
->BibleEnd

== BibleEnd ==
    #SPEAKER: NormalMaikan
    [sigh]    #LINEID: 00100
//<VOICE ACTING> MAIKAN has a deep, melancholy sigh, not sure how to answer.
//<ANIMATION> Jeanne pockets the bible.
-> DONE   


// WHEN THE PLAYER COMPLETES ALL INTERACTIONS
== WhatNow1 ==
// <AUDIO> The ambiance slowly mutes itself until complete emptiness, leaving the characters to their own thoughts.
// <CAMERA> Cut to third person behind characters.
TODO - TBD if this is right place for this camera transition. Might need to review based on how this scene plays out.
//The characters remain still for a moment, slumped.

    #SPEAKER: Jeanne
    //Deeply saddened, maybe a bit of cracking in her voice:
    Hey, do you...      #LINEID: 00100
    //MAIKAN turns to look at her.
    ...Have *any* idea how we're supposed to move past all this?       #LINEID: 00200

    #SPEAKER: NormalMaikan
    //Looking away, kind of ashamed.
    ...Not really.        #LINEID: 00300

//<AUDIO> We hear the distant sounds of traders and/or birdcalls, coming from the direction of the trading post.
TODO - TBD what the most thematically appropriate choice is here. Traders is a no-brainer, but birds could make a lot of sense. Hermit Thrush and crows are both associated to guidance and spirituality in Innu belief so it makes sense.
//<CAMERA> POV character turns and looks off toward the trading post, partially with the path we'll be taking to get there in focus.
->WhatNow2

== WhatNow2 ==
    #SPEAKER: NormalMaikan
    But I think we should start by going back.      #LINEID: 00100

    #SPEAKER: Jeanne
    //<ANIMATION> With a sad scoff, she stands up. Consider using 1st-person POV to prevent us from having to show it. Then as she starts to walk away, and MAIKAN watches for leave:
    "Going back" isn't an option for me anymore.        #LINEID: 00200
    
//MAIKAN gets up and starts to follow her, intrigued.
//<CAMERA> Consider panning to Capitaine's grave before transitioning to a new POV (if deemed appropriate).
-> DONE



// ---------------- NORTH RIVER PATH ------------------
// ---------------- JEANNE'S CRISIS ------------------
// ---------------- <PLAY AS MAIKAN> -----------------
//The shortest path through part 2 requires the player to go through 49 lines. (FOR REFERENCE, THE EQUIVALENT FOR STRANGER3 is 100 LINES)

== WalkingToJesuit ==
// <AUDIO> The wind still blows. Rustling leaves. The soundscape is less muted, but still subtle.
// <CAMERA> Fade in, first person. Jeanne is ahead.
// Both characters walk together in the path travelled in No Way Forward, but the other way around.
// Current proposition is for the player to control the POV, but walking is automated. TBD if we want to add some degree of control to this.

    #SPEAKER: Jeanne
    When I left France to come here, I was leaving for good.        #LINEID: 00100
    //A little bitter:
    Women chosen to be Filles du Roy don't have the luxury of changing their minds.     #LINEID: 00200
    Yet... I came anyway. I had faith life would be better here.        #LINEID: 00300

//The nature of the next line depends on previous grouping choices:
// [IF - G_Jeanne_Headstrong = HIGH] ->IfStrong
// [ELSE / IF - G_Jeanne_Manipulative = HIGH] ->IfCunning
->DONE    

== IfStrong ==
    #SPEAKER: Jeanne
    //With a hint of budding hope:
    If I tried hard enough, I could *make* life better. For everyone.      #LINEID: 00400
->WalkingToJesuit2

== IfCunning ==
    #SPEAKER: Jeanne
    //With a hint of budding hope:
    If I was smart about it, I'd *thrive* in ways I never could in Europe.     #LINEID: 00400
->WalkingToJesuit2
    
== WalkingToJesuit2 ==
    #SPEAKER: Jeanne
    And it's that faith is what kept me going when I had nothing left.      #LINEID: 00500
    [sigh]    #LINEID: 00600

//<VOICE ACTING> JEANNE has a deep, deflated sigh before concluding her thoughts.
//The nature of the next line depends on previous grouping choices:
// [IF - G_Jeanne_FreeSpirited = HIGH] ->FaithGone
// [ELSE / IF - G_Jeanne_Conservative = HIGH] ->FaithWrong
->DONE    

== FaithGone ==
    #SPEAKER: Jeanne
    ...But I don't know if I have any of that old faith left.       #LINEID: 00600
    //Deeply heartbroken:
    And I'm not sure how I can go on without it.        #LINEID: 00700
->WalkingToJesuit3

== FaithWrong ==
    #SPEAKER: Jeanne
    //saddened, maybe after a long sigh.
    ...Some say God has a plan for those who believe in Him.       #LINEID: 00600
    //Deeply heartbroken:
    But if I knew THIS was His plan? I wonder if I'd have kept believing.       #LINEID: 00700
->WalkingToJesuit3


== WalkingToJesuit3 ==    
//By this point, we should be nearing, or AT the clearing with the Jesuit. Assuming we're using the same level design layout as before, there's likely a traversal here.
//IF we're playing as JEANNE, we should make sure to transition to MAIKAN POV during this traversal. If We're playing as MAIKAN, we should make sure to have the traversal trigger in such a way that MAIKAN will not see the full animation of JEANNE moving through.
//Either ways, as we enter the clearing where the JESUIT's corpse was found...
->FindingJesuit


== FindingJesuit ==
// Jeanne traverses the trees in the path, leading to where the JESUIT's corpse was found.
// <ANIMATION> <AUDIO> Emphasize JEANNE's startled reaction.

    #SPEAKER: Jeanne
    //Breathless:
    Oh...!    #LINEID: 00100
    
    #SPEAKER: NormalMaikan
    //On edge, but not yelling:
    What's wrong?!      #LINEID: 00200
    
    #SPEAKER: Jeanne
    //Quietly, shaken:
    It's him...       #LINEID: 00300

//MAIKAN traverses the foliage, reaching JEANNE's side in the clearing.
-> JoinJeanne

== JoinJeanne ==
TODO - This knot might not be necessary, but if Maikan is to react after Jeanne, it's better to split it this way.
//MAIKAN arrives to see JEANNE nervously staring at the Jesuit's corpse.
//<GROWTH> Depending on the resolution with Pierre in NoWayForward, should we have more or less frost clinging to the area overall?

    #SPEAKER: Jeanne
    //Shaken:
    I know you said he died, but I didn't expect him to be...     #LINEID: 00400
    
//<VOICE ACTING> A shiver of disgust.
//<ANIMATION> Jeanne looks away, shaken to her core.
//Player is prompted to make a choice.
->JesuitDeathChoice

== JesuitDeathChoice ==
#SPEAKER: NormalMaikan
*[I swear I tried to save him.]    ->JesuitCouldBeSaved         #LINEID: 00100
*[He brought this upon himself.]  ->JesuitHadToDie      #LINEID: 00200

== JesuitCouldBeSaved ==
    #SPEAKER: NormalMaikan
    //Sad, but with a note of shame.
    ...I'm sorry, Jeanne.     #LINEID: 00100

//The nature of the next line depends on fact checks:
// [IF - G_Maikan_Openness = HIGH] ->CouldBeSaved_Open
// [ELSE / IF - G_Maikan_Traditionalist = HIGH] ->CouldBeSaved_Trad
->DONE   

== CouldBeSaved_Open ==
    #SPEAKER: NormalMaikan
    //Ashamed:
    I did what I could. But I couldn't help a man who wouldn't meet me halfway.      #LINEID: 00200
->JesuitDeathConclusion


== CouldBeSaved_Trad ==
    #SPEAKER: NormalMaikan
    //A little dejected:
    Tehonwastasta said men in black robes were beyond understanding. And he was right.       #LINEID: 00200
->JesuitDeathConclusion


== JesuitHadToDie ==
    #SPEAKER: NormalMaikan
    //Sad, but with a note of harshness.
    ...He *chose* this fate, Jeanne.       #LINEID: 00100

//The nature of the next line depends on fact checks:
// [IF - G_Maikan_Openness = HIGH] ->HadToDie_Open
// [ELSE / IF - G_Maikan_Traditionalist = HIGH] ->HadToDie_Trad
->DONE     
    
== HadToDie_Open ==
    #SPEAKER: NormalMaikan
    Even HE must have known things would turn out this way, after what he did.       #LINEID: 00200
->JesuitDeathConclusion

== HadToDie_Trad ==
    #SPEAKER: NormalMaikan
    //Resentful.
    Part of me believes Tehonwastasta was right, when he said the man deserved death.       #LINEID: 00200
->JesuitDeathConclusion


== JesuitDeathConclusion ==
    #SPEAKER: Jeanne
    //With a frail voice.
    N-no, it's not that.     #LINEID: 00300
    //After a pause, struggling.
    I... Almost *killed* people because of him.        #LINEID: 00400

//The nature of the next line depends on fact checks:
// [IF - F_Promise_FinalChoiceTehonLoyalty = TRUE] ->Killed_Loyalty
// [ELSE] ->Killed_Obedience
->DONE 


== Killed_Loyalty ==
    #SPEAKER: Jeanne
    Yet even MORE people may have died because I disobeyed.      #LINEID: 00500

//The nature of the next line depends on fact checks:
//[IF - F_House3_CheckingOnTheJesuit = TRUE] ->Loyalty_TrustedJesuit
//[ELSE] ->Loyalty_TrustedTehon
->DONE

== Loyalty_TrustedJesuit ==
    #SPEAKER: Jeanne
    //Barely keeping panic at bay.
    He told me, over and over. THIS is what God wants. THIS is how we make the New World safe.       #LINEID: 00600
    And I'm TERRIFIED he may have been telling the truth.       #LINEID: 00700
->FaithCrisis


== Loyalty_TrustedTehon ==
    #SPEAKER: Jeanne
    I couldn't just sit there and let Tehon suffer, but...      #LINEID: 00600
    //Starting to panic:
    What if he was right? What if this really IS God punishing me for my betrayal...?     #LINEID: 00700
->FaithCrisis

    
== Killed_Obedience ==
    #SPEAKER: Jeanne
    //Ashamed, increasingly shaken but not trying to diminish the weight of what she's done.:
    ...No. No, I was GOING to kill people because of him.       #LINEID: 00500

TODO - Maybe have JEANNE look or move away from the Jesuit a bit here.
//The nature of the next line depends on fact checks:
//[IF - F_House3_CheckingOnTheJesuit = TRUE] ->TrustedJesuit_Obedience
//[ELSE] ->TrustedTehon_Obedience
->DONE

== Obedience_TrustedJesuit ==
    #SPEAKER: Jeanne
    And it's *terrifying* I was able to trust someone like that. That I even WANTED to.       #LINEID: 00600
    //Ashamed:
    ...Maybe he was right. Maybe we ARE the same.      #LINEID: 00700
->FaithCrisis


== Obedience_TrustedTehon ==
    #SPEAKER: Jeanne
    And right until the end, Father Augustin *believed* he was enacting God's will.        #LINEID: 00600
    If it hadn't been for Tehon? I would have believed the same thing.        #LINEID: 00700
->FaithCrisis    


== FaithCrisis ==
//<VOICE ACTING> JEANNE takes a deep, troubled breath, looking away from Augustin, maybe up at the sky.

    #SPEAKER: Jeanne
    //Becoming EXTREMELY dejected:
    [breathing]    #LINEID: 00800
    Maybe... I never should have had faith to begin with. In God *or* him.       #LINEID: 00900
    
    #SPEAKER: NormalMaikan
    TODO - Starting to be a long stretch with minimal interaction here. Do we make this a fluff-choice?
    //Worried, confused:
    What are you saying...?        #LINEID: 01000

//NEXT LINE DEPENDS ON GROUPINGS:
// [IF G_Jeanne_Conservatism = HIGH] -> FaithCrisis_Con
// [ELSE / IF G_JeanneFreeSpirited = HIGH] -> FaithCrisis_Free
-> DONE


== FaithCrisis_Con ==
    #SPEAKER: Jeanne
    //Getting worked up, voice cracking:
    Out there? I stayed true to my principles, no matter what. Never wavered. Never asked *why.*      #LINEID: 01000

//NEXT LINE DEPENDS ON GROUPINGS:
// [IF G_Jeanne_Headstrong = HIGH] -> FaithCrisis_Con_Head
// [ELSE / IF G_JeanneManipulative = HIGH] -> FaithCrisis_Con_Manip
-> DONE

== FaithCrisis_Con_Head ==
    #SPEAKER: Jeanne
    //<GESTURE> Motioning to Augustin's corpse.
    I was as unflinching as he was. And Capitaine... Capitaine DIED because of it.     #LINEID: 01100
->FaithCrisis_Conclusion1

== FaithCrisis_Con_Manip ==
    #SPEAKER: Jeanne
    //<GESTURE> Motioning to Augustin's corpse.
    But I was only using God as an excuse, to make deceit seem virtuous. Just like Augustin.       #LINEID: 01100
->FaithCrisis_Conclusion1


== FaithCrisis_Free ==
    #SPEAKER: Jeanne
    //<GESTURE> Motioning to Augustin's corpse.
    His interpretation of God's will was warped beyond recognition. But mine was too.        #LINEID: 01000

//NEXT LINE DEPENDS ON GROUPINGS:
// [IF G_Jeanne_Headstrong = HIGH] -> FaithCrisis_Free_Head
// [ELSE / IF G_JeanneManipulative = HIGH] -> FaithCrisis_Free_Man
-> DONE
   
== FaithCrisis_Free_Head ==
    #SPEAKER: Jeanne
    //With particular self-loathing emphasis on "obstinate".
    And I was too obstinate to realize how far I strayed until it was too late.       #LINEID: 01100
->FaithCrisis_Conclusion1

== FaithCrisis_Free_Man ==
    #SPEAKER: Jeanne
    //Getting worked up, voice cracking:
    I lied, sinned, rejected doctrine... Used God as a tool. And people DIED for it.      #LINEID: 01100
->FaithCrisis_Conclusion1  
  

== FaithCrisis_Conclusion1 ==
    #SPEAKER: Jeanne
    //With deep anguish.
    So what good is believing in ANYTHING, if it makes you a monster in the end?      #LINEID: 00100
    [sobing]   #LINEID: 00200
//<VOICE ACTING> JEANNE has a strangled sob as she lowers her head.
-> FaithCrisis_Conclusion2

== FaithCrisis_Conclusion2 ==
//<VOICE ACTING> MAIKAN has a deep, uneasy sigh.
    #SPEAKER: NormalMaikan
    [sigh]    #LINEID: 00100

//The pause lingers between them for a moment.
TODO - Should we have a bird fly by that has been symbolic of change or connection throughout that might inspire MAIKAN to speak up? (Like a loon, hermit thrush or crow?) Or should he just give the Jesuit a meaningful look before thansitioning back to JEANNE? Some discussions / decisions we have to make about the direction here.

    #SPEAKER: NormalMaikan
    //Gathering his courage.
    Listen, I...        #LINEID: 00200
    
//Player is prompted to make a choice:
->FaithCrisisChoice

== FaithCrisisChoice ==
#SPEAKER: NormalMaikan
*[\[Share your own struggles with faith.\]]    ->FaithCrisisInnu       #LINEID: 00100
*[\[Agree Augustin took things MUCH too far.\]]  ->FaithCrisisJesuits     #LINEID: 00200


== FaithCrisisInnu ==
    #SPEAKER: NormalMaikan
    My people passed certain beliefs onto me, too. And I treasure those beliefs dearly.        #LINEID: 00100

TODO (Francis) : I've changed the logic here so the line about "failure" only happens if you tried to stop Pierre by force. The idea of abandonning Pierre because he failed to live up to your expectations shouldn't be treated as a "failure" IMO.
//The nature of the next line depends on fact checks:
// [IF - F_NoWay_PierreFateStopByForce = TRUE] ->InnuBroken
// [ELSE] ->InnuStrong
->DONE

== InnuBroken ==
    #SPEAKER: NormalMaikan
    //Dejected, ashamed.
    ...But I know how crushing it is, when you realize you've failed to live up to them.       #LINEID: 00200
->FaithCrisisBranch2    


== InnuStrong ==
    #SPEAKER: NormalMaikan
    //Tired:
    ...But I know how hard it can be to stay true to them, when they're put to the test.        #LINEID: 00200
->FaithCrisisBranch2    


== FaithCrisisJesuits ==
    #SPEAKER: NormalMaikan
    I can't deny Jesuits like him did terrible things, using "God" as justification.        #LINEID: 00100

//The nature of the next line depends on fact checks:
// [IF - F_Promise_FinalChoiceTehonLoyalty = TRUE] ->JesuitFuture
// [ELSE] ->JesuitJeanne
->DONE

== JesuitFuture ==
    #SPEAKER: NormalMaikan
    //Morose, pensive.
    And I'm sure more outsiders will use that justification again, to do even worse.      #LINEID: 00200
->FaithCrisisBranch2
    
== JesuitJeanne ==
    #SPEAKER: NormalMaikan
    //A little accusatory.
    And I can't deny resenting you for doing the same. No matter your reasons, or regrets.        #LINEID: 00200
->FaithCrisisBranch2


== FaithCrisisBranch2 ==
//<GESTURE> JEANNE looks miserable.
    
    #SPEAKER: NormalMaikan
    Because beliefs *change* you.       #LINEID: 00300

//The nature of the next line depends on groupings:
// [IF - G_Maikan_Instinctive = HIGH] ->BeliefFast
// [ELSE / IF - G_Maikan_Contemplative = HIGH] ->BeliefSlow
->DONE
  
== BeliefFast ==
    #SPEAKER: NormalMaikan
    //Self-chastising:
    They make you... Quick to judge things. For better AND for worse.       #LINEID: 00400
    But sometimes, you need *patience* to see what lays beyond your own perspective.        #LINEID: 00500
->MaikanCounterPreChoice

== BeliefSlow ==
    #SPEAKER: NormalMaikan
    //Self-chastising:
    They can... Color your way of thinking. Limit your outlook.      #LINEID: 00400
    And learning to broaden those perspectives without losing sight of yourself isn't easy.        #LINEID: 00500
->MaikanCounterPreChoice

== MaikanCounterPreChoice ==
//<GESTURE> JEANNE looks miserable...

    #SPEAKER: NormalMaikan
    //Sounding a bit more hopeful:
    Still...      #LINEID: 00600
    //<GESTURE> ...THen looks up at Maikan.
    I don't think your faith - ANY faith - was fundamentally *wrong.*     #LINEID: 00700

//Player is prompted to make an IMPORTANT choice.
-> MaikanCountersChoice


== MaikanCountersChoice ==
#SPEAKER: NormalMaikan
*[Faith is what let us overcome the impossible.]   ->MaikanCounters_ImpossibleSituations1    #LINEID: 00100
*[Faith taught us pinciples that better the world.] ->MaikanCounters_BetterWorld    #LINEID: 00200

== MaikanCounters_ImpossibleSituations1 ==
    #SPEAKER: NormalMaikan
    If you hadn't believed there was a way to keep going, or something waiting for you at the end...     #LINEID: 00100
    You would have given up and died a thousand times over. You may not even have left Europe.     #LINEID: 00200
    //Empowering, encouraging.
    But you held strong. Survived everything these wilds threw at you, and more.      #LINEID: 00300
->MaikanCounters_ImpossibleSituations2

== MaikanCounters_ImpossibleSituations2 ==
    #SPEAKER: Jeanne
    //Morose.
    What choice did I have?       #LINEID: 00400
    
    #SPEAKER: NormalMaikan
    None. Because those beliefs wouldn't ALLOW you to give up... Just like mine.        #LINEID: 00500
    //<CAMERA> Looking away, maybe focusing on the large masses of frost.
    No matter how hopeless things felt, I knew *had* to do something, *had* to try helping my people.      #LINEID: 00600

//The nature of the next line depends on groupings:
// [IF - G_Maikan_Openness = HIGH] ->ImpossibleTehon
// [ELSE / IF - G_Maikan_Traditionalist = HIGH] ->ImpossibleInnu
->DONE

== ImpossibleTehon ==
    #SPEAKER: NormalMaikan
    //With a note of heartfelt pride:
    It's the reason Tehonwastasta says he'd rather struggle doing something than suffer doing nothing.        #LINEID: 00700
->ImpossiblePreGrowth

== ImpossibleInnu ==
    #SPEAKER: NormalMaikan
    //Resolute:
    Because giving up on the Innu would be like... Giving up on everything that makes me who I am.     #LINEID: 00700
->ImpossiblePreGrowth

== ImpossiblePreGrowth == 
    #SPEAKER: NormalMaikan
    //As if emerging from the trance where he was kind of speaking to himself, before:
    And if those convictions are why both of us are standing here? I can't *truly* call them evil.     #LINEID: 00800

//<GESTURE> JEANNE hangs her head, touched and a little shaken.
-> CommonPreGrowth  


== MaikanCounters_BetterWorld ==
    #SPEAKER: NormalMaikan
    The wisdom my elders passed on to me... It's more than just stories, or traditions.        #LINEID: 00100
    //Heartfelt:
    It's love. For something bigger than myself. For my home, and *everything* about it.     #LINEID: 00200
    And no matter what happens in the future, I don't think those values can stop being part of me.        #LINEID: 00300
    
    #SPEAKER: Jeanne
    //Dismissive, scoffing.
    Well... Maybe our faiths are different that way.        #LINEID: 00400
    
    #SPEAKER: NormalMaikan
    That's not true. You confronted a *Jesuit* over actions you knew were wrong.       #LINEID: 00500
//JEANNE looks surprised. MAIKAN continues on, firmly.

//The nature of the next line depends on groupings:
// [IF - F_Promise_FinalChoiceTehonLoyalty = TRUE] ->BetterWorldRespect
// [ELSE] ->BetterWorldPurpose
->DONE

== BetterWorldRespect ==
    #SPEAKER: NormalMaikan
    You showed respect to a Wendat man, despite everything you were taught.     #LINEID: 00600
->BetterWorldPreGrowth

== BetterWorldPurpose ==
    #SPEAKER: NormalMaikan
    You found purpose in trying to build lasting peace with people in need.      #LINEID: 00600
->BetterWorldPreGrowth
    
== BetterWorldPreGrowth ==
    #SPEAKER: NormalMaikan
    And you stayed by Capitaine's side until the end, so he wouldn't die alone.     #LINEID: 00700
    //<GESTURE> JEANNE hangs her head, touched and a little shaken.
    Say what you will about God abandoning you. But you haven't abandoned YOUR values.       #LINEID: 00800
->CommonPreGrowth    
    

== CommonPreGrowth ==
    #SPEAKER: Jeanne
    //A little trouble, confused:
    Then... You don't think I should cast Him aside?       #LINEID: 00900
    
    #SPEAKER: NormalMaikan
    I don't know. That's not not my choice to make.       #LINEID: 01000
    But I think it's better to keep our beliefs resilient than give up on them altogether.      #LINEID: 01100
->MaikanCounters_GrowthBranch  


== MaikanCounters_GrowthBranch ==
// Next line depends on growth choices.
// [IF G_Maikan_Traditionalist = HIGH] -> MaikanCounters_Traditionalist
// [ELSE / IF G_Maikan_Openness = HIGH] -> MaikanCounters_Openness 
->DONE

== MaikanCounters_Traditionalist ==
    #SPEAKER: NormalMaikan
    Because if we're consumed by BLIND devotion, and refuse to see truths right in front of us...     #LINEID: 01200
-> Faith_Conclusion1

== MaikanCounters_Openness ==
    #SPEAKER: NormalMaikan
    Because if we try to bend reality to our wills, until it fits what we THINK is righteous...        #LINEID: 01200
-> Faith_Conclusion1


== Faith_Conclusion1 ==
    #SPEAKER: NormalMaikan
    //<GESTURE> Motioning to AUGUSTIN:
    We'll end up just like *him.*        #LINEID: 01300
    And we need to be better than that, it we want to make the future brighter.      #LINEID: 01400
    //Firmly:
    So even if you give up your faith... Make sure you don't give up on courage, or compassion.        #LINEID: 01500
-> Faith_Conclusion2


== Faith_Conclusion2 ==
//<VOICE ACTING> A long pause, then a sigh and a light laugh.
    
    #SPEAKER: Jeanne
    [laughing]   #LINEID: 01600
    //Looking up at MAIKAN with a touched smile, a bit more resolve in her.
    ...I honestly wish Father Augustin had been more like you.       #LINEID: 01700

//<VOICE ACTING> MAIKAN slowly works his way into a sad, humorless, disbelieving laugh.
    
    #SPEAKER: NormalMaikan
    [laughing]   #LINEID: 01800
    //After a sad, dejected laugh, looking at Augusting one last time.:
    How ironic. I'm the one who wishes other outsiders were more like *you*.      #LINEID: 01900
    //MAIKAN begins walking away:
    ...But I doubt they ever will be.      #LINEID: 02000

//<CAMERA> Slow fade out.
//<MUSIC> Maikan-Peaceful phrase
TODO - TBD if this is the right place to transition.
-> DONE


TODO - This section was deemed best to cut. I've grayed it out instead for now to use as reference for other sections where it might come in useful.
////<VOICE ACTING> MAIKAN has a polite chuckle.
////<PERSPECTIVE MELD> Some sign that the alignment of values is beginning. Reducing snow, syncing music, visual fusion.
    
    //#SPEAKER: Jeanne
    ////After another pause, looking to Augustin:
    //Hey, um...      #LINEID: 01800
    //When all this is done, could you... Help me bury him?       #LINEID: 01900

////Player is prompted to make a choice.
//->BuryAugustinChoice

//== BuryAugustinChoice ==
//*[Of course, but...]   ->WhyBury   #LINEID: 00100
//*[You WANT to bury him?! ] ->AngeredBury    #LINEID: 00200

//== WhyBury ==
    //#SPEAKER: NormalMaikan
    ////Confused, but not mean in any way:
    //Why do you need me to help you do *that?*      #LINEID: 00100
    
////Next lines depend on growth.
//// [IF G_Jeanne_FreeSpirited = HIGH] ->Dignity
// [ELSE / IF G_Jeanne_Conservative = HIGH] ->Purgatory
//->DONE

//== AngeredBury ==    
    //#SPEAKER: NormalMaikan
    ////Confused, quietly outraged.
    //I... I thought you HATED this man.      #LINEID: 00100

////Next lines depend on growth.
//// [IF G_Jeanne_FreeSpirited = HIGH] ->Dignity
//// [ELSE / IF G_Jeanne_Conservative = HIGH] ->Purgatory
//->DONE

//== Dignity ==
    //#SPEAKER: Jeanne
    //Regardless of his crimes, he's a Jesuit, and...     #LINEID: 00200
    //Gathering resolve.
    //...No. No, he's a *person.* That's reason enough for him to be given dignity.     #LINEID: 00300
//->ConclusionTransition

//== Purgatory ==
    //#SPEAKER: Jeanne
    //Nuns at the convent said sinners were to be cleansed of evil in purgatory.       #LINEID: 00200
    ////Pitying:
    //If proper rites can provide a chance at atonement... I would like to give him one.     #LINEID: 00300
//->ConclusionTransition
TODO - End of Grayed-out section.



// ------------------- NORTH PATH -------------------
// -------------- RELATION TO OUTSIDERS -------------
// ---------------- <PLAY AS JEANNE> -----------------
TODO - The shortest path to the end of part 3 currently requires the palyer to go through 59 lines. (FOR REFERENCE, THE EQUIVALENT FOR STRANGER3 is 100 LINES)

== WalkingToTradingPost ==
// <AUDIO> The wind still blows. Rustling of leaves. The soundscape is less muted, but still subtle.
// <CAMERA> Fade in first person. Maikan is ahead.
// Both characters walk together again. They emerge from the forest back to the area outside of the trading post.
// As they walk around the bend in the path, we see the dead trader, dead Wendat, and remnant of the trading post come into clearer focus.
//MAIKAN is leading the way to the area, where we'll have a decent view of the NPCs working. JEANNE, controlled by the player, follows closely.

    #SPEAKER: Jeanne
    //A little worried, not sure how to phrase it:
    Do you not trust fur traders because you think they're... Irredeemable?       #LINEID: 00100

    #SPEAKER: NormalMaikan
    Worse. I think they're *complicated.*       #LINEID: 00200

//Next lines depend on growth.
// [IF G_Maikan_Instinctive = HIGH] ->Complex_Instinct
// [ELSE / IF G_Maikan_Contemplative = HIGH] ->Complex_Contemplative
->DONE
    
== Complex_Instinct ==
    #SPEAKER: NormalMaikan
    //Self-chastising
    I know the French aren't monsters. They have principles, and reasons for doing what they do.       #LINEID: 00300
    //Budding insecurity, anxiety:
    Yet every time I'm around *those* men, my instinct is to treat them like... Rabid animals.       #LINEID: 00400
    Things that could go mad, or even *kill* me if I'm not careful.         #LINEID: 00500

TODO - Around this point, JEANNE and MAIKAN should be reaching a stopping point to continue their conversation more seriously.    
//Next lines depend on fact checks.
// [IF F_NoWay_PierreFateConvince = TRUE] ->Exceptions
// [ELSE] ->NoExceptions
->DONE


== Complex_Contemplative ==
    #SPEAKER: NormalMaikan
    //Self-chastising:
    I *tried* to learn more about your people. To make sense of your wants and actions.        #LINEID: 00300
    //Budding insecurity, anxiety:
    Yet every time, right when we're about to see eye-to-eye, or believe we're not so different?       #LINEID: 00400
    //With a little extra worry:
    Something... Happens. And it makes me wonder if true understanding is naïve to hope for.       #LINEID: 00500

TODO - Around this point, JEANNE and MAIKAN should be reaching a stopping point to continue their conversation more seriously.    
//Next lines depend on fact checks.
// [IF F_NoWay_PierreFateConvince = TRUE] ->Exceptions
// [ELSE] ->NoExceptions
->DONE

== Exceptions ==
    #SPEAKER: NormalMaikan
    //With a brief note of happiness, looking towards Pierre.
    There are exceptions, obviously. Though they're few and far between.       #LINEID: 00600
    But even if they weren't...     #LINEID: 00700
->OutsidersCrisis

== NoExceptions ==
    #SPEAKER: NormalMaikan
    //Deeply dejected:
    ...Though maybe *I'm* the reason things feel that way.      #LINEID: 00600
    Because...        #LINEID: 00700
->OutsidersCrisis


== AmbientBackgroundTalks ==
//<ANIMATION>In the distance, the traders are seen working together, arguing or sifting through supplies for whatever they can find. The Wendat are visible as well, chatting with each other. Shelters are in the process of being taken down, marking the group's imminent departure.
//PIERRE and TEHON can both be noticed among them, discussing with each other AND helping their respective allies.
//<AUDIO> We can make out a few of the traders talking, just some general distant chatter - generic laughter, borderline inaudible lines.
TODO - We may need to be tactical with this, as we could have a limited amount of time / recording budget left over for the VA's here. Picked a few that are more likely to have recording time since they're either A) voiced late in the project B) voiced by Unreliable staff and C) voiced by Charles Bender.

    #SPEAKER: Albert
    //Loud, angry:
    Hey, Hyacinthe! Quit dicking around and help us out!      #LINEID: 00100

    #SPEAKER: Hyacinthe
    //Slurring, still a bit drunk.
    I'm coming, I'm coming... Just quit yelling, alright? My head's killing me.     #LINEID: 00200
    
    #SPEAKER: Wahowen
    Stawahonhi! Ehske’ndiara’s i?       #LINEID: 00300
    //EN TRANSLATION: "Stawahonhi! Will you help me?"
    
    #SPEAKER: Stawahonhi
    Iyiohnk!        #LINEID: 00400
    //EN TRANSLATION: "I'm coming!"
    
//<VOICE ACTING> Inaudible banter between Tehonwastasta and Wendat / PIERRE and traders / PIERRE and Tehonwastasta
//<VOICE ACTING> Some laughter between PIERRE and Tehonwastasta
->DONE


== OutsidersCrisis ==
// They eventually reach a small vista where both the trader group and the Wendat group are visible, in the distance.

    #SPEAKER: NormalMaikan
    I'll never get over the fact NONE of this would have happened, if weren't for *them.*      #LINEID: 00800

//A dejected, crushing pause.    
TODO - DO WE INTRODUCE A *FLUFF* CHOICE AROUND HERE/ABOVE? OR SAVE IT FOR LATER? TBD BASED ON HOW MUCH CONTROL WE GIVE PLAYERS BETWEEN THE WALKING SEGMENT.
//Next line depends on growth:
// [IF G_Maikan_Traditionalism = HIGH] -> OutsidersCrisis_Traditionalism
// [ELSE / IF G_Maikan_Openness = HIGH] -> OutsidersCrisis_Openness
-> DONE

== OutsidersCrisis_Traditionalism ==
    #SPEAKER: NormalMaikan
    //Proud, insistent, irritated:
    I should be back home. Preparing for winter Caribou hunts. Living like an Innu *should* live.       #LINEID: 00900
    //Crushed:
    Not wondering how much longer we have left.      #LINEID: 01000
    //Looking to JEANNE, deeply dejected.
    ...It is even possible? To preserve our land and traditions, when outsiders keep tearing both apart?       #LINEID: 01100
-> PreCharacterChoice

== OutsidersCrisis_Openness ==
    #SPEAKER: NormalMaikan
    //Self-chastising:
    I know there's nothing I can do about it. That I should be focusing on the future, not the past.     #LINEID: 00900
    //Crushed:
    But is *anything* I've done so far really going to make a difference for us?        #LINEID: 01000
    //Looking to JEANNE, deeply dejected.
    And even if it does... How am I supposed to know if those differences will be *enough*?     #LINEID: 01100
-> PreCharacterChoice

== PreCharacterChoice ==
    #SPEAKER: Jeanne
    ...I'm not sure I'm the right person to answer that.     #LINEID: 01200
    //<CAMERA> Focus on PIERRE and Tehonwastasta in the distance.
    But you may already HAVE an answer, standing right in front of you.      #LINEID: 01300

TODO - I encourage us to have TEHON on the side of one choice, and PIERRE on the other.    
//Player is prompted to make a choice.
->CharacterChoice

== CharacterChoice ==
#SPEAKER: Jeanne
*[Tehon's efforts led to thriving partnerships.]        ->OutsidersCrisis_Tehon    #LINEID: 00100
*[Pierre proves understanding isn't just a dream.]     ->OutsidersCrisis_Pierre    #LINEID: 00200


== OutsidersCrisis_Tehon ==
//<GESTURE> JEANNE points at TEHON.
//Next line depends on fact check.
// [IF F_Promise_FinalChoiceTehonLoyalty = TRUE] -> OutsidersCrisis_TehonGOOD
// [ELSE] -> OutsidersCrisis_TehonBAD
-> DONE  
    
== OutsidersCrisis_TehonGOOD ==
    #SPEAKER: Jeanne
    I know it might seem hard to believe, after everything that happened...     #LINEID: 00100
->OutsidersCrisis_TehonCOMMON1

== OutsidersCrisis_TehonBAD ==
    #SPEAKER: Jeanne 
    Maybe I have no right to say this after what I've done to them...       #LINEID: 00100
->OutsidersCrisis_TehonCOMMON1

== OutsidersCrisis_TehonCOMMON1 ==
//<GESTURE> JEANNE points at TEHON.
    
    #SPEAKER: Jeanne
    But the Wendat are able to thrive and adapt because of what people like Tehon do.        #LINEID: 00200

    #SPEAKER: NormalMaikan
    //A little dismissive:
    So... What? You're saying I need to become an interpreter?      #LINEID: 00300
    
    #SPEAKER: Jeanne
    You could. But I don't think it's your ONLY option.     #LINEID: 00400
    Because Tehon is living proof we have MANY ways to coexist, or bridge gaps between us.     #LINEID: 00500
-> OutsidersCrisis_TehonCOMMON2


== OutsidersCrisis_TehonCOMMON2 ==
    #SPEAKER: NormalMaikan
    //Looking towards Tehon, melancholy.
    ...I'd like to believe that.        #LINEID: 00600
    But he didn't choose this because he *wanted* to. He HAD to, for his people's sake.      #LINEID: 00700
    And I'm scared someday, very soon, Innu will be forced to make similar sacrifices.      #LINEID: 00800

//Next line depends on fact check.
// [IF F_NoWay_PierreFateConvince = TRUE] -> OutsidersCrisis_Tehon_PierreRules
// [ELSE] -> OutsidersCrisis_Tehon_PierreDrools
-> DONE 

== OutsidersCrisis_Tehon_PierreRules ==
    #SPEAKER: NormalMaikan
    //A bit mournfully, looking at Pierre.
    Plus, even with people like Pierre on our side...      #LINEID: 00900
->OutsidersCrisis_TehonEND

== OutsidersCrisis_Tehon_PierreDrools
    #SPEAKER: NormalMaikan
    //Bitterly, looking at Pierre.
    Plus, with people like Pierre and Augustin around...      #LINEID: 00900
->OutsidersCrisis_TehonEND    
    
== OutsidersCrisis_TehonEND ==    
    #SPEAKER: NormalMaikan
    //Miserable, motioning at TEHON during *he*.
    Those sacrifices could make us crumble. Lose ourselves, to fear, or hate. Like *he* almost did.       #LINEID: 01000
->OutsidersCrisis_Assumption


== OutsidersCrisis_Pierre ==
//<GESTURE> JEANNE points at PIERRE.
//Next line depends on fact check.
// [IF F_NoWay_PierreFateConvince = TRUE] -> OutsidersCrisis_PierreGOOD
// [ELSE] -> OutsidersCrisis_PierreYIKES
-> DONE   

== OutsidersCrisis_PierreGOOD == 
    #SPEAKER: Jeanne
    //Resolute, insistent:
    No matter his mistakes, no matter his actions, you kept believing Pierre could be better.         #LINEID: 00100
    And that belief *changed* him. Little by little, you made a REAL difference.       #LINEID: 00200
->OutsidersCrisis_PierreCOMMON

== OutsidersCrisis_PierreYIKES == 
    #SPEAKER: Jeanne
    //With a hint of unease:
    Regardless of your differences, or how things ended between you...      #LINEID: 00100
    Your words REACHED Pierre, at one point. He saw the world through your eyes, and grew from it.        #LINEID: 00200
->OutsidersCrisis_PierreCOMMON

== OutsidersCrisis_PierreCOMMON ==
//<VOICE ACTING> MAIKAN has an uneasy sigh.

    #SPEAKER: Jeanne
    If you can do something like that for someone like him...       #LINEID: 00300
    //<GESTURE> Motions to other white folk in the process.
    Why wouldn't you be able do the same with the rest of them?       #LINEID: 00400

//Next line depends on fact check.
// [IF - F_NoWay_PierreFateConvince = TRUE]  ->Pierre_MADEPEACE
// [ELSE / IF - F_NoWay_PierreFateStopByForce = TURE]  ->Pierre_ATTACKED
// [ELSE]   ->Pierre_ABANDON
-> DONE     

== Pierre_MADEPEACE ==
    #SPEAKER: NormalMaikan
    //With a sad, but heartwarmed smile:
    Because Pierre is just one person. And an exceptional one at that.      #LINEID: 00500
    There's no guarantee any of the others will be open to learn our ways like he was.         #LINEID: 00600
    //A hint of shame:
    ...And there's no guarantee I'm the best person to be teaching our ways either.      #LINEID: 00700
    //<GESTURE> Sweeping motion towards the whole of the trading post area, traders + Wendat + wilderness.
    All this? It's too much for a few people with good intentions to solve. And...     #LINEID: 00800
-> OutsidersCrisis_PIERRE_End


== Pierre_ATTACKED ==
    #SPEAKER: NormalMaikan
    //Wish shame, self-resent:
    Because Pierre is proof they can change *us* too. And not always for the better.       #LINEID: 00500
    //Struggling to justify his actions, disgusted in himself:
    I wasn't thinking straight when I attacked him. I just wanted him to *stop*, but...     #LINEID: 00600
    For a moment, I became like HIM. A person who cast aside his values, to let hate take over.      #LINEID: 00700
    //A sad, miserable scoff.
    Maybe that's proof we're not so different, in a twisted kind of way. But...     #LINEID: 00800
-> OutsidersCrisis_PIERRE_End


== Pierre_ABANDON ==
    #SPEAKER: NormalMaikan
    //Frustrated:
    Because I can't fix a person who doesn't WANT to change.       #LINEID: 00500

//Next line depends on fact check.
// [IF - G_Maikan_PierreTrust = HIGH]  ->Pierre_ABANDON_Good
// [ELSE]  ->Pierre_ABANDON_Bad
->DONE 

== Pierre_ABANDON_Good ==
    #SPEAKER: NormalMaikan
    //Calming down a little:
    ...I don't hate Pierre. I don't even think he's a *bad* person. If anything, I owe him a lot.       #LINEID: 00600
    But none of that matters, if nothing I say or do can get through to him.        #LINEID: 00700
    //Helplessly:
    Maybe he's just too stubborn to learn. Or maybe *I* stopped trying too soon. Either way...     #LINEID: 00800
-> OutsidersCrisis_PIERRE_End

== Pierre_ABANDON_Bad ==
    #SPEAKER: NormalMaikan
    //Getting more irritated:
    And for all I know? There's a chance NOTHING I did ever really got through to him.     #LINEID: 00600
    He didn't just ignore what I had to say. He outright *rejected* it.      #LINEID: 00700
    //Slowly growing dejected:
    And if the others are the same as him, or somehow worse? There's nothing I can do. Because...       #LINEID: 00800
-> OutsidersCrisis_PIERRE_End

== OutsidersCrisis_PIERRE_End ==
    #SPEAKER: NormalMaikan
    //With a certain reverence for Tehon, but not happy. Emphasis on "lost".
    If even Tehonwastasta struggled, almost lost himself trying to make things right...       #LINEID: 00900
    //Turning to JEANNE, dejected:
    How is someone like *me* supposed to do better?       #LINEID: 01000
-> OutsidersCrisis_Assumption


== OutsidersCrisis_Assumption ==
//<VOICE ACTING> A deep, shaky breath from MAIKAN, like he's on the edge of tears.

    #SPEAKER: NormalMaikan
    ...Sometimes, I regret finding that wolf's corpse, or going after its killer.       #LINEID: 01100
    //<GESTURE> Motioning to the trading post's remains.
    Maybe then, I wouldn't realize how powerless I am to stop our world from changing...      #LINEID: 01200
    
//Next line depends on grouping check.
// [IF - G_Maikan_Traditionalist = HIGH]  ->Assumptions_Tradition
// [ELSE / IF - G_Maikan_Openness = HIGH]  ->Assumptions_Open
->DONE 

== Assumptions_Tradition ==
    #SPEAKER: NormalMaikan
    //Crushed:
    ...And I could keep pretending things will stay the same.    #LINEID: 01300
->JeanneAssumptions

== Assumptions_Open ==
    #SPEAKER: NormalMaikan
    //Crushed:
    ...And I could keep believing good intentions are enough.     #LINEID: 01300
->JeanneAssumptions

== JeanneAssumptions ==
TODO - Debate adding some WINDIGO frost spreading in the area, as if emphasizing Maikan's despair.

    #SPEAKER: Jeanne
    //<CAMERA> Sad. Turning to the horizon, after a pause.
    ...Yeah. I know how you feel.        #LINEID: 01400
    Part of me doesn't want to remember ANYTHING I saw, or suffered out there...       #LINEID: 01500

//<ANIMATION> MAIKAN's body-language becomes sadder, more tired.

    #SPEAKER: Jeanne
    // After another pause, taking a deep breath, steeling her resolve. 
    But the other part of me? It knows forgetting would be *unforgivable.*      #LINEID: 01600
    //MAIKAN turns to face her during this line, confused:
    Because...      #LINEID: 01700

//Player is prompted to make a choice.
->JeanneCountersChoice

== JeanneCountersChoice ==
    #SPEAKER: Jeanne
    *[Our struggles proved we can teach each other how to grow.] ->JeanneCounters_Ignorance1    #LINEID: 00100
    *[Ignorance or inaction would only lead to WORSE outcomes.] ->JeanneCounters_DoNothing    #LINEID: 00200

== JeanneCounters_Ignorance1 ==
    #SPEAKER: Jeanne
    If I hadn't come to the New World, I never would have learned how to survive on my own.     #LINEID: 00100
    //AS if still troubled by what she learned...
    Tehon would have never taught me what his people went through, or what men like Augustin did.       #LINEID: 00200
    //Then, steeling herself.
    And hard as those lessons were, I'm *glad* I learned them.     #LINEID: 00300
    They made me wiser. More capable of making the world better, in a way that benefits EVERYONE.     #LINEID: 00400
    TODO - Should we put a growth branch here? Fears like there's potential to vary this line in some way.
-> JeanneCounters_Ignorance2

== JeanneCounters_Ignorance2 ==

    #SPEAKER: NormalMaikan
    //<GESTURE> Turning away from Jeanne.
    ...Too bad none of that applies to me.      #LINEID: 00500
    
    #SPEAKER: Jeanne
    Wrong.      #LINEID: 00550
    //Maikan seems caught off-guard:
    If you'd never left your home, you never would have seen what things are REALLY like out here.     #LINEID: 00600
    You never would have learned French from Pierre, or the importance of understanding from Tehon...       #LINEID: 00700
    //With gratitude.
    ...And you never would have helped *me*. We wouldn't even be having this conversation.        #LINEID: 00800
-> JeanneCounters_PREGrowth1

== JeanneCounters_DoNothing ==
TODO (Francis) - I've matched the logic with previous choices here. Don't worry bout it!
//Next line depends on fact check.
// [IF - F_Gifts_MaikanCounter_ImpossibleSituations = TRUE]  
//          [IF - G_Maikan_Openness = HIGH] ->DoNothingTehon
//          [ELSE - IF G_Maikan_Traditionalist = HIGH] ->DoNothingInnu

// [ELSE / IF - F_Gifts_MaikanCounter_BetterWorld = TRUE]  ->DoNothingBetterWorld
->DONE

== DoNothingTehon ==
    #SPEAKER: Jeanne
    You said you were like Tehon. That you'd rather struggle doing this than suffer doing nothing.     #LINEID: 00100
->DoNothingContinued1

== DoNothingInnu ==
    #SPEAKER: Jeanne
    You said doing nothing to help the Innu would like be betraying them. Betraying who you are.     #LINEID: 00100
->DoNothingContinued1

== DoNothingBetterWorld ==
    #SPEAKER: Jeanne
    You said your people's values, and your love for this land... They're IMPOSSIBLE to cast aside.     #LINEID: 00100
->DoNothingContinued1

== DoNothingContinued1 ==
    #SPEAKER: Jeanne
    So ignoring those urges to do what you think is right would have been a mistake.     #LINEID: 00200
    Because realizing years later, that you COULD have done something, before it was too late?      #LINEID: 00300
    //Somber, looking to the distance.
    That sounds a million times more soul-crushing than this.        #LINEID: 00400
-> DoNothingContinued2

== DoNothingContinued2 ==
    #SPEAKER: NormalMaikan
    //<GESTURE> Turning away from Jeanne.
    ...What's the difference, if my actions were pointless?        #LINEID: 00500
    
    #SPEAKER: Jeanne
    //With a tone of resolve, steeling him.
    But they *weren't*. Regardless of outcome, you saved Pierre's life in that cave.     #LINEID: 00600
    //Maikan seems caught off-guard.
    You fought to help people in that fire. Stopped Tehon from making a terrible mistake.       #LINEID: 00700
    //Softly, with gratitude.
    You even helped *me*, when I thought I was BEYOND helping.       #LINEID: 00800
-> JeanneCounters_PREGrowth1


== JeanneCounters_PREGrowth1 ==
    #SPEAKER: Jeanne
    So even if there ARE unresolvable difference between us, or a limit to what we can do...        #LINEID: 00900
    None of that should stop us from trying to do what we can, or sticking to our principles.     #LINEID: 01000

// <MUSIC> TODO - Some phrase that underlines what Jeanne just said.
-> JeanneCounters_PREGrowth2

== JeanneCounters_PREGrowth2 ==
//A pause, where JEANNE's words seem to start reaching MAIKAN a little.

    #SPEAKER: NormalMaikan
    //Concerned, but not hopeless:
    ...But what if trying isn't enough?        #LINEID: 01100
    //With extra hesitation on "change":
    What if my principles won't make the *right* difference unless they... Change?     #LINEID: 01200
    TODO - I'd consider adding an INSTINCTIVE / CONTEMPLATIVE branch here, but I'm not quite sure what form that branch should take.

//Player is prompted to make a choice:
->JeanneCounters_FinalChoice

== JeanneCounters_FinalChoice ==
#SPEAKER: Jeanne
*[Persist, no matter what.]        ->Persist_PREGrowth    #LINEID: 00100
*[Embrace the change instead.]     ->Embrace_PREGrowth    #LINEID: 00200

== Persist_PREGrowth ==
    #SPEAKER: Jeanne
    Then you hold onto your principles, and keep trying until it IS enough.     #LINEID: 00100
->JeanneCounters_GrowthBranch 
   
== Embrace_PREGrowth ==
    #SPEAKER: Jeanne
    Then you keep your principles malleable, without losing sight of what makes them *yours*.       #LINEID: 00100
->JeanneCounters_GrowthBranch

== JeanneCounters_GrowthBranch ==
//<GESTURE> MAIKAN seems particularly surprised by JEANNE's words.
//Next line depends on growth:
// [IF G_Jeanne_Conservatism = HIGH] -> FaithCrisis_Conservatism
// [ELSE / IF G_JeanneFreeSpirited = HIGH] -> FaithCrisis_FreeSpirited
-> DONE

== JeanneCounters_Conservatism ==
    #SPEAKER: Jeanne
    //Firmly, unwavering:
    And that doesn't mean *denying* change, or ignoring its consequences.       #LINEID: 00200
    It means moving forward DESPITE change, wisely, so you can survive it unscathed.        #LINEID: 00300
    //A bit playful:
    After all... Even bears have to hibernate come winter, right?       #LINEID: 00400
->JeanneCounters_Denouement

== JeanneCounters_FreeSpirited ==
    #SPEAKER: Jeanne
    //Firmly, unwavering:
    I don't think ANYONE can survive without adapting to the world around them.       #LINEID: 00200
    But adapting doesn't HAVE to mean sacrificing the things that make us who we are, either.       #LINEID: 00300
    //A bit playful:
    After all... Deer don't stop being deer just because they shed their antlers, right?        #LINEID: 00400
->JeanneCounters_Denouement

== JeanneCounters_Denouement ==
//<VOICE ACTING> A pensive sound, JEANNE's example having surprised, but resonated with him. He looks out to the traders again.   

    #SPEAKER: Jeanne
    //Reassuring.
    ...Stay strong, Maikan.     #LINEID: 00500

//Next line depends on growth branching.
// [IF G_Jeanne_Headstrong = HIGH] -> Denouement_Headstrong
// [ELSE / IF G_Jeanne_Manipulative = HIGH] -> Denouement_Manipulative
-> DONE    
    
== Denouement_Headstrong ==
    #SPEAKER: Jeanne
    Your people didn't make it this far by giving up. And neither did we.     #LINEID: 00600
-> OutsidersCrisis_Conclusion

== Denouement_Manipulative ==
    #SPEAKER: Jeanne
    Be cunning. Be resourceful. And be the person your people NEED you to be.       #LINEID: 00600
-> OutsidersCrisis_Conclusion


== OutsidersCrisis_Conclusion ==
//A pensive pause, as MAIKAN looks to the horizon. Then:
    
    #SPEAKER: NormalMaikan
    You know, this may not sound like a compliment...       #LINEID: 00700
    //Turning to JEANNE, smiling.
    ...But you remind me of Great-Grandfather.      #LINEID: 00800

// <VOICE ACTING> The two share a brief moment of laughter.
// <CAMERA> Pans to something in the nearby scenery.
// <MUSIC> Jeanne-Peaceful phrase
// <CAMERA> Fade to black...
-> DONE



// --------------- TRADING POST VISTA -----------------
// ------------------ THE EXCHANGE -------------------
// ---------------- <PLAY AS MAIKAN> -----------------

== ExchangeIntro ==
// <CAMERA> ...Then fade in on Maikan's first-person perspective.
// Both JEANNE and MAIKAN are sitting on a log overlooking the trading post. (Same vista as in Arrival at the Post).
// The lighting is softer, it suggests time has passed, there's more of a beautiful, poignant look to the environment despite the desolate trading post. Traders and Wendat are done working, and more preparing to head out on their respective journeys.

    #SPEAKER: NormalMaikan
    You spoke to Pierre?         #LINEID: 00100
    
    #SPEAKER: Jeanne
    Yeah. He agreed to take me to Quebec, just like he first promised.     #LINEID: 00200
    
//Next line depends on growth branching.
// [IF F_Stranger3_BribePierre = TRUE] -> Deal_Money
// [ELSE / IF F_Stranger3_BlackmailPierre = TRUE] ->Deal_Blackmail
// [ELSE] -> Deal_Convince
-> DONE     

== Deal_Money ==
    #SPEAKER: Jeanne
    //A little worried:
    I'm not exactly sure how I'll keep *my* promise and pay him properly, but...        #LINEID: 00300
    //With a sigh of resignation, but still anxious.
    ...Guess I'll figure that out when we get there.      #LINEID: 00400
->ExchangeIntroCont
 

== Deal_Blackmail ==   
    #SPEAKER: NormalMaikan
    Surprised he didn't call that bluff you made to blackmail him.      #LINEID: 00300

//Next line depends on growth branching.
// [IF G_Jeanne_Manipulative = HIGH] ->Blackmail_Manipulative
// [ELSE] ->Blackmail_Default
->DONE

== Blackmail_Manipulative ==
    #SPEAKER: Jeanne
    //Chuckling, but not joyous:
    It pays to be a good liar sometimes.     #LINEID: 00400
->ExchangeIntroCont

== Blackmail_Default ==
    #SPEAKER: Jeanne
    //A bit uneasy:
    Well... He might, eventually. But I'll deal with that *if* it happens.      #LINEID: 00400
->ExchangeIntroCont

== Deal_Convince ==    
//Next line depends on growth branching.
// [IF G_Jeanne_PierreAmicable = HIGH] ->ConvinceGood
// [ELSE / IF G_Jeanne_PierreAmicable = LOW] ->ConvinceBad
->DONE

== Convince_Good ==
    #SPEAKER: Jeanne
    //A bit upbeat:
    And honestly? I'm looking forward to traveling with him again.      #LINEID: 00300
->ConvinceEnd    

== Convince_Bad ==    
    #SPEAKER: Jeanne
    //Resigned, but not hopeless:
    It's not ideal. But better to go with him than by myself.      #LINEID: 00300
->ConvinceEnd

== ConvinceEnd ==
    #SPEAKER: Jeanne
    //A little snide:
    Plus, I think I've proved I'm more than just dead weight by now.     #LINEID: 00400
->ExchangeIntroCont    
    

== ExchangeIntroCont ==
    #SPEAKER: Jeanne
    How about you? Back to Totouskak, right?     #LINEID: 00500
    
    #SPEAKER: NormalMaikan
    //<GESTURE> Motions down at Tehon and the Wendat.
    Mm-hm. As soon as I'm done helping Tehonwastasta with his group's preparations.        #LINEID: 00600
    
    #SPEAKER: Jeanne
    //After a worried pause:
    ...Will you be okay? Trekking all that way alone, again?     #LINEID: 00700

    #SPEAKER: NormalMaikan
    //Grateful for her asking.
    I think so.     #LINEID: 00800
    I'll admit, I'm still not sure what to do about *them*, or the winter spirit, but...     #LINEID: 00900

//Next line depends on grouping.
// [IF - G_Maikan_Openness = HIGH] ->Exchange_NewWay
// [ELSE / IF - G_Maikan_Traditionalist = TRUE] ->Exchange_OldWay
->DONE 

== Exchange_NewWay ==
    #SPEAKER: NormalMaikan
    //With resolve:
    ...I know there'll be *something* I can do out there. And I'll find it.        #LINEID: 01000

//<AUDIO> Consider adding a peaceful phrase, a short encouraging cue to emphasize that hope has been found, is solidified.
-> TheExchange1  

== Exchange_OldWay ==  
    #SPEAKER: NormalMaikan
    //With resolve
    ...I won't let that stop me from keeping the Innu safe. Not *ever* again.      #LINEID: 01000
    
//<AUDIO> Consider adding a peaceful phrase, a short encouraging cue to emphasize that hope has been found, is solidified.
-> TheExchange1


== TheExchange1 ==
//<VOICE ACTING> A satisfied sigh from JEANNE.
//<CAMERA> MAIKAN briefly focuses on the horizon as well...

    #SPEAKER: Jeanne
    //Uneasy, reaching for something at her side
    H-hey, um... I know this thing isn't *mine* to begin with, but...       #LINEID: 01100

// <ANIMATION> JEANNE takes the fur and offers it to Maikan.

    #SPEAKER: Jeanne
    I think you should have this.        #LINEID: 01200

//Next line depends on fact checks.
// [IF - F_Gifts_MaikanCounter_ImpossibleSituations = TRUE] ->Gratitude_Impossible
// [ELSE / IF - F_Gifts_MaikanCounter_BetterWorld = TRUE] ->Gratitude_BetterWorld
->DONE     

== Gratitude_Impossible ==
    #SPEAKER: Jeanne
    //With a smile:
    I know you'll use it to set things right, no matter what comes your way next.        #LINEID: 01300

//Player is prompted to make a choice:
->TheExchange2

== Gratitude_BetterWorld ==
    #SPEAKER: Jeanne
    //With a smile:
    You can... Consider it thanks. For reminding me not to give up on myself.       #LINEID: 01300
    
//Player is prompted to make a choice:
->TheExchange2   

== TheExchange2 ==
    #SPEAKER: NormalMaikan
    //Stammering, in disbelief that JEANNE is just *giving* him the pelt.
    That's... I don't know how I could repay you for -       #LINEID: 01400
    
    #SPEAKER: Jeanne
    //Firmly, but kind:
    You don't *have* to repay me. It's what you came here for. And you need it more than I do.        #LINEID: 01500

//A brief pause, where MAIKAN seems completely overwhemled. Then:
->TheExchange3

== TheExchange3 ==

    #SPEAKER: NormalMaikan
    I... I can't even *begin* tell you how much this mean to me.        #LINEID: 01600
    //Reaching for his "pockets". Jeanne's expression becomes a little perplexed.
    ...I can only hope *this* means something to you too.     #LINEID: 01700

//<ANIMATION> MAIKAN takes out the rosary from his "pockets", and offers it in return.
->TheExchange4

== TheExchange4 ==
//<ANIMATION> (3rd person) Jeanne is visibly shaken at the sight of the pendant.

    #SPEAKER: Jeanne
    //Maybe clutching the place at her chest where the rosary is supposed to lay:
    That's my...!       #LINEID: 01800
    
    #SPEAKER: NormalMaikan
    I know you might not believe in what this symbol represents anymore.      #LINEID: 01900
    //With Resolve:
    But I want to believe in *you*, and whatever path you choose to follow next.     #LINEID: 02000
    
//Next line depends on fact checks.
// [IF - F_Gifts_JeanneCounter_Persist = TRUE] ->Vow_Resilient
// [ELSE] ->Vow_Adaptive
->DONE 

== Vow_Resilient ==
    #SPEAKER: NormalMaikan
    //Smiling, reminding her of what she told him before:
    So... Promise me you won't give up out there either, alright?        #LINEID: 02100
->TheExchangeFinale

== Vow_Adaptive ==
    #SPEAKER: NormalMaikan
    //Smiling, reminding her of what she told him before:
    So... Promise me you won't be afraid of change either, alright?        #LINEID: 02100
->TheExchangeFinale


== TheExchangeFinale ==
    #SPEAKER: Jeanne
    //Deeply touched, nodding.
    ...I promise.       #LINEID: 02200
TODO - This makes for a loooooooooong block of uninterupted dialogue, and there may be limits to how much we can shorten it overall. TBD what we do if this causes some pacing issues.
TODO - MAYBE WE COULD HAVE AN INTERACTION PROMPT HERE? JUST ONE LAST BURST OF INTERACTION TO TAKE THE FUR AND TRIGGER THE ENDING, THAT NATURALLY TRANSITIONS TO THE 3rd-PERSON POV? TBD.

// <CAMERA> Cuts to third person, behind both characters.
// <ANIMATION> JEANNE and MAIKAN exchange their heirlooms.
// <CAMERA> The camera slowly pulls back towards the forest.
// Puddles of water are seen in the path behind the characters, next to small snow mounds.
// <CAMERA> Still pulling back, the camera enters the forest.
// In the foreground, the forest starts to slowly "frame" the characters.
// <VOICE ACTING> JEANNE has a sigh of deep relief. MAIKAN has a laugh or incredulous disbelief.
// <AUDIO> We hear the wind blow, with leaves and birdsong carried alongside it. It's no longer whistling.
// <CAMERA> The camera slows down...

TODO - Cut candidate below. Grayed out the dialogue below in case we still need it.
    //#SPEAKER: Jeanne
    ////Looking to the sky:
    //...Hey.     #LINEID: 01300
    ////As MAIKAN glances her way:
    //The wind feels a little warmer now, doesn't it?     #LINEID: 01400
    
    //#SPEAKER: NormalMaikan
    ////Looking to the sky as well, smiling, hopeful:
    //...Yeah. I think it does.       #LINEID: 01500
TODO - End of cut candidate.

// <CAMERA> ... And comes to a stop, with an icicle coming into view in the foreground
// <VFX> An icicle comes into view in the foreground.
// <VFX> The icicle drips.
// <CAMERA> Cut to black.
// <CREDITS>
->DONE


TODO - On-screen text that appears after this will likely be determined at a later date (AND TBD IF IT SHOW UP HERE, AFTER FADING TO BLACK, OR AFTER THE CREDITS). For now, here's a tentative write-up:
TODO - Throughout history, indigenous nations across Canada have been subjected to countless colonial abuses and cultural genocide from European outsiders. The ripples of these atrocities can still be felt today. However, hopes to achieve true reconciliation persist, with activists enacting meaningful change upon our world. This project was made possible thanks to the collaboration between indigenous voices and creators from outside cultures. We hope it will encourage others to cooperate, communicate, and expand their knowledge in the same way. Thank you for playing. Tshinashkumitin. [Innu word for "thanks".]


