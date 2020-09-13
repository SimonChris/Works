"PataNoir" by Simon Christiansen

The story genre is "Mystery". The release number is 8. The story creation year is 2011.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

Include Basic Help Menu by Emily Short.

Include Numbered Disambiguation Choices by Aaron Reed.

Include Quip-Based Conversation by Michael Martin.

Include Punctuation Removal by Emily Short.

Include Unicode Full Character Names by Graham Nelson.

Include Interactive Tutorial by Jimmy Maher.

To say only bold: say "[bold type]".

[To do:
	Change the standard assimilation failure messages into check rules, so they can be more easily overridden by instead rules.]

Part 1 - Rules

When play begins:
	now the Tutor-introduction is "Welcome to PataNoir! This is the tutorial. I will be with you for just a little while, to familiarize you a bit with interacting with the story. If you grow tired of me at any time, type [only bold]tutorial off[tutor type] at any prompt and I'll go away. You should probably complete this tutorial at least once, to learn how to interact with the game. Experienced interactive fiction players can skip the tutorial, and instead read the 'Introduction to PataNoir' section in the [only bold]help[tutor type] menu."
	
To say desk instruction:
	say "Notice the cursor following the > prompt at the bottom of the window? (If you can't see it, just tap the spacebar to scroll the window.) This is where you will interact with the story. Above the cursor you can see a description of your current location, in this case your office. You can interact with everything mentioned in the room description. To examine an object closer, simply type its name, and press enter.
	
Let's start by taking a closer look at some of the things in the office. Type [only bold]desk[tutor type] and press enter. "

To say drawer instruction:
	say "That drawer might contain something useful. Type [only bold]drawer[tutor type] to check it out. "
	
To say drawer open instruction:
	say "Typing the name of the drawer resulted in a description, but you probably wanted to know what's inside. Once you have examined an object, typing its name again will make you interact with it. Interacting with something will perform a default action tied to that object. In the case of the drawer this means opening it. Type [only bold]drawer[tutor type] again to open the drawer. "
	
To say revolver instruction:
	say "A weapon might certainly come in handy! Type [only bold]revolver[tutor type] twice to examine the revolver, and then pick it up. "
	
To say drawer close instruction:
	say "The default action for most objects is to pick them up, but other objects, like the drawer, have different actions associated with them. Interacting with the drawer caused us to open it, but maybe now we can try to take it? Type [only bold]drawer[tutor type] again, and see what happens. "
	
To say drawer take instruction:
	say "Well, that didn't work. The default action associated with the drawer is to open or close it. I'll do my best to predict what you want to do with an object, but sometimes you may need to try something more unusual than the default action. To do this, you can specify the exact action you want to perform by adding a verb in front of the noun. For example, you can try to take the drawer by typing [only bold]take drawer[tutor type]. Try that now. "
	
To say looking instruction:
	say "It would be silly to carry around a desk drawer anyway. The game understands a wide variety of verbs, but the most common ones are [only bold]take[tutor type] and [only bold]examine[tutor type].  The latter can be shortened to just [only bold]x[tutor type], so you can reexamine objects by typing [only bold]x object[tutor type].  Feel free to experiment with other verbs. You never know what might happen.
	
Some verbs don't require an object. For example, you can always repeat the description of your surroundings by typing [only bold]look[tutor type], or just [only bold]l[tutor type], for short. Try typing [only bold]l[tutor type] now. "

To say cigarette instruction:
	say "Let's take a closer look at some of the other objects in the office. There is a cigarette smoldering in the ashtray. Try interacting with it, by typing [only bold]cigarette[tutor type] twice, or just [only bold]take cigarette[tutor type], if you can't be bothered to examine it closely. If you get bored with typing the same commands twice, you can always repeat the previous command, by typing [only bold]g[tutor type]."
	
To say embers instruction:
	say "The cigarette doesn't seem to be useful. Remember when I said that you can interact with anything mentioned in the room description? The cigarette is described as being like 'the last embers from a dying camp fire', but that's just a simile. Surely, that doesn't count as an object. Why not give it a try, for the hell of it? Try interacting with the camp fire, and the embers. "
	
To say simile instruction:
	say "What the hell just happened? Type [bold type]look[tutor type] to inspect the room again. "
	
To say inventory instruction:
	say "The cigarette is now just a cigarette. What happened to the simile? You can always inspect what you are carrying by typing [only bold]inventory[tutor type], or just [only bold]i[tutor type] for short. Try doing that now. "
	
To say door instruction:
	say "You are now carrying the simile of the smoldering ember! You will soon learn how that can be useful. First, let's check out who is at the door. You can open the door by either typing [only bold]door[tutor type] twice, or just [only bold]open door[tutor type]. "
	
To say talking instruction:
	say "Looks like a case might be forthcoming! Try to interact with the visitor, in the usual way. "
	
To say allan instruction:
	say "Notice that interacting with a person causes you to initiate a conversation. As with other objects, you are free to try different actions, if you feel that conversation isn't getting you anywhere. Try talking to Mr. Jameson again. Maybe you can convince him to hire you. ";
	choose row 15 in the Table of Tutorial Actions;
	now the Done entry is false.

To say revolver examination instruction:
	say "Conversation doesn't seem to be working in this case, anyway. You can try talking to him some more, but it probably won't help. Let's try something different. Remember that revolver you picked up earlier? Let's check it out again, by typing [only bold]revolver[tutor type]. Since you are already carrying the revolver, typing its name will examine it. "
	
To say wesson instruction:
	say "Apparently, you think of your revolver as a trusty servant. Remember what happened with the smoldering ember earlier? Try interacting with the servant. "
	
To say hint instruction:
	say "Curiouser and curiouser! As Mr. Wesson just informed you, you can give him instructions by typing his name, followed by a comma, followed by the action you want him to perform. Note that when giving commands, you will always need to use a verb to specify the action. Mr. Wesson does not have any default actions.
	
Mr. Wesson's primary purpose, however, is to give you hints when you are stuck. Maybe he has some advice on our current predicament. Try talking to Mr. Wesson again. "

To say marble instruction:
	say "Of course! It seems that we can interact with figurative objects, so why not try the same with the marble that's making Mr. Jameson so hard. You can always ask Mr. Wesson for advice if you get stuck. His advice is tied to the location you're in, so if he doesn't have anything useful to say, try going somewhere else and talking to him there.
	
For now, let's follow his current advice. Try interacting with the marble. ";
	choose row 19 in the Table of Tutorial Actions;
	now the Done entry is false.

To say jameson examination instruction:
	say "That seemed to do something, but it's hard to tell if anything changed. Perhaps we should take another look at Mr. Jameson? Since you have already examined him, typing his name will continue the conversation, so you will have to use a verb. You can examine him again by typing [only bold]examine Jameson[tutor type], or just [only bold]x Jameson[tutor type] for short. "
	
To say second talking instruction:
	say "He no longer seems as cold! Try talking to him some more. "
	
To say second inventory instruction:
	say "He still seems a bit too reserved, even without the marble. Maybe there is a way to make him warm up to you? Try checking your inventory, by typing [only bold]inventory[tutor type], or just [only bold]i[tutor type], for short. "
	
To say application instruction:
	say "If the marble made him cold, perhaps the ember can make him warm? To use an object on another, you can simply type out the names of the objects in order. Type [bold type]ember allan[tutor type] to use the ember on Mr. Jameson. "
	
Tutorial read is a truth state variable. Tutorial read is false.
	
To say persuasion instruction:
	say "That seemed to do the trick! Let's try talking to him again. You can examine him first, if you like. ";
	now tutorial read is true.
	
To say tutor conclusion:
	say "That worked wonders! You now have a case, and a larger game world to explore. Movement in the game is handled by typing in the direction you want to go. The directions understood by the game are [only bold]north, south, east, west, up, down, in[tutor type] and [only bold] out[tutor type]. For convenience, you only need to type the first letter of the direction word, except in the case of [only bold]in/out[tutor type], where the full word is needed. Sometimes, choosing a direction will result in a list of possible locations. Just type in the number corresponding to the location you would like to visit.
	
That's all I have for now! Typing [only bold]n[tutor type] will take you inside the mansion of the baron who wants to hire you. You can also return to your office by typing [only bold]s[tutor type]. There is plenty of other stuff in the office. You should probably fix that old chair at some point, for example. 

If you need more help, typing [only bold]help[tutor type] will take you to a menu with more information about the game, as well as a walkthrough, in case you get completely stuck. Don't forget to talk to Mr. Wesson first, though. He will usually be able to help you.

Good luck with the case! "

When play begins:
	now the Tutor-conclusion is "[tutor conclusion]".

Table of Tutorial Actions
Command	Done	Where	Check	Pre-Text	After-Text
trying examining the desk	false	Your Office	a rule	"[desk instruction]"	some text
trying examining the drawer	false	Your Office	--	"[drawer instruction]"	--
trying opening the drawer	false	Your Office	--	"[drawer open instruction]"	--
trying taking the revolver	false	Your Office	--	"[revolver instruction]"	--
trying closing the drawer	false	Your Office	--	"[drawer close instruction]"	--
trying taking the drawer	false	Your Office	--	"[drawer take instruction]"	--
trying looking	false	Your Office	--	"[looking instruction]"	--
trying taking the cigarette	false	Your Office	--	"[cigarette instruction]"	--
trying taking the embers	false	Your Office	--	"[embers instruction]"	--
trying looking	false	Your Office	--	"[simile instruction]"	--
trying taking inventory	false	Your Office	--	"[inventory instruction]"	--
trying opening the office door	false	Your Office	--	"[door instruction]"	--
trying talking to jameson	false	Your Office	--	"[talking instruction]"	--
trying talking to jameson	false	Your Office	--	"[allan instruction]"	--
trying examining the revolver	false	Your Office	--	"[revolver examination instruction]"	-- [row 15]
trying talking to wesson	false	Your Office	--	"[wesson instruction]"	--
trying talking to wesson	false	Your Office	--	"[hint instruction]"	--
trying taking the marble	false	Your Office	--	"[marble instruction]"	--
trying examining jameson	false	Your Office	--	"[jameson examination instruction]"	-- [row 19]
trying talking to jameson	false	Your Office	--	"[second talking instruction]"	--
trying taking inventory	false	Your Office	--	"[second inventory instruction]"	--
trying applying the ember to jameson	false	Your Office	--	"[application instruction]"	--
trying talking to jameson	false	Your Office	--	"[persuasion instruction]"	-- [row 23]

Table of Tutorial Locations
Where	First		Last
Your Office	1	23

Chapter 1 - Game Rules

Test Introduction with "open drawer / take gun / talk to wesson / talk to wesson / take blood / take ember / open door"

Test Visitation with "test introduction / x man / talk to man / talk to wesson / take marble / put marble on wheels / move chair / get coin / get knife / get marble / x man / talk to man / talk to wesson / give coal to man / x man / talk to man"

Test Meeting with "test visitation / n / u / e  / talk to wesson /get strand / talk to wesson / x baron / talk to baron / get record / w / get coal / d / talk to wesson / talk to wesson / drop coal / n / talk to wesson / talk to wesson / kill snakes with strand / talk to wesson / get manna / talk to wesson / get scale / s / s / talk to wesson / talk to wesson / talk to wesson / poke giant with strand / n / u / w / talk to wesson / get cocoon / e / talk to wesson / close western door / l / talk to wesson / get light / e / talk to wesson / enter eyes / talk to wesson / d / d / d / talk to wesson / put strand in padlock / open chest / get treasure / u / u / u / talk to wesson / give treasure to baron / talk to baron / get treasure"

Test Apartment with "test meeting / w / d / s / s / 1 / empty cocoon / get oil / n / 3 / talk to wesson /get rag / talk to wesson /get letter / e / talk to wesson / enter city / u / talk to wesson / call to prayer / d / talk to wesson / talk to wesson / give manna to beggar / exit / take bottles / get pencil / open cabinet / get knife / put needle on bowie knife"

Test Bar with "test apartment / w / s / 4  / talk to wesson / talk to wesson / give letter to bartender / talk to wesson / talk to wesson / cut fog with knife / talk to ronald / talk to wesson / talk to wesson / show knife to ronald / talk to ronald / talk to wesson / talk to wesson / take toupee / talk to wesson / give coagulated blood to ronald / get blood / talk to ronald / talk to ronald"

Test Gambling with "test bar / s / 3 / talk to wesson / talk to wesson / talk to wesson /smith, get icicle / x poker game / get putty / give marble to man / z / z / z / z / z"

Test Camino with "test gambling / talk to wesson / talk to camino / show letter to camino / e / talk to wesson / take brick / wipe paint with rag / pour oil on brick / talk to camino / talk to camino / e / talk to wesson / give record to camino / talk to camino"

Test Assault with "Test camino / w / 1 / talk to wesson / talk to wesson / x alfono / x businessman / give knife to wesson / wesson, attack businessman / talk to wesson / talk to wesson / wesson, give me the knife / put sharp knife on coin / throw coin at alfono / talk to wesson / talk to wesson / put putty on scale / put scale on snake / pull moustache"

Test Assault1 with "Test camino / w / 1 / talk to wesson / talk to wesson / x alfono / x businessman / give knife to wesson / wesson, attack businessman / talk to wesson / talk to wesson /talk to alfono / talk to wesson / talk to wesson / put putty on scale / put scale on snake / pull moustache"

Test Copernik with "test assault1 / talk to copernik / talk to copernik / talk to copernik / talk to wesson / talk to wesson / x man / x walls / x man / wrap icicle in rag / touch man with icicle / x walls / talk to copernik / talk to copernik / talk to wesson / talk to wesson / give toupee to copernik / talk to copernik / talk to copernik "

Test Climax with "Test Copernik / w / 6 / talk to wesson / take silver / n / x lisa / u / n / w / talk to wesson / talk to wesson / show cocoon to officer / w / exit / enter cabin / talk to wesson / talk to wesson / drink brandy / yes / w / enter car / n / e / s / throw oil in river / grab wound / talk to lisa"

Test thruline with "Test Climax  / x baron / x lisa / u / n / w / exit / e / talk to wesson / w / enter car / n / e / s / take marble / give marble to baron / x baron / talk to baron / open door / talk to doctor"

Test AlternateA with "Test Climax / talk to baron / open door / talk to doctor"

Test FreeLisa with "Test copernik / w / 6 / n / throw brick in river / grab wound / talk to lisa / yes / open door / talk to doctor"

Test oiling with "test meeting / w / d / s / s / 1 / drop fluid / get oil / put oil on wheels"

Test leaving with "n / open door / enter door"

Test barontalk with "test meeting / talk to baron / x photo / take photo"

Test alfonobug with "test copernik / w / 1 / x man" [He should be gone at this point.]

Test AssaultTrigger with "test camino / drop coin / w / 1 / s / 2 / get coin / w / 1"

Test TriggerB with "test camino / drop gun / w / 1 / s / 2 / get gun / w / 1"

Test discovery with "Test copernik / w / 6 / x windows / s / 6 / talk to copernik / talk to copernik / talk to copernik / w / 1 / n / u / e / talk to baron / talk to baron / talk to baron"

Test snakeknife with "Test visitation / n / n / attack snake with knife"

Test CaminoBugs with "test apartment / w / s / 3 / x poker game / take putty / give marble to man / z / z / z / z / z / talk to camino / talk to camino / talk to camino / talk to camino / talk to camino / show letter to camino / e / take brick / wipe paint with rag / pour oil on brick / talk to camino / talk to camino / grab wound / throw brick in river / grab wound"

Test bricktake with "test gambling / talk to camino / talk to camino / e / talk to camino / give record to camino / show letter to camino / talk to camino / wipe brick / wipe brick"

Test StrandWeapon with "test visitation / n / u / e / take strand / w / attack western door with steel strand"

Test Gknife with "test visitation / attack giant with knife / attack giant with knife"

Test KnifeKnight with "take ember / open door / talk to allan / get blood / put marble on wheels / move chair / get coin / get knife / attack knight with knife"

Test knifebug with "test apartment / put bowie knife in cabinet / give knife to wesson / take knife" [Disambiguation should select the literal knife]

Test letterbug with "test gambling / talk to camino / show letter to camino / x letter"

Test heldknife with "test meeting / w / d / s / s / 4 / give knife to wesson / cut fog / tell wesson to give me the sharp knife / cut fog"

Test MarbleBug with "test copernik / w / 1 / n / u / get marble / d / s / s / 6 / take silver / n / x lisa / u / n / w / talk to wesson / talk to wesson / show cocoon to officer / w / exit / enter cabin / talk to wesson / talk to wesson / drink brandy / yes / w / enter car / n / e / s / throw brick in river / grab wound / talk to lisa / take marble"

Test Businessman with "test camino / w / 1 / l" [The businessman should not be mentioned in the room description]

Test BarBug with "test meeting / w / d / s / s / 3 / e / open cabinet/ take knife / w / s / 4 / x bowie knife / s / x bowie knife" [The knife should not be returned when attempting to exit the bar]

Test CabinHint with "test copernik / w / 6 / take silver / n / x lisa / u / n / give silver / w / exit / e / drink brandy / yes / talk to wesson / talk to wesson / talk to wesson / talk to wesson / talk to wesson / talk to wesson / talk to wesson"

Test BrickBug with "test gambling / talk to camino / talk to camino / e / take brick / wipe paint with rag / pour oil on brick / throw brick in river / show letter to camino / give record to camino / talk to camino / x brick" [The brick should be gone by now]

Test FirstTalk with "take ember / open door / take marble / talk to allan" [It should not be possible to take marble without first talking to Allan]

Test LastTalk with "test climax / talk to detective / talk to jameson / talk to lisa" [It should not be possible to talk to anyone but the Baron]

Test DropBug with "take ember / drop ember" [It should not be possible to drop the ember]

Test Sattack with "test visitation / n / u / e / take strand / w / take coal / d / drop coal / s / attack giant with strand / n / u / w / get cocoon / e / close western door / get light / e / swim / d / d / pick lock with strand / open chest / get treasure / u / u / u / give treasure to baron / talk to baron / x baron / talk to baron / w / d / s / s / 3 / e / open cabinet / get knife / w / s / 1 / n / n / attack snakes with literal knife / shoot snakes" [Attacking the snakes with a literal weapon should imply that the player will need a figurative weapon instead.]

Test CheckOut with "test visitation / n / u / e / talk to baron / check him out / talk to baron" [The first talking reply should be printed, not the second]

Test CDrop with "test gambling / talk to camino / talk to camino / e / drop all" [It should not be possible to drop anything in Camino's office]

Test ShowLetter with "test gambling / talk to camino / show letter to camino / e / show letter to camino" [Showing the letter a second time should not have any effect.]

When play begins:
	say "Pataphor (noun):

1. An extended metaphor that creates its own context.
        
2. That which occurs when a lizard's tail has grown so long it breaks off and grows a new lizard.

- Pablo Lopez


He scribbles in a small notepad. 'And you are still taking your medication?'

'Of course.'

It's a lie. You work much better without it.".

When play begins:
	choose row 1 in Table of Basic Help Options;
	now the title entry is "Introduction to PataNoir";
	now description entry is "PataNoir is a surreal noir game, which differs from an ordinary noir story in ways that should become clear early on. Make sure you try to examine and interact with everything in your surroundings, including things that are not literally there. Especially those. Every time something is 'like' something else, you can try to interact with both things. Once you have some things, try giving them to people or putting them on other things.

If you are stuck, you can talk to your trusty servant. He might be able to provide some hints. If you cannot find him, check the desk drawer.

If you are having trouble with the puzzle system, you can read the 'Similes and You' chapter in this hint menu, for more detailed instructions. You may find it more rewarding to figure things out yourself, though.

PataNoir also contains some parser optimizations, to cut down on repetitive typing. You can interact with objects by simply typing the name of the object. The first time you do this, you will examine the object.  If you type the name of an examined object, you will perform a default action associated with that object. The default action for most objects is for you to take them, but other objects have different default actions, tied to their function. You will open doors, talk to people, and so on. 

If you want to apply an object to another, whether this means combining them or giving an object to a person, you can simply type the names of the objects in order. It is still necessary to type verbs if you want to do something out of the ordinary, but the default actions take care of the most common interactions.

If you are still stuck, the final chapter contains a detailed walkthrough, divided into sections corresponding to scenes in the game. Some scenes expect you to be carrying things from earlier scenes, so a walkthrough section may not always work out of context. For convenience, typing 'WALKTHRU' in the command prompt will print the entire walkthrough on the screen.";
	choose row 2 in Table of Basic Help Options;
	now the title entry is "Similes and You";
	blank out the subtable entry;
	now description entry is "The puzzles in PataNoir involve manipulating similes and metaphors to achieve effects. Whenever something is described as being 'like' something else, you will be able to interact with the figurative object, as well as the literal. For example, if someone's eyes are described as 'sparkling like diamonds', you will be able to take the diamonds like any other object. This will cause the eyes to stop sparkling, which may change the personality of the person in question. The diamonds can then be given to other persons, or put on other things, which will cause them to sparkle like diamonds instead. In this way, figurative objects can be used to change the properties of real objects and persons.
 
Real and figurative objects cannot affect each other directly, but figurative objects can affect each other, just like real objects. For example, a figurative knife cannot cut a real watermelon, but it could cut a figurative watermelon. This might provide you with a figurative slice of watermelon, which could be used to change the properties of a real object.

If you are stuck, look at your revolver. Did you notice how it is like a trusty servant? You can talk to him for hints.
 
If you experiment a bit, this will hopefully begin to make sense.
 
Have fun!".

Table of Walkthrough
	title		description
	"Introduction"	"Optional verbs are included in paranthesis, to make it more clear what's going on. If you are following the walkthrough from start to end, it's not necessary to type in those verbs:[line break](examine) drawer, (open) drawer, revolver, (take) revolver, (examine) servant, (talk to) servant, (examine) wheels, (examine) blood, (take) blood, (examine) camp fire, (examine) ember, (take) ember, (examine) door, (open) door, (examine) man, (talk to) man, (examine) marble, (take) marble, marble wheels, x wheels, move chair, (examine) coin, (take) coin, (examine) knife, (take) knife, (take) marble, x allan, coal allan, x allan, (talk to) allan."
	"Meeting the Baron"	"n, u, e, (examine) baron, (examine) strand, (take) strand, (talk to) baron, (examine) record, (take) record, w, (take) coal, d, coal floor, n, strand snakes, (examine) fountain, (examine) manna, (take) manna, (examine) scale, (take) scale, s, (take) strand, s, strand giant, l, n, u, w, (examine) cocoon, (take) cocoon, e, close western door, (examine) light, (take) light, e, (examine) lakes, (enter) lakes, d, d, strand lock, (examine) chest, (open) chest, (examine) treasure, (take) treasure, u, u, u, treasure baron, (talk to) baron."
	"The Apartment"	"First, we take a short trip back to the office, to pick up something we couldn't get earlier:[line break]w, d, s, s, 1, (take) fluid, (examine) oil, (take) oil, n, 3, (examine) rag, (take) rag, (examine) jacket, (examine) letter, (take) letter, e, (examine) cabinet, (open) cabinet, (examine) literal knife, (take) literal knife, (examine) city, (enter) city, u, call, d, manna beggar, out, needle bowie knife, x bowie knife."
	"The Bar"	"w ,s, 4, letter bartender, figurative knife fog, l, (examine) man, (talk to) man, bowie knife man, (talk to) ronald, (examine) toupee, (take) toupee, blood ronald, (talk to) ronald."
	"The Gambling Joint"	"s, 3, (examine) icicle, Wesson, take the icicle, (examine) poker game, (examine) man, (examine) putty, (take) putty, marble man, wait, g, g, g, g, (examine) camino, (talk to) camino, letter camino, e, (examine) brick , (take) brick, (talk to) camino, (talk to) camino, e, record camino, (talk to) camino.[line break]Note: If you give the record to Camino right away, you do not need to re-enter the office. The failed attempt is included to demonstrate the effects of the record."
	"The Assault"	"To trigger this scene you must be carrying: The icicle, the dirty rag, the coin, the revolver, and the scale. Also, Alfono must have kicked you out of Camino's office. The scene starts in front of the Baron's Mansion:[line break]w, 1, (examine) man, (examine) businessman, knife wesson, wesson, attack businessman, x alfono, (talk to) alfono, putty scale, scale snake, (examine) moustache, (take) moustache."
	"Copernik's office"	"(examine) copernik, (talk to) copernik, (examine) walls, (examine) dying man, rag icicle, icicle man, (talk to) copernik, toupee copernik, (talk to) copernik."
	"Climax"	"w, 6, rag brick, oil brick, (examine) silver, (take) silver, n, (examine) lisa, (examine) mountain road, u, n, w, silver officer, w, out, e, (examine) brandy, (take) brandy, yes, w, (examine) car, (enter) car, n, e, s, (examine) camino, (examine) canyon, (examine) river, (examine) brick, brick canyon, (examine) camino, (examine) wound, (take) wound, (talk to) lisa."
	"Ending"	"(take) marble, marble baron, (talk to) baron, (open) door, (examine) doctor, (talk to) doctor."

Table of Basic Help Options (continued)
	title		subtable		description
	"Contacting the author"	--	"Feedback can be sent to simon@sichris.com."
	"Walkthrough"	Table of Walkthrough		--
	"Credits"	--	"Writing and coding by Simon Christiansen.
	
Cover art by Tom Siddell (gunnerkrigg.com).

In-game art by Lauri Ahonen (munportfolio.com).

Theme song is 'PataNoir' by William Steffey.
	
Testing and proofreading done by Joel Webster, Utkonos, Dacharya, John P. Murphy, Colin Sandel, Amanda Allen, James Matthew Campbell, George Oliver, Jacek Pudlo, Joey Jones, Marius Müller, Andrew Schultz, Sam Kabo Ashwell, David J. Hastings, Morten Larsen and Hanon Ondricek.

Special thanks to the Goons of the SomethingAwful.com forums for feedback provided during a 'Let's Play' playthrough of the game."

Commenting is an action applying to one topic. Understand "comment [text]", "c [text]", "* [text]", "** [text]" and "*** [text]" as commenting.

Requesting the Walkthrough is an action out of world. Understand "Walkthrough" and "Walkthru" as requesting the Walkthrough.

Report requesting the Walkthrough:
	say 	"Introduction (Optional verbs are included in paranthesis, to make it more clear what's going on. If you are following the walkthrough from start to end, it's not necessary to type in those verbs):[line break](examine) drawer, (open) drawer, revolver, (take) revolver, (examine) servant, (talk to) servant, (examine) wheels, (examine) blood, (take) blood, (examine) campfire, (examine) ember, (take) ember, (examine) door, (open) door, (examine) man, (talk to) man, (examine) marble, (take) marble, marble wheels, x wheels, move chair, (examine) coin, (take) coin, (examine) knife, (take) knife, (take) marble, x allan, coal allan, x allan, (talk to) allan.
	
Meeting the Baron:[line break]n, u, e, (examine) baron, (examine) strand, (take) strand, (talk to) baron, (examine) record, (take) record, w, (take) coal, d, coal floor, n, strand snakes, (examine) fountain, (examine) manna, (take) manna, (examine) scale, (take) scale, s, (take) strand, s, strand giant, l, n, u, w, (examine) cocoon, (take) cocoon, e, close western door, (examine) light, (take) light, e, (examine) lakes, (enter) lakes, d, d, strand lock, (examine) chest, (open) chest, (examine) treasure, (take) treasure, u, u, u, treasure baron, (talk to) baron.

The Apartment (First, we take a short trip back to the office, to pick up something we couldn't get earlier):[line break]w, d, s, s, 1, (take) fluid, (examine) oil, (take) oil, n, 3, (examine) rag, (take) rag, (examine) jacket, (examine) letter, (take) letter, e, (examine) cabinet, (open) cabinet, (examine) literal knife, (take) literal knife, (examine) city, (enter) city, u, call, d, manna beggar, out, needle bowie knife, x bowie knife.

The Bar:[line break]w ,s, 4, letter bartender, figurative knife fog, l, (examine) man, (talk to) man, bowie knife man, (talk to) ronald, (examine) toupee, (take) toupee, blood ronald, (talk to) ronald.

The Gambling Joint:[line break]s, 3, (examine) icicle, Wesson, take the icicle, (examine) poker game, (examine) man, (examine) putty, (take) putty, marble man, wait, g, g, g, g, (examine) camino, (talk to) camino, letter camino, e, (examine) brick , (take) brick, (talk to) camino, (talk to) camino, e, record camino, (talk to) camino.[line break]Note: If you give the record to Camino right away, you do not need to re-enter the office. The failed attempt is included to demonstrate the effects of the record.";
	say "[line break]The Assault (To trigger this scene you must be carrying: The icicle, the dirty rag, the coin, the revolver, and the scale. Also, Alfono must have kicked you out of Camino's office. The scene starts in front of the Baron's Mansion):[line break]w, 1, (examine) man, (examine) businessman, knife wesson, wesson, attack businessman, x alfono, (talk to) alfono, putty scale, scale snake, (examine) moustache, (take) moustache.

Copernik's office:[line break](examine) copernik, (talk to) copernik, (examine) walls, (examine) dying man, rag icicle, icicle man, (talk to) copernik, toupee copernik, (talk to) copernik.

Climax:[line break]w, 6, rag brick, oil brick, (examine) silver, (take) silver, n, (examine) lisa, (examine) mountain road, u, n, w, silver officer, w, out, e, (examine) brandy, (take) brandy, yes, w, (examine) car, (enter) car, n, e, s, (examine) camino, (examine) canyon, (examine) river, (examine) brick, brick canyon, (examine) camino, (examine) wound, (take) wound, (talk to) lisa.

Ending:[line break](take) marble, marble baron, (talk to) baron, (open) door, (examine) doctor, (talk to) doctor."

After reading a command:
	remove stray punctuation;
	resolve punctuated titles.

A pataphor is a kind of container. A pataphor can be either hollow or solid. Understand "figurative" as a pataphor.

A patason is a kind of person. Understand "figurative" as a patason.

Definition: A thing is figurative if it is a pataphor or it is a patason.

A thing can be liquid or illiquid.

Check inserting something into a pataphor:
	if the second noun is solid:
		say "That can't contain things." instead;
	otherwise if the noun is not a pataphor:
		say "[The second noun] is just a simile. It can't contain literal objects." instead.
		
Check searching a pataphor:
	if the pataphor is solid:
		say "You find nothing of interest." instead.

Rule for printing the name of a pataphor (called the current pataphor) while taking inventory: say "figurative [the printed name of the current pataphor]".

To say the pataphor rejection: say "It's such a nice simile. You might forget it if you leave it behind."

Instead of dropping a pataphor, say the pataphor rejection.

Rule for deciding whether all includes scenery: it does not.

A door is usually scenery.

Does the player mean taking something enclosed by someone: it is unlikely.

A person has a text called the mention. The mention of a person is usually "".

Rule for writing a paragraph about a person:
	say the mention;
	say "[line break]".
	
Rule for printing a parser error when the latest parser error is the can't see any such thing error:
	say "That is either not here or doesn't need to be referred to at the moment."
	
Rule for printing a parser error when the latest parser error is the not a verb I recognise error :
	say "That command did not match a visible object or a known verb."
	
The description of the player is "You are a bit worse for wear, but you are still the best detective in town."

Singing is an action applying to nothing. Understand "sing" as singing.

Instead of singing, say "This is not 'The Singing Detective', although it was a major inspiration. You should definitely watch the original BBC mini-series if you can find it. The Robert Downey Jr. movie is also supposed to be all right, but I haven't seen that one yet. Anyway, where was I? Oh, right, I was writing this game."

Understand "xyzzy" as a mistake("Honestly, don't you think it's about time we retired this hoary in-joke?")

Instead of jumping, say "You jump up and down a bit."
	
The examine devices rule is not listed in any rulebook.

The can't take component parts rule is not listed in any rulebook. 

The reject commanding for talking rule is not listed in any rulebook.

The reject answering for talking rule is not listed in any rulebook.

[The stripping failed with rule is not listed in any rulebook.]

The describe room stood up into rule is not listed in any rulebook.

Describing relates various pataphors to various things.

The verb to describe (he describes, they describe, he described, it is described, he is described) implies the describing relation.

Assimilating it into is an action applying to two visible things.

A thing can be either simple or complex. A thing is usually simple.

Before assimilating something into something:
	if the player is not carrying the noun and the player is not carrying a container containing the noun:
		say "(first taking [the noun])";
		silently try taking the noun;
		if the player is not carrying the noun and the player is not carrying a container containing the noun:
			stop the action.

Check assimilating it into:
	if the player is not carrying the noun and the player is not carrying a container containing the noun:
		say "You need to be carrying [the noun] first." instead;
	otherwise if the noun does not describe the second noun:
		if the second noun is not figurative:
			say "That would not be a very good simile." instead;
		otherwise:
			say "That would not accomplish anything." instead;
	otherwise if a pataphor (called the blocking pataphor) is part of the second noun and the second noun is simple:
		say "[The blocking pataphor] is in the way." instead.
		
Carry out assimilating it into:
	now the noun is part of the second noun.
	
Instead of giving a pataphor to something:
	try assimilating the noun into the second noun.
	
Instead of inserting a pataphor into something which is not a pataphor:
	try assimilating the noun into the second noun.
	
Instead of putting a pataphor on something:
	try assimilating the noun into the second noun.
	
Instead of tying a pataphor to something:
	try assimilating the noun into the second noun.
	
Before giving something to a patason when the noun is not figurative:
	say "[The noun] is real. [The second noun] [are] not." instead.

Instead of taking a liquid pataphor when the player is carrying a hollow pataphor ( called the current container ) and the noun is not in a container:
	if the current container does not contain anything:
		say "Taken.";
		now the player is carrying the noun;
		try inserting the noun into the current container;
	otherwise:
		say "[The current container] is already full.".
		
Instead of taking a liquid pataphor when the player is not carrying a hollow pataphor, say "You will need some kind of container to carry it."

Instead of showing a pataphor to someone, say "For some reason, you seem to be the only one capable of seeing these things."

Understand "ignite [something] with [something]" as putting it on (with nouns reversed).

Oiling is an action applying to one thing.

Understand "oil [something]" as oiling.

Carry out oiling:
	if the oil is visible:
		try putting the oil on the noun;
	otherwise:
		say "You need some oil to do that.".

The generic ask quip is "You can't think of anything to say."

Instead of answering someone that:
	say "[bracket]Use TALK TO to interact with characters.[close bracket][line break]";

Understand "fix [something]" as rubbing.

Instead of searching something, try examining the noun.

Shooting is an action applying to one thing.

Understand "shoot [something]"and "shoot [something] with gun/revolver" as shooting.

Check shooting:
	if the player is not carrying the revolver:
		say "You don't have a gun." instead.
		
Report shooting:
	say "You don't like using your gun."
	
Attacking it with is an action applying to one thing and one carried thing. Understand "Attack [something] with [something]", "kill [something] with [something]", "assault [something] with [something]", "poke [something] with [something]", "prick [something] with [something]", "cut [something] with [something]" and "wake [something] with [something]" as attacking it with.

A thing can be either a weapon or not a weapon.

Check attacking it with:
	if the second noun is not a weapon:
		say "You can't use [the second noun] as a weapon." instead;
	otherwise if the noun is not figurative and the second noun is figurative:
		say "[The second noun] is just a simile. It can't hurt literal things." instead;
	otherwise if the noun is figurative and the second noun is not figurative:
		say "[The second noun] is real. [The noun] [are] not." instead.
		
Report attacking it with:
	say "Attacking [the noun] seems like a bad idea."
	
Stabbing is an action applying to one thing. Understand "stab [something]" as stabbing.

Understand "stab [something] with [something]" as attacking it with.

Check stabbing:
	if the player is not carrying the knife:
		say "You don't have a knife." instead.
		
Carry out stabbing:
	try attacking the noun with the knife.
	
Instead of attacking something (this is the default attacking rule):
	say "You were never much of a pugilist. If you want to use a weapon, use the ATTACK SOMETHING WITH SOMETHING syntax instead."
	
The default attacking rule is listed last in the instead rules.

Emptying is an action applying to one thing. Understand "empty [something]" as emptying.

Check emptying:
	if the noun is not a container:
		say "That is not something you can empty." instead.

Carry out emptying:
	repeat with content running through things in the noun:
		try taking the content.
		
Instead of dropping a liquid pataphor when the noun is in a container:
	try taking the noun.
	
[Quality of life actions]

[Use normal lonely noun behavior.]

A thing can be examined or unexamined. A thing is usually unexamined. After examining something: now the noun is examined. 

Intexamining is an action applying to one thing. Understand "[something]" as Intexamining.

Carry out intexamining:
	if the noun is unexamined or the player is holding the noun:
		try examining the noun;
	otherwise:
		try interacting with the noun.

Interacting with is an action applying to one thing. 

Carry out interacting with:
	if the noun is openable:
		if the noun is closed:
			try opening the noun;
		otherwise:
			try closing the noun;
	otherwise if the noun is a person:
		try talking to the noun;
	otherwise:
		try taking the noun.
	
Applying it to is an action applying to two things. Understand "[something] [something]" as applying it to.

Carry out applying it to:
	if the noun is a weapon and (the second noun is a person or the second noun is an animal):
		try attacking the second noun with the noun;
	otherwise if the noun is not a pataphor and the second noun is a person:
		try giving the noun to the second noun;
	otherwise if the noun is a pataphor and the second noun is a patason:
		try giving the noun to the second noun;
	otherwise:
		try putting the noun on the second noun.

Table of Quip Texts (continued)
quip	quiptext
selftalk	"You are not [italic type]that[roman type] unstable."
	location_office	"You head back to your office."
	location_house	"You decide to visit the Baron again."
	location_gambling 	"You head towards the gambling joint."
	location_apartment 	"You decide to check out McAllister's apartment."
	location_bar 	"You head towards the seedy bar."
	location_police	"You head back to the police station."
	location_vacation		"You head towards the vacation house."
	
Table of Possible Locations
	prompt					response	enabled
	"The Baron's Mansion"	location_house	0
	"Your Office"			location_office	1
	with five blank rows
[	
	"The Gambling Joint"		location_gambling	0
	"McAllister's Apartment"	location_apartment	0
	"The Bar"				location_bar	0
	"The Police Station"		location_police	0
	"The Vacation House"		location_vacation		0]

To start the investigation:
	choose a blank row in the table of Possible Locations;
	now the prompt entry is "The Gambling Joint";
	now the response entry is location_gambling;
	now the enabled entry is 1;
	choose a blank row in the table of Possible Locations;
	now the prompt entry is "McAllister's Apartment";
	now the response entry is location_apartment;
	now the enabled entry is 1;
	choose a blank row in the table of Possible Locations;
	now the prompt entry is "The Bar";
	now the response entry is location_bar;
	now the enabled entry is 1.
	
To enable all locations:
	repeat through the Table of Possible Locations: 
		now the enabled entry is 1.
	
After quipping when the current quip is location_house:
	enable all locations;
	disable the location_house quip;
	now the player is in Outside The Mansion;
	terminate the conversation.
	
After quipping when the current quip is location_office:
	enable all locations;
	disable the location_office quip;
	now the player is in your office;
	terminate the conversation.
	
[After quipping when the current quip is location_gambling for the first time:
	append "Gambling" to the File of Images;
	say "[picture unlocked]".]
	
After quipping when the current quip is location_gambling:
	enable all locations;
	disable the location_gambling quip;
	now the player is in The Butterfly Club;
	terminate the conversation.
	
After quipping when the current quip is location_apartment:
	enable all locations;
	disable the location_apartment quip;
	now the player is in The Entrance;
	terminate the conversation.
	
The bouncer is a person. The bouncer is in StorageArea.
	
To frisk the player:
	say "The bouncer pats you down in front of the entrance.";
	if the player is carrying the revolver:
		say "The bouncer locates the revolver and confiscates it. 'Sorry, Mister. No guns in the bar.' Mr. Wesson manages to sneak in with you anyway.";
		now the bouncer is carrying the revolver;
	if the player is carrying the literalknife and the needle is not part of the literalknife:
		say "The bouncer easily locates the large conspicuous bowie knife. 'Well, wadda we got here? Sorry, Mister. Can't have ya stabbin['] the other patrons.'";
		now the bouncer is carrying the literalknife;
	if the bouncer is carrying the revolver or the bouncer is carrying the literalknife:
		say "'Your belongings will be returned to you when you leave, Mister.'"
	
After quipping when the current quip is location_bar:
	enable all locations;
	disable the location_bar quip;
	frisk the player;
	now the player is in The Bar;
	terminate the conversation.
	
After quipping when the current quip is location_police:
	enable all locations;
	disable the location_police quip;
	now the player is in Copernik's office;
	terminate the conversation.
	
[After quipping when the current quip is location_vacation for the first time:
	append "Vacation" to the File of Images;
	say "[picture unlocked]".]
	
After quipping when the current quip is location_vacation:
	enable all locations;
	disable the location_vacation quip;
	now the player is in OutsideVacation;
	terminate the conversation.
	
The greeting of yourself is selftalk.

Before going somewhere:
	terminate the conversation.

Part 2 - Scenes

Chapter 1 - Simple Scenes

A scene can be solved or unsolved. A scene is usually unsolved. When a scene (called the current scene ) ends: now the current scene is solved.

Introduction is a scene. Introduction begins when play begins. Introduction ends when the player is carrying the smoldering ember.

Visitation is a scene. Visitation begins when introduction ends.  Visitation ends when the player is in Outside the Mansion.

When visitation begins: say "There is a knock at the door."

The knock counter is a number variable. The knock counter is zero.

Every turn when Allan Jameson is not in your office during visitation:
	if the knock counter is even and the knock counter is greater than one:
		say "The knocking on the door continues.";
	increase the knock counter by one.
	
Meeting the Baron is a scene. Meeting the Baron begins when visitation ends.

When Meeting the Baron begins:
	say "'Here we are, sir,' says Jameson. 'If you will just follow me.'
	
He opens the doors and disappears into the mansion.";
	now Allan Jameson is in The Hall.
	
Meeting the Baron ends when Meeting the Baron is solved.
	
Investigation is a scene. Investigation begins when Meeting the Baron ends.

When investigation begins:
	start the investigation.
	
Investigation ends when Lisa Von Bülow is not in the LivingRoom.

Conversation is a scene. Conversation begins when the fog is in StorageArea and the bartender is friendly. Conversation ends when Conversation is solved.

When Conversation begins:
	now Ronald Ericksson is in The Bar.
	
Chapter 2 - Assault
	
Carlo Alfono is a person. Understand "man", and "killer" as Alfono. The description of Alfono is "[if the businessman is visible]His tailored pinstripe suit makes him seem like a businessman on his way to accept his next promotion[otherwise]He wears a pinstripe suit[end if]. The suit contains an ordinary looking Italian-American man with a moustache resting above his lips, like a small black snake. [if the coin is part of Alfono]Blood trickles from a tiny wound on his neck. His hand covers the wound. The gun in the hand points towards the heavens. Time seem to be standing still; waiting for your next move[otherwise if alfono is distracted]He strokes the moustache pensively[otherwise]He points a gun at you. His face is expressionless[end if]."

The mention of Alfono is "The man in the pinstripe suit is holding you at gunpoint."

Carlo Alfono is wearing a pinstriped suit. The description of the pinstriped suit is "It fits him perfectly."

Instead of taking the pinstriped suit:
	say "Undressing him doesn't seem like the best strategy.".
	
Instead of pulling the pinstriped suit:
	try taking the noun.

Does the player mean doing something to the suit: it is likely.

Does the player mean doing something to Alfono: it is likely.

Alfono can be activated. Alfono is not activated.

Alfono is carrying a gun. Understand "revolver" and "22" as the gun. The description of the gun is "A small .22 revolver. Bad news; it means he is good enough to get by with that much gun." The printed name of the gun is "22 revolver"

Does the player mean doing something to the gun: it is likely.

Instead of taking the gun, try attacking alfono.

Definition: A person (called the protagonist) is well equipped if the protagonist is carrying the icicle and the protagonist is carrying the dirty rag and the protagonist is carrying the coin and the protagonist is carrying the scale and the protagonist is carrying the revolver.

Assault is a scene. Assault begins when Alfono is activated and the player is in Outside The Mansion and the player is well equipped.

When Assault begins:
	say "The shadows part and the man in the pinstripe suit steps forward. He is holding a gun.";
	now Alfono is in the location;
	now the businessman is in the location.
	
Instead of going during assault (this is the shooting rule):
	say "His gun barks once, and once is enough. If only you could have distracted him somehow.";
	end the story saying "You have died."
	
The shooting rule is listed first in the instead rules.

Alfono can be distracted. Alfono is not distracted.

Instead of talking to alfono:
	if the businessman is visible:
		say "His stern businessmanlike demeanor tells you that there is nothing to be gained by talking. If only he wasn't so professional.";
	otherwise if Alfono is not distracted:
		say "'You can kill me if you want to, Mister, but it's going to bring down a whole lot of heat on your employer. Are you sure that's what he wants?'
		
He strokes his moustache and lowers the gun slightly. 'Maybe not, but that's not my decision. I'm just following orders.'";
		now Alfono is distracted;
	otherwise:
		say "Now is the time for action, not talking."

Instead of wesson attacking alfono when Alfono is not distracted:
	say "For once, Mr. Wesson is too slow.";
	end the story saying "You have died."
	
Instead of Wesson attacking Alfono when Alfono is not distracted:
	say "'I might kill him, sir. Don't you think it is better to take him alive?' He is right. Now that Mr. Alfono is distracted, you should be able to take him."; the rule succeeds.
	
Instead of attacking Alfono when Alfono is not distracted:
	say "With your bare hands? When he is holding you at gunpoint? No. You will have to distract him somehow."
	
Instead of attacking Alfono with the LiteralKnife, say "Bringing a knife to a gunfight is rarely a good idea."

Instead of shooting Alfono when Alfono is not distracted:
	say "He is holding you at gunpoint. You would be dead before you could even the gun out of your pocket. You will have to distract him somehow."
	
Instead of shooting Alfono when Alfono is distracted:
	say "It's tempting, but dead men tell no tales. You want to take him alive."

The businessman is a patason. Understand "business man" and "business" as the businessman. The description of the businessman is "A well dressed gentleman who looks like he never lets his emotions interfere with business." The businessman is undescribed.

Instead of talking to the businessman, say "'Please don't take this personal, sir. It's just business.'"

Instead of dropping the coin during Assault:
	try throwing the coin at alfono.
	
Instead of throwing the LiteralKnife at Alfono:
	say "Nice try, but he executes you as soon as you pull the knife. Perhaps you should try a more discreet object?";
	end the story saying "You have died".
	
Instead of throwing the coin at alfono:
	if Alfono is distracted:
		say "He is already distracted.";
	otherwise:
		say "You expertly flick the coin at Alfono. It glides through the air, like a tiny flying disc, and [if the knife is part of the coin]the sharp edge embeds itself in his neck[otherwise]bounces harmlessly off his neck. If only it was sharper[end if]. [if the businessman is visible]He doesn't even blink. He executes you with as much emotion as a businessman conducting a deal. If only you could get rid of the businessman, he might be less efficient[otherwise if the knife is not part of the coin]He seems slightly annoyed, but the blunt coin is hardly a distraction. He shoots you before you have a chance to decide what to do next[otherwise]He cries out in pain, and instinctively reaches for the wound. His gun points towards the clear night sky. His moustache gleams in the moonlight[end if].";
		if the businessman is visible or the knife is not part of the coin:
			end the story saying "You have died.";
		otherwise:
			now the coin is part of Alfono;
			now Alfono is distracted.
		
Instead of doing something to the coin when the coin is part of Alfono:
	say "It's embedded in his neck."
	
Instead of doing something to the knife when the coin is part of Alfono:
	say "You can't reach it."
	
Does the player mean assimilating the knife into the coin:
	it is very likely.
	
Does the player mean putting the knife on the coin:
	it is very likely.
	
Does the player mean inserting the knife into the coin:
	it is very likely.
	
Instead of attacking the businessman with a weapon which is a pataphor:
	say "The businessman deftly avoids your attacks. 'There is no need to get aggressive, sir. It's just business.' If only you were a better fighter, you might be able to take him down. Maybe Mr. Wesson would have better luck?"
	
Instead of Wesson attacking the businessman when wesson is not carrying a weapon:
	say "Mr. Wesson wrestles with the businessman, but neither is able to get the upper hand. Eventually, Mr. Wesson withdraws. 'I am sorry, sir, but I am going to need you to give me some kind of weapon if you want me to take him down.'"; the rule succeeds.
	
Does the player mean giving the knife to wesson:
	it is very likely.
	
Instead of giving the knife to Wesson:
	say "'Thank you, sir. Let me know if you want me to attack someone.'";
	now wesson is carrying the knife;
	the rule succeeds.
	
Instead of applying the knife to wesson:
	try giving the knife to wesson.
	
Does the player mean applying the knife to wesson:
	it is very likely.
	
Persuasion rule for asking wesson to try giving something to the player: rule succeeds.

Persuasion rule for asking wesson to try attacking someone with something: rule succeeds.

Instead of wesson attacking someone with something:
	try wesson attacking the noun;
	the rule succeeds.

Instead of wesson giving the knife to the player:
	say "'Of course, sir. Here you are.'";
	now the player is carrying the knife;
	the rule succeeds.
	
Instead of asking wesson to try taking something that is enclosed by the player:
	say "'If you want me to have [the noun], you should give it to me, sir.'".
	
Instead of Wesson attacking the businessman when wesson is carrying the knife:
	say "You both advance on the businessman. Mr. Wesson brandishes the knife. You follow not far behind him. The businessman looks from one of you to the other, and his professional demeanor evaporates. 'Look, I don't want any trouble. This really isn't any of my business.' With that, he disappears into the shadows.";
	remove the businessman from play;
	the rule succeeds.
	
Instead of pulling Alfono:
	say "You are going to have to be more specific. Is there some part of him you could pull?"
	
Understand "grab [something]" as pulling.
	
Instead of attacking Alfono when Alfono is distracted:
	say "You rush him while he is distracted. For a moment it seems like you might have the upper hand, but he is tougher than he looks. He pulls you off, throws you to the ground and executes you. If only there was something you could have grabbed hold off.";
	end the story saying "You have died.".
	
The black moustache is part of Alfono. Understand "mustache" as the black moustache. The description of the moustache is "[if the scale is not part of the black snake]A neat black moustache, as smooth as a slimy black snake[otherwise]His scraggly unkempt moustache rests above his lips, like a scaly snake[end if]."

The black snake is a patason. The description of the black snake is "[if the scale is not part of the black snake]A smooth black snake[otherwise]A scaly black snake[end if]." The black snake is part of the moustache.

Instead of taking the black snake:
	say "The smooth snake slithers between your fingers and escapes."
	
Instead of attacking the black snake with the knife, say "The snake nimbly avoids your attacks."

Instead of attacking the black snake with the literalknife, say "The knife is real. The snake is not."
	
Does the player mean taking the black snake:
	it is very likely.
	
Does the player mean doing something to the black snake:
	it is very likely.
	
Does the player mean assimilating into the black snake:
	it is very likely.
	
Does the player mean putting the scale on the black snake:
	it is very likely.
	
Does the player mean inserting the scale into the black snake:
	it is very likely.
	
Does the player mean putting the putty on the scale:
	it is very likely.

Instead of pulling the moustache, try taking the moustache.

Instead of taking the moustache when Alfono is not distracted:
	say "You reach for the moustache. As you drop to the ground with a bullet in your chest, you wonder what you were thinking. If you could distract him first, you might have a chance.";
	end the story saying "You have died."

Instead of taking the moustache when the scale is not part of the black snake and Alfono is distracted:
	say "You try to grab his moustache, but your fingers slide across the smooth hairs. He pushes you to the ground and executes you with a single shot to the head. If only the snake wasn't so smooth.";
	end the story saying "You have died."
	
The scale describes the black snake.

The putty describes the scale.

Understand the commands "scale", "light" and "oil" as something new.

Instead of assimilating the scale into the black snake when the putty is not part of the scale:
	say "You put the scale on the black snake, but it just slides off the smooth skin. If only you had some way of making it stick."
	
After assimilating the putty into the scale:
	say "You carefully attach the putty to the back of the scale. Now it should be able to stick to anything.".
	
Instead of assimilating the scale into the putty:
	try assimilating the putty into the scale.
	
Instead of taking the putty when the putty is part of the scale:
	say "You are afraid you might ruin the scale if you try tearing off the putty."
	
After assimilating the scale into the black snake:
	say "The black snake is rough and scaly."
	
Instead of assimilating the putty into the black snake when the putty is part of the scale:
	try assimilating the scale into the black snake.
	
Instead of taking the scale when the scale is part of the black snake:
	say "It fits so perfectly."
	
Instead of taking the black snake when the scale is part of the black snake:
	say "'Hissss,' You quickly withdraw your hand.".
	
Instead of taking the moustache when the scale is part of the black snake and Alfono is distracted:
	say "While he is distracted, you grab his moustache and pull as hard as you can. He roars in pain and the gun drops to the ground. It doesn't take long before your roles are reversed.
	
'Who sent you?' He merely stares at you, without a word. 'Tell me what I want to know, and I might let you live.' You can tell he knows you are bluffing. You are no murderer.

It's a moot point anyway. You hear distant sirens approaching. Someone from the mansion must have noticed the commotion. The police will have to deal with this guy.";
	now Assault is solved.
	
Assault ends when Assault is solved.

When Assault ends:
	remove Alfono from play;
	now the player is on your chair.

Instead of talking to introduced wesson when assault is happening and the businessman is in the location for the first time:
	say "'He is too efficient, sir. Maybe you can scare away the businessman that makes him so? Try attacking the businessman.'"
	
Instead of talking to introduced wesson when assault is happening and the businessman is in the location for the second time:
	say "'Maybe I can do better, sir. Tell me to attack the businessman.'"
	
Instead of talking to introduced wesson when assault is happening and the businessman is in the location at least thrice:
	say "'I am going to need a weapon, sir. Give me the figurative knife, then tell me to attack the businessman.'"
	
Instead of talking to introduced wesson when assault is happening and the businessman is not in the location and the Alfono is not distracted for the first time:
	say "'It's still futile to attack him while he is holding us at gunpoint, sir. You will have to distract him somehow.'"
	
Instead of talking to introduced wesson when assault is happening and the businessman is not in the location and Alfono is not distracted  at least twice:
	say "'Try talking to him. That might distract him.'"
	
Instead of talking to introduced wesson when assault is happening and Alfono is distracted for the first time:
	say "'You can try attacking him while he is distracted, sir.'"
	
Instead of talking to introduced wesson when assault is happening and Alfono is distracted for the second time:
	say "'A normal assault clearly won't do. You will have to find a weak spot. His moustache looks sensitive. Try pulling it.'"
	
Instead of talking to introduced wesson when assault is happening and Alfono is distracted for the third time:
	say "'His moustache is too slippery. It's that darn slippery snake. Maybe you can change it by putting the scale on the snake?'"
	
Instead of talking to introduced wesson when assault is happening and Alfono is distracted for the fourth time:
	say "'It just slides off. Do you have something that might make the scale stick to the snake?'"
	
Instead of talking to introduced wesson when assault is happening and Alfono is distracted at least five times:
	say "'Put the putty on the scale. Then put the scale on the snake. Now try pulling his moustache.'"
	
Instead of taking inventory:
	if the number of things enclosed by the player is 0, say "You are carrying nothing." instead;
	say "You are carrying: [line break]"; 
	now all things enclosed by the player are marked for listing; 
	now all pataphors are unmarked for listing;
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation, listing marked items only; 
	now all things enclosed by the player are unmarked for listing; 
	now all pataphors are marked for listing;
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation, listing marked items only.

Chapter 3 - Denouement

Denouement is a scene. Denouement begins when Lisa Von Bülow is off-stage.

The doctor is a person.

Every turn when the Doctor is not in your office during Denouement:
	if the knock counter is even and the knock counter is greater than one:
		say "The knocking on the door continues.";
	increase the knock counter by one.

When Denouement begins:
	now the oil is part of the shadows;
	now the camp fire is in your office;
	now the office door is closed;
	now the embers are in the office;
	now the player is on the office chair;
	now the knock counter is zero;
	repeat with item running through things carried by the player:
		remove item from play;
	say "There is a knock at the door.".
	
Instead of taking a pataphor during denouement ( this is the no taking rule), say "You don't feel like it."

The no taking rule is listed first in the instead rules.

After opening the office door when the Doctor is not in your office during Denouement:
	say "The door opens and your doctor enters the room.";
	now the Doctor is in your office.
	
Instead of going through the office door when the office door is open during denouement, say "You feel safe in here."

Instead of going through the office door when the office door is closed during denouement, try opening the office door.

The description of the doctor is "A fine medical professional, no doubt. If only he wouldn't try to interfere with your life all the time."

The mention of the doctor is "Your doctor is here."

Instead of talking to the doctor:
	say "He looks around the office. 'It stinks in here.'
	
It's the oil. It stinks up the place.

'Have you been sitting in your office all day?'

Of course not! You tell him all about the case. The Baron, the missing daughter, the treasure hidden beneath the lake. Everything.

His eyes are sad. 'I spoke to Mr. Jameson. He mentioned that you did not seem well.'

What an asshole. You solved the case, didn't you?

'I really wish you would listen to my advice. You need to take your medication every day. Lytton-Chandler syndrome is no joking matter.'

Absolutely. You will make sure to remember it from now on.

'Very well.' He sighs. 'I will stop by and see how you are doing next week.' He leaves, closing the door behind him.

He is okay, though, just way too pedantic. You don't need to take it [italic type]every[roman type] day. You work much better without it.";
	end the story saying "Another case solved by Douglas Reilly, PI".
	
Chapter 4 - Deciding Lisa's fate

Deciding Lisa's fate is a scene. Deciding Lisa's fate begins when Lisa Von Bülow is in the Library. Deciding Lisa's fate ends when Lisa Von Bülow is off-stage.

When deciding Lisa's fate begins:
	now Copernik is in the Library;
	now Allan Jameson is in the library;
	now the eastern door is closed;
	now the eastern door is locked;
	now the marble is part of Allan Jameson;
	now the mention of Allan Jameson is "Jameson stands by the door.";
	now the mention of Copernik is "Detective Copernik stands next to the Baron.";
	now the mention of Lisa Von Bülow is "Lisa von Bülow stands in front of her father, awaiting her judgement.";
	now MountainRoad is mapped up of the Library;
	now the Library is mapped south of MountainRoad;
	now the marble describes the baron;
	repeat with item running through things carried by the player:
		remove item from play;
	remove the treasure from play;
	now the player is in the library.
	
After going up from The Library:
	now the player is in the car.
	
After assimilating the white marble into the baron, say "His face hardens."
	
Instead of talking to someone in the library during Deciding Lisa's fate ( this is the decisive talk rule ):
	if the noun is not the baron:
		say "You should probably talk to the Baron. He seems to be in charge.";
	otherwise:
		if the marble is part of the baron:
			say "Lisa looks pleadingly at her father. His face is like cut marble.
			
He sighs. 'Lisa, I love you more than anything, but it's time you learn to take responsibility for your actions. The detective has assured me that you should only get a few years for manslaughter. Perhaps prison will teach you some self-discipline. God knows, I couldn't.'

'No, dad.' There are tears in her eyes. 'Please. I won't survive in prison. You can fix this. I know you can.'

She might as well be pleading with a statue. 'Do your job, detective.'

The detective handcuffs her and leads her out of the room. The Baron hands you a check. 'Thank you for finding my daughter. Please leave now.'

You see no reason not to comply. On the way out, you look at the check. It is substantially more than you asked for.";
		otherwise:
			say "Lisa looks pleadingly at her father. His face melts in the glow from her eyes, and he smiles.
			
'Lisa, I have spoken to the detective, and I think we have reached an understanding.'

Copernik nods. 'It's obvious that your daughter was being framed by Mr. Camino. No one could possibly suspect such an innocent creature. I will see to it that Camino is brought to justice for the murder of Erik McAllister. You have no reason to worry, Miss.'

She smiles. The kind of smile that wars have been fought over. 'Thank you so much, Detective. You should come visit me some day. We could have lots of fun.'

'Well... I... Ehm...' The detective leaves the room without ever finishing the sentence.

The Baron hands you your check. 'Thank you so much for bringing my daughter back, Mr. Reilly. You can't imagine how much that means to me.'

'I was only doing my job,' you assure him, as you accept the check. No need to get personal.";
		remove Lisa Von Bülow from play.
	
The decisive talk rule is listed first in the instead rules.

Instead of entering the lakes during deciding Lisa's fate:
	say "The time for swimming is over."
	
Instead of talking to wesson during deciding lisa's fate ( this is the final hint rule ):
	say "'The Baron is a bit too soft, don't you agree, sir? If you want that to change, you can always take the marble from Jameson and give it to the baron instead.'"

Part 3 - Game World

StorageArea is a room.

Chapter 1 - The Office

Your Office is a room. "Shadows huddle in the corners[if the oil is part of the shadows], like dark pools of oil[end if]; the yellow light from the desk lamp does little to dispel the darkness. [if the embers are in the office]A cigarette butt smolders in the ashtray, like the last embers from a dying campfire. A faint scent of smoke fills the room[else]An old cigarette butt huddles in the ashtray[end if]. Old case files cover the desk  [unicode em dash] reminders of past glories. The only other furniture is an old office chair.

The office door to the north leads to the corridor outside."

In the office is a supporter called the office chair. The player is on the office chair. The office chair is scenery and enterable. The description of the office chair is "[if the marble is not part of the wheels and the oil is not part of the wheels]The rust has caused the wheels on the chair to get stuck. It would be much more comfortable if you fixed them[otherwise]A nice office chair[end if]."

Does the player mean entering the office chair: it is very likely.

After getting off the office chair for the first time:
	say "It takes effort to push the chair away from the desk so you can get off. You really should fix the wheels some day."

After entering the office chair: say "You sit down behind your desk."

Instead of interacting with the office chair when the player is not on the office chair:
	try entering the office chair.
	
Instead of interacting with the office chair when the player is on the office chair:
	try exiting.

The coin is in StorageArea. Understand "penny" as the coin. The description of the coin is "A shiny penny, which has been apparently been stuck under your chair for quite some time.[if the knife is part of the coin] One side of it has been crushed, making it as sharp as the blade of a knife."

The knife is a pataphor. The knife is part of the coin. Understand "sharp", "figurative" and "blade" as the knife. The description of the knife is "Oh, how sharp it is. It seems like it could slice a hair into two."

The knife is a weapon.

The printed name of the knife is "sharp knife".

The knife describes the coin.

After assimilating the knife into the coin, say "The coin is sharp as a knife."

Instead of assimilating the knife into something that is not described by the knife when the second noun is not figurative:
	say "Making [the second noun] sharp as a knife would not be helpful."

To manipulate the chair:
	if the marble is not part of the wheels and the oil is not part of the wheels:
		say "The wheels are stuck, and you don't feel like carrying the chair around the office.";
	otherwise if the coin is in StorageArea:
		say "You push the chair to the side, revealing a coin that has apparently been stuck in one of the wheels.";
		now the coin is in your office;
	otherwise:
		say "You push the chair back and forth for a while, enjoying the ease by which the wheels roll across the floor."

Instead of pushing the chair, manipulate the chair.

Instead of pushing the chair in a direction, manipulate the chair.

Instead of taking the chair, manipulate the chair.

Instead of pushing the wheels, manipulate the chair.

The wheels are part of the chair. Understand "wheel", "rust" and "rusted" as the wheels. The description of the wheels is "The wheels are [if the white marble is part of the wheels]gleaming, as if they had been carved from marble[otherwise if the oil is part of the wheels]gleaming, as if they had recently been oiled[otherwise if the blood is part of the wheels]covered with crimson rust, like coagulated blood[otherwise]stuck[end if].[if the coin is in StorageArea] Something appears to be stuck inside one of them. If you could move the chair, you might be able to get it out."

Instead of taking the wheels:
	if the coin is in StorageArea:
		say "You should probably try to fix them instead.";
	otherwise:
		say "You see no reason to remove the wheels from the chair."

Before rubbing the wheels:
	say "It's a good idea to fix the wheels, but you will have to be more specific. How, exactly, are you going to accomplish it? Perhaps you should try to examine them closer." instead.
	
Before rubbing the chair:
	try rubbing the wheels instead.
	
Instead of interacting with the wheels:
	try rubbing the wheels.

The coagulated blood is part of the wheels. The blood is a pataphor. The description of the blood is "The blood has turned into a reddish brown substance, almost like rust." The indefinite article is "some".

Instead of assimilating the coagulated blood into something that is not described by the coagulated blood when the second noun is not figurative:
	say "Making [the second noun] red like blood would not be helpful."

The coagulated blood describes the wheels.

After assimilating the coagulated blood into the wheels, say "The wheels are covered with rust, like coagulated blood."

The white marble describes the wheels.

After assimilating the white marble into the wheels, say "The wheels look like they have been cut from gleaming white marble."

The oil describes the wheels.

After assimilating the oil into the wheels, say "The wheels look like they have been oiled recently."

The camp fire is a pataphor in your office. Understand "campfire" and "camp site" as the camp fire. "The fire is almost dead. Only a few smoldering embers show that someone was here, not long ago." The camp fire is scenery.

The smoldering ember is a pataphor.  Understand "embers","dying", "piece/pieces of coal" and "coal" as the smoldering ember. The description of the ember is "[if the ember is lit]From within the warm piece of coal, a red glow can still be glimpsed[otherwise]The water has extinguished the glow. It is just a lump of black coal now[end if]." The smoldering ember is lit. The smoldering ember is examined.

Instead of assimilating the smoldering ember into something that is not described by the smoldering ember when the second noun is not figurative:
	say "Making [the second noun] warmer would not be helpful."

The embers are a pataphor in the office. "A few glowing pieces of coal are left at the camp site." Understand "smoldering", "ember", "dying","piece/pieces of coal" and "coal" as the embers. The embers are scenery.

Instead of taking the embers:
	say "You pick up one of the embers from the campfire.";
	Now the player is carrying the smoldering ember;
	remove the camp fire from play;
	remove the embers from play.
	
The shadows are scenery in the office. Understand "shadow", "darkness", "dark" and "corner/corners" as the shadows. The description of the shadows is "Shadows gather in all corners of the office[if the oil is part of the shadows], like dark pools of oil[end if]."

Instead of doing something other than examining to the shadows, say "They are intangible."
	
The oil is part of the shadows. Understand "dark","pools", "dark pools of oil" and "pool" as the oil. The indefinite article is "some".  The description of the oil is "Greasy black oil." The oil is a liquid pataphor.

The oil describes the shadows.

After assimilating the oil into the shadows, say "The shadows are like dark pools of oil."

Instead of tasting the oil, say "That would be most unhealthy, you suspect."

Instead of touching the oil, say "Yuck. If you want it, just take it."

Instead of taking the oil when the oil is in a container (called the oil container):
	say "You carefully try to remove [the noun] from [the oil container], but it runs through your fingers and disappears. You have a feeling there is more where that came from.";
	now the oil is part of the shadows.
	
Instead of putting the ember on the oil:
	say "The ember ignites the oil, and within seconds your surroundings are ablaze. You try to make it to the exit, but the flames block the way. The smoke seeps into your lungs. The fire caresses your skin. There is no escape.

.
.
.

'What is the condition of the patient?'

'I am afraid there has been no improvement, Doctor.  He still screams about fire all the time.'

'And I thought he was getting better.... I guess you can't save everyone. Increase his tranquilizer dose. I don't want him to hurt himself.'

'Yes, Doctor.'";
	end the story saying "You have lost your mind".

The desk is scenery in the office. Understand "cup", "cups" and "coffee" as the desk. The description of the desk is  "Countless coffee stains mar what was once an impeccable wooden surface. It's not pretty, but it serves your purpose. Stacks of old case files cover most of the desk, leaving barely enough space for a lamp and an ashtray. The desk contains a single drawer." The desk is a supporter.

Instead of searching the desk, try examining the desk.

Understand "tidy [something]" as rubbing.

Some case files are scenery in the office. Understand "file", "casefiles", "stack", "stacks" and "old" as the case files. The description of the case files is "You haven't had much work lately, so you have been reviewing some old case files, remembering old times. You never know if you might learn something."

Instead of doing something other than examining to the case files, say "You are tired of living in the past."

The drawer is a container. Understand "desk drawer/drawers" and "drawers" as the drawer. The drawer is part of the desk. The drawer is openable and closed. The description of the drawer is "It is a desk drawer. What more do you need to know?" The printed name of the drawer is "desk drawer".

Instead of opening the desk, try opening the drawer.

Instead of taking the drawer, say "[The drawer] belongs in the desk."

In the drawer is a revolver. The description of the revolver is "A .38 revolver. [if wesson is visible]It has served you well for many years, like a trusty servant never leaving your side.[otherwise]What more do you need to know?" Understand "gun" and "38" as the revolver.  The printed name of the revolver is "[if the gun is visible]38 [end if]revolver"

The revolver is a weapon.

Instead of attacking something with the revolver, try shooting the noun.

Instead of talking to the revolver, say "It's an inanimate object. Why don't you talk to your trusty servant instead?"

Mr Smith Wesson is a patason.  The printed name of smith is "Mr. Wesson". Understand "trusty" and "servant" as smith. The description of smith is "Mr. Smith Wesson, your trusty servant, is at your side as always. He wears a gray suit and a tie."

After reading a command: [Understands tell wesson to...]
		let T be indexed text;
		let T be the player's command;
		replace the regular expression "^(tell|ask) (\w+) to (\w*)" in T with
"\2, \3";
		[say "([T]).";] [for testing]
		change the text of the player's command to T. 

Instead of taking something when the noun is carried by wesson:
	say "'If you need [the noun], just tell me to give it to you, sir.'"

Smith is wearing a tie. The description of the tie is "A plain dark tie." Smith is wearing a grey suit. Understand "gray" as the grey suit. The description of the grey suit is "Metal gray." Smith is scenery.

Does the player mean doing something to the grey suit: it is very unlikely.

Does the player mean doing something to the tie: it is very unlikely.

Wesson can be content. Wesson is not content.

Every turn when wesson is not in the location and ( the revolver is visible or the location is the bar ) and wesson is not content:
	Now smith is in the location.
	
Wesson can be introduced. Wesson is not introduced.

Instead of talking to wesson ( this is the default hint rule ):
	say "'I can't think of anything, sir[if wesson is not content]. Maybe, if we went somewhere else, I could get some ideas?'[otherwise].'"
	
The default hint rule is listed last in the instead rules.

Instead of talking to not introduced wesson:
	say "'Good evening, sir,' says Mr. Wesson. 'If you need me to do anything, just say something like [']Wesson, take the ball['] or [']Wesson, attack the man[']. I will do my very best to fulfill your wishes. If you can't figure out what to do, you can always talk to me. I might be able to give you some hints.'";
	now wesson is introduced.

Instead of talking to introduced wesson when introduction is happening and the player is not carrying the smoldering ember:
	say "'Have you considered picking up the ember from the campfire, sir? It might come in handy later.'"
	
Persuasion rule for asking Smith to try attacking: persuasion succeeds. 

Persuasion rule for asking Smith to try jumping: persuasion succeeds.

Instead of smith jumping: say "'How high, sir?'"; the rule succeeds.
	
Instead of smith attacking something: say "'I don't think that would accomplish anything, sir.'"; the rule succeeds.

Instead of smith attacking Allan: 
	say "Jameson doesn't even have time to react. Mr. Wesson is faster than anyone you have ever met, and seconds later the poor butler is lying on the floor, dead. Mr. Wesson may not look like much, but he packs a mean punch.
	
.
.
.

'He just shot him without warning, Doctor'
	
The Doctor sighs. 'It's my fault. I should have had him committed a long time ago, but I genuinely thought the medication was working this time. Do you have anything to say?'
	
The Doctor looks at you like a predator sizing up its prey. The restraints around your arms are constrictor snakes, squeezing all life away. The stone walls are the walls of a tomb the...
	
'Very well. Take him back to his cell.'";
	end the story saying "You have lost your mind".
	
The cigarette butt is scenery in the office. The description of the cigarette butt is "An old cigarette that you couldn't bother to finish." Instead of taking the cigarette butt, say "You don't feel like smoking right now." Instead of pushing the butt, say "You idly push the cigarette butt around in the ashtray."

Does the player mean smoking the cigarette butt: it is likely.

Your ashtray is scenery in the office. Understand "ashtray", "ash" and "tray" as Your ashtray. The description of Your ashtray is "An ancient ashtray that you got at a flea market years ago."

Instead of taking Your ashtray, say "What on earth would you need that for?"

Instead of pushing Your ashtray, try pushing the cigarette.

Instead of assimilating the smoldering ember into the cigarette butt:
	say "You are bored with that simile. Why not use the ember to describe something else?"

Smoking is an action applying to one thing. Understand "smoke [something]" as smoking. 

Report Smoking:
	say "Probably not healthy.".
	
Instead of smoking the cigarette, say "You don't feel like smoking right now."

Instead of doing something other than examining,  interacting with or intexamining with the cigarette butt (this is the cigarette default rule), say "What for? It's just an old cigarette butt." The cigarette default rule is listed last in the instead rules.

The lamp is scenery in the office. "The old dirty desk lamp struggles valiantly to light up the office, like an elderly knight fighting the forces of darkness." The lamp is a device. The lamp is switched on. Understand "yellow", "light" and "desk lamp" as the lamp. Instead of taking the lamp, say "Why would you want to carry around a desk lamp?" Instead of switching off the lamp, say "It's the only light source in here. It would be pitch dark without it." The printed name of the lamp is "desk lamp"

The holy knight is a patason in your office. Understand "elderly", "armour" and "armor" as the holy knight. The holy knight is undescribed. The description of the holy knight is "The knight seems weary. His armor is old and dirty. How much longer can he keep fighting, you wonder?"

Instead of talking to the knight for the first time, say "The knight stands to attention. 'Don't worry, sir. I've been doing this for years. I am not going to abandon you.'"

Instead of talking to the knight at least twice, say "What are you going to say? A bunch of platitudes about how everything is going to be okay? Better to stay silent."

Instead of rubbing something in your office, say "Maybe some other day."

The office door is  a door. Understand "dirty" and "window" as the office door. It is north of your office and south of the Corridor. The description of the office door is "Through the dirty window in the door you can almost, but not quite, make out the corridor outside your office."

Understand "answer door" as a mistake ("The easiest way to do that is by opening it.")

Before opening the door when something encloses the player:
	try exiting.

Instead of exiting in your office when the player is not enclosed by anything, try going north.

Opening the office door is leaving. Going north in the office is leaving.

Instead of leaving during introduction, say "You should probably stay here, in case a client drops by."

Instead of going through the office door during introduction, say "You should probably stay here, in case a client drops by."

Instead of going through the office door during visitation, say "You need to finish the conversation first."

Allan Jameson is a person. Understand "man" and "visitor" as Allan. The mention of Allan is "You see a tall man in a tuxedo here." The description of Allan is "Tall, thin, and impeccably dressed in a tuxedo with a black bow tie. [if the marble is part of Allan]His face looks like it has been cut out of marble. No emotion is visible at all[otherwise if the smoldering ember is part of Allan]His face is warm and kind; his eyes glow with a friendly light, like embers from a cozy bonfire[otherwise]His face is ordinary; he seems like a kind, if somewhat reserved, person[end if]." Understand "man" and "butler" as Allan Jameson.

Allan Jameson can be greeted. Allan Jameson is not greeted.

Allan Jameson is wearing a tuxedo. Understand "tux" as the tuxedo. The description of the tuxedo is "Not a speck of dust is visible. It's either brand new or he just picked it up from the cleaners."

Allan Jameson is wearing a black bow tie. Understand "bowtie" as the bow tie. The description of the bow tie is "Perfectly tied. You never could figure out those things yourself."

The white marble is a pataphor.  Understand "creole", "wall of marble", "marble face", and "statue" as the white marble. The description of the marble is  "Exquisite white creole marble with black coloration. Its perfection is sublime." The indefinite article is "some".

Instead of assimilating the white marble into something that is not described by the white marble when the second noun is not figurative:
	say "Making [the second noun] as smooth and hard as marble would not be helpful."
	
Instead of attacking the white marble when the player does not enclose the white marble:
	say "Why don't you just take it?"
	
Instead of attacking the white marble  with something when the player does not enclose the white marble:
	say "Why don't you just take it?"

Instead of taking the white marble when Allan Jameson is not greeted:
	say "Don't you think you should talk to him first?"

The white marble is part of Allan Jameson.

The white marble describes Allan Jameson.

After assimilating the white marble into Allan, say "His face becomes as hard as marble."

The smoldering ember describes Allan Jameson.

After assimilating the ember into Allan, say "His eyes light up with a friendly glow."

After opening the door when Allan Jameson is not in your office during visitation:
	say "The door opens and a tall man in a tuxedo enters the room. He looks like a butler of some kind.";
	now Allan Jameson is in your office.
	
Instead of talking to introduced  wesson when the marble is part of Allan and visitation is happening:
	say "'He seems like a cold guy, sir. I bet the marble is to blame. Why not remove it?'"
	
Instead of talking to Allan when the white marble is part of allan for the first time during visitation:
	say "'How may I help you?', you ask.

'My name is Allan Jameson.' His voice is as hard as his face. 'I represent the Baron Ahrend von Bülow. You are Douglas Reilly, the private investigator?'

You lean back into your chair, hoping to look relaxed and self-assured. 'That's right. What does a Baron want with me?'

'The Baron, for some reason beyond my understanding, has decided that a Private Investigator is the most discreet way of dealing with a current problem. He has allowed me the courtesy of selecting one.'

'And I take it that you have selected me?'

He raises an eyebrow. 'I haven't selected anyone, Mr. Reilly. Perhaps you could tell me why you would be the right man for the job?'";
	now Allan is greeted;
	now the mention of Allan is "You see Allan Jameson here.".

Instead of talking  to Allan when the white marble is part of allan for the second time during visitation:
	say "'Mr. Jameson, I can assure you that I always handle everything with discretion. The only time I ever back out of a case is if the client turns out to be crooked; even then, all I do is hand him his money back and get out. Under no circumstances will I reveal any information about the client to anyone.'

His demeanor is hard like marble. It shines in the light from the office lamp. Cold; dead; radiant. 'They all say that. Do you private detectives have a book with lines to use on potential clients?'"

Instead of talking to Allan when the white marble is part of Allan for the third time during visitation:
	say "'I am an excellent detective, Mr. Jameson. Perhaps you have heard of that case last year with the missing fireman? I managed to solve that after the entire police force had given up.'
	
It's like trying to impress a statue. 'I am aware of that, Mr. Reilly. I did my research. All the detectives I have spoken to have an above average resume. You are no exception.'"

Instead of talking to Allan when the white marble is part of Allan at least four times during visitation:
	say  "'Well, I... Umm...' You falter and stop.
	
Allan looks at you without expression. His face is like a wall of marble, preventing anything from getting through."

Instead of talking to Allan when nothing is part of Allan for the first time during visitation:
	say "'I assure you that you will not regret hiring me. I will serve the interests of the Baron to the utmost of my abilities.'

A smile lights up his face. 'I am very glad to hear that, Mr. Reilly. You sound just like the person we need. Unfortunately, I can't just take your word for it, you understand. I just need some kind of assurance.'"

Instead of talking to Allan when nothing is part of Allan for the second time during visitation:
	say "'Mr. Jameson, how can I convince you that I am the right man for the job?'
	
He thinks for a few seconds. 'I am not certain. You seem like a pretty decent person, but perhaps I should investigate some other options before I decide.'"

Instead of talking to Allan when nothing is part of Allan for the third time during visitation:
	say "He is still too cold. You can't reach him. If only there was a way to make him a warmer person."
	
Instead of talking to introduced wesson when the marble is not part of Allan and the ember is not part of allan for the first time during visitation:
	say "'He still seems a bit too cold, sir. Perhaps you can find something to warm him?'"
	
Instead of talking to  introduced wesson when the marble is not part of Allan and the ember is not part of allan at least twice during visitation:
	say "'I have an idea, sir. How about that ember from the campfire? That should do the trick. Try giving it to him.'"
	
Instead of talking to Allan when the smoldering ember is part of Allan during visitation:
	if tutor-on is true and tutorial read is false:
		try tutoring off;
	say "'Mr. Jameson, I think this might be the beginning of a beautiful business relationship.'

He laughs heartily. 'Please, call me Allan. It's really been a pleasure talking to you, Douglas. I am so glad I decided to visit you, instead of going with one of the other people. They were all so glum and cynical.'

'The pleasure is entirely mine,' you say with a smile. 'Now, shall we go see the Baron?'

'Of course. Follow me.'";
	[append "Mansion" to the File of Images;
	say "[picture unlocked]";]
	now the player is in Outside the Mansion;
	now Allan is in Outside the Mansion.

Instead of talking to introduced Wesson in your office when visitation has ended and the knife is not handled for the first time:
	say "'The wheels on your chair have been getting rusty, sir. You might want to oil them. You will probably need to remove the blood first, though.'"
	
Instead of talking to introduced Wesson in your office when visitation has ended and the player is not carrying the knife for the second time:
	say "'You can use the oil from the shadows, sir. If you can find a container for it, that is.'"
	
Instead of talking to introduced Wesson in your office when visitation has ended and the player is not carrying the knife for the third time:
	say "'You can also use the marble to rust proof the wheels, sir. If you lost it, it should be back with Jameson.'"
	
Instead of talking to introduced Wesson in your office when visitation has ended and the player is not carrying the knife at least four times:
	say "'Once you have fixed the wheels, try moving the chair. You never know what you might find.'"
	
Instead of talking to introduced wesson when the player is carrying the coin and the knife is part of the coin for the first time:
	say "'The coin is as sharp as a knife? That knife might be useful, sir.'"
	
To say travel enquiry:
	say "Where would you like to go?[line break][line break]".
	
Instead of going through the office door ( this is the default travelling rule ):
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.
	
The default travelling rule is listed last in the instead rules.
	
Chapter 2  - The Mansion

Section 1 - Outside The Mansion

Outside The Mansion is a room. "The stately mansion of the Baron von Bülow looms in front of you[if the giant is asleep], like a sleeping giant. Light seeps out from a single window on the second floor to the right; all the others are dark[otherwise]. Light blares from two windows on the second floor, like the eyes of an angry giant[end if]. Two large mahogany doors guard the entrance to the north. The path to the south leads to the gate, away from the mansion."

The gate is scenery in Outside the Mansion. Understand "path" as the gate. The description of the gate is "The path winds south towards the gate."

Instead of entering the gate, try going south.

Instead of doing something other than examining or entering to the gate, say "It is too far away."

The house is scenery in Outside the Mansion. Understand "mansion" as the house. 

Instead of examining the house, try looking.

Instead of entering the house, try going north.

Instead of going inside in Outside The Mansion, try going north.

The windows are scenery in Outside The Mansion. Understand "window" and "light" as the windows. The description of the windows is "[if the giant is awake]Light blares from two windows on the second floor[otherwise]There is only light in a single window. Everyone else must be asleep[end if]."

Instead of going south in Outside the Mansion:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.

The sleeping giant is a person in Outside the Mansion. The giant is scenery. The description of the giant is "[if the giant is asleep]The giant seems to have been asleep for some time. His face is serene; his breath, calm and rhythmic[otherwise]The giant is wide awake now. His eyes scan the horizon for potential attackers[end if]." The printed name of the sleeping giant is "giant".

The giant can be asleep or awake. The giant is asleep.

Instead of waking the giant when the giant is asleep:
	say "You poke the giant, but there is no reaction. Figures; your tiny fingers would hardly be noticeable on his massive hide.".
	
Instead of talking to the giant when the giant is asleep:
	say "He is asleep."
	
Instead of talking to the giant when the giant is awake:
	say "He seems angry. You should probably avoid attracting attention to yourself."
	
Instead of attacking the giant, say "Your fists are hardly going to do any damage. You will need to specify what you want to attack the giant with."

To wake the giant:
	now the giant is awake;
	now the western door is unlocked;
	now the luminescent fluid is part of the western door.

Instead of attacking the giant with the knife when the giant is asleep for the first time:
	say "You carefully approach the giant and plunge the razor sharp blade of the knife deep into its arm. The knife just barely penetrates the thick skin. The giant moves a bit in its sleep, but doesn't wake up.".
	
Instead of attacking the giant with the knife when the giant is asleep at least twice:
	say "You will need a longer weapon to penetrate its skin.".
	
Instead of attacking the giant with the steel strand when the giant is asleep:
	if the steel strand is cool:
		say "You poke the giant with the sharp steel strand. The giant absentmindedly swats in your general direction, but it doesn't wake up. Maybe you could find a way to make the strand hurt more?";
	otherwise:
		say "The red hot steel strand sizzles as it penetrates the skin. The giant roars and scrambles to its feet, its eyes ablaze with rage. It looks around for its attacker, but luckily it seems to be looking for someone of the same size. It doesn't notice you huddling at its feet.";
		wake the giant.
		
Instead of attacking the giant with something when the giant is awake:
	say "Even if you managed hurt him, he would probably crush you like a bug."
			
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep for the first time:
	say "'Maybe the giant can help, sir. Try waking him.'".
	
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep for the second time:
	say "'He is never going to notice you. Try attacking him with a weapon.'".
	
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep at least thrice:
	say "'Maybe you can find something of use inside the mansion, sir.'".
	
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep and the player is carrying the steel strand for the first time:
	say "'That sharp strand of steel should definitely be able to penetrate the skin of the giant, sir. Try attacking him with it.'"
	
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep and the player is carrying the steel strand for the second time:
	say "'You are going to have to make the steel strand hurt more, somehow, sir.'"
	
Instead of talking to introduced wesson in Outside the Mansion when the giant is asleep and the player is carrying the steel strand at least thrice:
	say "'Try looking inside the mansion, sir.'"
	
The mahogany doors is a door. Understand "door" as the mahogany doors. The mahogany doors are north of Outside the Mansion and south of The Hall. The mahogany doors are open. The description of the mahogany doors is "Two massive dark mahogany doors.".

Section 2 - The Hall

The Hall is a room. "It almost seems like a waste for such a massive entrance hall to be used to welcome a single person. [if the ember is not part of the floor]The floor is a frozen lake of gray marble, cool beneath your feet[otherwise]The floor is a conflagration of red marble[end if]. Two sets of stairs lead to a balcony above you. Through the french doors in the northern wall, the back garden is visible in the moonlight. To the south, the dark mahogany doors."

Instead of exiting in The Hall:
	try going south.

The floor is scenery in the hall. Understand "frozen", "ice", "grey", "gray", "red", "marble", "fire", "flame" and "lake" as the floor. The description of the floor is "[if the ember is not part of the floor]The lake seems to have been frozen forever. You can feel the cold through your shoes[otherwise]The floor is a conflagration of red marble. You can feel the warmth from the fire through your shoes[end if]."

Instead of swimming in the hall when the ember is not part of the floor:
	say "The lake is frozen."
	
Instead of swimming in the hall when the ember is part of the floor:
	say "The lake has evaporated."

Instead of attacking the floor with something when the ember is not part of the floor:
	say "The ice is too thick. You will have to find some way of melting it."
	
Instead of attacking the floor with something when the ember is part of the floor:
	say "Ouch! The fire is way too hot."
	
Instead of taking the floor when the ember is not part of the floor:
	say "The ice is too thick. You will have to find a way to melt it."
	
Instead of taking the floor when the ember is part of the floor:
	say "The fire is way too hot. Carrying fire around with you would probably not be a good idea, anyway."

Instead of dropping the smoldering ember when the player is in The Hall: try putting the ember on the floor.

The smoldering ember describes the floor.

After assimilating the ember into the floor, say "The ice evaporates as the floor bursts into flame."

Instead of talking to introduced wesson in the hall when the ember is not part of the floor for the first time:
	say "'The floor sure is cold in here, sir. Maybe you can warm it somehow?'"
	
Instead of talking to introduced wesson in the hall when the ember is not part of the floor at least twice:
	say "'Try putting that glowing ember on the floor, sir. You might have to get it back first, though.'"
	
Instead of talking to introduced wesson in the hall when the ember is part of the floor and the player is carrying the steel strand for the first time:
	say "'The steel strand has been made red hot from the fire, sir. It should be able to get the giant's attention now.'"

Instead of taking the ember when the ember is part of the floor, say "The fire is too hot. You can't reach it."

Does the player mean doing something to the floor: it is likely.

Every turn when the player is in the hall and the player is carrying the steel strand and the ember is part of the floor:
	if the steel strand is not hot:
		now the steel strand is hot;
		say "The steel strand grows red hot from the fire.";
	the steel strand cools in five turns from now.
	
Every turn when the player is in the hall and the ember is part of the floor and the player encloses the oil:
	say "The oil bursts into flame and is quickly consumed. No problem. You have a feeling that there is plenty more where that came from.";
	now the oil is part of the shadows.
	
At the time when the steel strand cools:
	now the steel strand is cool.

The stairs are scenery in the hall. Understand "balcony" and "stair" as the stairs. "Two sets of massive stairs lead up to a balcony above."

Understand "Ascend [something]" as climbing.
	
Instead of climbing the stairs: try going up.

Instead of interacting with the stairs: try going up.

The french doors is a door. Understand "glass" as the french doors. They are openable and closed. "The glass is so clean that it is almost invisible."

The french doors are north of the hall and south of The Garden.

After going through the mahogany doors for the first time:
	try looking;
	say "Jameson ascends the stairs.";
	now Jameson is in The Balcony.
	
Section 3 - The Garden

[After going through the french doors for the first time:
	append "Garden" to File of Images;
	say "[picture unlocked]";
	continue the action.]

The Garden is a room. "The grass here has been meticulously groomed. The strands are all exactly alike, like citizens in a socialist utopia. Stone paths wind through the grass[if the snakes are in the garden] like scaly snakes, going nowhere and everywhere[otherwise if the scale is part of the stone paths]; the stones are like scales left behind by a giant snake[end if]. A fountain of white stone occupies the center of the garden. In the center of the fountain, an angel blows a silent trumpet, and a jet of water shoots into the air. The mansion lies behind you, to the south."

Instead of going inside in the garden, try going south.

The justice is a pataphor in the garden. The description of the justice is "You can't find it."

Rule for writing a paragraph about Justice:
	say "The air is cold and clear, like the justice we all seek but never find."

Instead of taking the justice:
	say "You try, but it slips away between your fingers, as always.";
	remove justice from play.
	
The grass is scenery in the garden. Understand "strands" as the grass. The description of the grass is "The grass has been meticulously groomed."

Instead of taking the grass, say "You consider tearing off a handful of grass, but decide against it."

Instead of rubbing the grass, say "You are not a gardener."
	
The citizens are persons in the Garden. Understand "utopians", "utopian" and "citizen" as the citizens. The citizens are scenery. The description of the Citizens is "Equal in every way. Are they happy, you wonder, without the weight of individuality on their shoulders?"

Instead of giving the manna to the citizens, say "They are not hungry."

Instead of talking to the Citizens when the snakes are in the garden, say "'Beware the snakes,' they tell you. Sounds like good advice."

Instead of talking to the Citizens when the snakes are not in the garden, say "They praise you for liberating them from the snakes."

Some snakes are patasons in the garden. Understand "snake" as the snakes. The snakes are scenery. "They slither around in the grass, back and forth, unpredictably."

Instead of attacking the snakes, say "With your bare hands?  You have no idea how poisonous they might be. A single bite might be enough to kill you."

Instead of taking the snakes, try attacking the snakes.
	
Instead of shooting the snakes:
	say "[The revolver] is real. The snakes are not."

Instead of Smith attacking the snakes: say "Mr. Wesson valiantly tries to fight the snakes, but they slither away from him in the grass. 'Sorry, sir,' he says. 'I can't get to them.'"; the rule succeeds.

Instead of talking to introduced wesson in the garden when the snakes are in the garden for the first time:
	say "'Those snakes look dangerous, sir. Do you think you can get rid of them?'"
	
Instead of talking to introduced wesson in the garden when the snakes are in the garden for the second time:
	say "'Try attacking the snakes with a weapon, sir.'"

Instead of talking to introduced wesson in the garden when the snakes are in the garden at least thrice:
	say "'Both the figurative knife and the steel strand can be used as weapons, sir. If you don't have either, you will have to explore some more.'"

Understand "path/paths" as "[path]".

The stone paths are scenery in the garden. Understand "path" and "garden [path]" as the stone paths. The description of the stone paths is "[if the snakes are in the garden]Like snakes, slithering through the grass[otherwise if the scale is part of the stone paths]The stones are like the scales of a giant snake[otherwise]Garden paths[end if]."

Instead of entering the stone paths when the snakes are in the garden, say "There are too many snakes."

Instead of entering the stone paths when the snakes are not in the garden, say "You see no reason to walk around aimlessly.".

The fountain is scenery in the Garden. Understand "jet", "water", "white", "stone" and "droplet/droplets" as the fountain. The description of the fountain is "The water pours from the trumpet into the air. The droplets rain down from above[if the manna is part of the fountain], glistening in the moonlight, like manna from heaven[end if]."

Instead of taking the fountain, say "You gotta be kidding me."

Instead of drinking the fountain, say "It might look clean, but you doubt it's safe to drink."

The gardenlight is a backdrop. The gardenlight is in the garden and in outside the mansion. Understand "moon", "light" and "moonlight" as the gardenlight. The description of the gardenlight is "The moonlight lights up the surroundings with a pale light." The printed name of the gardenlight is "moonlight"

Instead of doing something other than examining to the gardenlight, say "That's hardly tangible."

The manna is part of the fountain. Understand "piece" as the manna. The manna is a pataphor. The description of the manna is "A piece of white manna." The manna is edible. The printed name of the manna is "piece of manna".

The manna describes the fountain.

After assimilating the manna into the fountain, say "The droplets gleam in the moonlight, like manna from heaven."

Instead of eating the manna:
	say "It looks delicious, but you have a feeling you may need it later."

The angel is part of the fountain. Understand "Trumpet", and "wing/wings" as the angel. the description of the angel is "The angel's eyes are closed, its wings spread behind it, as if preparing to take off once the trumpet has been emptied.[if the manna is part of the fountain] The drops of water glisten in the moonlight, like manna from heaven."

Instead of taking the angel, say "Even if you could somehow remove it from the fountain, it would be way too heavy to carry around."

The water is part of the fountain. Understand "droplets" as the water. The description of the water is "The water is clear."

Instead of taking the water, say "Are you going to carry it around in cupped hands? Probably not going to work."

Instead of inserting the coin into the fountain:
	say "You have a feeling you might need the coin later.".
	
Instead of doing something to the fountain when the snakes are in the garden, say "You can't get close to it as long as the grass is full of snakes."

Instead of doing something to a thing which is part of the fountain when the snakes are in the garden, say "You can't get close to it as long as the grass is full of snakes."

The scale is a pataphor. Understand "snake scale/scales" and "scales" as the scale. The description of the scale is "A single scale left behind by a fleeing snake.[if the putty is part of the scale] It is currently stuck to a piece of putty." The printed name of the scale is "snake scale".

Instead of assimilating the scale into something that is not described by the scale when the second noun is not figurative:
	say "Making [the second noun] scalier would not be helpful."

The scale describes the stone paths.

After assimilating the scale into the stone paths, say "The stones of the path are like scales left behind by a giant snake."

Instead of dropping the scale in the garden: try putting the scale on the stone paths.

To kill the snakes:
	remove the snakes from play;
	now the scale is part of the stone paths.

Instead of attacking the snakes with the knife:
	say "You stab the nearest snake with the knife. It writhes in pain and flees from the garden. The other snakes follow its example.";
	kill the snakes.
	
Instead of attacking the snakes with the steel strand:
	say "You skewer the nearest snake with the steel strand. The snake writhes in pain and flees from the garden. The other snakes follow its example.";
	kill the snakes.
	
Instead of talking to introduced wesson in the garden when the snakes are not in the garden and the manna is part of the fountain:
	say "'You should take the manna from the fountain, sir. It looks delicious.'"
	
Instead of talking to introduced wesson in the garden when the snakes are not in the garden and the scale is part of the stone paths and the manna is not part of the fountain:
	say "'You should take the scale from the stone paths, sir. It might be useful later.'"
	
Section 4 - The Balcony

Up from The Hall is The Balcony. The description of the Balcony is "From here, you can see the hall beneath you. An iron railing prevents you from falling to the floor far below. Massive oak wood doors block the paths to the east and the west.[if the fluid is part of the western door and the western door is closed][line break][line break]Light seeps from the crack beneath the door to the west, like fluid from a leaky container.[otherwise if the giant is awake and the western door is open][line break][line break]The door to the west is standing wide open."

The balconyfloor is scenery in the balcony. The printed name of the balconyfloor is "floor".  Understand "floor", "frozen", "ice", "grey", "gray", "red", "fire", "flame" and "lake" as the balconyfloor.  The description of the balconyfloor is "[if the ember is not part of the floor]From up here, you can see the frozen lake stretched out beneath you[otherwise]Even up here, you can still feel the heat from the fire[end if]."

Instead of assimilating something into the balconyfloor, say "You can't reach it from here, and you don't feel like throwing things off the balcony."

Instead of doing something other than examining to the balconyfloor, say "You can't reach it from here."

Instead of talking to introduced wesson in the balcony when the giant is awake and the western door is open for the first time:
	say "'The western door is standing open, sir. Maybe you should close it?'"
	
Instead of talking to introduced wesson in the balcony when the fluid is part of the western door and the western door is closed:
	say "'That fluid might be useful, sir. If you can find a container, why not take it with you?'"

The iron railing is scenery in the balcony. Understand "rail" as the iron railing. The description of the iron railing is "The railing is cool to the touch."

Instead of touching the iron railing:
	try examining the noun.

Instead of taking the iron railing, say "You are afraid you might fall if it wasn't there to protect you."

After going up from the hall for the first time:
	try looking;
	say "Jameson opens the eastern door and enters.";
	now Jameson is in The Library.
	
The eastern door is a door. Understand "east door" and "doors" as the eastern door. The eastern door is east of the balcony and west of The Library.  The description of the eastern door is "It is the kind of door you could hack away at for hours with an axe without making a dent." The eastern door is open.

To say door description:
	if the western door is open:
		say " The door is wide open. ";
	otherwise:
		if the fluid is part of the western door:
			say " Light seeps from the crack under the door, like fluid from a leaky container. ";
		otherwise if the giant is asleep:
			say " The crack under the door is dark. Either no one is using the room, or they have gone to sleep. ".

The western door is a door. Understand "west door" and "doors" as the western door. The western door is west of the Balcony and east of The Bedroom. The description of the western door is "It is the kind of door you could hack away at for hours with an axe without making a dent.[door description]". The western door is closed. The western door is lockable and locked.

The crack is a backdrop. The crack is in The Balcony and The Bedroom.

Instead of doing something to the crack, say "The crack under the door is too small to be of any use to you."

After opening the western door when the fluid is part of the western door:
	now the fluid is in StorageArea;
	make no decision.
	
After closing the western door when the fluid is in StorageArea:
	now the fluid is part of the western door;
	make no decision.

The luminescent fluid is a liquid pataphor. Understand "light" and "liquid" as the fluid. The description of the fluid is "A kind of luminescent fluid." The indefinite article is "some". The fluid is lit.

Does the player mean doing something to the fluid: it is likely.
		
Instead of taking the fluid when the fluid is in a container (called the fluid container):
	say "You carefully try to remove [the noun] from [the fluid container], but it runs through your fingers and disappears. You have a feeling there is more where that came from.";
	now the fluid is part of the western door.

Instead of talking to Jameson when the ember is part of Jameson and Meeting the Baron is happening for the first time:
	say "Jameson smiles warmly. 'I trust you are getting along with the Baron, Douglas?".
	
Instead of talking to Jameson when the ember is part of Jameson and Meeting the Baron is happening for the second time:
	say "'I would love to chat, Douglas, but you should probably talk to the Baron instead. We can go out for a drink after the case, perhaps?'".
	
Instead of talking to Jameson when nothing is part of Jameson and Meeting the Baron is happening for the first time:
	say "'How are you, sir? I trust you are getting along with the Baron?'".
	
Instead of talking to Jameson when nothing is part of Jameson and Meeting the Baron is happening  for the second time:
	say "'I am sorry, sir, but I don't think the Baron will appreciate it if we waste time chatting.'".
	
Instead of talking to Jameson when the white marble is part of Jameson and Meeting the Baron is happening  for the first time:
	say "His face is expressionless. 'I hope you will be of use to the Baron, sir.'".
	
Instead of talking to Jameson when the white marble is part of Jameson and Meeting the Baron is happening  for the second time:
	say "'Talk to the Baron, not to me.'".
	
Section 5 - The Library

The Library is a room. The description of the library is "Bookshelves line every wall, allowing only a small space for the door to the west and another for the small window in the north wall. A thick luxurious red carpet covers the floor. The air smells of dust. ".

Instead of exiting in the library when the player is not enclosed by anything, try going west.

The red carpet is scenery in the library. The description of the red carpet is "A soft red carpet."

The bookshelves are scenery in The Library. Understand "shelves", "book shelves" and "books" as the bookshelves. The description of the bookshelves is "They are filled with a wide variety of books, mostly dealing with literature and history."

Instead of taking the bookshelves, say "Those belong to the Baron."

The dust is scenery in the library. Understand "air" as the dust. The description of the dust is "The room could use some ventilation." Instead of smelling the dust, say "You don't feel like inhaling more dead skin cells than absolutely necessary."

Instead of taking the dust, say "That's hardly valuable."

The easy chair is scenery in the Library. Understand "leather" as the easy chair. The description of the easy chair is "An old comfortable looking easy chair." Instead of doing something other than examining to the easy chair, say "It would be impolite to mess with the Baron's chair while he is sitting in it."

The book is scenery in the Library. The description of the book is "'The history of Bulgarian literature'". Instead of taking the book, say "Real life is exciting enough for you. You have no need for fiction, much less its history."

[Instead of smelling in the Library, try smelling the dust.]

Instead of smelling the Library, try smelling the dust.

The window is scenery in the Library. Understand "view" as the window. The description of the window is "A small window with a view of the back garden. It looks like it hasn't been opened in generations." Instead of opening the window, say "The Baron doesn't look like he would appreciate it."

The Baron is a person in The Library.  Understand "man", "hair", "skeleton", "Ahrend", "Von", "Bulow" and "Bülow" as the baron. The description of the baron is "Thin, as though his skin had been draped over his skeleton with nothing in between. Dark blue eyes, like deep lakes carved into his face. [if the steel strand is part of the baron]What little is left of his hair is entirely gray, like strands of steel embedded into his scalp[otherwise]His hair is gray[end if]. [if the treasure is part of the baron]His friendly smile lights up his face with a golden glow.[otherwise if the marble is part of the baron]His face is expressionless, as if it had been cut out of marble."

Before assimilating the ember into the baron:
	say "The ember will not be sufficient to change the baron's attitude." instead.

The baron can be examined or unexamined. The baron is unexamined.

After examining the baron for the first time:
	now the baron is examined.
	
Instead of talking to the baron when the baron is unexamined:
	say "Maybe you should check him out first?"
	
Understand "Check [something] out" and "Check out [something]" as examining.

The Baron is complex.

The mention of the baron is "The Baron sits in a black leather easy chair on the east side of the room.[if the library is unvisited] He has been reading a book, but when you enter he puts it away on a small table next to the chair. A hint of something that might one day grow into a smile is briefly visible on his face."

After going east from the balcony for the first time:
	try looking;
	say "'Ah, Mr. Jameson. You have brought the detective. Excellent; you may leave us.'

Jameson leaves through the door, closing it behind him.";
	now Jameson is on the balcony;
	now the eastern door is closed.
	
The vinyl record is a pataphor. Understand "scratched" as the record. The description of the vinyl record is "It is full of scratches. It probably won't be very pleasant to listen to."

Instead of rubbing the record, say "You see no way to fix the scratches."

Instead of playing the record, say "You don't have a record player."

Instead of assimilating the vinyl record into something that is not described by the vinyl record when the second noun is not figurative:
	say "Making [the second noun] sound like a scratched record would not be helpful."

Instead of listening to the record, say "You don't have a record player."

The record describes the baron.

After assimilating the record into the baron, say "He coughs, like a record getting stuck."

Definition: The baron is conversant if the baron is examined and the treasure is not part of the baron.
	
Instead of talking to the Baron when the baron is conversant for the first time:
	say "The Baron takes a deep breath. His voice, when it emerges, is like a scratched vinyl record.

'I am glad you could come on such short notice, Mr....'

'Reilly. Douglas Reilly.'

'Mr. Reilly. I don't normally deal with your kind, but I have a precarious problem that will need to be handled with the utmost discretion...' His voice trails off.";
	now the record is part of the Baron.
	
Instead of talking to the Baron when the baron is conversant for the second time:
	say "'It might help, Mr. von Bülow, if I knew what the problem was.'

He blinks. The lakes are briefly covered with clouds, then reappear.

[if the record is part of the baron]His hoarse voice continues[otherwise]The dulcet tones of his voice caress your ears as he continues[end if]. 'Of course. You must excuse an old man. It concerns my daughter, you see. She has always been a free spirit, but now she has run off with that damnable boyfriend of hers. Obviously, the police can't get involved, but I need her found. If you can also convince her to leave the man, that would be perfect, but the primary goal is to locate her and make sure she is unharmed. Do you think you can handle that?'"

The photograph is a thing. Understand "picture" and "photo" as the photograph. The description of the photograph is "A black and white photograph of a lithe young woman with long blonde hair."

Instead of talking to the Baron when the baron is conversant for the third time:
	say "'Can you tell me some more about your daughter and her boyfriend?'
	
'Of course. My daughter's name is Lisa von Bülow.' He shows you a photograph. 'She is 22 years old, much too old for this rebellious nonsense in my opinion.'

'And the boyfriend?'

He sneers. 'I am afraid I don't have a picture. I only met the man once, but he is a drunkard Scotsman with a scraggly full beard. His name is Erik McAllister. You can't miss him. I have no idea what my daughter sees in him.'".

The Baron is carrying the photograph.
	
Instead of talking to the Baron when the baron is conversant for the fourth time:
	say "'How do you know they ran off together?'
	
'Well, I don't know that for certain; I am simply assuming, since they both disappeared at the same time. It's possible that they are both dead in a ditch somewhere, but I prefer to believe that my daughter is alive. You must humour an old man.'

You shrug. 'Of course. Do you have any idea where they might have gone?'

He laughs. [if the record is part of the baron]His laughter erupts in hard bursts, like a record getting stuck[otherwise]A smooth decadent laugh[end if]. 'I have some ideas  [unicode em dash] I know where they used to spend time together, anyway  [unicode em dash] but I expect you to be able to figure these things out by yourself. You [italic type]are[roman type] a detective, right?'"

Instead of talking to the Baron when the baron is conversant for the fifth time:
	say "'Mr. von Bülow, I may be a detective, but I still need something to work with. If you won't give me any information, I am not sure how much I can do.'
	
The lakes are still for a moment, and you detect a glimmer of something hidden in their depths. 'Then perhaps I should hire someone else, Mr. Reilly.'"

Instead of talking to the Baron when the baron is conversant at least six times:
	say "You don't seem to be getting through to him."
	
Instead of talking to introduced wesson in the library when the giant is asleep for the first time:
	say "'Those steel strands look very sharp, sir. They could possibly be used as weapons.'"
	
Instead of talking to introduced wesson in the library when the giant is awake and the treasure is not part of the baron and the player is not carrying the treasure:
	say "'Those lakes look nice, sir. A refreshing swim might clear your head.'"
	
Instead of talking to introduced wesson in the library when the giant is awake and the player is carrying the treasure:
	say "'Give him the treasure, sir. I think he needs it.'"
	
Instead of talking to The Baron when the treasure is part of The Baron and the baron is examined for the first time:
	say "'Mr. von Bülow, I am really not going to get anywhere without more information. Do you want your daughter found or not?'
	
He smiles. 'Of course. I really must apologize for playing these little games with you.' He pauses to collect his thoughts. 'Let me see, there are several places they might be. Mr. McAllister lives in an apartment on 23 Roosevelt Street. I really doubt they are hiding out in such an obvious location, but there might be some clues there at least. The man is also a degenerate gambler and alcoholic. He gambles all the time at a joint called the Butterfly Club  [unicode em dash] sometimes he even drags my daughter down there with him, the bastard. When he isn't gambling he is drinking heavily down at a local bar called the Water Buffalo. That's about all I know. Will that be of any help, Mr. Reilly?'

You nod. You know both of the places he mentioned. 'Absolutely. I have enough to get started, anyway. I'll let you know how the case proceeds.'

'Thank you.' He sighs. 'I hope you find her. I should have done something about that terrible Scotsman a long time ago.'";
	now Meeting the Baron is solved.

Instead of talking to The Baron when the treasure is part of The Baron and the baron is examined at least twice (this is the final talk rule):
	say "'Please find my daughter, Mr. Reilly.'[if the record is part of the baron]His voice is like a scratched record.".

The final talk rule is listed first in the instead rules.

Instead of talking to the Baron when lisa is discovered and deciding lisa's fate is not happening for the first time (this is the first baron discovery talk rule):
	say "'Mr. von Bülow, I have found your daughter. She is staying in a vacation house with Camino  [unicode em dash] the man who owns the Butterfly Club.'
	
His eyes light up. 'What on earth is she doing with him? Has she agreed to come home?'

'Well... Not quite. You only hired me to find her, remember?'

'Please convince her to come home,' he pleads. 'I'll double your salary.'"

Instead of talking to the Baron when lisa is discovered and deciding lisa's fate is not happening at least twice(this is the second baron discovery talk rule):
	say "'Please make her come home to me, Mr. Reilly.'"
	
The first baron discovery talk rule is listed first in the instead rules.

The second baron discovery talk rule is listed first in the instead rules.

Instead of taking the treasure when the treasure is part of the baron:
	say "Why? It makes him a much more pleasant person."

The steel strand is a pataphor. The steel strand is part of the baron. Understand "wire" and "strands" as the steel strand. The description of the strand is "The strand seems to have been cut from a roll of steel wire. It is long, thin, and sharp.[if the steel strand is hot] It is currently red hot[otherwise] It might be useful as a weapon[end if]."

Bending is an action applying to one thing. Understand "Bend [something]" as bending.

Report bending:
	say "That won't be necessary."

The steel strand is a weapon.

The printed name of the steel strand is "[if the steel strand is hot]red hot [end if]steel strand".

The steel strand can be cool or hot. The steel strand is cool.

Before assimilating the ember into the steel strand:
	say "A single ember will not be sufficient to heat the steel strand." instead.

Every turn when the player is in Beneath the Lake and the player is carrying the steel strand and the steel strand is hot:
	now the steel strand is cool.

The strand describes the baron.

After assimilating the strand into the baron, say "His hair is like strands of steel embedded into his scalp."

Instead of talking to introduced wesson in the library when the treasure is part of the baron and the record is part of the baron:
	say "'You should take the scratched record, sir. It might be useful.'"

The deep lakes are a pataphor. Understand "lake", "eye", "water" and "eyes" as the lakes. The deep lakes are part of the baron. The description of the lakes is "The lakes are deep and dark. What secrets hide beneath the surface of the water, you wonder? Perhaps you should take a swim and find out?"

Instead of interacting with the lakes: try entering the lakes.

Understand "Dive in/into [something]" as entering.

Does the player mean entering the lakes: it is very likely.

Swimming is an action applying to nothing. Understand "swim" as swimming.

Swimming to is an action applying to one topic. Understand "swim [text]" as swimming to.

Carry out swimming to:
	try swimming.

Report swimming:
	say "There is nowhere to swim."
	
Instead of swimming in the library: try entering the lakes.

Instead of taking the lakes, say "Carrying an entire lake around with you would be a bit much. They are locations, not objects. A refreshing dip might be nice, though."

Instead of entering the lakes:
	say "You dive. The surface of the lake approaches quickly, until it fills your entire field of vision. The cool water surrounds you.";
	if the player is carrying the ember and the ember is not in a container:
		now the ember is not lit;
	now the player is in Near the Surface.
	
Beneath the Lake is a region. Near the Surface, Deeper and The Bottom of the Lake is in Beneath the Lake.

Instead of dropping something in beneath the lake, say "You are afraid you might lose [the noun] forever."

Instead of exiting in beneath the lake: try going up.

The distant sun is a backdrop. Understand "sunlight", "darkness" and "sun light" as the distant sun. The description of the distant sun is "The sun is barely visible."

The sun is in Near the Surface and Deeper.

Instead of doing something other than examining to the sun, say "Don't be silly."

The lake water is a backdrop in beneath the lake. The description of the lake water is "Water surrounds you on all sides."

Instead of doing something other than examining to the lake water, say "The water is not important."

Instead of swimming in beneath the lake, say "You are already swimming. If you want to go somewhere, just type the direction."

Instead of talking to introduced wesson in beneath the lake when the player is not radiant for the first time:
	say "'You are going to need a light source, sir. And something to carry it in so the water won't snuff it out.'"
	
Instead of talking to introduced wesson in beneath the lake when the player is not radiant at least twice:
	say "'Have you checked out the room west of the balcony yet, sir? You might have to wake the giant to get inside, though.'"
	
Near the Surface is a room. "It is dark under the water, and you can't see much more than a few yards in any direction. Above you, the sun shines through the surface. Below, the darkness thickens."

The Library is up from Near the Surface.

Down from the Library is nowhere.

After going up from Near the Surface:
	say "You emerge from the lake, gasping for air.";
	now the ember is lit;
	try looking.

Down from Near the Surface is Deeper. The description of Deeper is "It is darker down here; you can't see much more than a few feet in any direction. A few fish pass by, just outside your field of vision. From above, the distant sun shines faintly." 

The fish are scenery in Deeper. The description of the fish is "A variety of multicolored fish. You can't identify the species."

Instead of talking to the fish, say "You do not speak their language."

Instead of taking the fish, say "You reach for them, but they quickly slip away."
		
Definition: A person (called the protagonist) is radiant if the protagonist encloses a lit pataphor.

Instead of going down from Deeper when the player is not radiant for the first time:
	say "The darkness engulfs you. The sun is no longer visible. You are floating in an infinite void. Lost.

.

.

.

The sharp smell of smelling salts pulls you back to the library. Jameson is standing above you. The Baron is leaning forward in his chair.

[if the ember is part of Jameson]'How are you feeling, Douglas?' asks Allan. 'I would hate to lose a new friend so soon.'
[otherwise if nothing is part of Jameson]'How are you feeling, Mr. Reilly?' asks Jameson. 'The Baron called me when you fainted.'
[otherwise if the marble is part of Jameson]'Good, you are awake,' says Jameson. 'I suppose you had too much liquor for breakfast?'
[end if]

You brush him off. 'I am fine, thanks. I just haven't had much sleep lately.'

He shrugs. 'As you wish.'

He leaves the room, leaving you alone with the Baron once more.";
	now the ember is lit;
	now the player is in the Library.
	
Instead of going down from deeper when the player is not radiant at least twice:
	say "You will need a source of light to avoid getting lost again.".

The Bottom Of the Lake is down from Deeper. "The sun is no longer visible at all. Only the soft glow from the cocoon allows you to see anything. Soft white sand covers the bottom of the lake. Close by, you notice an old wooden chest."

The white sand is scenery in the bottom of the lake. The description of the white sand is "Soft white sand covers the bottom of the lake."

Instead of doing something other than examining to the white sand, say "It's just sand."

Instead of talking to introduced wesson in the bottom of the lake when the wooden chest is locked for the first time:
	say "'You are going to need to pick the lock on the chest, sir. Is there anything you could use for that purpose?'"
	
Instead of talking to introduced wesson in the bottom of the lake when the wooden chest is locked at least twice:
	say "'Try using the steel strand, sir. If you don't have it, just get it from the baron.'"

Instead of taking something lit when the player is in Bottom Of the Lake ( this is the light source rule ):
	say "Losing your only light source would be a bad idea."
	
The light source rule is listed first in the instead rules.

The wooden chest is scenery in Bottom Of the Lake. It is a container, openable, closed, lockable and locked. The description of the chest is "An old-fashioned treasure chest that looks like it belongs to an old-fashioned pirate. A big metal padlock is supposed to guard the contents from unauthorized visitors."

Instead of taking the chest:
	say "It's too heavy to carry around."

The pirate is a patason in Bottom of the Lake. Understand "eye patch", "patch", "peg leg", "peg", "leg", "metal claw/hook" and "claw/hook" as the pirate. The description of the pirate is "Eye patch, peg leg, and a metal claw where his right hand should be. That's a pirate, all right."

Instead of talking to the pirate when the wooden chest is locked, say "'Arrrrr, Matey,' says the pirate. 'Ye'll never get me treasure. It be locked away safely.'."

Instead of talking to the pirate when the chest is unlocked, say "'Shiver me timbers! Ye managed to open me treasure chest. The treasure be yours now.'"

Instead of attacking the pirate, say "The pirate deftly avoids your attack. He laughs. 'Silly landlubber. Ye don't know the first thing about underwater fighting.'"

Instead of wesson attacking the pirate:
	say "Mr. Wesson makes a valiant attempt at fighting the pirate, but he is unused to moving underwater. 'I am sorry, sir. I am not a very good swimmer.' The pirate laughs."; the rule succeeds.

The pirate is undescribed.

Understand the command "lock" as something new.

The padlock is part of the chest. Understand "metal" and "lock" as the padlock. The description of the padlock is "A big old-fashioned padlock.[if the wooden chest is locked] If you had something that could be used as a lockpick, you are pretty sure you could defeat it."

Instead of taking the padlock, say "You try to yank the lock off the chest, but it's no good."

Instead of unlocking the padlock with something:
	try unlocking the chest with the second noun.
	
Instead of inserting something into the padlock:
	try unlocking the chest with the noun.
	
Instead of inserting something into the chest when the chest is locked:
	try unlocking the chest with the noun.
	
Instead of inserting something into the chest when the chest is open:
	say "You see no reason to put things into the chest."
	
The steel strand unlocks the chest.

After unlocking the chest with the steel strand:
	say "You manage to pick the padlock with the steel strand, but you break the strand in the process.";
	remove the steel strand from play.

Understand "pick [something] with [something]" as unlocking it with.

Instead of Applying the steel strand to the padlock:
	try unlocking the chest with the steel strand.

Instead of Applying the steel strand to the chest:
	try unlocking the chest with the steel strand.

In the wooden chest is a treasure. Understand "jewelry", "doubloon/doubloons", "gemstones", "gem stones", "gem/gems", "gold" and "golden" as the treasure. The treasure is a pataphor. The description of the treasure is "Gold doubloons, jewelry, and gemstones. Everything a good treasure needs.".

The treasure describes the Baron.

After assimilating the treasure into the baron, say "His face lights up with a golden glow. He seems much more friendly."

Instead of showing the letter to the baron for the first time, say "He reads the letter, and his face grows red. 'I swear if that damn Scotsman has done anything to hurt my daughter, I will make him pay.' His face pales once more. 'Please find her as soon as possible, Mr. Reilly. Make sure that she is okay.'"

Instead of showing the letter to the baron at least twice, say "He already read it."

Section 6 - The Bedroom

The Bedroom is a room. "A large luxurious bed completely dominates the room. A small dresser with a white lamp is crammed into a corner next to the bed. Apart from these things, the room is entirely empty. The window to the south provides a view of the front garden."

The bed is scenery in The Bedroom. "It's the kind of bed that looks like it could swallow a man whole. You get the feeling that if you went to sleep in it, you might disappear entirely."

Instead of sleeping in the bedroom, say "No way. That bed would eat you alive."

Instead of entering the bed, try sleeping.

The dresser is scenery in The Bedroom. "A small wooden dresser. So ordinary that not a single simile comes to mind."

The bedroom window is scenery in The Bedroom. Understand "front", "garden", "path" and "gate/gates" as the bedroom window. The description of the bedroom window is "From here you can see the front garden. The path winds towards the gates leading away from the mansion." The bedroom window is a container, openable and closed.

Instead of opening the bedroom window, say "It's stuck."

Instead of doing something other than examining, searching or opening to the bedroom window, say "You see no reason to mess around with the window."

The bedroom lamp is scenery in The Bedroom. Understand "white" and "light" as the bedroom lamp. The bedroom lamp is a device. The bedroom lamp is switched on. "A large table lamp, which somehow manages to light up the entire room. [if the cocoon is part of the lampshade]A paper lampshade shields your eyes from the light, like a white cocoon[otherwise]The lamp has a paper lampshade[end if]." 

Instead of switching off the bedroom lamp, say "It would be pitch dark in here without the light from the lamp."

Instead of taking the bedroom lamp, say "It's a table lamp, not a flashlight. There would be no point to carrying it around with you."

Instead of pushing the bedroom lamp, say "You really shouldn't break the Baron's property.".

The lampshade is scenery in The Bedroom. Understand "lamp shade", "paper" and "shade" as the lampshade. The description of the lampshade is "The paper lampshade covers the light[if the cocoon is part of the lampshade], like a white cocoon[end if]."

Instead of taking the lampshade, say "A paper lampshade is hardly going to be of any use to you."

The white cocoon is a hollow pataphor. It is part of the lampshade. The description of the white cocoon is "A delicate white cocoon. It seems like it should be able to contain small items."

The carrying capacity of the white cocoon is 1.

Instead of talking to introduced wesson in the bedroom when the cocoon is part of the lampshade:
	say "'That cocoon should be of use as a container, sir.'"
		
Chapter 3 - The Apartment

Section 1 - The Entrance

The Entrance  is a room. "A dark narrow hallway. The door behind you to the south leads back outside. To the east, the door to the living room is standing ajar. The bathroom lies to the north. An old denim jacket hangs on a hook on the wall[if the rag is part of the jacket], like a dirty rag[end if]."

Instead of exiting in the entrance when the player is not enclosed by anything:
	try going south.
	
Instead of going inside in the entrance:
	try going east.

The denim jacket is scenery in the Entrance. Understand "pocket" as the jacket. The description of the Jacket is "An old worn denim jacket[if the rag is part of the jacket], hanging from a hook like a dirty rag[otherwise if the letter is part of the jacket]. You notice a piece of paper sticking out from one of the pockets[end if]." Instead of taking the jacket, say "You already have all the clothes you need."

The dirty rag is a pataphor. Understand "old" as the dirty rag. The dirty rag is part of the Jacket. The description of the dirty rag is "An old dirty rag. It looks like it hasn't been cleaned in ages."

The dirty rag describes the denim jacket.

After assimilating the dirty rag into the jacket, say "The jacket hangs from the hook like a dirty rag."

The letter is part of the jacket. Understand "paper" as the letter. The description of the letter is "[if the letter is in the jacket]It seems to be a letter of some kind.[otherwise]The writing is almost illegible, but you manage to decipher it.

'Lisa

I know you have something going on with that bawbag Camino. Don't try to deny it I have seen how you flirt and god knows what else you are doing. You are not gonna do that no more or im gonna have to take matters into ma own hands.

Erik.'"

Instead of giving the letter to someone, try showing the letter to the second noun.

Instead of inserting the letter into the jacket, say "You prefer to keep it. It might useful."

Instead of inserting something that is not a pataphor into the jacket, say "What would be the point of that?"

Instead of talking to introduced wesson in the entrance when the dirty rag is part of the jacket:
	say "'That dirty rag might be useful, sir.'"
	
Instead of talking to introduced wesson in the entrance when the dirty rag is not part of the jacket and the letter is part of the jacket:
	say "'Have you examined the jacket carefully, sir? That letter might be relevant to the case.'"

The Toilet Door is a door. The Toilet Door is north of The Entrance and south of the Bathroom. The description of the toilet door is "A plain door with a sign saying 'Toilet'"

The sign is part of the toilet door. The description of the sign is "'Toilet'". Instead of taking the sign, say "What on earth would you want that for?"

Instead of going through the toilet door, say "The toilet is filthy. You quickly exit back to the entrance hall."

The Entrance Door is a door. The entrance door is south of The Entrance and north of Outside The Apartment. The Entrance Door is closed. The description of the entrance door is "A plain door that looks like it used to be white. Now the paint is cracked and peeling off in several locations."

The paint is scenery in the Entrance. Instead of doing something to the paint, say "The paint does not interest you."

Instead of going through the entrance door:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.
	
The White Door is a door. It is east of The Entrance and west of The Living Room. The description of The  White Door is "A plain white door."

[After going through The White Door for the first time:
	append "Kitchen" to the File of Images;
	say "[picture unlocked]";
	continue the action.]

Section 2 - Living Room

The Living Room is a room. "What a mess! A large couch stands against the southern wall, with a table in front of it. The table is covered with a diverse variety of empty liquor bottles, rising from the surface like minarets in a dilapidated middle eastern city. A lonely kitchen counter with two built-in stove plates stands by the northern wall. A brown cabinet adorns the wall above. To the west is the door to the entrance hall."

Instead of exiting in the living room when the player is not enclosed by anything: try going west.

The kitchen counter is scenery in The Living Room. Understand "stove", "grime", "plates" and "plate" as the kitchen counter. The description of the kitchen counter is "Covered with grime from a dozen meals. The place doesn't seem like it gets cleaned very often." The kitchen counter is a device. The kitchen counter is switched off.

The cabinet is scenery in The Living Room. Understand "kitchen cabinet" as the cabinet. The cabinet is a container, openable and closed. The description of the cabinet is "It looks like it used to be white, but it has now turned into a brownish yellowish color  [unicode em dash] the color of grease and cigarette smoke."

In the cabinet is the literalknife. Understand "literal", "bowie" and "knife" as the literalknife. The printed name of the LiteralKnife is "[if the knife is visible and the literalknife is visible]literal [end if]knife". The description of the literalknife is "[if the needle is part of the literalknife]A small discreet knife, like a tiny needle[otherwise]A large brutal bowie knife[end if].".

The literalknife is a weapon.

Instead of talking to introduced wesson in the living room when the literalknife is not handled:
	say "'Maybe you should check out the cabinet, sir. It might contain something useful.'"
	
Instead of talking to introduced wesson in the living room when the literalknife is handled and the crowd is in the city:
	say "'That City looks interesting, sir. Maybe you should enter it and look around?'"

Instead of assimilating the knife into the literalknife, say "The knife is already like a knife."

Instead of switching on the kitchen counter, say "Even if you enjoyed cooking  [unicode em dash] which you don't  [unicode em dash] this place is filthy."

Instead of rubbing the kitchen counter, say "Are you kidding? This isn't even your place."

The couch is scenery in The Living Room. Understand "large couch" as the couch. The description of the couch is "An old couch that looks like it has seen everything and now just wants to be left alone. There is a blanket and a pillow lying on the floor next to it. Apparently, Mr. McAllister also uses it as a bed."

Instead of entering the couch, say "It doesn't look comfortable."

The blanketpillow is scenery in The Living Room. Understand "blanket" and "pillow" as the blanketpillow. The description of the blanketpillow is "Thrown in a pile on the floor. Mr. McAllister hardly seems like the epitome of neatness.".

Instead of doing something other than examining to the blanketpillow, say "You see no reason to mess with McAllister's dirty linen."

The table is scenery in the Living Room. The description of the table is "The multitude of bottles, matchboxes, candlesticks and general junk on the table almost make it seem like someone has tried to create a model city out of the mess." Understand "matchboxes", "match boxes", "junk","candlesticks", "candle sticks" and "candle sticks"as the table.

The minarets are a backdrop. Understand "street/streets" and "minaret" as the minarets. The Minarets are in the living room. The description of the minarets is "An endless multitude of minarets reach towards the sky from the streets of the city. The inhabitants must be very religious."

Instead of climbing the minarets, say "You will have to enter the city first."

Instead of entering the minarets:
	if the player is in The Living Room:
		try entering the ModelCity;
	otherwise:
		try entering the minaret.

The bottles are scenery in the living room. Understand "bottle" as the bottles. The description of the bottles are "Every variety of liquor known to man seems to be represented. Cheap brands, though. Unfortunately, all the bottles are empty."

Instead of taking the bottles, say "[if the pencil is part of the bottles]An empty bottle is like a broken pencil: pointless[otherwise]You see no reason to carry around a bunch of empty bottles[end if]."

The broken pencil is a pataphor which is part of the bottles. The description of the broken pencil is "Pointless.".

Instead of taking the pencil, say "That would be pointless."

The pencil describes the bottles.

The ModelCity is scenery in The Living Room. The printed name of the ModelCity is "City". Understand "middle", "eastern", "model" and "city" as the ModelCity. The description of the ModelCity is "A dilapidated middle eastern city. It might be nice to enter it and take a look around." Instead of taking the city, say "An entire city? Maybe you should enter it and take a walk instead." 

Instead of entering the ModelCity:
	now the player is in The City.
	
Instead of interacting with the ModelCity:
	try entering the ModelCity.

The City is a room. "The sun bakes down on the city from above. Streets wind in every direction among the buildings. [if the crowd is in the city]The streets are crowded with people, all hurrying in different directions. [end if]Close to you, a majestic minaret reaches towards the sky." The printed name of The City is "The City"

The burning sun is scenery in the city. The description of the burning sun is "Not a single cloud obscures its merciless rays." 

Instead of doing something other than examining to the burning sun, say "Even if you could reach it, you would burn your hands."

The streets are scenery in the city. Understand "street" as the streets. The description of the streets is "The streets wind in every direction."

The crowd is scenery in The City. Understand "people" as the crowd. The description of the crowd is "They hurry by too quickly for you to get a good look at any one of them."

Instead of talking to the crowd, say "They are too busy to talk."

Instead of doing something other than talking to or examining with the crowd, say "They hurry by too quickly."

The buildings are scenery in the city. Understand "building" as the buildings. The description of the buildings is "All sorts of buildings occupy the city. Your attention is drawn to the majestic minaret nearby."

Instead of doing something other than examining to the buildings, say "The minaret is the only building that interests you."

Instead of talking to introduced wesson in the city when the crowd is in the city:
	say "'The view must be excellent from that minaret, sir.'"

Instead of talking to introduced wesson in the city when the beggar is in the city for the first time:
	say "'That poor beggar seems hungry, sir. Do you have something edible you could give him?'"
	
Instead of talking to introduced wesson in the city when the beggar is in the city at least twice:
	say "'Alternatively, you can try attacking him with a weapon. That would be pretty mean, though.'"

The Beggar is a patason. Understand "old", "clothes", "clothing", "fabric/fabrics" and "man" as the beggar. The description of the Beggar is "He is almost entirely covered in indiscernible black fabric that might once have been called clothing. He seems like the kind of person who can effortlessly blend into a crowd." The mention of the beggar is "You see an old beggar here." 

Instead of talking to the Beggar for the first time:
	say "'I thought the voice seemed unfamiliar,' says the beggar. 'Haven't seen you around here before. Can you spare some food or coin for a poor man?'"
	
Instead of talking to the Beggar at least twice:
	say "'Spare some food or coin for a poor man?'"
	
Instead of Wesson attacking the beggar: say "'I am sorry, sir, but I can't bring myself to hurt that poor beggar.'"; the rule succeeds.

Instead of giving the manna to the beggar:
	say "The beggar takes the manna and eyes it suspiciously. He tries a bite and his face lights up. 'Thank you, good sir. This will help me get through the day. Please allow me to give you this in return.' He hands you a tiny needle before disappearing down one of the streets.";
	remove the manna from play;
	remove the beggar from play;
	now the player is carrying the needle.

Instead of attacking the Beggar with the knife:
	say "The beggar screams in pain as you plunge the knife into his chest. He is a lot sturdier than he looks, though. Instead of collapsing on the ground, he tears himself away, and flees down a nearby alley. In his hasty retreat, he drops something on the ground. You carefully pick it up. It is a tiny needle.";
	remove the beggar from play;
	now the player is carrying the needle.
	
The tiny needle is a pataphor. The description of the needle is "A tiny discreet needle that looks like it would disappear immediately if it got anywhere near a haystack.".

Instead of assimilating the tiny needle into something that is not described by the tiny needle when the second noun is not figurative:
	say "Making [the second noun] more inconspicuous would not be helpful."

The needle describes the literalknife.

After assimilating the needle into the literalknife, say "The knife is small and discreet, like a tiny needle."

Does the player mean applying the needle to the literalknife: it is likely.

Does the player mean assimilating the needle into the literalknife: it is likely.

Instead of taking the needle when the needle is part of the literalknife:
	say "The knife is much more handy this way."

Instead of going nowhere in the City, say "You would soon get lost in the maze of twisty streets and alleys. Better to stay here. (If you want to get back to the living room, just type 'exit'.)"

The Minaret is a backdrop. Understand "majestic" as the minaret. The minaret is in the city and in The Top of the Minaret. Understand "tower" as the minaret. The description of the Minaret is "The Minaret is a tall, round, white tower. Inside it, a winding staircase leads to the top."

Instead of entering The Minaret: try going up.

Instead of climbing the minaret: try going up.

Instead of interacting with the minaret: try going up.

Instead of exiting in The City when the player is not enclosed by anything:
	now the player is in The Living Room.
	
Up from The City is The Top of the Minaret. The description of The Top of the Minaret is "From here the entire city is stretched out beneath you. [if the tiny people are in The Top of the Minaret]Tiny people are milling around on the streets far below, waiting for someone to perform the next call to prayer[otherwise]The streets are empty[end if]."

The tiny people are scenery in The Top of the Minaret. The description of the tiny people is "The people look so tiny from up here." 

Instead of doing something other than examining to the the tiny people, say "You can't reach them."

The citystage is scenery in the Top of the Minaret. Understand "city" as the citystage. The description of the citystage is "The city is stretched out beneath you."

Instead of doing something other than examining to the city, say "You will have to go down first."

Calling is an action applying to nothing. Understand "Call", "Perform call", "pray", "shout", "scream" and "yell" as calling.

Calling to is an action applying to one topic. Understand "Call [text]" and "Perform the next call [text]", "Perform the call [text]", "Perform call [text]" as calling to.

Carry out calling to:
	try calling.

Check calling:
	If the player is not in The Top of the Minaret:
		say "That does not seem appropriate." instead;
	otherwise if the tiny people are not in The Top of the Minaret:
		say "You already did that." instead.
		
Carry out calling:
	say "You take a deep breath and perform the call to prayer as loudly as you can. Beneath you, the people stop what they are doing and head inside.";
	remove the tiny people from play;
	remove the crowd from play;
	now the beggar is in the city.
	
Instead of talking to the tiny people, try calling.
	
Instead of jumping in The Top of the Minaret:
	say "You jump from the edge of the Minaret without second thought.";
	now the player is in the living room.
	
Instead of exiting in The Top of the Minaret when the player is not enclosed by anything:
	try going down.
	
Instead of talking to introduced wesson in The Top of the Minaret when the crowd is in the city for the first time:
	say "'They seem to be waiting for someone to do the call to prayer, sir. Maybe you could do that?'"
	
Instead of talking to introduced wesson in The Top of the Minaret when the crowd is in the city at least twice:
	say "'Just type [']call['], sir.'"
	
Chapter 4 - The Bar

The Bar is a room. "[if the fog is part of the smoke]The thick cigarette smoke makes it almost impossible to see more than a few feet ahead. It's like being trapped in a thick London fog[otherwise]Cigarette smoke winds through every part of the bar[end if]. Various people are sitting at the tables or standing by the bar. Behind the bar, the bartender cleans a whiskey glass with an old rag. The door to the south leads outside." The printed name of the bar is "The Bar".

The bardoor is a door. It is south of The Bar and north of the barstreets. Understand "door" and "exit" as the bardoor. The description of the bardoor is "Which is more dangerous, you wonder: walking the streets alone or staying in the bar with the other patrons?" The printed name of the bardoor is "door".

Instead of exiting in the bar when the player is not enclosed by anything:
	try going south.

Before quipping when the player is in the bar:
	if the bouncer is carrying something:
		say "'Here you are, Mister,' says the bouncer, and returns your weapon[if the bouncer is carrying more than one thing]s[end if].[line break][line break]";
	repeat with weapon running through things carried by the bouncer:
		now the player is carrying the weapon.

Instead of going through the bardoor:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.
	
The bardesk is scenery in the bar. Understand "bar", "desk", "grime" and "bar desk" as the bardesk. The description of the bardesk is "The bar is covered with unidentifiable grime."

Instead of rubbing the bardesk, say "That's not your job."

Instead of taking the bardesk, say "That hardly seems useful."

The Bartender is a person in the bar. Understand "man", "barman" and "barkeeper" as the bartender. The Bartender is scenery. The description of the bartender is "A middle aged man who looks like he should be sitting at the other side of the bar. He eyes the patrons jealously as they sip their drinks."

The bartender is carrying a glass. The description of the glass is "The glass might have been transparent once, but those days are long gone. The bartender's efforts don't seem to be making much difference."

Instead of taking the glass, say "'Keep your hands to yourself, buddy.'"

Instead of rubbing the glass, say "You are not a bartender. Keep your mind on the case."

Instead of wiping the glass with the dirty rag, say "The glass is real. The dirty rag is not."

The Bartender can be friendly or unfriendly. The bartender is unfriendly.

Instead of talking to the bartender when the bartender is unfriendly for the first time:
	say "'What do you want, buddy?' says the bartender.
	
'I need some information. I'm looking for Erik McAllister. I understand that he used to come here a lot?'

The bartender sneers. 'No idea who you are talking about, buddy. Order something or get out.'".

Instead of talking to the bartender when the bartender is unfriendly at least twice, say "You don't seem to be getting anywhere with him. Maybe if you could show him something to get his attention?"

The bartender carries a beer. Understand "drink" as the beer. The description of the beer is "The bar is well stocked with cheap beer and liquor."

Instead of taking the beer, say "That would be stealing."

Understand "order [something]" as buying.

The drunk counter is a number variable. The drunk counter is zero.

Instead of buying the beer:
	say "You buy a cheap beer and drink it while your consider your options.";
	increment the drunk counter.
	
Instead of buying the beer when the drunk counter is greater than four:
	say "'I think you've had enough, buddy,' says the bartender.";

Does the player mean buying the beer: it is very likely.

Instead of asking the bartender to try giving the beer to the player, try buying the beer.

Instead of giving the coin to the bartender, say "The bartender laughs out loud. 'A penny? You gotta be kidding me, buddy.'"

Instead of showing the letter to the bartender when the bartender is unfriendly:
	say "The bartender reads the letter and laughs out loud. 'HAHAHAHA. I knew a loser like McAllister couldn't keep a girl like that. I told him she was way out of his league, but he wouldn't listen.'
	
'So you know him?'

'Yeah, I guess you got me there, buddy. Look, I don't want any trouble. McAllister hasn't been around for the last couplea weeks. You should talk to his friend, that brown haired guy over there with the scar. Leave me out of it.'

[if the fog is part of the smoke]He points at a place in the thick fog. If you only you could see anything, that might actually be helpful[otherwise]He points at a guy drinking alone at one of the tables[end if].";
	now the bartender is friendly.
	
Instead of applying the letter to the bartender:
	try showing the letter to the bartender.
	
Instead of talking to introduced wesson in the bar when the bartender is unfriendly and the player is not carrying the letter for the first time:
	say "'I think you need something to show the bartender to change his mind, sir.'"
	
Instead of talking to introduced wesson in the bar when the bartender is unfriendly and the player is not carrying the letter at least twice:
	say "'Check out the jacket in McAllister's apartment, sir. There is a letter in the pocket. Show that to the bartender.'"
	
Instead of talking to introduced wesson in the bar when the bartender is unfriendly and the player is carrying the letter for the first time:
	say "'Try showing something to the bartender, sir.'"
	
Instead of talking to introduced wesson in the bar when the bartender is unfriendly and the player is carrying the letter at least twice:
	say "'Show the letter to the bartender, sir. That might get a reaction from him.'"
	
Instead of talking to the bartender when the bartender is friendly, say "'Look, buddy, I've already told you all I know.'"

Instead of showing the letter to the bartender when the bartender is friendly, say "'Look, I've already told you all I know, buddy.'"

The BarPeople is scenery in the bar. Understand "various", "people", "patrons" and "characters" as the BarPeople. The description of the BarPeople is "[if the fog is part of the smoke]You can barely make out any individuals through the thick smoke[otherwise]A wide variety of shady people occupy the bar[end if]."

Instead of talking to the BarPeople, say "Interrogating them one by one is probably not a good idea. You have to figure out who you should talk to."

The smoke is scenery in the bar. Understand "cigarette" as the smoke. The description of the smoke is "[if the fog is part of the smoke]The smoke is as thick as a London fog[otherwise]You take a deep breath. That should save some cigarette money[end if]." Instead of taking the smoke, say "You try to whip away the smoke with your hands, but it does no good."

Instead of entering the smoke, say "You are already surrounded by smoke."

The fog is a pataphor which is part of the smoke. Understand "London" and "Thick" as the fog. The description of the fog is "The fog is so thick, it seems like you could cut it with a knife." Instead of taking the fog, say "It slips between your fingers."

Instead of entering the fog, say "You are already surrounded by fog."

Instead of smelling in the bar, say "The smoke smells like a mixture of every cigarette ever made."

Instead of smoking the smoke, try smelling.

Instead of attacking the fog with the literalknife:
	say "The knife is real. The fog is not. Maybe a figurative knife would work?"

Does the player mean attacking the fog with the knife: it is likely.

Instead of attacking the fog with the knife:
	say "Using the knife, you cut the fog into more manageable pieces, which quickly fade away.";
	now the fog is in StorageArea.
	
Instead of cutting the fog:
	if the knife is visible:
		try attacking the fog with the knife;
	otherwise:
		say "With what? Your bare hands?".
		
Instead of applying the knife to the fog:
	try attacking the fog with the knife.
	
Does the player mean applying the knife to the fog:
	it is likely.
		
Instead of talking to introduced wesson in the bar when the bartender is friendly and the fog is part of the smoke for the first time:
	say "'You are going to have to get rid of that fog to see anything, sir. Try examining it. The description might contain a hint.'"
	
Instead of talking to introduced wesson in the bar when the bartender is friendly and the fog is part of the smoke for the second time:
	say "'You can cut the fog with a knife, sir.'"
	
Instead of talking to introduced wesson in the bar when the bartender is friendly and the fog is part of the smoke at least thrice:
	say "'You are going to need a figurative knife to cut the fog, sir. If you don't have one, check the chair in your office.'"
	
The tables are scenery in the bar. Understand "table" as the tables. The description of the tables is "Cheap wooden tables who look like leftovers from a better establishment.". Instead of taking the tables, say "You see no reason to rearrange the furniture in here."
	
Ronald Ericksson is a person. Understand "brown", "haired", "brown-haired", "hair", "guy" and "man" as Ronald. The mention of Ronald is "[if ronald is impressed]Ronald Ericksson[otherwise]A brown-haired man with a scar[end if] is sitting at one of the tables by himself."

The printed name of ronald Ericksson is "[if ronald is impressed]Ronald Ericksson[otherwise]the brown-haired man with the scar".

The description of Ronald is "A broad, muscular man who looks like he could crush your head like a grape  [unicode em dash] with one hand. [if the toupee is part of Ronald]His hair is mostly brown, but patches of gray have started turning up here and there, as if someone spilled gray paint on a brown toupee[otherwise if the dirty rag is part of Ronald]His brown and gray hair rests on the top of his head, like a dirty rag[otherwise if the blood is part of Ronald]His hair is a reddish brown color, like coagulated blood[otherwise]His hair is brown with some gray here and there[end if]. A vicious scar adorns his face; looks like a knife wound to you."

Ronald is wearing a coat. The description of the coat is "A thick brown overcoat that looks like it could stop a bullet."

The brown toupee is a pataphor which is part of Ronald. Understand "wig" as the brown toupee. The description of the brown toupee is "Someone seems to have spilled some gray paint on the toupee."

Instead of assimilating the brown toupee into something that is not described by the brown toupee when the second noun is not figurative:
	say "Making [the second noun] feel old would not be helpful."

Instead of wearing the toupee, say "The toupee is just a simile."

The toupee describes Ronald.

After assimilating the toupee into Ronald, say "His hair is getting gray."

The coagulated blood describes Ronald.

After assimilating the coagulated blood into Ronald, say "His hair is reddish brown, like coagulated blood."

Instead of assimilating the coagulated blood into the toupee, say "If you want to change his hair, just give the blood to him."

Instead of taking the blood when the blood is part of ronald:
	say "You like him better this way."

The dirty rag describes Ronald.

After assimilating the dirty rag into Ronald, say "His hair is like a dirty rag on top of his head."

The greyPaint is part of the toupee. Understand "grey", "gray" and "paint" as the greyPaint. The description of the greyPaint is "Gray paint sticks to the hairs of the toupee." Instead of taking the greyPaint, say "You see no way to remove the paint without damaging the toupee." 

The printed name of the greyPaint is "Gray paint"

Does the player mean doing something to the greyPaint: it is unlikely.

The scar is part of Ronald. Understand "wound" and "knife wound" as the scar. The description of the scar is "Definitely from a knife wound." Instead of taking the scar, say "It is there to stay, like all the wounds we receive in life."

Ronald can be impressed or unimpressed. Ronald is unimpressed.

Instead of talking to Ronald when ronald is unimpressed for the first time:
	say "You approach the man with the scar. 'Excuse me. I'm looking for a man named Erik McAllister. I was told you might know something.'
	
He looks at you, like one looks at a cockroach that has just emerged from the beneath the kitchen table. 'I don't know nothin[']. And even if I did, I ain't no snitch.'

'I am looking for him for his own sake. I must insist that you tell me what you know.'

He laughs. 'Insist? You ain't in no position to insist on anything, Mister.' He pulls open his coat, revealing a small knife hidden in the inner pocket. 'Me and me friend here says you should probably get going. Unless you got something to back up your words?'"

Instead of talking to Ronald when ronald is unimpressed at least twice:
	say "He shows you his knife again. Doesn't seem like words alone will get his respect."
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is unimpressed for the first time:
	say "'You are going to have to show him something to gain his respect, sir.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is unimpressed for the second time:
	say "'A knife should do the trick, sir. Do you have an actual knife? If not, check out McAllister's apartment.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is unimpressed for the third time:
	say "'The knife is too conspicuous to get past the bartender, sir. Maybe if it was more like a tiny needle?'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is unimpressed for the fourth time:
	say "'If you don't have the needle, check the city in McAllister's apartment.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is unimpressed at least five times:
	say "'Once you manage to smuggle the knife into the bar, just show it to Ronald.'"
	
Instead of showing the letter to Ronald when ronald is unimpressed:
	try talking to Ronald.
	
Instead of showing the letter to Ronald:
	say "'I ain't here to read, Mister.'"
	
Instead of showing the literalknife to ronald when ronald is unimpressed:
	say "You open your coat, showing him the discreet knife hidden inside. His eyes open wide and then he laughs out loud. 'I gotta hand it to you, Mister. You've got guts. I respect that. I'm Ronald Ericksson. Call me Ronald if you want to.'";
	now Ronald is impressed.
		
Does the player mean showing the literalknife to ronald: it is very likely.
	
Instead of applying the literalknife to ronald:
	try showing the literalknife to ronald.
	
Does the player mean applying the literalknife to ronald:
	it is very likely.

Instead of talking to Ronald when Ronald is impressed and the blood is not part of Ronald for the first time:
	say "'Look, Ronald, I am not an enemy of McAllister. I just want to talk to him.'
	
'Yeah, whatever.' He shrugs. 'McAllister's a loser anyway. I know he's in some kind of trouble, but it's none of my business.'

'What kind of trouble?'

'Sorry, Mister. I kinda like ya, but I don't wanna get involved. I'm not as young as I used to be, you know. My hair's getting gray.'".

Instead of talking to Ronald when Ronald is impressed and the blood is not part of Ronald at least twice:
	say "'I don't wanna get involved. I am too old for this stuff; my hair is getting gray. Get lost.'"
	
Instead of talking to Ronald when Ronald is impressed and the blood is part of Ronald for the first time:
	say "'Do you know where I can find McAllister?'

He shakes his head. 'Nope, but I figure he's in trouble. I know he'd been arguing with that broad of his lately. Then I start hearing rumors that he got into trouble with Camino, guy who owns the gambling joint down by the harbour, you know. That guy is trouble. I ain't afraid of him though. I've dealt with plenty worse in my time.'";
	now Conversation is solved.

Instead of talking to Ronald when Conversation is solved:
	say "'Sorry, Mister. That's all I know.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is impressed for the first time:
	say "'He is feeling old, sir. How come? Check out his hair.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is impressed for the second time:
	say "'That toupee is making him feel old. Take it from him.'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is impressed for the third time:
	say "'Removing the toupee wasn't enough. Do you have something suitable for describing hair color?'"
	
Instead of talking to introduced wesson in the bar when conversation is happening and ronald is impressed at least four times:
	say "'Put the blood on his hair, sir. If you don't have it, check out the chair in your office.'"
	
Chapter 5 - The Butterfly Club

Section 1 - The Gambling Hall

The Butterfly Club is a room. The description of The Butterfly Club is "All sorts of gambling tables dot the floor: roulette, blackjack, poker and other games you have never even heard of. No one looks at you. Every ounce of their attention is directed toward the random events that decide their lives. A giant crystal chandelier grows from the ceiling[if the icicle is part of the chandelier], like an intricate icicle formation[end if]. To the west, massive double doors lead outside. A small discreet door is set into the eastern wall; the kind of door you are not supposed to notice, much less enter."

The massive double doors are a door. Understand "door" as the double doors. It is west of The Butterfly Club and east of Outside the Club. The description of the double doors is "Massive wooden doors that look like a battering ram would shatter against them."

Instead of going through the double doors:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.
	
Instead of exiting in the butterfly club when the player is not enclosed by anything:
	try going west.
	
Instead of going through the double doors when the poker counter is greater than 0 and the TuxedoMan is in The Butterfly Club:
	say "You can't leave now. You have to see how the poker game ends."
	
The gambling tables are scenery in the club. Understand "blackjack", "game/games", "money" and "table" as the gambling tables. The description of the gambling tables is "Countless gambling tables cover almost every square foot of the room. Every imaginable game of chance is represented. [if the poker game is in the butterfly club]A lot of people seem to be watching the poker game in the corner of the hall[otherwise]A couple of people are playing the roulette table, apparently hoping that the tuxedo man's winning streak will transfer to them[end if]."

Gambling is an action applying to nothing. Understand "Gamble" as gambling. 

Report gambling:
	say "You believe in never gambling what you cannot afford to lose. And you can't afford to lose anything.".
	
Playing is an action applying to one thing. Understand "play [something]" as playing.

Carry out playing:
	try Gambling
	
The gamblers are persons in the butterfly club. Understand "people", "persons" and "crowd" as the gamblers. The description of the gamblers is "People from all strata of society are gathered here as equals, united by their common addiction. It's almost heartwarming." The gamblers are scenery.

Instead of talking to the gamblers:
	say "They ignore you.".
	
Instead of talking to introduced wesson in The Butterfly Club when the TuxedoMan is in The Butterfly Club for the first time:
	say "'That poker game looks interesting, sir.'"
	
Instead of talking to introduced wesson in The Butterfly Club when the TuxedoMan is in The Butterfly Club for the second time:
	say "'The man in the tuxedo looks like he might be doing a lot better if his face wasn't like putty, sir. Try taking the putty.'"
	
Instead of talking to introduced wesson in The Butterfly Club when the TuxedoMan is in The Butterfly Club for the third time:
	say "'Taking the putty wasn't enough. Do you have something that could describe a good poker face?'"
	
Instead of talking to introduced wesson in The Butterfly Club when the TuxedoMan is in The Butterfly Club for the fourth time:
	say "'Maybe that marble from earlier? Do you still have it? Otherwise, you can probably find it where you left it.'"
	
Instead of talking to introduced wesson in The Butterfly Club when the TuxedoMan is in The Butterfly Club at least five times:
	say "'Give the marble to the tuxedo man, sir. Then just wait for the game to end.'"
	
To say poker description:
	say "Four people are playing a high stakes game of poker in the corner of the hall. A small crowd has gathered around the table, attracted by the sight of large amounts of money changing hands. One of the players draws your attention: a pale man wearing a tuxedo, who seems to be [if the marble is part of the TuxedoMan]winning[otherwise]losing[end if] big. ";
	if the tuxedoman is off-stage:
		now the tuxedoman is in the butterfly club.

The poker game is scenery in The Butterfly Club. Understand "card/cards", "chip/chips", "croupier", "money" and "table" as the poker game. The description of the poker game is "[poker description]"

Instead of entering the poker game, say "You doubt the players would appreciate that."

Instead of taking the poker game, say "You better not disturb the players."

The roulette table is scenery in The Butterfly Club. Understand "wheel" as the roulette. The description of the roulette table is "A perennial favorite of the gambling crowd, the roulette is simple and exciting.[if the TuxedoMan is in StorageArea] More people are playing now, after the tuxedo man's big win. A big winner is good advertisement."

Instead of entering the roulette table, say "You doubt the players would appreciate that."

Does the player mean doing something to the poker game: it is likely.

To say TuxedoMan description:
	say "One of the nouveau riche for sure. He looks like someone who has never tried wearing a tuxedo before. ";
	if the poker counter is less than 4:
		if the putty is part of the tuxedoman or the marble is not part of the tuxedoman:
			if the putty is part of the tuxedoman:
				say "His face is like putty; every emotion leaves a visible mark. ";
			otherwise if the marble is not part of the tuxedoman:
				say "He has a hard time hiding his emotions. ";
			say "Not a good thing for a poker player. He seems to be losing a lot of money";
		otherwise:
			say "His face is expressionless, as if it had been carved out of marble. A good thing for a poker player. He seems to be winning a lot of money";
	otherwise:
		say "He is smiling the broad confident smile of a gambler who is convinced that his lucky streak will last forever"

The TuxedoMan is a person. Understand "tuxedo", "pale", "man" and "poker player" as the TuxedoMan. The TuxedoMan is scenery. The printed name of the TuxedoMan is "tuxedo man".

The description of the TuxedoMan is "[TuxedoMan description]."

The putty is a pataphor which is part of the TuxedoMan. The description is "The putty is soft and pliable." The indefinite article is "some".

The putty describes the TuxedoMan. The white marble describes the TuxedoMan.

After assimilating the putty into the TuxedoMan, say "His face is like putty, every emotion is immediately visible."

Instead of taking the marble when the marble is part of the TuxedoMan:
	say "That would be inconsiderate. He seems to be putting it to good use."
	
The TuxedoMan can be losing or winning. The TuxedoMan is losing.

After assimilating the marble into the TuxedoMan:
	say "His face looks like it has been carved out of marble. No emotion is visible.";
	now the TuxedoMan is winning.

Instead of talking to the TuxedoMan, say "The other onlookers hush you. Clearly, disturbing the game isn't an option."

The poker counter is a number variable. The poker counter is zero.

Every turn when the TuxedoMan is in The Butterfly Club and the TuxedoMan is winning:
	if the poker counter is 1:
		say "The poker game continues. The other players try to read the emotions of the tuxedo man, but his face is impenetrable. They all fold.";
	if the poker counter is 2:
		say "'You are not fooling me this time,' says one of the poker players and reveals his hand: Three aces. One by one, the tuxedo man puts his cards on the table: 6-7-8-9-10. A straight. The audience claps.";
	if the poker counter is 3:
		say "The tuxedo man wins again. And again. The mountain of chips in front of him grows to unprecedented heights. Finally, a crack appears in his face and he smiles. 'Enough with this. This is my lucky night!' 

He picks up the huge pile of chips, walks to the roulette table and drops the pile down next to the spinning wheel. 'I am putting it all on red!' The marble cracks and falls apart as a huge smile appears on his face. You have a feeling the marble might be back with its original owner.";
		now the marble is part of Allan Jameson;
		remove the poker game from play;
	if the poker counter is 4:
		say "'I am sorry sir,' says the croupier. 'The table can't match your bet. I am going to have to get the manager.' He goes through the small discreet door and emerges a few minutes later, followed by a tall thin man dressed in a beige suit.";
		now Anton Camino is in The Butterfly Club;
	if the poker counter is 5:
		say "The tuxedo man looks at the newcomer and smiles even more broadly. 'What'll it be Camino? Are you afraid I'm going to bankrupt you tonight?'
		
The man in the beige suit  [unicode em dash] whose name must be Camino  [unicode em dash] pays no attention to the tuxedo man. He looks straight at the croupier. 'It's alright. Let him play.' His voice is soft and smooth.

The wheel spins. The entire club seems to be holding its breath. The wheel slows down; the ball jumps a few times, and finally comes to rest [unicode em dash] on red.

The club erupts in applause. Everyone looks at the tuxedo man as if he'd just single-handedly defeated Hitler. The tuxedo man picks up his winnings and leaves the club, followed by an entourage of admirers. Camino does nothing, except look pensively at the wheel.";
		now the TuxedoMan is in StorageArea;
	increase the poker counter by 1.

The discreet door is a door. Understand "eastern", "east" and "small" as the discreet door. It is east of The Butterfly club and west of Camino's Office. It is closed, lockable and locked. The description of the discreet door is "A small door that almost seems to blend in with the wall."

The discreet door can be attempted. The discreet door is not attempted.

Instead of opening the discreet door when the discreet door is locked and Alfono is not activated:
	say "An Italian-American man wearing a pinstripe suit grabs your arm. 'Sorry, sir. This is a private area.' He merges with the crowd once more.";
	now the discreet door is attempted.

The crystal chandelier is scenery in The Butterfly Club. The description of the chandelier is "A giant crystal chandelier hangs from the ceiling[if the icicle is part of the chandelier], like an intricate icicle formation[end if]." Instead of taking the chandelier, say "It is too far up."

The icicle is a pataphor which is part of the chandelier. Understand "intricate", "formation", "ice" and "icicles" as the icicle. The description of the icicle is "[if the icicle is part of the chandelier]Icicles grow from the ceiling in an intricate formation. Why haven't they melted, you wonder?[otherwise if the dirty rag is part of the icicle]The icicle is wrapped in an old rag.[otherwise]A cool beautiful icicle."

The printed name of the icicle is "icicle[if the dirty rag is part of the icicle], which has been wrapped in an old rag"

Instead of attacking something with the icicle, say "The icicle is too short and slippery to be useful as a weapon."

Instead of assimilating the icicle into the chandelier, say "You can't reach it."

Instead of asking smith to try inserting the icicle into the chandelier, say "'We just got it down, sir.'"

Instead of asking smith to try putting the icicle on the chandelier, say "'We just got it down, sir.'"

Instead of taking the icicle when the icicle is part of the chandelier, say "It is too far up. If you had someone to help you, you might be able to reach it together."

Instead of jumping in the butterfly club, say "You jump as high as you can, but you are nowhere close to being able to reach the chandelier."

Persuasion rule for asking smith to try taking the icicle: persuasion succeeds.

Instead of smith taking the icicle when the icicle is part of the chandelier:
	say "Mr. Wesson nods. 'I think I might just be able to reach it if you help me, sir.' You let him climb up on your shoulders and just barely manage to lift his weight. He reaches towards the icicle. You struggle to keep your balance, and for one precarious moment it seems like you are going to end up in a pile on the floor. Then Mr. Wesson deftly breaks off an icicle and jumps down. He hands you the icicle. 'Here you are, sir.'";
	now the player is carrying the icicle;
	the rule succeeds.
	
Instead of climbing wesson in the butterfly club when the icicle is part of the chandelier, try wesson taking the icicle.

Instead of entering wesson in the butterfly club when the icicle is part of the chandelier, try wesson taking the icicle.
	
Anton Camino is a person. Understand "tall", "thin" and "man" as Camino. 

The mention of Camino is "[if camino is in Camino's office]Camino is sitting behind the desk, waiting for your next move[otherwise]Camino  [unicode em dash] the owner of the club  [unicode em dash] is looking pensively at the roulette table[end if]." 

To say Camino Description:
	say "A tall thin man, impeccably dressed in a beige suit and a trilby hat. Everything about him is beige; even his pale skin is almost indistinguishable from the color of his clothes. A [if the oil is part of the river]gangrenous wound crosses his left cheek, like a polluted river[otherwise]scar crosses his left cheek, like a canyon in the middle of an otherwise pristine African savanna[end if]. "

The description of Camino is "[Camino Description]"

The printed name of Caminos is "Camino".

Camino is wearing a trilby hat. The description of the trilby hat is "A stylish beige trilby hat."

Camino is wearing a beige suit. The description of the beige suit is "A beige suit."

The record describes Camino.

After assimilating the record into Camino, say "He clears his throat. The sound is like a record getting stuck."

Instead of taking the record when the record is part of Camino, say "You like him better this way."

Instead of showing a weapon to Camino, say "It's probably not a good idea to provoke him like that."

Camino is in StorageArea.

Camino's scar is part of Camino. Understand "wound", "black", "necrotic" and "tissue" as Camino's scar. Camino's scar is fixed in place. The description of Camino's scar is "[if the oil is part of the river]The wound is covered with black necrotic tissue[otherwise]An old scar crosses his cheek, like a canyon in the middle of an African savanna[end if]."

Instead of taking camino's scar when camino's scar is part of camino:
	say "Attacking him is probably a bad idea."

The african savanna is scenery. The savanna is part of Camino's scar. Understand "pristine", "sun", "savannah" and "grass" as the savanna. The description of the savanna is "The savanna is dry, with only a few clumps of grass bravely clinging to their lives. The sun beats down mercilessly from above. You see no signs of animal life."

Instead of entering the savanna, say "You would probably get a heatstroke. Better to stay here, where it is relatively cool."

Instead of taking the savanna, say "An entire savanna? That's a bit much, don't you think?"

The canyon is scenery. The canyon is part of the savanna. Understand "scar" as the canyon. The description of the canyon is "The canyon is deep. It must have been carved from the landscape many aeons ago. At the bottom, you can just barely make out a river."

Instead of attacking the canyon, try attacking camino's scar.

Instead of entering the canyon, say "It is way too steep. You would fall."

Instead of taking the canyon, say "A canyon is not something you can carry around. Maybe there is something of interest down there?"

Instead of climbing the canyon, try entering the canyon.
	
Camino can be absent, approached, interested or upset. Camino is absent.

Camino can be informed. Camino is not informed.

Instead of showing the letter to Camino when Camino is absent, say "You should probably talk to him first."
	
Instead of talking to Camino when the tuxedoman is in the butterfly club:
	say "He ignores you."
	
Instead of talking to Camino when Camino is absent and the tuxedoman is not in the butterfly club:
	say "'A bad day for you, I suppose?'
	
He emerges from his reverie. 'Not really. A big winner makes everyone else believe they can do the same. The extra business should make up for the loss.'

His eyes scan you. 'I haven't seen you around here before. What can I do for you?'";
	now Camino is approached.
	
Instead of talking to Camino when Camino is approached and conversation is not solved for the first time:
	say "'My name is Douglas Reilly. I am a private detective. I was wondering if we could have a word?'
	
'I don't do business with private dicks. Unless you have you some useful information for me, I am not interested.'".

Instead of talking to Camino when Camino is approached and conversation is not solved for the second time:
	say "'I am looking for Lisa von Bülow. I understand she used to come here along with a bloke named McAllister?'
	
'I never talk about my clientele. It's bad for business.'"

Instead of talking to Camino when Camino is approached and conversation is not solved at least thrice:
	say "'Please, Mr. Reilly. Unless you have something of use to me, I have no interest in talking to you.'"
	
Instead of talking to Camino when Camino is approached and conversation is solved:
	say "'Mr. Camino, it's come to my attention that you had a beef with Mr. McAllister.'
	
His eyes flash. 'Who told you that?'

'I never reveal my sources. Would you like to discuss the issue, or should I keep digging up dirt?'

'Not here. Come with me. We can discuss this in my office.' He unlocks the small eastern door and enters.";
	now Camino is in Camino's office;
	now Camino is interested;
	now Camino is informed;
	now the discreet door is unlocked.
	
The letter can be shown. The letter is not shown.
	
Instead of showing the letter to Camino when Camino is approached:
	say "He scans the letter and his eyes widen. 'Where did you get this?'
	
'I never reveal my sources, Mr. Camino. Would you like to discuss the issue, or should I continue digging up dirt?'

'Not here. Come with me. We can discuss this in my office.' He unlocks the small eastern door and enters.";
	now Camino is in Camino's office;
	now Camino is interested;
	now the letter is shown;
	now the discreet door is unlocked.
	
Instead of talking to introduced wesson in the butterfly club when Camino is in the butterfly club for the first time:
	say "'You will have to convince Mr. Camino that you are worth talking to, sir. If you have some information, you can just talk to him. Otherwise, you will have to show him something to arouse his interest.'"
	
Instead of talking to introduced wesson in the butterfly club when Camino is in the butterfly club at least twice:
	say "'You can find some information in the bar, sir. Also, you might be able to find something of interest to Camino in McAllister's apartment.'"
	
Instead of talking to introduced wesson in the butterfly club when the tuxedoman is not in the butterfly club and camino is not in the butterfly club and the icicle is not handled for the first time:
	say "'That icicle is beautiful, sir. Why not take it with you?'"
	
Instead of talking to introduced wesson in the butterfly club when the tuxedoman is not in the butterfly club and camino is not in the butterfly club and the icicle is not handled at least twice:
	say "'Maybe we can reach the icicle if we work together, sir. Just say [']Wesson, take the icicle['] if you want me to make the attempt.'"

Section 2 - Camino's Office

Camino's Office is a room. The description of Camino's office is "Neat. Everything here is neat. [if the white brick is part of the stack]The stack of papers on the desk is so perfect that it looks more like a big white brick[otherwise]The papers on the desk are neatly stacked[end if]. There is not a speck of dust on the mahogany desk. It makes you uncomfortable. You never trust people who always need to be in control. That desire hardly ever stops with themselves."

Instead of exiting in camino's office when the player is not enclosed by anything:
	try going west.

Instead of dropping something which is not a pataphor in Camino's office: 
	say "You don't want to leave [the noun] behind in Camino's office."

Camino's desk is scenery in the office. Understand "mahogany" as Camino's desk. The description of it is "A dark red mahogany desk that looks like no one has ever spilled coffee on its surface." Camino's desk is a supporter.

The paper stack is scenery on camino's desk. Understand "papers" and "pile" as the stack. The description of the stack is "[if the white brick is part of the stack]Each piece of paper perfectly covers the one below. It must have taken a while to stack them so neatly[otherwise]The papers are stacked on top of each other[end if]."

Instead of taking the stack, say "Going through his papers while he is sitting right there is properly not the best idea."

Instead of pushing the paper stack, say "The stack is so neat. He would probably be furious if you ruined it."

Does the player mean doing something to the stack: it is likely.

The white brick is a pataphor which is part of the stack. The description of the brick is "[if the white paint is part of the brick]The brick is painted a bright white color. The paint seem to have been applied recently. You wonder if it might still be possible to wipe it off[otherwise if the oil is part of the brick]The brick is as black as midnight[otherwise]The brown brick is dry and porous. You can almost feel its thirst[end if]." 

The printed name of the white brick is "[if the white paint is part of the brick]white[otherwise if the oil is part of the brick]black[otherwise]brown[end if] brick"

Does the player mean doing something to the brick: it is likely.

The white brick describes the stack.

After assimilating the white brick into the stack, say "The stack of paper looks like a big white brick."

The white paint is part of the brick. The description of the white paint is "Bright white paint that seems to have been applied recently. You should be able to wipe it off if you want to." 

Instead of taking the white paint, say "You try to remove the paint with your fingers, but it is no good. You might be able to wipe it off with something, though."

Wiping it with is an action applying to two touchable things. Understand "Wipe [something] with [something]", "Wipe off [something] with [something]" and "Remove [something] with [something]" as wiping it with.

Carry out wiping:
	if the noun is not the white brick:
		try rubbing the noun;
	otherwise:
		say "That has no visible effect."
	
Does the player mean wiping the white paint with the dirty rag: it is very likely.

Instead of wiping the white paint with the dirty rag:
	say "You vigorously scrub the brick with the old rag. The paint comes off easily, and soon you are left holding a plain brown brick.";
	now the white brick does not describe the stack;
	remove the white paint from play.
	
Instead of wiping the brick with the dirty rag when the white paint is part of the brick:
	try wiping the white paint with the dirty rag.
	
Instead of applying the rag to the white paint:
	try wiping the white paint with the rag.
	
Does the player mean applying the dirty rag to the white paint:
	it is very likely.
	
Instead of applying the rag to the brick:
	try wiping the brick with the rag.
	
Instead of putting the oil on the brick:
	if the white paint is part of the brick:
		say "The oil rolls across the surface of the white paint and falls away.";
		now the oil is part of the shadows;
	otherwise if the oil is not part of the brick:
		say "You pour the oil on the brick. The viscous black fluid is quickly absorbed. The brick is now as black as midnight.";
		now the oil is part of the brick;
	otherwise:
		say "That would serve little purpose."
		
Instead of putting the brick on the oil:
	try putting the oil on the brick.
		
Instead of inserting the oil into the white brick:
	try putting the noun on the second noun.
		
Instead of taking the oil when the oil is part of the white brick:
	say "You see no way to remove the oil from the brick."
		
Understand "pour [something] on/in/into [something]" as putting it on.

Instead of rubbing the brick:
	if the player is carrying the dirty rag:
		try wiping the brick with the rag;
	otherwise if the white paint is part of the brick:
		try taking the white paint.
		
 Instead of rubbing the white paint:
	if the player is carrying the dirty rag:
		try wiping the brick with the rag;
	otherwise if the white paint is part of the brick:
		try taking the white paint.
		
Instead of talking to Camino when Camino is interested and ( Camino is informed or conversation is not solved ):
	say "'You have my attention, Mr. Reilly. Do you have anything more for me?'"
	
Instead of talking to Camino when Camino is interested and Camino is not informed and conversation is solved:
	say "'Mr. Camino, it has come to my attention that you had a beef with Mr. McAllister.'
	
His eyes flash. 'Who told you that?'

'I never reveal my sources. How about you tell me what you know? I can get on with my case, and we never have to see each other again.'";
	now Camino is upset;
	now Camino is informed.

Instead of showing the letter to Camino when Camino  is interested:
	if the letter is not shown:
		say "He scans the letter and his eyes widen. 'Where did you get this?'

'I never reveal my sources, Mr. Camino. How about you tell me what you know? I can get on with my case, and we never have to see each other again.'";
		now Camino is upset;
	otherwise:
		say "You've already shown him the letter."
	
Instead of talking to introduced wesson in camino's office when camino is interested for the first time:
	say "'If you have some more information for him, you can just talk to him, sir. Otherwise, you will have to show him something.'"
	
Instead of talking to introduced wesson in camino's office when camino is interested at least twice:
	say "'You can find information in the bar, if you haven't done so already. Alternatively, you should be able to find something to show him in McAllister's apartment.'"

Instead of talking to Camino when Camino is upset and the record is not part of Camino:
	say "'You have done a fine job digging up some pointless dirt, Mr. Reilly.' His soft smooth voice surrounds you like a velvet blanket. 'But I am afraid I see no hard evidence of any wrongdoing. If you discover any new information, do not hesitate to contact me.' 

The blanket closes around you, and you find yourself standing outside the door to the office. You don't quite remember what he said to make you leave, but he was very convincing.";
	now the player is in the butterfly club.
	
Instead of talking to Camino when Camino is upset and the record is part of Camino:
	say "'Just what do you think you are doing here, Mr. Reilly?' His voice is coarse and insecure, like a broken record. 'Did you think this pointless slander would scare me?'
	
'Mr. Camino, I have no interest in scaring you. I am simply trying to locate Miss von Bülow. If you could help me out, I assure you that I won't bother you again.'

His voice is almost a growl. 'Oh, you won't bother me again. I am not worried about that at all. ALFONO!'

The door opens and [if the discreet door is attempted]the man in the pinstripe suit[otherwise]an Italian-American man wearing a pinstripe suit[end if] enters the room. Without a word, he grabs your arm and escorts you out of the office.";
	if the player is not carrying the white brick and the white brick is on-stage:
		say "[line break]On the way out, you manage to snatch the white brick from the stack of papers.";
		now the player is carrying the white brick;
	if the player is well equipped:
		say "[line break]That went well. Perhaps you should return to the Baron and tell him what you have discovered?";
	otherwise:
		say "[line break]You feel like you are missing something. Perhaps you should explore more and make sure you have found everything?";
	now the player is in The Butterfly Club;
	now Alfono is activated;
	now the discreet door is closed;
	now the discreet door is locked.
	
Instead of talking to introduced wesson in camino's office when camino is upset and the record is not part of camino for the first time:
	say "'His voice is too smooth to resist, sir. Do you have something that might change his voice?'"
	
Instead of talking to introduced wesson in camino's office when camino is upset and the record is not part of camino at least twice:
	say "'Give him the record, sir. If you don't have it, you can get it from the Baron.'"
	
Chapter 6 - The Police Station

Copernik's Office is a room. "This small cramped office is just large enough for a desk and two chairs. [if the dying man is hot]The walls are yellow from cigarette smoke[otherwise]The walls are bright white, lighting up the room[end if].  On the desk is an ashtray that looks like it was made by a kindergartener as a gift. Old cigarette butts rest in the tray, like tiny mummified bodies. To the west, a door leads to the rest of the police station."

Copernik's door is a door. It is west of Copernik's office and east of The Police Station.

Instead of exiting in Copernik's office when the player is not enclosed by anything:
	try going west.

Instead of going through Copernik's door when Copernik is satisfied:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.

Instead of going through Copernik's door when Copernik is not satisfied:
	say "You wish you could just leave and go home. Alas, the Detective does not look to be done with you yet."
	
Your chair is scenery in Copernik's office. Your chair is a supporter. The description of your chair is "A hard uncomfortable chair."

Copernik's chair is scenery in Copernik's office. Understand "Coperniks chair" as Copernik's chair. Copernik's chair is a supporter. The description of Copernik's chair is "Just as uncomfortable as yours, but he seems more used to it."

Instead of searching Copernik's chair:
	say "Pretty rude while he is sitting on it, don't you think?"
	
Instead of entering copernik's chair:
	say "Pretty rude while he is sitting on it, don't you think?"
	
Copernik's desk is scenery in Copernik's office. The description of Copernik's desk is "A flat piece of wood resting on four wooden legs. That is all." Copernik's desk is a supporter.

On copernik's desk is copernik's ashtray. Understand "ash tray", "cigarette", "butts" and "butt" as copernik's ashtray. The description of copernik's ashtray is "The 'ashtray' is an amorphous blob of congealed clay, shaped so that it can just barely keep its contents from spilling all over the desk. It is filled with ancient cigarette butts, resting in the recess, like mummies from long forgotten eras." Copernik's ashtray is undescribed.

Instead of doing something other than examining to copernik's ashtray, say "You are afraid you might break it."

The mummies are a pataphor which are part of the ashtray. Understand "mummified" and "bodies" as the mummies. The description of the mummies is "They are at peace. The fire in their hearts died aeons ago."

Instead of doing something other than examining to the mummies, say "They are at peace. You don't want to disturb them."
	
To say wall description:
	if the dying man is not part of the walls and the dying man is hot:
		now the dying man is part of the walls;
	say "[if the dying man is part of the walls]They might have been white in the distant past, but they have long since turned a pallid yellow from the cigarette smoke  [unicode em dash] like the skin of a man slowly dying from liver cancer[otherwise]The newly painted white walls really brighten up the room, turning the office into a place where one could almost feel at home[end if]. ".
	
The walls are scenery in Copernik's office. Understand "yellow" and "wall" as the walls. The description of the walls is "[wall description]"

Does the player mean doing something to the walls: it is likely.

The dying man is a person. [The dying man is part of the walls.] Understand "yellow" and "skin" as the dying man. The description of the dying man is "He is delirious from fever. He clearly doesn't have long left to live."

Does the player mean doing something to the dying man: it is likely.

The dying man can be hot. The dying man is hot.

Instead of talking to the dying man when the dying man is hot:
	say "He is delirious from fever. You can't make sense of anything he is saying."
	
Instead of touching the dying man when the dying man is hot:
	say "He is burning up. You gotta find a way to cool him down."
	
Understand "touch [something] with [something]" as putting it on (with nouns reversed).

Instead of assimilating the icicle into the dying man when the dirty rag is not part of the icicle:
	say "The icicle will burn him if it touches him directly."
	
Instead of assimilating the dirty rag into the icicle:
	say "You carefully wrap the icicle in the rag.";
	now the dirty rag is part of the icicle.
	
Instead of inserting the rag into the icicle:
	try assimilating the rag into the icicle.
	
Instead of inserting the icicle into the rag:
	try assimilating the rag into the icicle.
	
Instead of putting the icicle on the rag:
	try assimilating the rag into the icicle.
	
Instead of assimilating the icicle into the dying man when the dirty rag is part of the icicle:
	say "With the icicle carefully wrapped in the rag, you touch it to his forehead. There is a sigh of relief as his skin cools. A sizzling sound emerges from within the rag as the icicle melts, evaporates, and dissipates. The man opens his eyes  [unicode em dash] the color has returned to his skin.
	
'Thank you, friend,' he says, and smiles. 'I feel much better now. I should probably go see my doctor.' With that, he gets up and leaves the room. You are left holding the empty rag.";
	now the player is carrying the dirty rag;
	now the dying man is not hot;
	remove the dying man from play;
	now Copernik is cooperative;
	remove the icicle from play.
	
Instead of talking to introduced wesson in copernik's office when copernik is suspicious for the first time:
	say "'Look at the walls, sir. That terrible yellow color doesn't exactly create a good atmosphere in here.'"
	
Instead of talking to introduced wesson in copernik's office when copernik is suspicious for the second time:
	say "'That poor dying man. The fever is burning him up? Maybe you could cool him somehow?'"
	
Instead of talking to introduced wesson in copernik's office when copernik is suspicious for the third time:
	say "'Try touching the dying man with the icicle, sir.'"
	
Instead of talking to introduced wesson in copernik's office when copernik is suspicious for the fourth time:
	say "'You will have to wrap the icicle in something first, sir.'"
	
Instead of talking to introduced wesson in copernik's office when copernik is suspicious at least five times:
	say "'Put the rag on the icicle, sir. Then touch the dying man with the icicle.'"
	
Instead of talking to introduced wesson in copernik's office when copernik is cooperative:
	say "'Talk to the detective, sir.'"
	
Understand "wrap [something] in [something]" as putting it on (with nouns reversed).

Understand "wrap [something] around [something]" and "put [something] around [something]" as putting it on.

Instead of putting the dirty rag on something when the dirty rag is part of the icicle:
	try putting the icicle on the second noun.
	
Instead of inserting the dirty rag into something when the dirty rag is part of the icicle:
	try inserting the icicle into the second noun.

Philip Copernik is a person in Copernik's office. Understand "Detective", "cop", "hair", "eyes" and "black" as Copernik. The description of Copernik is "A huge man, almost as broad as he is tall. [if the toupee is part of Copernik]His hair is getting gray. His eyes are tired[otherwise]His eyes are piercing; his hair, jet black[end if]."

Copernik can be suspicious, cooperative or satisfied. Copernik is suspicious.

The mention of copernik is "Detective Copernik is sitting on the chair behind the desk."

Instead of talking to Copernik when Copernik is suspicious for the first time:
	say "You have been talking for what seems like hours already. What more does he want to know? 
	
'I've already told you what happened, Detective. Why don't you just let me go now and we can both get some sleep?'
	
Detective Copernik lights yet another cigarette and blows a ring of smoke at your face. It dissipates before it reaches you, merging with the gray substance that passes for air in here. 'I just want to make sure I've all the facts straight here. Private dicks always complicate matters. We tell people they should just let us do our jobs, but they never listen. So, you visit this Camino fella about Miss Bülow. You get him angry, and shortly afterwards his goon tries to kill you?'

'That's correct. Has Mr. Alfono said anything?'

He leans back in his chair. 'We are actively pursuing all leads. Now, I'm wondering why Mr. Camino would want to have you killed merely for asking a few questions. Would it surprise you to hear that we are also looking for Miss Bülow? The Baron filed a missing persons report.'

That does surprise you. 'That doesn't surprise me.'

'I should have known he would hire a private dick as well. These old rich guys never trust the authorities. Now that you're involved, we might as well make the best of it. Why don't you tell me everything you know?'"

The grey substance is scenery in Copernik's office. Understand "grey", "gray", "cigarette" and "smoke" as the grey substance. The description of the grey substance is "The room is full of cigarette smoke."

Instead of taking the grey substance:
	say "It floats through your hands. Fascinating."

Instead of talking to Copernik when Copernik is suspicious for the second time:
	say "'Detective, I have already told you everything I know. Keeping me here serves no purpose.'
	
'I don't think so,' he says. His eyes are fixed at your face. 'You people always hide something. Why don't you tell me what it is so you can get out of here? I am used to staying in this old office. I am sure you are more uncomfortable than I am.'

He is right. The cramped room. The yellow walls. Everything contributes to the claustrophobic atmosphere."

Instead of talking to Copernik when Copernik is suspicious at least thrice:
	say "You are not getting anywhere. The atmosphere in here just isn't made for friendly conversation."
	
Instead of talking to Copernik when Copernik is cooperative:
	say "'Detective, I really have told you everything. I think we're going to solve this case a lot faster if you just let me go.'
	
He smiles. 'I suppose you are right. Whatthehell, I'm in a good mood today. You can go, Mr. Reilly, as long as you promise to keep me up to date on anything you find.'

You stand up and shake his hand. 'Of course, Detective.'";
	now the player is in Copernik's office;
	enable all locations;
	choose a blank row in the table of Possible Locations;
	now the prompt entry is "The Police Station";
	now the response entry is location_police;
	now the enabled entry is 0;
	now Copernik is satisfied.
	
The toupee describes Copernik.

After assimilating the toupee into Copernik, say "His hair is getting gray."

Copernik can be proposed. Copernik is not proposed.
	
Instead of talking to Copernik when Copernik is satisfied and the toupee is not part of Copernik for the first time:
	say "'Detective, I don't have any more information, but I have a feeling you might. I think we could break this case much faster if we teamed up. You're welcome to take the credit.'

His black eyes seem like they are looking right through you. 'I appreciate the offer, Mr. Reilly, but my hair hasn't turned gray yet. I think I can handle the case on my own. Just stay out of my way.'";
	now Copernik is proposed.

Instead of talking to Copernik when Copernik is satisfied and the toupee is not part of Copernik at least twice:
	say "It's no good. He obviously still believes that he can handle everything, and that the world is at his feet. Just because his hair hasn't started to turn gray. Oh, to be young again."
	
Instead of talking to Copernik when Copernik is satisfied and the toupee is part of Copernik for the first time:
	say "'[if Copernik is not proposed]I don't have any more information, but I have a feeling you might. I think we could break this case much faster if we teamed up. [end if]Think about it, Detective. I do all the hard work. You get all the credit. I get my paycheck and everyone is happy. What do you say?'
	
He sighs. 'I guess you have a point. I'm getting too old for this. Look, I am afraid we don't know much more than you do. All I can tell you is that Camino owns a vacation home on the outskirts of the city. I haven't had time to check it out yet. Why don't you do it and tell me if you find anything?'";
	now Camino's scar is part of Camino 2;
	now Camino 2 is wearing the trilby hat;
	now Camino 2 is wearing the beige suit;
	choose a blank row in the table of Possible Locations;
	now the prompt entry is "The Vacation House";
	now the response entry is location_vacation;
	now the enabled entry is 1;
	
Instead of taking the toupee when the toupee is part of Copernik:
	say "You like him better with it."

Instead of talking to Copernik when Copernik is satisfied and the toupee is part of Copernik at least twice:
	say "You don't think you will be getting anything more out of him. Might as well get going."
	
Instead of talking to introduced wesson in copernik's office when copernik is satisfied and the toupee is not part of copernik for the first time:
	say "'He won't give you any information because he is still feeling young, sir. Is there any way you could make him feel older?'"
	
Instead of talking to introduced wesson in copernik's office when copernik is satisfied and the toupee is not part of copernik for the second time:
	say "'He is feeling young because his hair hasn't turned gray yet, sir. Could you do something to change that?'"
	
Instead of talking to introduced wesson in copernik's office when copernik is satisfied and the toupee is not part of copernik at least thrice:
	say "'Give the toupee to the detective. Then talk to him again.'"
	
Instead of talking to Copernik when lisa is discovered and deciding lisa's fate is not happening for the first time ( this is the first discovery talk rule):
	say "'Detective, I checked out the vacation house. Your suspicions were correct. The girl is staying there with Camino.'
	
He claps slowly. 'Excellent work, Mr. Reilly. Let me know when the girl has been safely returned to her father.'"

Instead of talking to Copernik when lisa is discovered and deciding lisa's fate is not happening at least twice ( this is the second discovery talk rule):
	say "'You do all the hard work. I get all the credit. That was the deal, Mr. Reilly.'"

The first discovery talk rule is listed first in the instead rules.

The second discovery talk rule is listed first in the instead rules.

Instead of showing the letter to copernik for the first time, say "He reads the letter without much interest. 'Nice find, Mr. Reilly, but my gut tells me that Camino is behind the girl's disappearance. McAllister is too much of a loser to pull of something like this.'"

Instead of showing the letter to copernik at least twice, say "He already read it."
	
Chapter 7 - The Vacation House

Section 1 - Outside the Vacation House

OutsideVacation is a room. The printed name of OutsideVacation is "Outside the Vacation House". The description of OutsideVacation is "Moonlight [if the liquid silver is part of the moonlight]filters through the trees like silvern waterfalls, imbuing the surroundings with a phosphorescent sheen[otherwise]shines through the treetops[end if]. The house sits in a clearing to the north. Light emerges from both windows. To the south, the forest path leads back towards the city."

Instead of going inside in OutsideVacation, try going north.

The vacation house is scenery in OutsideVacation. The description of the vacation house is "A big expensive looking vacation house. The kind of house you own [italic type]because[roman type] it is expensive, and not because you actually enjoy living in it.".

Instead of entering the vacation house, try going north.

The moonlight is scenery in OutsideVacation. Understand "moon" and "light" as the moonlight. The description of the moonlight is "The moonlight [if the liquid silver is part of the moonlight]filters through the treetops, like waterfalls of glittering light[otherwise]is shining through the treetops[end if]."

Instead of doing something other than examining to the moonlight, say "That's hardly tangible."

The liquid silver is a pataphor which is part of the moonlight. Understand "glittering", "phosphorescent", "sheen", "silvern", "waterfalls/waterfall", "water" and "falls/fall" as the liquid silver. The description of the liquid silver is "The liquid shines with a light that seems to come from within." The liquid silver is liquid. The indefinite article of the liquid silver is "some".

Before taking the liquid silver when the liquid silver is in a container:
	the silver disappears in one turn from now.

At the time when the silver disappears:
	if the player is carrying the liquid silver:
		say "The liquid silver runs through your fingers and disappears. You have a feeling there is more where that came from.";
		now the liquid silver is part of the moonlight.

The liquid silver describes the moonlight.

After assimilating the liquid silver into the moonlight, say "The moonlight is like liquid silver flowing from the treetops."

The trees are scenery in OutsideVacation. Understand "tree", "treetops", "clearing" and "forest" as the trees. The description of the trees is "Trees surround the house on all sides, like soldiers in a besieging army."

The army is a person which is part of the trees. Understand "soldier/soldiers" and "officer" as the army. The description of army is "They have the house surrounded. They await your move."

Instead of talking to the army for the first time:
	say "The commanding officer salutes you. 'It's good you are here, sir. We have the house surrounded, but he has a hostage in there. We'll move in as soon as you have dealt with the situation.'
	
You nod. Damn right, you are going to deal with the situation."

Instead of talking to the army at least twice:
	say "They have their orders. It's up to you now."
	
Instead of asking the army to try doing something:
	say "They have their orders. It's up to you now."
	
The VacationWindows are scenery in OutsideVacation. Understand "window/windows", "camino", "girl" and "bülow" as the VacationWindows. The description of the VacationWindows is "Through the windows you can make out Camino arguing with a young girl you can only assume must be Lisa von Bülow. Bingo.".

After examining the VacationWindows:
	now Lisa is discovered.

Instead of opening the VacationWindows, say "They can't be opened from the outside."

Instead of going south in OutsideVacation:
	say "[Travel enquiry]";
	run a conversation on the Table of Possible Locations.

The front door is a door. It is north of OutsideVacation and south of The LivingRoom. The description of the front door is "A sturdy front door. It is all that stands between you and your target."

After going through the front door for the first time:
	now Lisa is discovered;
	continue the action.
	
Instead of talking to introduced wesson in OutsideVacation for the first time:
	say "'Remember to take the silver, sir. It might be valuable.'"

Section 2 - The Living Room

The LivingRoom is a room. The printed name of LivingRoom is "The Living Room". The description of the livingroom is "So this is where she's been hiding all this time. Expensive furniture litters the living room [unicode em dash] the kind that exists solely to show that the resident can afford it. You pay no attention to the decorations. The people are all that matters. The door to the south leads back out."

Instead of exiting in the livingroom when the player is not enclosed by anything:
	try going south.

The leather couch is scenery in the livingroom. The description of the leather couch is "Smooth black leather covers the couch.".

The expensive furniture is scenery in the LivingRoom. Understand "decoration/decorations" as the furniture. The description of the furniture is "Mr. Camino certainly knows how to furnish a house. Too bad that won't help him."

Anton Camino 2 is a person in the livingroom. Understand "tall", "thin" and "man" as Camino 2. The printed name of Camino 2 is "Camino"

The mention of Camino 2 is "Camino looks straight at you. His face is contorted in a mixture of anger and surprise.".

The description of Camino 2 is "[Camino Description]"

Instead of talking to Camino 2 for the first time:
	say "'You again?' he says. 'I thought Alfono would have taken care of you by now.'
	
You shrug. 'I'm tougher than I look. If you have other employees you need to get rid of, feel free to send them my way. Now, I think it's time for Miss Bülow to go home.'

He laughs. 'She is not going anywhere. Now scram, or I'll deal with you myself.'"

Instead of talking to Camino 2 at least twice:
	say "'I said get the hell out of here, buddy, or I will deal with you myself.'".

Instead of attacking Camino 2:
	say "You aren't sure you can take him in a fair fight. You need to find a weak spot."
	
Instead of attacking Camino 2 with something:
	try attacking Camino 2.
	
Instead of attacking Camino 2 with the gun:
	say "You are not a murderer. There has to be a better way. Besides, you are pretty sure he is armed as well, and he might be a quicker draw than you."
	
Instead of shooting Camino 2:
	say "You are not a murderer. There has to be a better way. Besides, you are pretty sure he is armed as well, and he might be a quicker draw than you."
	
Instead of taking Camino's scar when the oil is not part of the river:
	say "The wound healed a long time ago. The canyon is too clean for you to cause him any pain that way."
	
Instead of attacking Camino's scar:
	try taking Camino's scar.
	
Instead of pulling Camino's scar:
	try taking Camino's scar.
	
Instead of taking Camino's scar when the oil is part of the river:
	say "Before he has a chance to react, you reach out and rip some of the gangrenous flesh off his face. He should be thankful, really, but as he drops screaming to his knees with blood flowing from his cheek, you are sure that gratitude is the last thing on his mind. Lisa looks at him with contempt. 'Is that really the best you can do?'
	
He turns towards her, his face a mask of rage. 'YOU STUPID BITCH! I help cover up the murder of your pathetic boyfriend, and I have nothing but misery to show for it. I am not going to risk my life for your sake anymore.'

He rises, covering the wound with one hand, adjusting his hat with the other. 'She is all yours, mister detective. Just keep her out of my sight.' With that, he disappears out the door.";
	remove Camino 2 from play.

The river is scenery. The river is part of the canyon. Understand "water", "stream" and "creek" as the river. The description of the river is "[if the oil is part of the river]The river has been polluted with oil. Nothing could possibly survive in the black viscous fluid that once was water[otherwise]Even from all the way up here, you can tell that the river is crystal clear. No pollution is going to reach it in this pristine landscape[end if]."

Instead of entering the river, say "It's too far down. The fall would probably kill you."

Instead of swimming when the river is visible:
	try entering the river.

Instead of assimilating the oil into the river:
	say "You try to pour the oil into the river, but the wind blows it away long before it reaches its target.";
	now the oil is part of the shadows.
	
Instead of assimilating the brick into the river when the oil is not part of the brick:
	say "There doesn't seem to be much point in throwing a clean brick into the river."
	
Instead of assimilating the brick into the river when the oil is part of the brick:
	say "You throw the oily brick down the canyon, and can just barely make it out hitting the river far, far below. The effect is immediate: The oil spreads quickly, and within moments the previously pristine profluence is black with pollution. You say a quick prayer for the poor fish who might have lived there. They never saw it coming.";
	now the oil is part of the river;
	remove the brick from play.
	
Instead of putting the oil on something when the oil is part of the brick:
	try putting the brick on the second noun.
	
Instead of inserting the oil into something when the oil is part of the brick:
	try inserting the brick into the second noun.
	
Instead of giving the oil to someone when the oil is part of the brick:
	try giving the brick to the second noun.

Instead of assimilating something into the canyon:
	try assimilating the noun into the river.
	
Instead of assimilating the cocoon into the river:
	say "It is too light. The wind will carry it away."
	
Instead of doing something other than examining to the oil when the oil is part of the river:
	say "It is too far away."
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom for the first time:
	say "'You will have to get rid of Camino before you can talk to Lisa, sir. Maybe try attacking him?'"
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom for the second time:
	say "'You will have to find a weak spot to defeat Camino. Maybe try grabbing his scar? That should hurt him.'"
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom for the third time:
	say "'His scar is too new. Try to explore the landscape of his face. Maybe there is some way to make it worse.'"
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom for the fourth time:
	say "'Did you notice that pristine river in the canyon? Maybe polluting it will do the trick. Pour the oil down the river. If you don't have any, check the shadows in your office.'"
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom for the fifth time:
	say "'That didn't work. If you need more oil, you can get some from your office. You will need a heavy object to carry the oil. Try pouring it on the brick. You will have to wipe off the paint first.'"
	
Instead of talking to introduced wesson when (the location is the livingroom or the location is InsideCabin) and Camino 2 is in the livingroom at least six times:
	say "'Wipe the paint with the rag. Then pour the oil on the brick and throw it down the canyon. Now, grabbing his wound should hurt him.'"
	
To say Lisa description:
	say "Built like a mountain road, full of dangerous curves  [unicode em dash] drive too fast and you might go right over a cliff. [if wesson is on the old couch]A shy insecure smile hides on her face[otherwise]A sly smile plays on her face[end if]. ";
	if the mountain road is not part of Lisa Von Bülow:
		now the mountain road is part of Lisa Von Bülow;
		now MountainRoad is mapped up of the LivingRoom;
		now the LivingRoom is mapped south of MountainRoad;
	
Lisa Von Bülow is a person in the LivingRoom. Understand "servant", "girl" and "woman" as Lisa Von Bülow. The description of Lisa is "[Lisa description]"

Lisa is female.

Lisa can be discovered. Lisa is not discovered.

Instead of talking to Lisa when Camino 2 is visible, say "She nods towards Camino, clearly expecting him to handle the situation."
	
The mountain road is a pataphor. Understand "curve/curves" as the mountain road. The mountain road is fixed in place. The description of the mountain road is "The road goes up, twisting around the mountain. There is no telling where it ends. Maybe you should check it out?"

The mention of Lisa is "[if wesson is on the old couch and camino 2 is in the LivingRoom]Lisa is smiling nervously and looking at Camino, like a servant girl waiting for her master to handle matters[otherwise if wesson is on the old couch and camino 2 is not in the LivingRoom]Lisa is smiling nervously, like a servant girl waiting for someone else to take charge[otherwise]Lisa von Bülow smiles and looks at you as if you were a new plaything[end if]."


The smile is part of Lisa. Understand "shy" and "sly" as the smile. The smile is fixed in place. The description of the smile is "[if wesson is on the old couch]She seems like the submissive type, like a servant girl[otherwise]She seems like the type who regards everything in life with detached amusement[end if]."

To consider the request:
	if the player consents:
		say "[line break]She has a point. It's really none of your business what she does with her life. You should have told that to the Baron from the start.

'Thanks,' she says. 'You won't regret it, mister. Maybe we will meet again some day.' She kisses you on the cheek before leaving. The warmth of the kiss lingers for a while.

The Baron is disappointed, but he hired you to find his daughter, and that is what you did. You get your paycheck.";
		remove lisa from play;
	otherwise:
		say "[line break]'Sorry, miss, but that won't suffice. You are going back to your father.'
		
She laughs again. 'And how are you going to accomplish that? Knock me unconscious and carry me home? I don't think so.'".

Instead of talking to Lisa when Camino 2 is not in the LivingRoom and wesson is not on the old couch for the first time:
	say "'Good evening, Miss Bülow,' you say. 'It's time for you to go home to your father. He has been missing you.'
	
Her laughter is like tiny silver bells. 'I don't think so. I am a big girl and I don't need my father to control my life. Why don't you just let me go? I can take care of myself.'(Answer Yes or No)>";
	now the tiny silver bells are in the livingroom;
	consider the request.
	
Instead of talking to Lisa when Camino 2 is not in the LivingRoom and wesson is not on the old couch at least twice:
	say "'Just let me go. I can take care of myself.'(Answer Yes or No)>";
	consider the request.

Instead of talking to Lisa when Camino 2 is not in the LivingRoom and wesson is on the old couch for the first time:
	say "'Okay, Miss von Bülow, you've had your fun. Time to go home.'
	
She looks at her feet and chews at a bit of hair. 'I'm sorry I ran away, but I was so scared. I didn't mean to kill Erik. We were arguing and...' She begins to sob.

'Don't worry about it,' you say, and take her hand. 'I am sure your father will be able to sort things out.'";
	now Lisa Von Bülow is in The Library.
	
The tiny silver bells are scenery. Instead of doing something to the tiny silver bells, say "They are already gone."

[After going up from LivingRoom for the first time:
	append "Mountain" to the File of Images;
	say "[picture unlocked]";
	continue the action.]

After going up from LivingRoom:
	now the player is in the car.
	
Instead of entering the mountain road:
	try going up.
	
Instead of interacting with the mountain road:
	try going up.
	
Instead of talking to introduced wesson in the livingroom when Camino 2 is not in the livingroom for the first time:
	say "'Have you talked to Lisa yet? You might be able to reason with her.'"
	
Instead of talking to introduced wesson in the livingroom when Camino 2 is not in the livingroom at least twice:
	say "'Take a look at her. Notice the mountain road? There might be something useful up that way.'"

Section 3 - The Mountain Road

MountainRoad is a room. The printed name of MountainRoad is "On the Mountain Road". The description of MountainRoad is "The road twists around the mountain, like the curves of a beautiful woman. To the north, the road turns left, disappearing behind walls of stone. Who knows where it might lead? To the south, the road leads back where you came from."

MountainSide is a region. MountainRoad is in MountainSide. 

The mountain peak is a backdrop in MountainSide. Understand "cloud/clouds" as the mountain peak. The description of the mountain peak is "The peak of the mountain is lost in the clouds."

Does the player mean doing something to the mountain peak: it is likely.

North from livingroom is nowhere.

After going south from MountainRoad:
	silently try exiting;
	now the car is in MountainRoad;
	continue the action.
	
Instead of going down in MountainRoad, try going south.

Instead of going up in MountainRoad, try going north.
	
The walls of stone are scenery in MountainRoad. The description of the walls of stone is "Impenetrable."

Instead of going from MountainSide to MountainSide when the player is not in the car, say "It is too far to walk.".

The car is a vehicle in MountainRoad. Understand "car door" as the car. The description of the car is "Old, a bit worse for wear, but reliable. Like you, really."

Driving is an action applying to nothing. Understand "Drive" as driving.

Driving to is an action applying to one topic. Understand "Drive [text]" as driving to.

Carry out driving to:
	try driving.
	
Instead of driving in LivingRoom:
	try going up.

Check driving:
	if the car is not visible:
		say "There is no car here." instead.
		
Report driving:
	if the player is in the car:
		say "If you want to drive somewhere, just type a compass direction.";
	otherwise:
		say "If you want to drive somewhere, just enter the car and type a compass direction."
	
Instead of interacting with the car when the player is not in the car:
	try entering the car.
	
Instead of interacting with the car when the player is in the car:
	try driving.
	
Instead of pushing the car, say "No need. The engine is working fine."

Rule for writing a paragraph about the car:
	say "You see your car here."

The beautiful woman is a person in MountainRoad. The beautiful woman is undescribed. 

The beautiful woman can be examined. The beautiful woman is not examined.

The description of the beautiful woman is "She is built like a mountain road, full of beautiful curves. Her smile sparkles, like raindrops in the sun."

The RoadCurve is scenery in MountainRoad. Understand "curve/curves", "mountain" and "road" as the RoadCurve.

Instead of examining the RoadCurve, try looking.

After examining the beautiful woman for the first time, say "You are feeling queasy." 

Instead of talking to the beautiful woman, say "She just smiles."

The raindrops is a pataphor which is part of the beautiful woman. Understand "rain", "drop/drops" and "smile" as the raindrops.

Instead of doing something other than examining to the raindrops, say "That would be less than chivalrous."

To say rain drops:
	say "The raindrops are like glass marbles, reflecting the sunlight; the rays of light are like fluorescent snakes, slithering through the air; the snakes twist and turn, like the curving undulations of a steep mountain road.
	
Similes and semicolons pile up in your mind, like layers in a cerebral layer cake [unicode em dash] a three pound pile of dreams. There is no end in sight.

.
.
.

The Doctor shines a flashlight in your eyes. 'The patient does not respond to visual stimuli.'

He sighs. 'And I genuinely thought he was getting better. I guess you can't save everyone.'

The orderly wheels you back to your room. The white walls are like nothing in particular. It is quiet here.";
	end the story saying "You have lost your mind".

The description of the raindrops is "[rain drops]"

North from MountainRoad is MountainRoad2. The description of MountainRoad2 is "The road continues to the west [if the road block is in mountainroad2]before ending abruptly in a roadblock. A police cruiser is parked behind the road block, its emergency lights silently illuminating the road[otherwise]before turning around another corner. The path ahead is clear[end if]. To the east, the road leads back down the mountain." The printed name of MountainRoad2 is "Farther Along the Mountain Road"

MountainRoad2 is in MountainSide.

South from MountainRoad2 is nowhere. East from MountainRoad2 is MountainRoad.

Instead of going up in MountainRoad2, try going west.

Instead of going down in MountainRoad2, try going east.

The police cruiser is scenery in MountainRoad2. Understand "emergency" and "lights" as the police cruiser. The description of the police cruiser is "A blue and white police cruiser."

Instead of entering the police cruiser, say "'What do you think you are doing, Buddy?' says the officer."

The road block is scenery in MountainRoad2. Understand "roadblock" as the road block. The description of the road block is "'Roadblock,' says the sign. That's a roadblock, all right."

Instead of going west from MountainRoad2 when the road block is in MountainRoad2:
	say "The road is blocked."

Instead of doing something other than examining to the road block, say "'What do you think you are doing, buddy,' says the officer."

The police officer is a patason in MountainRoad2. Understand "cop" and "man" as the police officer. The description of the police officer is "A tall fit man in a police uniform. He looks like he has dealt with far worse than you."

The mention of the police officer is "A police officer is leaning against the cruiser."

Instead of attacking the police officer, say "You are pretty sure he could take you."

Instead of attacking the police officer with something, say "He is armed. You wouldn't stand a chance."

Instead of Wesson attacking the police officer:
	say "Mr. Wesson is shocked. 'Surely, sir, you do not expect me to attack a law enforcement officer!'"; 
	the rule succeeds.

Instead of talking to the police officer for the first time:
	say "'The road is closed, sir,' says the officer. 'There has been a rockfall farther along the road. It's not safe to drive here.'"
	
Instead of talking to the police officer for the second time:
	say "'I know what I am doing, officer. Why don't you just let me through? I am fine with the risk.'
	
He shakes his head slowly. 'Sorry, sir. I would be held responsible if you got hurt.'

'And there is nothing that can change your mind?'

'That depends...' He smiles. 'Wadda ya got?'"

Instead of talking to the police officer at least thrice:
	say "'If you want me to risk my job, you gonna have to give me something in return, Mister.'"
	
Instead of giving the silver to the police officer:
	say "His eyes light up with greed as you show him the silver. 'Wow, that'll certainly do the job, Mister. Thanks a lot.' He pours the silver into a canteen, and secures the lid. 'I can't wait to find out how much that's worth. Enjoy your mountain trip, Mister.' He removes the road block, enters the cruiser, and drives down the road, disappearing around the corner.";
	remove the police officer from play;
	remove the road block from play;
	remove the liquid silver from play;
	remove the police cruiser from play.
	
Instead of showing the silver to the police officer:
	try giving the silver to the police officer.
	
Instead of showing the cocoon to the police officer when the liquid silver is in the cocoon:
	try giving the silver to the police officer.
	
Instead of giving the cocoon to the police officer when the liquid silver is in the cocoon:
	try giving the silver to the police officer.
	
Instead of applying the silver to the police officer:
	try giving the silver to the police officer.
	
Instead of applying the cocoon to the police officer when the liquid silver is in the cocoon:
	try giving the silver to the police officer.
	
Instead of giving something to the police officer when the noun is not the liquid silver:
	say "'What on earth would I want with that?'"
	
Instead of talking to introduced wesson in mountainroad2 when the police officer is in mountainroad2 for the first time:
	say "'I think he is looking for a bribe, sir.'"
	
Instead of talking to introduced wesson in mountainroad2 when the police officer is in mountainroad2 at least twice:
	say "'Try giving him the silver, sir. If you don't have it, you can pick it up right outside the vacation house.'"
	
West from MountainRoad2 is MountainRoad3. The printed name of MountainRoad3 is "Even Farther up the Mountain". 

North from MountainRoad3 is MountainRoad2.

MountainRoad3 is in MountainSide.

The description of MountainRoad3 is "The road continues south before ending at a huge pile of rocks. A quaint log cabin has been erected east of the road."

Instead of going down in MountainRoad3, try going north.

Instead of going inside in MountainRoad3, try going east.

The pile of rocks is scenery in MountainRoad3. Understand "giant", "huge" and "rock" as the pile of rocks. The description of the pile of rocks is "A giant pile of big heavy rocks blocks the road. There is no way you are getting past here."

Instead of taking the rocks, say "Even if you could lift them  [unicode em dash] which you can't  [unicode em dash] it would take forever to clear the road."

The log cabin is scenery in MountainRoad3. Understand "windows", "window" and "light" as the log cabin. The description of the log cabin is "An old-fashioned log cabin; the kind that William Henry Harrison wasn't born in. There is light coming from the windows."

Instead of entering the log cabin, try going east.

Instead of interacting with the log cabin:
	try entering the log cabin.

Does the player mean doing something to the log cabin: it is likely.

The cabin door is a door. It is east of MountainRoad3 and west of InsideCabin. It is closed.

Instead of going through the cabin door by the car, say "The car won't fit through the door (type 'exit' to leave the car)."

InsideCabin is a room. The printed name of InsideCabin is "Inside the Log Cabin". The description of InsideCabin is "The warm air in the cabin caresses your face. The heat emanates from a cozy fireplace that fills the cabin with a soft warm light. [if wesson is on the old couch]Mr. Wesson is lounging on the couch in front of the fireplace[otherwise]An old couch stands by one of the walls[end if].[if the first glass of brandy is on the couch table] On the couch table are two glasses of brandy.[end if]"

Instead of exiting in InsideCabin when the player is not enclosed by anything, try going west.

The fireplace is scenery in InsideCabin. Understand "fire" and "place" as the fireplace. The description of the fireplace is "A crackling fire keeps the log cabin warm."

The softlight is scenery in InsideCabin. Understand "soft" and "light" as the softlight. The description of the softlight is "Soft warm light fills the interior of the cabin." The printed name of the softlight is "light".

Instead of doing something other than examining to the softlight, say "That's hardly tangible."

The air is scenery in InsideCabin. Understand "warm" as the air. The description of the air is "The air in here is wam and comforting."

Instead of doing something other than examining to the air, say "It's just air."

Instead of doing something other than examining to the fireplace, say "Ouch!"

The old couch is scenery in InsideCabin. The old couch is a supporter and enterable. The description of the old couch is "An old worn couch that seems like it has been used by generations of log cabin owners."

Does the player mean doing something to the old couch: it is likely.

Does the player mean entering the old couch: it is very likely.

The couch table is scenery in InsideCabin. The couch table is a supporter. The description of the couch table is "A simple wooden couch table."

A brandyGlass is a kind of thing. The description of a brandyGlass is usually "A glass of brandy." A brandyGlass is undescribed.

The first glass of brandy is a brandyGlass on the couch table. Understand "glasses" as the first glass of brandy.

Does the player mean doing something to the first glass of brandy: it is likely.

The second glass of brandy is a brandyGlass on the couch table. Understand "glasses" as the second glass of brandy.

Instead of going through the cabin door from InsideCabin when the first glass of brandy is on-stage:
	say "You might as well have a glass of brandy while you are here."

Instead of taking the second glass of brandy:
	try taking the first glass of brandy.
	
After taking the first glass of brandy:
	say "You pick up one of the glasses of brandy. Mr. Wesson takes the other.";
	now wesson is carrying the second brandy glass.
	
Instead of interacting with a brandyGlass:
	try drinking the noun.

To leave wesson behind:
	say "He has served you well for many years. You can't bear to refuse him.

A smile lights up his face. 'Thank you, sir. You can still visit me any time you want if you need my advice.'";
	now Wesson is on the old couch;
	now Wesson is content;
	now Wesson is unexamined;
	now the description of Wesson is "Mr. Wesson is lounging on the couch. He looks content."

Instead of drinking a brandyGlass:
	say "You clink the glasses together and down the brandy. A warm feeling spreads throughout your entire body. Mr. Wesson finishes his glass and sighs. He sits down at the couch and stares longingly at the fireplace. The fire is reflected in his eyes. 'You know, sir, I have always dreamed of having my own cabin in the mountains. If it's okay with you I think I am just going to stay here. Do you think you can handle things without me?'(Answer Yes or No)>";
	if the player consents:
		leave wesson behind;
	otherwise:
		say "'That's ok, sir. I will stay with you a while longer.'";
	remove the first glass of brandy from play;
	remove the second glass of brandy from play.
	
To ask the player for permission:
	say "'Sir,' says Mr. Wesson. 'Can I stay here this time?'(Answer Yes or No)>";
	if the player consents:
		leave wesson behind;
	otherwise:
		say "'That's ok, sir. I will stay with you a while longer.'".	
		
Does the player mean drinking the first glass of brandy:
	it is very likely.
	
After going through the cabin door from MountainRoad3 when the first glass of brandy is off-stage and wesson is not content:
	ask the player for permission.
		
Instead of talking to wesson in InsideCabin when wesson is not content and the first glass of brandy is off-stage:
	ask the player for permission.