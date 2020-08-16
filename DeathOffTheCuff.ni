"Death off the Cuff" by Simon Christiansen

The story genre is "Mystery". The release number is 8. The story creation year is 2010.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

Release along with cover art.

Include Smarter Parser by Aaron Reed.

Include Unicode Full Character Names by Graham Nelson.

Include Numbered Disambiguation Choices by Aaron Reed.

[To say tutor type: say "[roman type][italic type][bold type]".]

To say only bold: say "[roman type][bold type]".

Include Interactive Tutorial by Jimmy Maher.

[To do:
	Consider implementing more interesting outcomes when accusing innocent characters.
	Waiting puzzle when Lieberhaim is about to explain everything.
	'Kill' should be different from 'Attack'.
	Turning around to see Goodfellow holding a gun should maybe be rewritten.
	Trying to take the gun without distracting Goodfellow should result in an informative error message.]

Part 1 - Rules
	
When play begins:
	now the Tutor-introduction is "Welcome to Death off the Cuff! This is the tutorial. I will be with you for just a little while, to familiarize you a bit with interacting with the story. If you grow tired with me at any time, type [only bold]tutorial off[tutor type] at any prompt and I'll go away. If you don't care for tutorials, you can get a list of everything you need to know by typing [only bold]about[tutor type]. Typing [only bold]credits[tutor type] will list the credits for the game.".
	
To say talking instruction:
	say "Notice the cursor following the > prompt at the bottom of the window? (If you can't see it, just tap the spacebar to scroll the window.) This is where you will interact with the story. In this game, you will spend most of the time talking about things, in an attempt to trick the murderer into revealing him- or herself. You can talk about any topic by simply entering it at the prompt and pressing enter.

Now, you are trying to solve a murder, so let's start with the most obvious topic. Type [only bold]murder[tutor type] and press enter. "

To say twirling instruction:
	say "In addition to talking, you can also perform actions by typing simple instructions, usually consisting of a verb followed by a noun. The introduction mentioned that you like to twirl your moustache, so why not try that? Type [only bold]twirl moustache[tutor type] and see what happens. "
	
To say twirling conclusion:
	say "This game is mostly about talking, so most of the physical actions you can perform are pure flavor, and won't actually affect the story. Feel free to experiment with various verbs, to see which ones are implemented. However, there are a few occasions during the game where it will be necessary to perform actions to proceed. I won't spoil the details, but if you get stuck, you can try taking things, leaving the room, or hitting people. "
	
To say repeat talking instruction:
	say "When talking, you will often have more than one thing to say about a given topic. If you want to keep talking about the same thing, you can either re-enter the same command, or type [only bold]g[tutor type] to repeat your previous command. You previously tried talking about the murder, without much success. Let's type [only bold]murder[tutor type] again, and see if we can get the audience to open up a bit. "

To say examination instruction:
	say "'Murder' is an abstract topic, meaning that it doesn't refer to an object physically present in the room. While several abstract topics are implemented, you will need to talk about clues in the environment to solve the case. You can try entering the name of any object you see mentioned in the room description, or in the description of another object. When entering the name of an object for the first time, the game will print a description. If you have already seen the description, entering the name of the object will instead cause you to talk about it. Sometimes, the description of an object will change during the game. The game will always check whether you have seen the most up-to-date description.
	
Let's try this out now. Learning more about the hotel owner might be useful. Type [only bold]James[tutor type] and press enter. "

To say James talk instruction:
	say "Notice how typing James[']s name resulted in a description, instead of having you talk about him? Now that you know what James looks like, typing his name again will make you talk about him. Try typing [only bold]James[tutor type] again. "

To say focus instruction:
	say "Look at the status line at the top of the screen. Notice that it now says 'Focus: James'? Examining or talking about one of the characters will place him/her in focus, meaning that the parser will prefer things belonging to that person, in case several objects match your command. This goes for abstract properties as well. Let me give you an example: Every character in the game has both an alibi and a motive, so both of those words are ambiguous. However, since James is currently in focus, the game will assume we are talking about him. Type [only bold]motive[tutor type], and see if you have anything to say about James[']s motive. "

To say focus conclusion:
	say "If you want to, you can try talking about James[']s alibi too, as well as the alibis and motives of all the other characters. To talk about things belonging to a person not currently in focus, you can either type out the full name of the thing in question, as in [only bold]Jonathan's alibi[tutor type], or type the name of the character to bring him or her into focus. If your command is ambiguous, you will get to choose from a list of possible hits. "

To say pause instruction:
	say "When you are done experimenting, just twirl your moustache again, and I'll know you're ready to continue. "
	
To say close examination instruction:
	say "Excellent! Let's continue.
	
The parser will try to guess whether you want to examine something or talk about it, but sometimes you may want to repeat a description, or talk about something right away. You can explicitly choose between the two by typing stuff like [only bold]examine James[tutor type] or [only bold]talk about James[tutor type], rather than just [only bold]James[tutor type]. For convenience, [only bold]examine[tutor type] can be shortened to [only bold]x[tutor type], and [only bold]talk about[tutor type] to [only bold]t[tutor type]. 

Let's take a closer look at James, by typing [only bold]x James[tutor type]. "

To say suit examination instruction:
	say "It's not enough to interact with the objects immediately visible in the room. To solve the case, you must go deeper, and discover more subtle clues to talk about. James[']s suit looks nice. Type [only bold]suit[tutor type] to take a closer look. "

To say pocket examination instruction:
	say "That bump in his pocket looks suspicious. You can type either [only bold]bump[tutor type] or [only bold]pocket[tutor type] to examine it. "
	
To say pocket talk instruction:
	say "Suspicious indeed! Let's talk about it, by typing [only bold]pocket[tutor type] again. "
	
To say revolver talk instruction:
	say "I think you can figure out what to do next without my help... "	
	
To say looking instruction:
	say "Great job! You just learned a lot more about 'James'. He sure looks more suspicious now. If you want to, you can try to accuse him of being the murderer by typing [only bold]accuse James[tutor type]. You can accuse any character in that way, but you will need a reason to suspect them. I can tell you right now that accusing James won't get you the optimal ending to the game, but if you decide to go through with it, you can always rewind your latest action by typing [only bold]undo[tutor type].
	
Remember the room description from the beginning of the game? You can check the room description at any time by typing [only bold]look[tutor type], or just [only bold]l[tutor type] for short. Try that now. "
	
To say looking conclusion:
	say "The room looks the same, but the description of 'James' has changed, to reflect your new knowledge. It's a good idea to look around you after any major events, in case new clues have revealed themselves. Now that you know Brian's real identity, you can try examining him and talking about him again. You might also have something new to say about his potential motive. Old topics will often be relevant again after you've learned something new. "
	
Table of Tutorial Actions
Command	Done			Where	Check	Pre-Text		After-Text
trying talking about the murder	false	The hotel lounge	a rule	"[talking instruction]"	--
trying twirling the moustache	false	The hotel lounge	--	"[twirling instruction]"	"[twirling conclusion]"
trying talking about the murder	false	The hotel lounge	--	"[repeat talking instruction]"	--
trying examining James	false	The hotel lounge	--	"[examination instruction]"	--
trying talking about James	false	The hotel lounge	--	"[James talk instruction]"	--
trying talking about James's motive	false	The hotel lounge	--	"[focus instruction]"	"[focus conclusion]"
trying twirling the moustache	false	The hotel lounge	--	"[pause instruction]"	--
trying examining James	false	The hotel lounge	--	"[close examination instruction]"	--
trying examining the business suit	false	The hotel lounge	--	"[suit examination instruction]"	--
trying examining the pocket	false	The hotel lounge	--	"[pocket examination instruction]"	--
trying talking about the pocket	false	The hotel lounge	--	"[pocket talk instruction]"	--
trying talking about the revolver	false	The hotel lounge	--	"[revolver talk instruction]"	--
trying looking	false	The hotel lounge	--	"[looking instruction]"	"[looking conclusion]"

To say tutor conclusion:
	say "This concludes the tutorial. You should be able to make progress by yourself now, but if you get stuck you can get hints for the current scene by typing [only bold]hint[tutor type]. There are several hints available for each scene, so if the first one doesn't help, just try again! If you get completely stuck, you can get a detailed walkthrough for the game by typing [only bold]walkthrough[tutor type].
	
It's possible to save your current position by typing [only bold]save[tutor type], and restore a saved position by typing [only bold]restore[tutor type]. You can also type [only bold]restart[tutor type] to start a new game.

That's all for now. Good luck! ";
	now the help counter is three.

When play begins:
	now the Tutor-conclusion is "[tutor conclusion]".

Table of Tutorial Locations
Where	First		Last
The Hotel Lounge	1	1

Figure of Revolver is the file "Revolver.png"

Figure of Beard is the file "Beard.png"

Figure of Doctor is the file "Doctor.png"

Figure of JonandShane is the file "Jonandshane.png"

Figure of Franz is the file "Franzandgun.png"

Figure of Cover Art is the file "Cover Art.jpg"

Chapter 1 - Game Rules

Test Introduction with "t pocket / t revolver / x heinrich / t beard / take beard / t research"

Test Doctor with "Test Introduction / t stain / t book"

Test Slapsgiving with "Test Doctor / slap doctor / look"

Test Lovers with "Test Slapsgiving / x Shane / x hands / x finger / t band / x jonathan / x hands / x wounds / t wounds / look / x jonathan / x nose / t nose / look"

Test Climax with "Test Lovers / x uniform / talk about buttons / talk about cap / look " 

Test Gunplay with "Test Climax / take gun"

Test Waiting with "Test Climax / z / z"

Test thruline with "test climax / talk about gun / take gun"

Test Hairbug with "x shane / x hair / x count / x hair / x shane / x james / x hair"

Test Beards with "x james / x beard / x counts beard / take beard / 2"

Test Notepad with "x count / take beard / t notepad / t notepad"

Test Pockets with "x suit / x bump / t bump / t revolver / x suit / x bump"

Test ClimaxAccuse with "test climax / t brian / accuse brian"

Requesting information is an action applying to nothing. Understand "info", "about" and "information" as requesting information.

Carry out requesting information:
	say "'Death off the Cuff' is a conversation based game where you need to talk about various things to move the plot forward. You can do this by typing the topic you want to talk about. You will often have more than one thing to say about the same topic. 
	
You will mostly need to talk about visible objects to progress, although some abstract topics are implemented as well. It's a good idea to examine everything closely, to find clues to talk about. The first time you type the name of a visible object, the game will print a description. If you have already seen what the object looks like, typing its name will make you talk about it. The game will check whether you have seen the most up-to-date description of the object.

In case you want to explicitly choose between examining and talking about an object, this can be accomplished by typing stuff like [bold type]examine James[roman type] or [bold type]talk about James[roman type], instead of just [bold type]James[roman type].

In addition to talking about the characters directly, you can also talk about their alibis and motives, by typing such topics as [bold type]Jonathan's alibi[roman type] and [bold type]Jonathan's motive[roman type]. What you have to say about alibis and motives may change as you gain new information.

Typing the name of a character will focus your attention on that person. This means that ambiguous terms [unicode em dash] like 'hair,' and 'alibi' [unicode em dash] will be understood as referring to that person's hair, or alibi, if applicable. For example, if you type [bold type]Doctor[roman type], followed by [bold type]alibi[roman type], you will talk about the doctor's alibi, if possible. If you have nothing to say about that topic, you will get to select from a list of available possibilities. You can see the current focus of your attention in the status bar.
	
Talking doesn't solve every problem, though. You may also need to interact physically with things and people to progress. Physical actions are performed by typing simple declarative sentences like [bold type]take the table[roman type] or [bold type]twirl moustache[roman type]. ";
	say "Make sure you examine your surrounding regularly by typing [bold type]look[roman type]. You might notice new things.

Once you have some incriminating evidence, you can try accusing one of the characters, by using the [bold type]accuse[roman type] command. Careful, though, a wrongful accusation can ruin someone's life.
	
If you get stuck, typing [bold type]hint[roman type] or [bold type]help[roman type] will provide a hint on what to do in the current situation. There is usually more than one hint available for a given scene, so if the first one doesn't help the next one might. If you get completely stuck, typing [bold type]walkthru[roman type] will provide detailed instructions on how to finish the game.

The game has multiple endings. It is possible to save your reputation without actually solving the case, but you will miss most of the plot this way."

Requesting the credits is an action applying to nothing. Understand "credits" and "credit" as requesting the credits.

Carry out requesting the credits:
	say "Writing and coding by: Simon Christiansen.
	
Testing and proofreading done by: Katzy, Brooks Reeves, John Murphy, Colin Sandel, Amanda Allen, Tristano, Arthur O'Dwyer, David J. Hastings, Sam Kabo Ashwell, Jimmy Maher, Toby Ott, NR Turner and Rikard Peterson.

Cover art by Rikard Peterson.

Special thanks to the Goons of the SomethingAwful.com forums for feedback provided during a 'Let's Play' playthrough of the game.

Extensions used:[line break]
Smarter Parser version 15 by Aaron Reed.[line break]
Numbered Disambiguation Choices version 6 by Aaron Reed.[line break]
Interactive Tutorial version 1 by Jimmy Maher.

Feedback can be sent to: SimonChris1729@gmail.com."

Commenting is an action applying to one topic. Understand "comment [text]", "c [text]", "* [text]", "** [text]" and "*** [text]" as commenting.

Requesting the Walkthrough is an action out of world. Understand "Walkthrough" and "Walkthru" as requesting the Walkthrough.

Carry out requesting the Walkthrough:
	say " James[line break]
suit[line break]
pocket[line break]
pocket[line break]
revolver[line break]
revolver[line break]
Heinrich[line break]
beard[line break]
beard[line break]
take beard[line break]
articles[line break]
doctor[line break]
book[line break]
book[line break]
shirt[line break]
stain[line break]
stain[line break]
slap doctor[line break]
Shane[line break]
hands[line break]
finger[line break]
band[line break]
Jonathan[line break]
hands[line break]
wounds[line break]
wounds[line break]
look[line break]
Goodfellow[line break]
uniform[line break]
buttons[line break]
buttons[line break]
cap[line break]
cap[line break]
look[line break]
gun[line break]
gun[line break]
take gun.".

Requesting help is an action out of world. Understand "help", "hints" and "hint" as requesting help.

The help counter is a number variable. The help counter is zero.

When a scene begins:
	now the help counter is zero.

Carry out requesting help:
	increment the help counter.
	
Report requesting help when the help counter is one during Introduction:
	say "First of all, try examining everything you see and talking about it. Then do the same for the things mentioned in the descriptions of the first things. Also, make sure to check your surroundings regularly by typing [bold type]look[roman type]. Things might have changed since the last time you checked. If you still can't figure out how to make progress, there are more hints available.";
	stop the action.
	
Report requesting help when the help counter is two during Introduction:
	say "Have you tried examining the owner of the hotel? He is wearing that nice suit. Is there anything unusual about it?";
	stop the action.
	
Report requesting help when the help counter is three during Introduction:
	say "Is he hiding something in his pocket, or is he just happy to see you? Try talking about it.";
	stop the action.
	
Report requesting help when the help counter is four during Introduction:
	say "Take a look at the Count. Anything catches your eye?";
	stop the action.
	
Report requesting help when the help counter is five during Introduction:
	say "Did you check out his beard?";
	stop the action.
	
Report requesting help when the help counter is six during Introduction:
	say "There is definitely something up with the beard, but he doesn't seem likely to confess. You might have to test your hypothesis yourself.";
	stop the action.
	
Report requesting help when the help counter is seven during Introduction:
	say "Take the beard.";
	stop the action.
	
Report requesting help when the help counter is eight during Introduction:
	say "Sylvester seems to have done some interesting research. Try talking about it.";
	stop the action.
	
Report requesting help when the help counter is one during the Doctor:
	say "You should regularly check your surroundings by typing 'LOOK'. Things may have changed since you last took a good look around you.";
	stop the action.
	
Report requesting help when the help counter is two during the Doctor:
	say "The doctor looks defensive, doesn't he?";
	stop the action.
	
Report requesting help when the help counter is three during the Doctor:
	say "Perhaps you should talk about his book?";
	stop the action.

Report requesting help when the help counter is four during the Doctor:
	say "Maybe you should check out his clothes as well.";
	stop the action.
	
Report requesting help when the help counter is five during the Doctor:
	say "How about that suspicious stain on his shirt?";
	stop the action.
	
Report requesting help when the help counter is one during Slapsgiving:
	say "The doctor seems to have broken down. If only you could make him snap out of it somehow.";
	stop the action.
	
Report requesting help when the help counter is two during Slapsgiving:
	say "Maybe try talking about him to see if you can provoke a reaction?";
	stop the action.
	
Report requesting help when the help counter is three during Slapsgiving:
	say "This seems to be one of those rare situations where talking isn't the answer. Perhaps it is time to get physical?";
	stop the action.
	
Report requesting help when the help counter is four during Slapsgiving:
	say "Slap him. Nothing else is working.";
	stop the action.
	
Report requesting help when the help counter is one during the Lovers:
	say "Check your surroundings. Anything seems different?";
	stop the action.
	
Report requesting help when the help counter is two during the Lovers:
	say "Shane looks nervous. Does she have something to hide?";
	stop the action.
	
Report requesting help when the help counter is three during the Lovers:
	say "Her hands are clearly visible now. Maybe you should examine them closer.";
	stop the action.
	
Report requesting help when the help counter is four during the Lovers:
	say "Looks like she might have been wearing something on her finger.";
	stop the action.
	
Report requesting help when the help counter is five during the Lovers:
	say "So, Jonathan is her lover. Maybe you should take a closer look at him as well.";
	stop the action.
	
Report requesting help when help counter is six during the Lovers:
	say "He is scratching his hands is he? What is it with people and their hands around here.";
	stop the action.
	
Report requesting help when the help counter is seven during the Lovers:
	say "Those wounds are mighty suspicious.";
	stop the action.
	
Report requesting help when the help counter is one during the Climax:
	say "The constable seems impatient. What is he fiddling with?";
	stop the action.
	
Report requesting help when the help counter is two during the Climax:
	say "He is fiddling with the buttons. Is he nervous?";
	stop the action.
	
Report requesting help when the help counter is three during the Climax:
	say "Maybe you should check out his uniform more closely. Starting with those buttons.";
	stop the action.
	
Report requesting help when the help counter is four during the Climax:
	say "What's up with the cap? Do Scotland Yard constables really wear caps?";
	stop the action.
	
Report requesting help when the help counter is one during Gunplay:
	say "He has a gun. Maybe you will get lucky if you attack him?";
	stop the action.
	
Report requesting help when the help counter is two during Gunplay:
	say "Or not. You will have to distract him somehow; he did permit you to say your last words.";
	stop the action.
	
Report requesting help when the help counter is three during Gunplay:
	say "Try talking about the gun.";
	stop the action.
	
Report requesting help when the help counter is four during Gunplay:
	say "Now he is distracted. Time to act.";
	stop the action.
	
Report requesting help when the help counter is five during Gunplay:
	say "Maybe you can take him down now?";
	stop the action.
	
Report requesting help when the help counter is six during Gunplay:
	say "Just take his gun while he is distracted.";
	stop the action.
	
Understand "Take [someone] down" as attacking.
	
Report requesting help when the help counter is three during Gunplay:
	say "Try talking about the gun.";
	stop the action.
	
Report requesting help (this is the default help rule):
	say "No hints are available at the moment.".
	
The default help rule is listed last in the report rules.

Understand "look [something]" as examining.

Talking to is an action applying to one thing. Understand "Talk to [something]" and "Speak to [something]" as talking to.

The description of the player is "You are as good looking as ever, but your confident demeanor hides a gnawing uncertainty. You hope that no one will notice. You are wearing your trademark black bowler hat, and your moustache is impeccably groomed."

To say the no talking text:
	say "When closing a case, you normally [bold type]talk about[roman type] people, instead of having conversations with them individually. You can also talk about people's motives and alibis. Anything you can see in the room can be talked about as well. You will mostly need to talk about visible objects, but some abstract topics are also implemented."

Instead of talking to someone, say the no talking text.

Instead of asking someone for something, say the no talking text.

Persuasion rule for asking someone to try doing something:
	say the no talking text;
	persuasion fails.

Before answering someone that (this is the no answer rule):
	say the no talking text;
	stop the action.
	
The no answer rule is listed first in the before rules.

Before asking someone about something: 
	say the no talking text;
	stop the action.

Before telling someone about something: 
	say the no talking text;
	stop the action.
	
A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined. 

Talking about is an action applying to one thing. Understand "talk about [something]" , "ask about [something]" and "t [something]" as talking about.

Interacting with is an action applying to one thing. Understand "[something]" as interacting with.

Before interacting with:
	if the noun is unexamined:
		try examining the noun;
	otherwise:
		try talking about the noun;
	stop the action.

Report talking about:
	say "You can't think of anything to say.".
	
Use normal lonely noun behavior.

ATalking is an action applying to one topic. Understand "talk about [text]" , "ask about [text]", "t [text]" and "[text]" as ATalking.

Report ATalking:
	say "You can't think of anything to say."
	
The hint counter is a number variable. The hint counter is zero.

After Atalking:
	increment the hint counter;
	if the hint counter is five:
		say "While a few abstract topics are implemented, the game mostly involves finding clues in the environment to talk about. You need to examine everything carefully. Important clues may be hidden in the descriptions of other things.";
	otherwise:
		continue the action.
		
Checking the focus is an action applying to nothing. Understand "focus" as checking the focus.

Report checking the focus:
	say "Focus: [the attention of the player]."
	
Rule for printing a parser error when the latest parser error is the can't see any such thing error:
	say "That is either not here, or doesn't need to be referred to at the moment."

The player has a text called the attention. The attention of the player is "Yourself".

When play begins:
	say "'I assume you have gathered us here for a reason, Monsieur Saint Germain?' says Shane Pearson.

'Is it not obvious?' says the doctor. 'The detective has worked out who killed the colonel and intends to explain to us how he did it.'

You twirl your moustache. 'The good doctor is correct, Mademoiselle Pearson. I have indeed solved the case. The murderer was clever, but he proved no match for my grey matter.' You tap your forehead to illustrate the point.

They all stare at you expectantly, like children waiting for you to tell them a bedtime story. Who can blame them? You are, after all, Antoine Saint Germain, the great French detective. No criminal has ever been a match for you, and everybody is looking forward to a description of your brilliant deductions.

There is just one small problem. One tiny detail that makes it different this time. A mere trifle, really. This time you have no idea who did it. An entire day of investigation has turned up nothing. No one even seems to have a proper motive. You are almost tempted to confess to the murder yourself.

No big deal. Most of the time when you do this the murderer breaks down and confesses half way through your speech anyway. All you have to do is stall and wait for the guilty party to slip up. People love talking about themselves. If you wait long enough, they always end up revealing something you can use.

It is going to be fine.";
	display the Figure of Cover Art;
	now the left hand status line is "Focus: [attention of the player]";
	now Your hair is in focus.

Instead of going nowhere during gunplay :
	say "You make a dash for the door, but it is no good. You can't outrun a bullet.[line break][line break]";
	shoot the player.

Instead of going nowhere when gunplay is not happening:
	say "You haven't solved the case yet. Do you really want to leave? ";
	if the player consents:
		say "'There is hardly any point in going on,' you say. 'After all, even a child could figure out who the murderer is by this point. I will leave the rest to you.'
		
You turn around and walk through the door as if you owned the world.

No one buys it.";
		End the story saying "Your reputation is ruined".
		
Instead of exiting:
	try going north.
	
Instead of jumping:
	say "You jump on the spot, fruitlessly. Nobody comments on this; people are expecting you to be eccentric.".
	
A person has a text called the mention. The mention of a person is usually "If you are reading this, the program is bugged.".

Rule for writing a paragraph about a person:
	say the mention;
	say "[line break]".
	
Rule for deciding whether all includes scenery: it does not.
 	
 Understand "brain" and "gray/grey matter" as yourself.
 	
 Instead of talking about the player for the first time:
	say "'The murderer was clever, but he was no match for the superior intellect of Antoine Saint Germain.'".
	
Instead of talking about the player for the second time:
	say "'I put my grey matter to work on the case. When my brain is working at full capacity, nothing can be concealed from me.'".
	
Instead of talking about the player for the third time:
	say "'No murderer has ever been a match for my superior intellect. This time was no exception.'".

Confessing is an action applying to nothing. Understand "Confess" and "Confes" as confessing.
	
TopicConfessing is an action applying to one topic. Understand "Confess [text]" and "Confes [text]" as TopicConfessing.

Carry out TopicConfessing:
	try confessing.

Carry out confessing:
	say "You twirl your moustache one final time. 'Mesdames et Messieurs, I am afraid I have a confession to make. No murderer has ever been a match for my superior intellect, and over time this has gotten boring. I needed a challenge, but no one else was smart enough to challenge me. It was then that I got one of my brilliant ideas: I would commit a murder myself and show the world that I could get away with it.'
  	
The air in the room is heavy with tension. It feels like everyone is holding his or her breath.

'Yes it was [italic type]I[roman type] who killed the colonel, and none of you suspected me for a second. I have proven that there [italic type]is[roman type] such a thing as a perfect murder if only the murderer is sufficiently brilliant. Muahahahahaha.'

You have heard the evil laugh countless times during your career; imitating it comes natural.

As the constable handcuffs you and leads you from the room, you hear excited muttering from behind you. The papers are going to have a field day with this one.";
	end the story saying "[Reputation End]".
	
Instead of confessing during gunplay:
	say "It's too late for that now."
	
Instead of accusing yourself:
	try confessing.
	
Singing is an action applying to nothing. Understand "sing" as singing.

Instead of singing, say "No, silly; you need to make the murderer sing."

Instead of listening, say "You hear the ticking of the clock."

Understand "pray" as a mistake ("You are a man of reason, not faith. Still, you can't help but silently pray that you will manage to get through this."). 

Instead of thinking, say "You have thought about the case all day with no results. Your last hope is that you can make the murderer reveal him or herself during your closing monologue."

Instead of waking up, say "You wish this was all a dream; that you had never visited Seafront Hotel in the first place."

Instead of searching something (this is the active investigation rule):
	say "The time for active investigation is over. Your only hope now is that the murderer will make a mistake.".
	
The active investigation rule is listed first in the instead rules.

Accusing is an action applying to one things. Understand "accuse [someone]" and "jaccuse [someone]" as accusing.

A person can be suspicious. A person is usually not suspicious.

Carry out accusing:
	say "You don't have enough evidence to accuse [the noun]."

A clue is a kind of thing. A clue is scenery. A clue has a text called the meddling. The meddling of a clue is usually "Test".

Before doing something to a clue ( called the current clue ):
	now the current clue is in focus;
	if the meddling of the current clue is "Test":
		say "ERROR: Clue has no meddling text.";
		stop the action.

A clue can be either revealed or unrevealed. A clue is usually unrevealed.

A clue has a number called the counter. The counter is usually zero.

[Rule to ensure that the parser chooses things from the previously examined person]
A clue can be in focus or not in focus. A clue is usually not in focus.

Before talking about a clue ( called the current clue):
	increase the counter of the current clue by one;
	now the current clue is revealed.

The murder details is a clue.

Instead of doing something other than examining or talking about to a clue (called the current clue)( this is the meddling rule ):
	say the meddling of the current clue;
	say "[line break]".

The meddling rule is listed last in the instead rules.
	
Does the player mean doing something to a clue ( called the current clue ):
	if the current clue is in focus:
		it is likely;
	otherwise:
		it is possible.
		
A tobject is a kind of clue. The description of a tobject is "You can talk about it, if you want to.". The meddling of a tobject is "[The noun] is a topic, not a physical object." A tobject is usually examined.
	
Xyzzy is an action applying to nothing. Understand "Xyzzy" as xyzzy.

Carry out xyzzy:
	say "You don't need magic to solve the case; only logic.".
	
Understand the command "pull" as something new.
	
Understand "grab [something]", "pull [something]" and "tear off [something]" as taking.

Understand "slap [someone]" as attacking.

Does the player mean doing something to a person:
	it is very likely.
	
Instead of attacking someone:
	say "While physical force can sometimes be an unfortunate necessity, it hardly seems appropriate at the moment."
	
Instead of attacking yourself:
	say "Suicide won't save your reputation."
	
The hairpull counter is a number variable. The hairpull counter is zero.

To say reputation end:
	say "You have saved your reputation"
	
To set the description of (item - an object) to (new description - some text):
	now the description of the item is the new description;
	now the item is unexamined.
	
Chapter 2 - Generic Topics

The Hotel Lounge is a room.

Understand the command "murder" as something new.

The murder is a tobject in the hotel lounge. Understand "case" and "murderer" as the murder.

Instead of talking about the murder for the first time:
	say "'The death of the colonel was, of course, murder,' you proclaim. 'Yes, murder of the most foul and treacherous nature.'
	
Everyone nods in agreement."

Instead of talking about the murder for the second time:
	say "'I vowed that the murder of the colonel would not go unpunished. No murderer has ever managed to outwit me, and this case would be no exception.'
	
Your audience politely listens to your speech, but no one seems very affected by it."

Colonel John McClaren is a tobject in the Hotel Lounge. Understand "victim" as the colonel.

Instead of talking about the colonel for the first time:
	say "'Who was Colonel John McClaren, and why would anyone want to kill him? My initial investigations into his past turned up very little. He was a retired Army colonel with an unremarkable career. He did not seem to have made any enemies, nor did I find evidence of involvement in any unusual activities.'
	
You raise a finger. 'However, I knew that there had to be more to him beneath the surface. The most ordinary people usually hide the darkest secrets. It was only a matter of time before I was to reveal them.'

'What did you find out, then,' asks James.

'Patience, Monsieur Garfield. All will be revealed in due time.'"

Instead of talking about the colonel for the second time:
	say "'Yes, I had no doubt that there was more to the colonel than his ordinary demeanor suggested. I continued my investigations, and it was not long before I found what I was looking for.'
	
You pause for a moment. Everybody is at the edge of his or her seat, waiting for your revelation. Nobody is giving anything away, though. It looks like you will have to stall for a while longer.";
	remove the colonel from play.
	
MoreColonel is a tobject. Understand "colonel"," john", "mcclaren" and "victim" as MoreColonel.

Instead talking about MoreColonel for the first time:
	say "'As I always say: the most ordinary people usually hide the darkest secrets. The colonel's unremarkable military career had only been a cover for his clandestine activities. Several new avenues of investigation were now open to me. The case was quickly starting to unravel.'"
	
Instead of talking about MoreColonel for the second time:
	say "'Now that I knew about the colonel's past, it was not hard to see why someone might want to kill him. He had made many enemies during the war, and the ones I knew about were surely just the tip of the iceberg. Perhaps one of those enemies had managed to track him down. Perhaps that person was still present at the hotel.'
	
Doctor Mole gasps. 'Surely you are not suggesting...'

'Indeed I am, my good doctor. The murderer was most likely someone from the colonel's past and that person would have to be one of the people at the hotel. One of the people present in this room, at this very moment.'";
	remove MoreColonel from play.
	
The Seafront Hotel is a tobject in the hotel lounge.

Instead of talking about the seafront hotel for the first time:
	say "'The Seafront Hotel was a place of respite; a place where people could come to forget their troubles.'
	
[James name] smiles. 'Thank you, Mister Germain.'

'How ironic then that it should become the scene of a grisly murder. Then again, murders always occur where you least expect them.'"

Instead of talking about the seafront hotel for the second time:
	say "'It was clear that the colonel had come to Seafront Hotel to escape his problems. How sad that they had managed to follow him here.'";
	remove the seafront hotel from play.
	
The novel is a tobject in the hotel lounge. Understand "book", "how blue" and "how blue was the sky" as the novel.

Instead of talking about the novel:
	say "'Shane's book, How Blue Was the Sky, had become a minor hit among people interested in romantic literature. I procured a copy, but I am sad to say that it did not hold my interest.'
	
Shane shrugs. 'You are hardly my target audience, Monsieur Germain. Is this going somewhere?'

'Indeed it is Mademoiselle. Patience. Women are so demanding.'

If it doesn't, everyone will probably have forgotten about it by then. If it does, you will look like a genius.";
	remove the novel from play.
	
Understand the command "watch" as something new.

The watch is a tobject in the hotel lounge. Understand "pocket watch", "time" and "time of death" as the watch.

Instead of talking about the watch:
	say "'The colonel's pocket watch had stopped at 02:30, when he was stabbed. Since Doctor Mole had confirmed this to be the approximate time of death, it seemed that there could be no doubt as to the time of the murder. But the most obvious facts are often the ones that turn upon us.'";
	remove the watch from play.
	
The LoversWatch is a tobject. Understand "pocket watch", "time" and "time of death" as the LoversWatch.

Instead of talking about the LoversWatch:
	say "'Doctor Mole's estimate of the time of death had turned out to be fraudulent. The watch was now the only evidence that the stabbing of the colonel had occurred at around 02:30 in the night. But could I trust the watch or might it be lying to me as well?'";
	remove the LoversWatch from play.
	
The ClimaxWatch is a tobject. Understand "pocket watch", "time" and "time of death" as the ClimaxWatch.

Instead of talking about the ClimaxWatch:
	say "'One of the most certain facts of the case, the time of the death, had turned out to be false. Both the watch and the doctor had been lying. The colonel had actually died at around midnight, not at 02:30 as everyone had thought. Everything was now in question.'";
	remove the ClimaxWatch from play.
	
Part 2 - Scenes

Introduction is a scene. Introduction begins when play begins.

Introduction ends when the revolver is revealed and the research is revealed.

When introduction ends:
	now MoreColonel is in the Hotel Lounge;
	remove the watch from play;
	remove the seafront hotel from play;
	remove the murder from play.

The doctor is a scene. The doctor begins when introduction ends.

When the doctor begins:
	say "'I had reached a turning point in my investigation,' you continue. 'Not only had the colonel turned out to be a former secret agent, but his colleague was even running the hotel. Mr. Starfield's research turned up several new avenues of investigation. It seemed likely that the colonel's past had finally caught up with him. Perhaps his German nemesis had managed to track him down. Or maybe [if jonathan is nosy]Jonathan[else]his illegitimate son[end if] had decided to seek revenge for being abandoned. I continued my investigations with renewed vigor.'";
	set the description of Elias to "Doctor Elias Mole is a young handsome doctor. Recently graduated from medical school, he has just opened his own practice in London. He is wearing a light blue button-up shirt and a pair of dark trousers. Now that he is no longer leaning forward, you notice a paperback lying in his lap. There is also something different about his shirt.";
	now the mention of Elias is "Doctor Elias Mole is sitting next to Shane on the couch, his arms crossed in front of him.";
	set the description of the shirt to "A light blue casual shirt. Now that he is sitting upright, you can just barely make out the remnants of a small stain.";
	now the paperback is in the hotel lounge;
	remove the novel from play;
	now the stain is in the hotel lounge;
	remove the revolver from play.
	
The doctor ends when the stain is revealed and the paperback is revealed.

Slapsgiving is a scene. Slapsgiving begins when the doctor ends.

When slapsgiving begins:
	say "The doctor starts wringing his hands, his eyes darting from side to side. 'It's obvious that you know everything, Mr. Germain. Oh my god, what have I done. What was I thinking?'
	
He puts his face in his hands and begins sobbing uncontrollably.";
	now the mention of Elias is "Doctor Mole is sobbing hysterically with his face in his hands.";
	set the description of Elias to "He has broken down completely. You are not getting anything more out of him unless you can get him to snap out of it.";
	remove EliasTopics from play;
	now EliasProvoke is in the Hotel Lounge;
	now Elias is suspicious;
	now the counter of the shirt is zero;
	now the counter of the paperback is zero;
	now the counter of the stain is zero;
	now the counter of the dark trousers is zero.
	
Instead of attacking Elias during slapsgiving:
	now Elias is slapped.

Slapsgiving ends when Elias is slapped.

The lovers is a scene. The lovers begins when slapsgiving ends.

The lovers ends when the wounds are revealed and the finger is revealed.

When the lovers begins:
	say "You slap him hard across the face. 'Snap out of it, doctor. We need you.'
	
The doctor blinks, as if he had just awoken from a bad dream. 'Right... I am sorry. It's obvious that you have found me out, Monsieur Germain,' he sighs. 'I covered for Miss Pearson because I couldn't bear the thought that her talent would waste away in jail.'

'I know,' you say. 'You'd better tell the whole story, doctor. For your own sake.'

He nods and takes a deep breath. 'At midnight I was awoken by a noise in the hallway. When I peered out I saw Miss Pearson running down 
the hallway as if the devil himself was chasing her. This surprised me; Miss Pearson never struck me as the choleric type. I went downstairs to see what she might have been running from, and that's when I saw it.  Oh, god...'

You put your hand on his shoulder. 'It is okay, Monsieur. You are safe now. You can tell the others what you saw.'

He takes another deep breath and looks up. His eyes are steel. 'It was the colonel, lying on the floor with a bloody knife planted in his chest. I don't know why I did what I did, then. It seems so obviously half-witted now; perhaps the tiredness had clouded my mind.  I wiped all the fingerprints off the knife, and when I later examined the body, I lied and said that drug in his system was opium. I thought that would throw the police off the tracks. I also confirmed the time of death indicated by the watch, even though I couldn't really say for sure. I reasoned that there was no point in checking if I was going to lie anyway.'

You nod. 'I had quickly deduced that the opium story made no sense. Why would anyone sedate someone only to stab him right afterwards? Once I realized this, I knew that the doctor had lied.'

'I suppose you have already worked out the rest,' says the doctor. 'The drug in the colonel's body was not opium. It was cyanide. The poison would have killed him anyway, even without the knife.'

'Indeed, and that realization changed everything. If the colonel had been lethally poisoned, then the stabbing was clearly a red herring. But how? And why?'";
	display the Figure of Doctor;
	now the mention of Shane Pearson is "Shane Pearson is looking nervous.";
	set the description of Shane Pearson to "The usually confident and extroverted writer is now looking like a deer caught in the headlights. She is currently resting her head in her hands, watching you with intense curiosity.";
	remove ShaneTopics from play;
	now ShaneLoverAlibi is in the Hotel Lounge;
	now Shane is suspicious;
	set the description of Jonathan to "He is dressed in a tuxedo with a black bow tie. Currently, he is absentmindedly scratching his hands while listening to your exposition.";
	remove EliasProvoke from play;
	now the mention of Elias is "Doctor Mole has recovered from his temporary breakdown and is sitting upright on the couch.";
	set the description of Elias to "Calm and composed. He is sitting upright on the couch paying keen attention to the events around him.";
	now the LoversWatch is in the hotel lounge;
	remove Jonathan's alibi from play;
	remove Goodfellow's alibi from play.
	
The Climax is a scene. The Climax begins when the lovers ends.

When the Climax begins:
	say "'It is obvious that you have worked it out, Mr. Germain,' says Jonathan.  'Oh, what a silly fool I have been.'

'Indeed, Monsieur,' you say. 'Love makes fools of us all. Just tell the whole story and everything will be fine.'
	
Jonathan nods. 'I certainly hope so. Well, at around midnight, I heard Shane walk down the stairs. I followed her down, to ask her if anything was wrong, and I saw everything that happened. She was clearly blameless [unicode em dash] the colonel had attacked her [unicode em dash] but I couldn't take the chance that people might not believe her. I had to do something, you understand. First, I set the colonel's pocket watch to 02:30. Then I stabbed him several times with the knife, making sure I hit the watch so it would stop. Now everyone would believe that was the time of death.  I then made sure Shane would have an alibi for the fake time of death by waking her up when the time was actually 02:30 AM. I made sure to make a lot of noise so plenty of people would hear me.'

'Oh, darling,' says Shane. 'You shouldn't have done that.'

'My love, I would do anything to prevent you from going to jail. Unfortunately, Mr. Germain saw right through me.'

'But that doesn't explain what happened to the fellow's hands,' says Sylvester. 'Why are they all bruised?'

Jonathan smiles an embarrassed smile. 'It is a bit melodramatic, really. I felt so dirty afterwards that I kept scrubbing my hands in an attempt to remove every trace of what I had done. I didn't stop until they started bleeding.'";
	display the Figure of JonandShane;
	remove JonathanTopics from play;
	remove JonathanNoseMotive from play;
	now JonathanClimaxAlibi is in the Hotel Lounge;
	now Jonathan is loving;
	set the description of Jonathan to "His emotionless facade has dropped and he is now looking tenderly at Shane.[if Jonathan is not nosy] His long nose reminds you of someone, but you can't quite place it.";
	now the mention of Shane is "Shane Pearson is relaxing on the couch.";
	set the description of Shane to  "Shane is relaxing on the couch, looking relieved.";
	now the mention of Goodfellow is "Constable Goodfellow is standing behind you. He seems to be getting impatient.";
	set the description of Goodfellow to "Constable Goodfellow is a tall, broad man, dressed in the uniform of Scotland Yard. He is fiddling impatiently with the buttons on the uniform, apparently starting to get tired of your long monologue.";
	now the buttons are in the hotel lounge;
	remove the LoversWatch from play;
	now the ClimaxWatch is in the hotel lounge.

The Climax ends when the cap is revealed and the buttons are revealed.	

Revelation is a scene. Revelation begins when The Climax ends.

When Revelation begins:
	The villain reveals himself in one turn from now.
	
At the time when the villain reveals himself:
	now the luger is in the hotel lounge.
	
Gunplay is a scene. Gunplay begins when the luger is in the hotel lounge.

When gunplay begins:
	say "You turn around to see Goodfellow holding a gun with a murderous look in his eyes. 'That's quite enough, detective. I will not stand here idly while you toy with me. It's obvious that you know everything.'

Everyone gasps.

'When you tried to call Scotland Yard I intercepted the call and came here instead. There is no 'Constable Goodfellow.' My name is Franz Lieberheim and I have spent years tracking down the colonel so I could have my revenge. When I found out he was living here, I kept the place under surveillance until I finally got my chance. Allow me to explain how masterfully I executed my plan.'

'About half an hour before midnight, Colonel McClaren came down to get a drink. I approached him, claiming to be a recent arrival to the hotel. He did not recognize me and we struck up a conversation. I procured some wine, slipping the cyanide into the colonel's glass while he wasn't watching. After he had drunk the wine, I made an excuse to leave and hid outside the window so I could watch him die. After a few minutes, the American girl came down to the library as well. By that time, the colonel must have started to feel the effects of the poison because he staggered towards her, desperately seeking assistance. The girl misinterpreted his approach as an attack; the rest you know.'

'I know everything, Monsieur Lieberheim,' you say while twirling your moustache. 'It would be easiest for everyone if you gave up now and waited for the real police to arrive.'

He sneers. 'I don't think so. I would have gotten away with this if it wasn't for you, and Franz Lieberheim always gets his revenge. Do you have any last words before I kill you, you meddling frog?'";
	display the figure of Franz;
	now the mention of Goodfellow is "Franz Lieberheim is holding you at gunpoint. His face is distorted in a grimace of pure, German, evil.";
	set the description of Goodfellow to "The kindly Constable Goodfellow is gone. In his place is a murderer with countless lives on his conscience. You have no doubt that he intends to follow through on his threat.";
	now the mention of James is "Brian Holmes has raised his hands in a martial arts position, ready to jump Franz at the slightest chance.";
	now the mention of Jonathan is "Jonathan Allington is attempting to block the path to Shane, apparently so that any stray bullets will hit him instead of her.";
	now the mention of Shane is "Shane Pearson is standing behind Jonathan, trying to get a good look at the action.";
	now the mention of Elias is "Doctor Mole is hiding behind the couch.";
	now the mention of Heinrich is "Sylvester Starfield looks overjoyed to be getting the scoop on such a great story. He is busily taking notes on his notepad.";
	repeat with the current topic running through tobjects:
		remove the current topic from play;
	set the focus on Goodfellow;
	the Luger fires in two turns from now.
	
Etiquette is a scene. Etiquette begins when the hairpull counter is two.

When etiquette begins:
	say "'That's quite enough, Mr. Germain.' You feel the hand of Constable Goodfellow on your shoulder. 'Maybe we should take a break and continue this some other day when you have had some more time to think?'
	
Everybody agrees with him. As the constable leads you from the room, you hear people muttering about how the great detective has obviously lost his mind. You don't get a second chance.";
	end the story saying "Your reputation is ruined".

Part 3 - Environment

Chapter 1 - Items

The Hotel Lounge is a room. "The hotel lounge is small, but comfortable. A [if the couch is revealed]soft, expensive leather[otherwise]large[end if] couch stands near one wall, with a mahogany couch table in front of it. Beside it is an old-fashioned reclining chair. In the corner of the room, an old grandfather clock is steadily ticking away, lending a dignified air to the proceedings."
	
Twirling is an action applying to one thing. Understand "Twirl [something]" and "Stroke [something]" as twirling.

Carry out twirling:
	say "[The noun] is untwirlable."

The moustache is scenery in the Hotel Lounge. Understand "mustache" and "tache" as the moustache. "Your black moustache is impeccably groomed."

Instead of twirling the moustache, say "You twirl your moustache, creating a dramatic pause in the conversation."

Instead of pulling or taking the moustache:
	try twirling the moustache.

Instead of talking about the moustache when gunplay is not happening for the first time:
	say "'I have always felt that the quality of a person's character can be determined from how he takes care of his facial hair. I myself keep my moustache impeccably groomed.'";
	if heinrichs beard is in the hotel lounge:
		now the mention of Heinrich is "Count Heinrich Von Carstein is leaning backwards in the reclining chair, stroking his long white beard.";
	otherwise:
		say "[line break]Sylvester Starfield nods. 'I presume that's how you saw through my disguise. My beard was too shabby.'"

Instead of talking about the moustache when gunplay is not happening for the second time:
	say "'As I always say, the moustache makes the man.'"
	
Instead of talking about the moustache when gunplay is not happening for the third time:
	say "'It is unfortunate that the popularity of facial hair is on the decline,' you say, while pacing back and forth in the room. 'I have always thought that you can tell a lot about a man from how he keeps his beard.'
	
'Oh, for God's sake,' says an unfamiliar voice behind you. 'I can't take this anymore. Don't you ever shut up?'

A shot rings out, and moments later you are lying on the floor feeling the life drain from your body. You try to move, but your muscles refuse to obey. You will never know the identity of the murderer.";
	end the story saying "You have died".

The bowler hat is a clue in the hotel lounge. "A black bowler hat rests comfortably at the top of your head."

The meddling of the bowler hat is "You see no reason to mess with your trusty hat."

Instead of talking about the bowler for the first time:
	say "'I have found that my trusty bowler hat helps me think.'".

Instead of taking inventory, say "Your brain is all that you need."

Your hair is a clue in the hotel lounge. The description of your hair is "You are entirely bald." The meddling of your hair is "Sadly, it's not going to grow back." The printed name of your hair is "Your hair".

Before examining or talking about yourself:
	now your hair is in focus;
	now James Hair is not in focus;
	now Shanes hair is not in focus;
	now Heinrichs hair is not in focus;
	now the attention of the player is "Yourself".

Instead of talking about your hair:
	say "You see no reason to draw attention to your follicular deficiencies.".

The couch is a clue in the hotel lounge. Understand "sofa" and "leather" as the couch. The description of the couch is "A black leather couch. It looks pleasant enough, but you can't afford to relax right now."

The meddling of the couch is "You see no reason to mess with the couch."

Instead of entering the couch, say "You can't afford to relax right now; you need to solve the case. Anyway, there is no room."

To say James Name:
	say "[if the revolver is revealed]Brian[otherwise]James[end if]".
	
To say James Last Name:
	say "[if the revolver is revealed]Holmes[otherwise]Garfield[end if]".

Instead of talking about the couch for the first time:
	say "'I noticed that the lounge contained what seemed to be a very expensive leather couch. The hotel appeared to be doing very well.'
	
'It is,' says [James Name]. 'I have managed to attract a very affluent clientele.'"

The table is a clue in the hotel lounge. Understand "mahogany" and "couch table" as the table. The description of the table is "The table is made of dark red mahogany. It looks expensive, but no one is using it at the moment." The meddling of the table is "Why mess with the furniture?"

Instead of talking about the table for the first time:
	say "'I couldn't help but notice that no one seemed to be using the couch table.'
	
This provokes no response from your audience. Perhaps you should try talking about some more personal objects."
	
The Grandfather Clock is a clue in the Hotel Lounge. The description of the clock is "The clock is almost taller than you. An intricate system of brass and steel wheels, and gears is visible through the glass case in the front.". The meddling of the grandfather clock is "You are afraid you might ruin it."

Instead of talking about the clock for the first time:
	say "'The ticking of the clock helped stimulate my neurons. The lounge was the ideal environment for doing my thinking.'".

The gears are a clue in the hotel lounge. Understand "brass", "steel", "intricate", "system", "clock case" and "wheels" as the gears. The description of the gears is "You don't know much about clocks, but it seems very sophisticated.". The meddling of the gears is "Heavens, no. You are a detective, not a watchmaker."

Instead of talking about the gears for the first time:
	say "'Building a case is a lot like designing a clock. All the gears must fit together.'
	
'What a nice simile,' says Shane. 'I must use that in one of my books someday.'".

The reclining chair is a clue in the hotel lounge. Understand "backrest" and "back rest" as the reclining chair. The description of the reclining chair is "Von Carstein is relaxing in the brown leather chair. The backrest is tilted almost all the way back." The meddling of the reclining chair is "It would be nice to relax in the chair, but it will have to wait."

Instead of talking about the reclining chair when heinrichs beard is in the hotel lounge for the first time:
	say "'I had noticed that the Count seemed very comfortable in the reclining chair. Unlike everyone else, he did not appear nervous or tense at all.'
	
The Count sips his glass again. 'I see no reason to be tense. I have nothing to fear. Why would I want to kill the colonel?'

You raise your finger. 'Why indeed...'";
	now the mention of Heinrich is "The Count is relaxing in the comfy chair, sipping a glass of [if the wine is revealed]juice[otherwise]wine[end if].".
	
Instead of talking about the reclining chair when heinrichs beard is not in the hotel lounge for the first time:
	say "'The disinterested Count was an act all along. The real person behind the beard had been paying close attention to everything.'

'I suppose there is no point in pretending anymore,' says Sylvester while taking notes in his pad. 'I am going to write an article about this when we are all done; I intend to get all the details.'".

Chapter 2 - People

Section 1 - James

James Garfield is a person in the Hotel Lounge. Understand "Brian" and "Holmes" as James. The description of James is "His impeccable business suit stands in stark contrast to his unruly hair and full beard. He seems perpetually stressed out from running the hotel by himself, but things seem to have worked out for him so far. The Seafront Hotel has made itself a reputation as a place of respite, and many important people come here for relaxation.".

The mention of james is "James Garfield, owner of the Seafront Hotel, is standing by the clock, watching you expectantly.".
	
James's motive is a tobject. Understand "motives" and "James/Jamess/James'/Jame's/Brians/Brian/Brians'/Brian's/Garfield/Garfields/Garfield's motive"as James's motive.

Instead of talking about James's motive:
	say "'I considered Monsieur Garfield[']s motive. In the days before the colonel's murder, several witnesses overheard the two men arguing furiously. Monsieur Garfield insists that the colonel was simply impossible to please. I knew that Mr. Garfield had often complained of the stress of running the hotel. Was it possible that he had snapped during a later argument? It seemed almost too simple.'
  	
James sneers. 'Of course it is. If you really think I would murder a man over a simple disagreement then your reputation has been severely exaggerated.'

You nod politely. 'As part of my investigation, I consider every option, Monsieur.'";
	remove James's motive from play.
	
James's alibi is a tobject. Understand "alibis" and "James/Jamess/James'/Jame's/Brians/Brian/Brians'/Brian's/Garfield/Garfields/Garfield's alibi" as James's alibi. 

Instead of talking about James's alibi:
	say "[if the murder details are unrevealed]'Mr. Garfield's alibi seemed to exclude him from the list of possible suspects. The colonel's pocket watch had stopped at 02:30 when he was stabbed. Doctor Mole confirmed the time of death. 

[otherwise]'[end if]At 02:35 James Garfield was awoken by his employee, Mr. Allington, who informed him that Miss Pearson had had a terrible nightmare and had requested some medication to help her sleep. It is highly unlikely that Mr. Garfield could have sprinted back to his room after committing the murder, washed off the blood, changed into his pajamas and gotten into bed. No, if Mr. Garfield had committed the murder, the doctor was either wrong about the time of death, or Mr. Allington was in on it.'

Jonathan Allington raises an eyebrow.";
	now the murder details are revealed;
	remove James's alibi from play.
	
JamesTalk is a tobject.
	
Instead of talking about JamesTalk:
	say "'Mr. Garfield did not seem to have any connection to the victim. He had been running the hotel by himself since his wife died two years ago. Before starting the hotel, he was a lieutenant in the British Army. None of this information seemed to be of any use at first, but my investigation was incomplete.'";
	remove JamesTalk from play.

Instead of talking about James when JamesTalk is enclosed by the Hotel Lounge:
	try talking about JamesTalk.
	
JamesTopics is a tobject in the Hotel Lounge. James's motive, James's alibi and JamesTalk are parts of JamesTopics.
	
James hair is a clue in the Hotel Lounge. Understand "James's/James' hair", "garfield's hair", "garfields hair", "garfield's hair", "Brians hair", "Brian's hair", "Holmes's/Holmes' hair" and "Holmes hair" as James hair. The description of James hair is "A tangled mess of grey and black, his hair doesn't seem like it has ever been intimate with a comb." The meddling of the hair is "You see no reason to mess with his hair." The printed name of James hair is "[James name]'s hair".

To reset tobject focus:
	repeat with the current topic running through tobjects:
		now the current topic is not in focus;

Before examining or talking about James:
	now James Hair is in focus;
	now James beard is in focus;
	now heinrichs beard is not in focus;
	now Heinrichs hair is not in focus;
	now Shanes hair is not in focus;
	now your hair is not in focus;
	reset tobject focus;
	now James's motive is in focus;
	now James's alibi is in focus;
	now Brian's motive is in focus;
	now the pocket is in focus;
	now the dark trousers are not in focus;
	now the attention of the player is "[James Name]".
	
Instead of talking about the hair when the revolver is not revealed for the first time:
	say "'Mr. Garfield's hairstyle aroused my curiosity. It seemed strange that a man, who would expend that much effort to look nice, wouldn't even bother getting a proper haircut.'
	
James looks slightly apologetic. 'What can I say; I just don't care much about hair, I suppose.'".

Instead of taking the hair for the first time:
	say "'Why would Monsieur [James Last Name] not even bother to groom his hair properly? There was only explanation. He was wearing a wig!'
	
You grab his hair and pull as hard as you can, but to no avail. It doesn't come off. Well, not all of it.

'What the hell are you doing?' he yells, his face turning red. 'Get away from me, you loon!'

'Calm down Monsieur. I am merely trying to shake the murderer out of his complacency. All will be revealed in due time.'";
	increase the hairpull counter by one.

James beard is a clue in the hotel lounge. Understand "James's/James'/James/Brian/Brian's/Brians/Holmes/Holmes'/Holmes's beard" and "full beard" as James beard. The description of James beard is "A few grey and white hairs have begun to show themselves among the black, but otherwise it looks nice and well groomed." The meddling of the beard is "Why would you want to do that?" The printed name of James beard is "James's beard".

Instead of talking about James beard when the revolver is not revealed for the first time:
	say "'It seemed strange that Mr. Garfield would bother to take care of a full beard, considering the disregard he showed for his hairstyle. Was it possible that he was deliberately trying to look differently?'
	
James laughs nervously. 'I hope you are not suggesting I am trying to hide some kind of secret identity, Mr. Germain. I just think the beard looks good on me.'";
	now the mention of James is "James Garfield is stroking his beard.".
	
Instead of taking James beard for the first time:
	say "'Why would Monsieur [James Last Name] bother to maintain a full beard? There was only one explanation. It was fake!'

You grap his beard and pull as hard as you can. [James name] roars in pain. If this is fake, he must have used glue.

'What the hell are you doing? My beard isn't fake.'

'I am aware of that, Monsieur [James Last Name]. This was merely a diversion to distract the murderer. If you will just be patient, everything will become clear.'";
	increase the hairpull counter by one.

Instead of talking about James beard when the revolver is revealed for the first time:
	say "'All the little pieces were starting to fit together. It now seemed clear that Mr. Holmes had grown his beard to hide his identity.'
	
'It's a common trick,' says Brian. 'A good beard can make a face look completely different.'"
	
The business suit is a clue in the hotel lounge. The description of the suit is "A business suit that fits him like a glove. There is a bump in the right pocket of his pants." The meddling of the suit is "You don't believe James would appreciate that."

Instead of talking about the suit for the first time:
	say "'I noticed that [James Name] was wearing a very nice business suit. He seemed like the consummate professional.'
	
'Thanks,' says [James Name]. 'I think it is important to make a good impression on the customers.'".

The pocket is a clue in the hotel lounge. Understand "bump", "pants" and "trousers" as the pocket. The description of the pocket is "James seems to be carrying something in the right pocket of his pants." The meddling of the pocket is "Putting your hands in his pocket would be crossing a line, don't you think?"

Instead of talking about the pocket for the first time:
	say "'I quickly noticed that Mr. Garfield seemed to be carrying something in his pocket. Unusual, since fashion dictates that one should not carry large items in the pockets of a suit. It ruins the look.'

Mr. Garfield seems embarrassed. 'Well, it seems you have discovered my little secret, Mr. German.'

'Germain. Yes, I have. Perhaps you would like to show the others what it is you are carrying, Monsieur Garfield?'

'I suppose I might as well, since you have obviously worked it out already.' He puts his hand in his pocket and produces a gleaming .38 revolver.";
	display the Figure of Revolver;
	set the description of the business suit to "A business suit that fits him like a glove. ";
	now the revolver is in the hotel lounge.
	
The revolver is a clue. Understand "38", "gun" and "revolver" as the revolver. The description of the revolver is "A .38 revolver. It seems to be loaded.". The meddling of the revolver is "There is no need to mess with James's revolver. He doesn't seem to be a threat."

Instead of talking about the revolver for the first time:
	say "'Based on the shape of the object in Mr. Garfield's pocket, I quickly deduced that he was carrying a firearm. This was an interesting fact. Why would a peaceful hotel owner feel the need to be armed?'

'You don't have to play with me any longer, Mr. Germain,' says James. 'You know very well I was not always just a hotel owner.'

'My apologies, Monsieur,' you say. 'But people need to understand how I reached my conclusions. Perhaps you would like to fill in the details yourself?'

He pauses for a moment, and then shrugs. 'I suppose I might as well. Operation Low Profile seems to be FUBAR anyway. My real name is Brian Holmes. During the war I worked for the Secret Service doing Special Ops behind enemy lines; the colonel was in my unit. When he was killed, I feared our enemies had finally caught up with us. So, naturally, I armed myself.'";
	set the description of James to "The man you used to know as James Garfield. He looks much the same as he did before, but there is now a shrewd look in his eyes.";
	now the mention of James is "Brian Holmes, the former secret agent, is standing by the clock.";
	remove the pocket from play;
	now James is suspicious;
	Remove JamesTopics from play;
	remove The Colonel from play;
	now BrianTopics is in the Hotel Lounge.
	
The War is a tobject. Understand "Spy", "MI6", "Intelligence", "Secret Service" and "German" as The War.

Instead of talking about The War:
	say 	"'Once I realized that Mr. Garfield was not who he seemed to be, I quickly determined his true identity. The fact that he had worked with the colonel during the war changed everything. It now seemed likely that the colonel's untimely death was related to his clandestine career.'

'How on earth did you discover these things?' says Brian. 'Those records are still classified.'

'I have my methods, Monsieur,' you say, while tapping your finger against the side of your head. 'I observe everything, and what I cannot observe I deduce. Please allow me to finish my account and everything will soon become clear.'

Everyone will hopefully have forgotten about this by the time you are done.";
	remove The War from play.

Instead of talking about James when The War is enclosed by the Hotel Lounge:
	try talking about The War.
	
Brian's motive is a tobject.  Understand "motives" and "James/James/James'/James's/Brians/Brian/Brians'/Holmes/Holmes'/Holmes's motive"as Brian's motive.

Instead of talking about Brian's motive:
	say "'Discovering the true identity of Brian Holmes shed new light on his possible motive. He had worked with the colonel during the war. Was it possible that there might have been some disagreement between them?'

Brian is outraged. 'This is ridiculous. John McClaren was like a brother to me. Yes, we made enemies during the war, but we would both have died for the other if necessary.'";
	remove Brian's motive from play.
	
BrianTopics is a tobject. The War and Brian's motive are parts of BrianTopics.
	
Instead of accusing James when James is suspicious:
	say "'All the pieces finally came together. Brian Holmes had killed his former friend because he disagreed with his methods. Alas, how quickly friendship can turn to enmity. Constable Goodfellow, would you be so kind as to arrest the murderer?'

As Brian is handcuffed he sneers at you. 'This is ridiculous. You have no proof whatsoever. I still have friends in the service.'

You twirl your moustache. 'It is over, Monsieur. Once the police start looking into your past, they will soon find the evidence they need to convict you.'

They don't, and Brian Holmes is soon released. It makes no difference, though. Everyone still believes he is guilty. After all, who would doubt the word of the world's greatest detective? The hotel shuts down, and a year later the former hotel owner is found hanging from the ceiling of his office.";
	end the story saying "[Reputation End]".
	

Section 2 - Jonathan

Jonathan Allington is a person in the Hotel Lounge. Understand "Jonatan" and "jon" as jonathan. The description of Jonathan is "He is dressed in a tuxedo with a black bow tie. Unlike everyone else, his face betrays no curiosity, nor any other feelings. The only remarkable thing about him is his unusually long nose."

The mention of Jonathan is "Jonathan Allington stands next to his employer. His face reveals no emotion."

Jonathan can be nosy. Jonathan is not nosy.

Jonathan can be loving. Jonathan is not loving.
	
JonathanComments is a tobject.

Instead of talking about JonathanComments:
	say "'Jonathan Allington seemed like an inconspicuous waiter, but this did not stop me from from considering him as a suspect. Servants are often ignored, and savvy criminals have managed to exploit this fact.'";
	remove JonathanComments from play.
	
Instead of talking about Jonathan when JonathanComments are enclosed by the Hotel Lounge:
	try talking about JonathanComments.
	
Jonathan's motive is a tobject. Understand "motives", and "Jonathan/Jonathans/Allington/Allingtons/Allington's motive" as Jonathan's motive.

Instead of talking about Jonathan's motive:
	say "'Monsieur Allington did not appear to have any motive for killing the colonel. However, I knew that the colonel had frequently complained about the hotel. Was it possible that the waiter might have taken that personally? A petty reason for murder, to be sure, but I have learned that human nature can be very petty indeed.'";
	remove Jonathan's motive from play.
	
Jonathan's alibi is a tobject. Understand "alibis", and "Jonathan/Jonathans/Allington/Allingtons/Allington's alibi" as Jonathan's alibi.

Instead of talking about Jonathan's alibi:
	say "'Several people saw Mr. Allington at the time when the murder was allegedly committed. [if the murder details are unrevealed]I knew that the time of death must have been around 02:30, since the colonel's pocket watch had stopped at that time. Doctor Mole has also confirmed this as the probable time of death. At around this time[otherwise]At around 02:30[end if] Jonathan heard screaming from the room of Shane Pearson and went to investigate. It turned out she was having a nightmare. Afterwards, he went to his employer and told him what had happened. Both parties have confirmed this story.'";
	now the murder details are revealed;
	remove Jonathan's alibi from play.
	
TuxMotive is a tobject. Understand "motives" and "Jonathan/Jonathan's/Jonathans/Allington/Allingtons/Allington's motive" as TuxMotive. The printed name of TuxMotive is "Jonathan's motive."

Instead of talking about TuxMotive:
	say "'Monsieur Allington had started working at the hotel mere weeks before the murder. This seemed too unlikely to be a coincidence. Was it possible that he had taken the job to get closer to the victim?'

'Absurd,' says Jonathan. 'I took the job because I needed work and this place was highly recommended. That's all there is to it.'

But there is a hint of fear in his voice.";
	remove TuxMotive from play.

JonathanTopics is a tobject in the Hotel Lounge. JonathanComments, Jonathan's motive and Jonathan's alibi are parts of JonathanTopics.
	
The Tuxedo is a clue in the hotel lounge. Understand "tux" as the tuxedo. The description of the tuxedo is "The tuxedo is spotless. It seems brand new."

The meddling of the tuxedo is "You don't believe Jonathan would appreciate that."

Instead of talking about the tuxedo when jonathan is not nosy for the first time:
	say "'I had noticed that Mr. Allington was wearing a brand new tuxedo. Almost as if he was trying to make an impression on someone...'

Jonathan interrupts you. 'Of course I am trying to make a good impression. I just got this job two weeks ago, and you never get a second chance to make a first impression.'

You raise your finger. 'That's what I thought, Monsieur. Once I realized that Jonathan had only worked at the hotel for a short time I started thinking. Was it possible that he had taken the job to be close to the victim?'

There is no reaction from Jonathan this time. Too bad; you had hoped you could provoke him into revealing some more information.";
	now the mention of Jonathan is "Jonathan Allington stands next to his employer, wearing his brand new tuxedo. His face reveals no emotion.";
	remove Jonathan's motive from play;
	now TuxMotive is part of JonathanTopics.
	
Instead of talking about the tuxedo when jonathan is nosy for the first time:
	say "'After I had learned that Jonathan was the son of the colonel, I turned my attention to his impeccable tuxedo. Was he perhaps trying to impress his father?'
	
'Eh, no,' says Jonathan. 'I am just trying to look professional.'".
	
The bow tie is a clue in the hotel lounge. Understand "bowtie" as the bow tie. The description of the bow tie is "Jonathan's black bow tie is tied perfectly." The meddling of the bow tie is "It is a bit too formal for your taste."

Instead of talking about the bow tie for the first time:
	say "'Jonathan's bow tie was perfectly tied. He clearly had a lot of experience with formal clothing.'
	
'Of course,' says Jonathan. 'I have been working at many fine hotels. It becomes routine after a while.'".
	
Jonathans hands are a clue. Understand "hand" and "Jonathan's/Jonathan/Jonathans/Allington/Allingtons/Allington's hand/hands" as jonathans hands. The description of jonathans hands is "You notice several small wounds where the skin has been scraped off, as if he had been scrubbing his hands too hard." The meddling of the hands are "Jonathan would probably not appreciate it." The printed name of Jonathans hands is "Jonathan's hands".

Instead of talking about jonathans hands when the wounds are unrevealed for the first time:
	say "'Jonathan would often fiddle with his hands. I wondered if he was trying to hide something.'
	
'I have no idea what you are talking about,' says Jonathan."

Instead of talking about jonathans hands when the wounds are revealed for the first time:
	say "'Jonathan had clearly been trying to hide the wounds on his hands, but nothing escapes the attention of Antoine Saint Germain.'"

The wounds are a clue. Understand "wound" and "skin" as the wounds. The description of the wounds is "He seems to have been scrubbing his hands much too hard. They look like they have been bleeding recently." The meddling of the wounds are "They seem pretty sore."

Instead of talking about the wounds for the first time:
		say "[If the finger is revealed]'A person's hands can tell more about them than they would like. Miss Pearson's hands told me that she was engaged. Mr. Allington's told a different story.[otherwise]'[end if][line break]I noticed that Mr. Allington's hands were bruised, as if he had been scrubbing too hard or too long. What might he have been trying to hide?'[if the finger is unrevealed][line break]
Jonathan seems uncomfortable. 'Sir, as a waiter I need to keep my hands impeccably clean. I may have overdone it this time, but that is not a crime.'[end if]".

Jonathans face is a clue in the Hotel Lounge. Understand "Jonathan's face" as Jonathans face. The description of Jonathans face is "Completely expressionless. Jonathan seems remarkably good at keeping his thoughts and feelings to himself." The meddling of Jonathans face is "Are you kidding?" The printed name of Jonathans face is "Jonathan's face".

To set the focus on Jonathan:
	reset tobject focus;
	now jonathans hands are in focus;
	now shanes hands are not in focus;
	now Jonathans face is in focus;
	now Jonathan's alibi is in focus;
	now Jonathan's motive is in focus;
	now TuxMotive is in focus;
	now JonathanClimaxAlibi is in focus;
	now JonathanNoseMotive is in focus;
	now the attention of the player is "Jonathan".	

After examining Jonathan during the lovers:
	now jonathans hands are in the hotel lounge;
	now the wounds are in the hotel lounge.
	
Before examining or talking about Jonathan:
	set the focus on Jonathan.

JonathanClimaxAlibi is a tobject. Understand "alibi", "alibis" and "Jonathan/Jonathan's/Jonathans alibi" as JonathanClimaxAlibi. The printed name of JonathanClimaxAlibi is "Jonathan's alibi"

Instead of talking about JonathanClimaxAlibi:
	say "'Figuring out that the time of death had been faked changed everything. It now seemed like no one had an alibi for the actual time of the murder. I knew who had stabbed the colonel, but that had been a red herring all along. The true murderer was the one who had given him the cyanide. But it seemed like anyone could have done that.'";
	remove JonathanClimaxAlibi from play.
	
Instead of talking about Jonathan when JonathanClimaxAlibi is enclosed by the Hotel Lounge:
	try talking about JonathanClimaxAlibi.
	
Instead of accusing Jonathan when Jonathan is loving and jonathan is not nosy:
	say "'There was only one possible solution. Jonathan gave the cyanide to the colonel, and then tried to cover up his tracks by interfering with the evidence. Constable, arrest the murderer!'

'This is outrageous,' says Jonathan while being handcuffed. 'Why on earth would I want to kill the colonel?'

You shrug. 'I have better things to do than try to understand the motives of a homicidal maniac. Take him away.'

Jonathan serves a short sentence for interfering with the investigation, but there is not enough evidence to convict him for the murder. Everyone believes he is guilty, though. After all, who would doubt the word of the world's greatest detective? His career is ruined and a year later he is found hanging from the ceiling of his apartment.";
	end the story saying "[Reputation End]".
	
The nose is a clue in the hotel lounge. Understand "Jonathan/Jonathan's/Jonathan's/Allington/Allingtons/Allington's nose" as the nose. The description of the nose is "Jonathan has an unusually long nose. It looks almost like a small beak protruding from his face.". The meddling of the nose is "Somehow, you don't think Jonathan would enjoy that."

After examining Jonathan during the Climax:
	now the nose is in the hotel lounge.
	
Instead of talking about the nose when the research is unrevealed for the first time:
	say "'I noticed that Monsieur Allington had an unusually long nose. It reminded me of someone else.'
	
Jonathan raises an eyebrow. 'And?'

'It looks kinda like the colonel's, doesn't it?' says Doctor Mole. 'But the colonel didn't have any relatives.'

'Exactly my thoughts, Monsieur le Docteur. But I couldn't shake the feeling that it was important somehow...'"
	
Instead of talking about the nose when the research is revealed for the first time :
	say "[if the counter of the nose is one]'Monsieur Allington's long nose drew my attention.'
	
Sylvester gasps. 'Of course. It looks just like the colonel's. I can't believe I never noticed that before.'

[otherwise]'Jonathan's nose looked just like the colonel's. At first, this didn't seem important, but learning that the colonel had an illegitimate son changed everything.'

[end if]'Does nothing ever get past you, Mr. Germain?' says Jonathan. 'Yes, I am the colonel's illegitimate son from the war.'

He sighs. 'I spent years trying to track down my father, but when I finally succeeded I was too afraid to confront him. I took a job at the hotel so I could get to know him a bit before I told him who I was.'

'And why were you so eager to confront him, Monsieur?'

Jonathan looks shocked. 'I hope you are not implying I wanted to kill him. I had no ill will towards my father at all. I just wanted to get to know him and now it is too late.'";
	now the mention of Jonathan is "Jonathan Allington, the illegitimate son of Colonel McClaren, is standing by the wall, his long nose proudly protruding from his face.";
	now the mention of Heinrich is "Sylvester Starfield is staring at Jonathan, while scribbling furiously on a notepad.";
	now Jonathan is nosy;
	remove JonathanTopics from play;
	remove JonathanClimaxAlibi from play;
	remove TuxMotive from play;
	now JonathanNoseMotive is in the Hotel Lounge.
	
JonathanNoseMotive is a tobject. Understand "motives", "motive" and "Jonathan/Jonathan's/Jonathans/Allington/Allingtons/Allington's motive" as Jonathan's motive. The printed name of JonathanNoseMotive is "Jonathan's motive".

Instead of talking about JonathanNoseMotive:
	say "'It was now clear that Jonathan had a motive for the murder. His father had abandoned him. Was it possible that his anger could have driven him to murder? Or perhaps he expected to inherit the colonel's estate after revealing his true identity?'";
	remove JonathanNoseMotive from play.
	
Instead of talking about Jonathan when JonathanNoseMotive is enclosed by the Hotel Lounge:
	try talking about JonathanNoseMotive.
	
Instead of accusing Jonathan when Jonathan is nosy:
	say "'After figuring out that Jonathan was the illegitimate son of the colonel, everything became clear. His anger over being abandoned had driven him to murder. He had killed his own father, and then interfered with the evidence to cover his tracks. Constable, arrest the murderer!'

'This is outrageous,' says Jonathan while being handcuffed. 'Why would I want to kill my father? I just wanted to meet him.'

You shrug. 'I have better things to do than try to understand the motives of a homicidal maniac. Take him away.'

Jonathan serves a short sentence for interfering with the investigation, but there is not enough evidence to convict him for the murder. Everyone believes he is guilty, though. After all, who would doubt the word of the world's greatest detective? His career is ruined and a year later he is found hanging from the ceiling of his apartment.";
	end the story saying "[Reputation End]".
	
Section 3 - Shane

Shane Pearson is a person in the Hotel Lounge. The description of Shane is "Shane Pearson is a tall slender woman with blonde hair that just barely reaches her shoulders. Her book, How Blue Was the Sky, recently hit the best-seller list. What she is doing in England is anyone's guess."

The mention of Shane is "Shane Pearson is sitting on the couch with her legs crossed."

Shanes hair is a clue in the hotel lounge. Understand "Shane's hair" as shanes hair. The description of Shanes hair is "It seems just slightly too blonde to be natural." The meddling of Shanes hair is "That would be pretty rude." The printed name of Shanes hair is "Shane's hair".

Instead of talking about Shanes hair for the first time:
	say "'Mademoiselle Pearson's hair was blonde. Perhaps a bit [italic type]too[roman type] blonde.'
	
Shane rolls her eyes. 'OK, so I dye my hair. I am actually a brunette. Is that really germane to the case?'"

Instead of taking Shanes hair for the first time:
	say "'Shane'ss hair was a bit too blonde to be natural. She was obviously wearing a wig!'
	
You grab Shane's hair and pull as hard as you can. She screams in pain and tumbles from the couch onto the floor. 

'What the hell do you think you are doing?' says Jonathan as he helps her back up. 'Don't you dare assault her like that.'

'Do not worry, Monsieur. I am merely trying to trick the murderer into revealing himself. All will become clear if you will just be patient.'";
	increase the hairpull counter by one;
	now the mention of Shane is "Shane Pearson is sitting on the couch, keeping a close eye on you in case you try something again."

Shanes legs are a clue in the hotel lounge. Understand "Shane's leg/legs" and "leg" as shanes legs. The description of Shanes legs  is "Long and slender.". The meddling of the Shanes legs  is "While it would feel nice to touch her legs, it wouldn't be appropriate." The printed name of Shanes legs is "Shane's legs".

Instead of talking about Shanes legs  for the first time:
	say "'I noticed Shane Pearson's long beautiful legs.'

'Because you are a dirty old man?' says Shane with a raised eyebrow.

'Uh... No, because of the case. I am getting to that.'"

Instead of talking about Shanes legs  for the second time:
	say "'Shane's legs were long and slender. Most men would consider them quite attractive.'
	
'That's quite enough,' says Jonathan. A hint of anger is showing on his face. 'Leave her out of this.'
[if the finger is not revealed]
'I had also noticed that Monsieur Allington seemed very protective of Mademoiselle Pearson. Perhaps their relationship was more intimate than they would like people to know?'

'I have no idea what you are talking about, Mr. Germain. I consider it my duty to defend the honor of a lady.'[line break]
[otherwise][line break]";
	now the mention of Jonathan is "Jonathan Allington is staring angrily at you.";
	set the description of Jonathan to "He is dressed in a tuxedo with a black bow tie. He is looking at you like one looks at an annoying insect.".

To set the focus on shane:
	reset tobject focus;
	now Shane's motive is in focus;
	now Shane's alibi is in focus;
	now ShaneLoverAlibi is in focus;
	now Shanes hair is in focus;
	now james hair is not in focus;
	now Heinrichs hair is not in focus;
	now shanes hands are in focus;
	now jonathans hands are not in focus;
	now your hair is not in focus;
	now the finger is in focus;
	now the chequered band is not in focus;
	now shanes hands are in focus;
	now jonathans hands are not in focus;
	now the attention of the player is "Shane".

Before examining or talking about Shane:
	set the focus on Shane.
	
ShaneComments is a tobject.

Instead of talking about ShaneComments:
	say "'I investigated Mademoiselle Pearson. There did not seem to be anything suspicious about her. She had recently achieved a minor hit with her newest novel and had now gone to England on vacation. It seemed highly unlikely that she could have known the victim.'";
	remove ShaneComments from play.
	
Instead of talking about Shane when ShaneComments is enclosed by the Hotel Lounge:
	try talking about ShaneComments.
	
Shane's motive is a tobject. Understand "motives" and "Shane/Shanes/Pearson/Pearsons/Pearson's motive" as Shane's motive.

Instead of talking about Shane's motive:
	say "'Shane Pearson did not appear to have any motive for the crime, but Monsieur Saint Germain is never deceived by appearances. She is a writer, and a writer is always looking for new inspiration. Perhaps she had decided to take her research a step too far.'

'I don't write crime novels,' says Shane. 'I always found the genre rather tawdry.'";
	remove Shane's motive from play.
	
Shane's Alibi is a tobject. Understand "alibis" and "Shane/Shanes/Pearson/Pearsons/Pearson's alibi" as Shane's alibi.

Instead of talking about Shane's alibi:
	say "'[if the murder details are unrevealed]I knew that the murder had occurred at around 02:30, since the colonel's pocket watch had stopped at that exact time when he was stabbed. Doctor Mole had confirmed the time of death. Around this time[otherwise]At around 02:30[end if] Mademoiselle Pearson was awoken by Jonathan Allington who told her she had been screaming. Apparently, she had been having a bad nightmare. There did not seem to be any way she could have committed the murder, unless she was working with Jonathan.'";
	now the murder details are revealed;
	remove Shane's alibi from play.
	
ShaneTopics is a tobject in the Hotel Lounge. ShaneComments, Shane's motive and Shane's alibi are parts of ShaneTopics.	
	
ShaneLoverAlibi is a tobject. Understand "alibi", "alibis" and "Shane's/Shane/Shanes/Pearson/Pearsons/Pearson's alibi" as ShaneLoverAlibi. The printed name of ShaneLoverAlibi is "Shane's alibi".

Instead of talking about ShaneLoverAlibi:
	say "'The case was starting to unravel. The doctor had seen Shane Pearson run from the scene of the crime around the time of the murder. However, Mr. Allington claimed that Mademoiselle Pearson was fast asleep at that time.'

'Just stop, Monsieur Germain,' says Shane. 'You don't have to say any more. It was foolish of me to try to hide the truth in the first place. I should have known that no one can hide anything from you. '

'Yes, you should, Mademoiselle,' you reply. 'I am, however, used to people underestimating me. I believe it is in your own best interest to come clean.'

Shane sits up straight in the chair. Her casual, confident demeanor is gone and she suddenly seems very tired. 'I did go down to the library at around midnight because I couldn't sleep. I thought I would read for a while until I got tired again, but I never got the chance. All of a sudden, the colonel came running towards me from behind one of the shelves. I grabbed a knife from one of the tables and told him to keep away from me, but it was as if he was possessed. He just kept coming, until he impaled himself on the knife. It was horrible. I panicked and ran back to my bedroom.'

'Why did you not just come clean then?' you ask. 'If everything happened as you said you were clearly not to blame.'

Shane shrugs. 'I sat in my bed for a long time considering it, but I must have fallen asleep; I was awoken by Jonathan who told me I had been having a nightmare. For some reason, the doctor estimated the time of death to the time where Jonathan woke me up, so all of a sudden I had an alibi. When I learned this, I just decided to keep quiet and wait for the whole thing to blow over. Confessing wouldn't bring the poor colonel back, after all.'";
	remove ShaneLoverAlibi from play.
	
Instead of talking about Shane when ShaneLoverAlibi is enclosed by the Hotel Lounge:
	try talking about ShaneLoverAlibi.
	
Instead of accusing Shane when Shane is suspicious:
	say "'The case was solved. Shane Pearson had stabbed the colonel in what she believed to be self-defense. Why the colonel attacked her, we may never know. Constable, arrest the murderess.'

Shane Pearson gets a light sentence since the killing wasn't premeditated. Soon afterwards, her books start selling like hotcakes. There are still plenty of loose ends in the case, but you found the murderer and that's all anyone really cares about.

You know you are missing something, though; some detail that would make sense of the whole case. It's too late to find it now.";
	end the story saying "[Reputation End]".

Shanes hands are a clue. Understand "Shane's hand/hands" and "hand" as shanes hands. The description of shanes hands are "You notice a light band around her ring finger.". The meddling of shanes hands are "That would be impolite." The printed name of Shanes hands is "Shane's hands".

Instead of talking about shanes hands when the finger is unrevealed for the first time:
	say "'Shane would often rest her head in her hands when she was upset or nervous. I notice that you are doing it right now, Mademoiselle.'
	
'Can you blame me?'"

After examining Shane during the lovers:
	now shanes hands are in the hotel lounge;
	now the finger is in the hotel lounge.

The finger is a clue. Understand "Shane's finger/fingers", "finger", "ring", "band" and "light band" as the finger. The description of the finger is "There is a light band around her finger, as if she had been wearing a ring while outside in the sun.". The meddling of the finger is "That would be impolite."

Instead of talking about the finger for the first time:
	say "'It was then that I noticed something peculiar about Miss Pearson's hands. It looked like she had been wearing a ring, which she had subsequently taken off. The light band on the finger indicated that she had been wearing it for a while; probably an engagement ring. People do not usually take off their engagement rings, so why would she do that?'

'Nothing escapes your attention, does it, Monsieur Germain?' says Shane. 'I suppose I might as well admit that I am engaged to Jonathan.'

Jonathan nods. 'We have been together for three months. We had hoped to keep our relationship private until we got married, but that idea doesn't seem realistic anymore.'";
	remove JonathanComments from play;
	now the mention of Jonathan is "Jonathan Allington is leaning against the wall, watching Shane Pearson with a tender look in his eyes.".

Section 4 - Elias

Elias Mole is a person in the Hotel Lounge. Understand "doctor" and "dr" as Elias. The description of Elias is "Elias Mole is a handsome young doctor. Recently graduated from medical school, he has just opened his own practice in London. He is wearing a light blue button-up shirt and a pair of dark trousers."

The mention of Elias is "Doctor Elias Mole is sitting next to Shane on the couch, leaning forward with an inquisitive look in his eyes."

Elias can be slapped or unslapped. Elias is unslapped.
	
EliasComments is a tobject.

Instead of talking about EliasComments:
	say "'I turned my attention to the young doctor. He was the one who had examined John McClaren. According to his examinations, the poor colonel had been first sedated with opium in his wine, and then stabbed three times with a knife. All fingerprints had been wiped from the knife after the grisly deed was done. His pocket watch had apparently been struck by the knife and had stopped at 02:30. The doctor's examinations confirmed that time of death could have occurred at that hour. The doctor himself had no alibi for the time of the murder.'";
	now the murder details are revealed;
	remove EliasComments from play.
	
Instead of talking about Elias when EliasComments are enclosed by the Hotel Lounge:
	try talking about EliasComments.
	
Elias's motive is a tobject. Understand "motives" and "Elias/Elias'/Mole/Moles/Mole's/Doctor/Doctor's/Doctor motive" as Elias's motive.

Instead of talking about Elias's motive:
	say "'The doctor did not at first seem to be a likely suspect. He was successful and had nothing to gain from the death of the colonel.'";
	remove Elias's motive from play.
	
Elias's alibi is a tobject. Understand "alibis" and "Elias/Elias'/Mole/Moles/Mole's/Doctor/Doctor's/Doctor  alibi" as Elias's alibi.

Instead of talking about Elias's alibi:
	say "'The doctor had no alibi for the time of the murder. If he was the murderer, it would have been easy for him to simply estimate the time of death at a time where he couldn't possibly have been there.'";
	remove Elias's alibi from play.
	
EliasTopics is a tobject in the Hotel Lounge. EliasComments, Elias's motive and Elias's alibi are parts of EliasTopics.

Before examining or talking about Elias:
	reset tobject focus;
	now Elias's motive is in focus;
	now Elias's alibi is in focus;
	now the pocket is not in focus;
	now the dark trousers are in focus; 
	now the attention of the player is "Elias".
	
The shirt is a clue in the hotel lounge. The description of the shirt is "A light blue casual shirt.". The meddling of the shirt is "You don't believe the doctor would want you to mess with his shirt."

Instead of talking about the shirt when Slapsgiving is not happening for the first time:
	say "'Doctor Mole was wearing a very nice blue shirt. He seemed like a man with good dress sense.'
	
'Thank you,' says the doctor. 'I have found that a good shirt goes with most occasions.'"

Instead of talking about the shirt when the counter of the shirt is one during Slapsgiving:
	say "'It was a nice shirt. A very nice shirt. But that just made that one imperfection stand out even more.'
	
Doctor Mole sobs."

The stain is a clue. The description of the stain is "It seems like someone has attempted to remove a stain from the shirt, with only partial success." The meddling of the stain is "It is not your job to clean the doctor's clothes."

Instead of talking about the stain for the first time during the Doctor:
	say "'A new breakthrough occurred when I noticed the stain on Doctor Mole's shirt.'

Everyone looks at the doctor. 

'I ... Um... Have no idea what you are talking about,' he says.

'It is no use denying it, doctor,' you continue. 'An ordinary person would no doubt have missed it, but I see everything. You have clearly attempted to remove a stain from your shirt quite recently.'

'You are right,' he says. 'I did, in fact, get a bloodstain on my shirt when examining the colonel. This is my favorite shirt, so I cleaned it very thoroughly. I didn't realize the stain was still visible.'"

Instead of talking about the stain when the counter of the stain is one during Slapsgiving:
	say "'Doctor Mole had done a good job trying to remove the stain, but not good enough to fool Antoine Saint Germain!'
	
This provokes no reaction from the doctor.".

The paperback is a clue. Understand "book", "how blue" and "how blue was the sky" as the paperback. The description of the paperback is "How Blue Was the Sky by Shane Pearson.". The meddling of the paperback is "The doctor seems very fond of it."

Instead of talking about the paperback for the first time during the Doctor:
	say "'I noticed that the doctor was reading a book by Shane Pearson. Was he simply an ordinary fan or was there a connection between them?'

The doctor nods enthusiastically. 'I am a huge fan of Miss Pearson. How Blue Was the Sky is one of the most moving books I have ever read.'"

Instead of talking about the paperback when the counter of the paperback is one during Slapsgiving:
	say "'I now knew that Doctor Mole was a fan of Shane Pearson. This put the case in a whole new light.'
	
Doctor Mole keeps sobbing in his hands. He doesn't seem to have heard what you said at all."

The dark trousers is a clue in the hotel lounge. Understand "pants" as the trousers. The description of the dark trousers is "Casual dark trousers. You don't notice anything interesting about them." The meddling of the trousers is "Why mess with another man's pants?"

Instead of talking about the trousers when Slapsgiving is not happening for the first time:
	say "'I noticed that Doctor Mole was wearing a pair of dark trousers.'
	
'Yes,' says the doctor. 'I have found that wearing trousers is often a good idea.'".

Instead of talking about the trousers when the counter of the trousers is one during Slapsgiving:
	say "'The doctor's casual trousers made me think. Why would a successful doctor dress so casually?'
	
He doesn't even seem to be aware of your existence."
	
EliasProvoke is a tobject.

Instead of talking about Elias when EliasProvoke is enclosed by the Hotel Lounge:
	say 	"'The doctor was not a hardened criminal. I knew he would most likely break down as soon as he realized I was on to him. My prediction has proved true.'

The doctor keeps sobbing.

'Allow me to explain how I deduced that the doctor had to be involved with the murder...'

There is still no response from the doctor. Dammit. If only you could make him snap out of it somehow.";
	remove EliasProvoke from play.

Instead of accusing Elias when Elias is suspicious:
	say "'I knew the doctor was not a hardened murderer. Once he realized I knew everything, he would no doubt break down and confess. As you can all plainly see, my predictions proved true. Constable, take him away.'
  	
As the doctor is handcuffed, he looks at you with uncomprehending eyes. 'Wait... No... That's not what I meant. I am not a murderer.'
  
You send him a comforting smile. 'It's okay, doctor. It's all over now. A physical prison will no doubt be an improvement on the prison of guilt you had built for yourself.'
  
There is no real evidence, so the doctor is soon released. Everyone believes he is guilty, though. After all, who would doubt the word of the world's greatest detective? His career is ruined, and a year later he is found hanging from the ceiling of his house.";
	end the story saying "[Reputation End]".
	
Section 5 - Von Carstein

Heinrich Von Carstein is a person in the Hotel Lounge. Understand "Count", "German", "Sylvester" and "Starfield" as Heinrich. The description of Heinrich is "The German Count seems to be in his early sixties. He is relaxing in the reclining chair, sipping a glass of [if the wine is revealed]juice[otherwise]red wine[end if], while watching the proceedings with a slightly bored look. Both his hair and his beard are almost entirely white."

The mention of Heinrich is "Count Heinrich Von Carstein is leaning backwards in the reclining chair, sipping a glass of [if the wine is revealed]juice[otherwise]wine[end if]."

Heinrich's motive is a tobject. Understand "motives" and "Heinrich/Heinrichs/Counts/Count's/Carstein/Carsteins/Carstein's motive" as Heinrich's motive.

HeinrichComments is a tobject.

Instead of talking about Heinrich when HeinrichComments is enclosed by the Hotel Lounge:
	say "'My initial investigations into the Count turned up little of interest. He seemed to be simply a rich member of the German nobility who had decided to take a vacation in England. However, sinister things are often hidden behind a mask of innocence.'";
	remove HeinrichComments from play.

Instead of talking about Heinrich's motive:
	say "'I could detect no conceivable reason why the Count might have wanted to kill the colonel. They had been observed talking together several times, but their relationship seemed amicable.'";
	remove Heinrich's motive from play.
	
Heinrich's alibi is a tobject. Understand "alibis" and "Heinrich/Heinrichs/Counts/Count's/Carstein/Carsteins/Carstein's  alibi" as Heinrich's alibi.

Instead of talking about Heinrich's alibi:
	say "'The Count had no alibi for the time of the murder. He claimed to have been fast asleep, but no one could confirm it. I kept him in mind as a possible suspect, but I still needed a motive.'";
	remove Heinrich's alibi from play.
	
HeinrichTopics is a tobject in the Hotel Lounge. HeinrichComments, Heinrich's motive and Heinrich's alibi are parts of HeinrichTopics.
	
Heinrichs beard is a clue in the hotel lounge. Understand "Heinrich's beard" and "Count's/Counts/Count beard" as heinrichs beard. The description of heinrichs beard is "The Count is regularly scratching his beard, almost as if he weren't used to it." The meddling of heinrichs beard is "You doubt the Count would appreciate that." The printed name of Heinrichs beard is "Heinrich's beard".

Instead of examining heinrichs beard at least twice:
	say "You can't quite put a finger on it, but the beard definitely looks fake."
	
To say Heinrich Name:
	if the beard is in the Hotel Lounge:
		say "Heinrich";
	otherwise:
		say "Sylvester".

Instead of talking about heinrichs beard for the first time:
	say "'I noticed the Count's beard. He did not seem to be used to it, which aroused my curiosity. A full beard takes a while to grow and the Count claimed to have had it for years. Things did not add up.'
	
The Count sips his [if the wine is revealed]juice[otherwise]wine[end if]. 'I don't know what you are trying to say, Herr Germain. Surely you are not implying that my beard is fake?' He laughs."

Instead of talking about heinrichs beard for the second time:
	say "'The Count's beard looked obviously fake to me. Like he was wearing a disguise he wasn't quite used to.'
	
The Count stops scratching his beard. 'I have no idea what you are talking about.'"

Instead of talking about heinrichs beard for the third time:
	say "It doesn't seem like he is going to confess to anything. You might have to take more drastic measures to test your hypothesis."
	
Instead of taking heinrichs beard:
	say "'The Count's beard was obviously fake. Allow me to demonstrate.'
	
Before he can react, you reach out and grab his beard. To your relief, it comes off easily, in a single smooth movement of your hand, revealing the face of a much younger man in his thirties.

The young man sighs. 'Well, it was worth a try. Attempting to pull a fast one on you is obviously futile, Mr. Germain.'

'Indeed, it is,' you say, while tossing the fake beard into a corner. 'You might as well tell us everything yourself, Monsieur.'

'May as well, I guess,' he says. 'My name is Sylvester Starfield. I am an investigative reporter with the London Tribune, currently doing a series of articles on the actions of the intelligence service during the war. While doing research for an article I discovered that Colonel McClaren had been working for the Secret Service. This was simply too good an opportunity to pass up. Unfortunately, I knew that the colonel hated journalists so I concocted what my colleagues call a 'Starfield Scheme' [unicode em dash] I am known for my creative skills, you know. '

'I disguised myself as 'Count von Carstein' and checked into the Seafront Hotel to get close to him. Too bad fate threw a spanner in the works before I had a chance to earn his trust. After the murder, I was stuck in my disguise waiting for the whole thing to blow over. I was afraid if I told people the truth, you would think I was the murderer. I had nothing to do with it, though. I just wanted some information.'";
	display the Figure of Beard;
	set the description of Heinrich to "The old German Count has been replaced by a young man in his thirties. The bored look is gone from his face; he now seems keenly interested in the proceedings. His hair is still white, but you now know for sure he has dyed it. He is busy taking notes on his notepad.";
	now the mention of Heinrich is "Sylvester Starfield, the journalist, is sitting upright in the reclining chair taking notes on a notepad.";
	set the description of the reclining chair to "The backrest is no longer tilted back. Instead of a decadent Count, the chair is now occupied by an inquisitive journalist.";
	remove heinrichs beard from play;
	remove the wine from play;
	now the notepad is in the hotel lounge;
	now the research is in the hotel lounge;
	now Heinrich is suspicious;
	remove HeinrichTopics from play;
	remove The Colonel from play;
	now SylvesterMotive is in the Hotel Lounge.
	
Heinrichs hair is a clue in the hotel lounge. Understand "Heinrich's hair" as Heinrichs hair. The description of Heinrichs hair is "White, with a few specks of brown scattered haphazardly around." The meddling of Heinrichs hair is "Why mess with other people's hair?" The printed name of Heinrichs hair is "Heinrich's hair".

Instead of talking about Heinrichs hair when heinrichs beard is in the hotel lounge for the first time:
	say "'I noticed that the hair of the Count had turned almost entirely white.'
	
'Ja,' says the Count, and sighs. 'I am getting old.'"

Instead of talking about Heinrichs hair when heinrichs beard is not in the hotel lounge for the first time:
	say "'Mr. Starfield's hair color was, of course, as fake as his beard.'
	
'Yeah,' says Sylvester. 'I dyed it to match the beard. I am afraid I can't just pull it off. You are gonna have to deal with it until the color washes out.'"

The wine is a clue in the hotel lounge. Understand "glass", "red", "Fruit juice" and "juice" as the wine. The description of the wine is "[if revealed]Merely a glass of red fruit juice[otherwise]The color of the wine seems slightly lighter than the usual burgundy[end if].". The meddling of the wine is "You don't drink when you are working on a case."

Instead of talking about the wine for the first time:
	say "'The Count was often seen with a glass of red wine, but the color of the wine seemed a little off.'
	
The Count seems embarrassed. 'You are most perceptive, Herr Germain. I am actually drinking fruit juice. I don't really enjoy alcohol very much.'

'But why would the Count drink fruit juice from a wine glass? It was almost as if he wanted to appear more sophisticated than he really was.'";
	now the meddling of the wine is "That would be rude.".

The research is a tobject. Understand "research", "article", "notes", "articles", "information", "London Tribune", "paper", and "newspaper" as the research.

Instead of talking about the research:
	say "'After I learned that Mr. Starfield had been researching the colonel, I investigated his research. What I found put the case in a whole new light.'

'I can imagine that it would,' says Sylvester, to your great relief. 'I discovered some pretty interesting things about the colonel.'

You nod. 'Indeed you did, Monsieur. Would you care to reveal the details to the others?'

'It would be my pleasure,' says Sylvester with a smile. 'First of all, the colonel had no shortage of enemies. He did many shady things during the war, and many people from the losing side would love to even the score. In particular, I found several references to a certain German agent who had sworn revenge.  Unfortunately, I was unable to locate any details about the identity of this agent, or the nature of the grievance. '

'There were also rumors that the colonel had fathered an illegitimate son during the war, but I was unable to find any proof.'

'I was hoping the colonel would be willing to shed some light on these matters, but he kicked the bucket before I had a chance to approach him.'";
		now the research is revealed;
		remove the research from play.

The notepad is a clue. Understand "notebook", "note book", "note", "notes", "pad" and "beige" as the notepad. The description of the notepad is "Sylvester is taking notes on a small beige notepad.". The meddling of the notepad is "It hardly seems like the journalist would appreciate that."

Instead of talking about the notepad when the research is unrevealed:
	try talking about the research.

Instead of talking about the notepad when the research is revealed for the first time:
	say "'As a journalist, Mr. Starfield would of course be carrying a notepad.'
	
'Of course,' says Sylvester. 'I need to make sure I get all the details. This is going to make a great story.'"

Before examining or talking about Heinrich:
	now heinrichs beard is in focus;
	now Heinrichs hair is in focus;
	now James beard is not in focus;
	now James hair is not in focus;
	now Shanes hair is not in focus;
	now your hair is not in focus;
	reset tobject focus;
	now Heinrich's motive is in focus;
	now Heinrich's alibi is in focus;
	now SylvesterMotive is in focus;
	now the attention of the player is "[Heinrich Name]".

SylvesterMotive is a tobject. Understand "motive", "motives" and "Sylvester/Sylvester's/Sylvesters/Heinrich/Heinrichs/Counts/Count's/Carstein/Carsteins/Carstein's  motive" as SylvesterMotive. The printed name of SylvesterMotive is "Sylvester's motive".

Instead of talking about SylvesterMotive:
	say "'After finding out the true identity of Sylvester Starfield, I considered him a viable suspect. Here was a journalist looking for a good story; what better way to get it than to make it himself? A lurid murder would be bound to sell papers.'

'Bollocks,' says Sylvester. 'As a journalist, I report the news; I do not make it. And I am not a murderer.'";
	remove SylvesterMotive from play.
	
Instead of talking about Heinrich when SylvesterMotive is enclosed by the Hotel Lounge:
	try talking about SylvesterMotive.
 	
Instead of accusing Heinrich when Heinrich is suspicious:
	say "'There was no doubt in my mind; Sylvester Starfield had killed the colonel to further his journalistic career. Constable, arrest the murderer!'

'This is ridiculous,' says Sylvester while being handcuffed. 'I will get this into all the papers. The people will know what a hack you are!'

He does, but no one believes him. After all, who would doubt the word of the world's greatest detective? Even though Sylvester Starfield is never convicted, his career is over, and a year later, he is found hanging from the ceiling of his flat. ";
	end the story saying "[Reputation End]"
		
Section 6 - Goodfellow

Constable Goodfellow is a person in the hotel lounge. Understand "Franz", "Lieberheim" and "Lieberhaim" as Goodfellow. The description of Goodfellow is "Constable Goodfellow is a tall, broad man well equipped for the job of apprehending criminals. If only he knew how to find them as well, he might make a good detective. He is impeccably dressed in the uniform of Scotland Yard."

The mention of Goodfellow is "Constable Goodfellow is standing behind you, eagerly waiting to assist you in arresting the murderer."

GoodfellowComments is a tobject.

Instead of talking about GoodfellowComments:
	say "'Once the body had been discovered I phoned Scotland Yard and Constable Goodfellow showed up immediately. Unfortunately, he was unable to discover any clues to the identity of the murderer, leaving it up to me to solve the crime, as usual.'

Constable Goodfellow seems almost tempted to defend himself, but in the end, he just shrugs and keeps quiet. The constables of Scotland Yard have learned to respect your superior intellect.";
	remove GoodfellowComments from play.
	
Instead of talking about Goodfellow when GoodfellowComments are enclosed by the Hotel Lounge:
	try talking about GoodfellowComments.
	
Goodfellow's motive is a tobject. Understand "motives" and "Goodfellow/Goodfellows/Constable/Constable's/Constabless motive" as Goodfellow's motive.

Instead of talking about Goodfellow's motive:
	say "'It hardly seemed likely that Constable Goodfellow had anything to do with the murder, but I always consider every possibility, no matter how unlikely.'";
	remove Goodfellow's motive from play.
	
Goodfellow's alibi is a tobject. Understand "alibis" and "Goodfellow/Goodfellows/Constable/Constable's/Constables alibi" as Goodfellow's alibi.

Instead of talking about Goodfellow's alibi:
	say "'The constable arrived after the murder was committed, so it did not seem like he could have had anything to do with it.'";
	remove Goodfellow's alibi from play.
	
GoodfellowTopics is a tobject in the Hotel Lounge. GoodfellowComments, Goodfellow's motive and Goodfellow's alibi are parts of GoodfellowTopics.

To set the focus on Goodfellow:
	now the chequered band is in focus;
	now the finger is not in focus;
	reset tobject focus;
	now Goodfellow's motive is in focus;
	now Goodfellow's alibi is in focus;
	now the attention of the player is "[if gunplay is happening]Franz[else]Goodfellow".

Before examining or talking about Goodfellow:
	set the focus on Goodfellow.
	
After examining the cap:
	now the chequered band is in focus;
	now the finger is not in focus.

The uniform is a clue in the hotel lounge. Understand "Scotland Yard" as the uniform. The description of the uniform is "The uniform of Scotland Yard consists of a long dark blue trench coat and a peaked cap.". The meddling of the uniform is "Constable Goodfellow seems very proud of his uniform."

Instead of talking about the uniform for the first time:
	say "'Constable Goodfellow looked great in his Scotland Yard uniform.'
	
'Thanks,' says Goodfellow. 'But why are you talking about my uniform? I think everyone is eager to hear who killed the colonel.'"

The coat is a clue in the hotel lounge. Understand "trench" and "trenchcoat" as the coat. The description of the coat is "The dark blue coat of Scotland Yard constables have caused people to dub them 'The boys in blue'. The polished brass buttons gleam in the light of the lamp.". The meddling of the coat is "Constable Goodfellow seems very proud of his coat."

Instead of talking about the coat for the first time:
	say "Constable Goodfellow was wearing the usual Scotland Yard trenchcoat. I wondered if it wasn't too hot to wear it indoors.'
	
'A bit,' says Goodfellow. 'But one must stick to the regulations, you know.'"

The buttons are a clue in the hotel lounge. Understand "Brass", "Gleaming" and "Button" as the buttons. The description of the buttons is "The brass buttons are spotless.". The meddling of the buttons is "It would be a shame to put your greasy hands on those perfectly polished buttons."

Instead of talking about the buttons for the first time:
	say "'The buttons on Constable Goodfellow's uniform [if the cap is revealed]also [end if]aroused my curiosity.'

'Well, we usually wear silver buttons, of course,' says the constable. 'But I had to get here in a hurry.'".

The cap is a clue in the hotel lounge. Understand "peaked" as the cap. The description of the cap is "A black peaked cap with a chequered band around it.". The meddling of the cap is "Your bowler hat is all that you need."

The chequered band is a clue in the hotel lounge.  The description of the chequered band is "A band with a chequered pattern adorns the cap." The meddling of the band is "Why would you want to ruin the constable's hat?"

Instead of talking about the chequered band for the first time, say "'I noticed that the constable's cap was adorned with a chequered band.'

'Yes,' says Goodfellow. 'The pattern is known as Sillitoe Tartan. It is very common among police forces in England. [if the climax is happening]I did a lot of research.'

'Research?'

A pause. 'I mean, I always make sure to wear the right uniform.'[otherwise]'[line break]".

Instead of talking about the cap for the first time:
	say "'I [if the buttons are revealed]also [end if]noticed the constable's cap.'
	
The constable shrugs. 'I should be wearing a bobby helmet, of course, but no one is perfect.'"

The Luger is a clue. Understand "gun", "Franz/Franz's/Franz'/Lieberheim's/Lieberheims/Lieberheim gun/luger" as the Luger. The description of the Luger is "It's a German luger." The meddling of the Luger is "That probably isn't a good idea."

Instead of taking the luger when the luger is not revealed:
	shoot the player.
	
Instead of doing something other than examining, waiting, taking, going, attacking, talking about, saying yes or looking during gunplay ( this is the shooting rule):
	shoot the player.
	
The shooting rule is listed first in the instead rules.
	
At the time when the luger fires:
	shoot the player.
	
To shoot the player:
	say "'Time to die, detective.' He squeezes the trigger; no number of brilliant deductions will stop the bullet from entering your brain.";
	end the story saying "You have died".
	
Instead of talking about the luger for the first time:
	say "'Once I realized that Constable Goodfellow wasn't who he claimed to be, I could not, of course, allow him to be armed. It was a simple matter to ensure that he would be of no danger to anyone.'

His eyes widen. 'You damned Frog! What have you done with my gun?' He furiously examines the gun, trying to determine how it might have been sabotaged.";
	the luger fires in two turns from now.
	
To defeat Franz:
	say "While Franz is distracted, you deftly grab the gun from his hands. He lunges at you, but is quickly overpowered by everyone else.

'I am going to kill you for this, detective,' he shouts while being restrained by his own handcuffs. 'You are only putting off the inevitable.'

'I suspect I will be dead long before you get out of jail, Monsieur,' you reply. 'Mr. Holmes,' you say to the man formerly known as James Garfield, 'would you be so kind as to call the real Scotland Yard? I think they will be delighted to hear that we have managed to arrest the murderer without their help.'";
	now the attention of the player is "Yourself";
	end the story saying "You have solved the case".

Instead of taking the luger when the luger is revealed:
	defeat franz.
	
Instead of attacking Goodfellow during gunplay:
	say "He has a gun pointed right at you.".
	
Instead of attacking Goodfellow when the luger is revealed:
	say "He is distracted. This might be your only chance. You charge him, trying to push him to the ground. Unfortunately, you were always a thinker, not a fighter. Franz throws you to the ground with as much effort as if he was swatting a fly.";
	shoot the player.
	
Instead of talking about Goodfellow when the luger is unrevealed for the first time during gunplay:
	say "'It is over, Herr Lieberheim. I knew all along that you were the killer. You might as well turn yourself over to the police.'
	
He laughs; a coarse derisive laugh. 'You don't fool me, detective. You are going to die and there is nothing you can do about it.'"

Instead of talking about Goodfellow when the luger is revealed for the first time during gunplay:
	say "'Yes, Franz Lieberheim was quite harmless. He thought he was in control of the situation, but I had been two steps ahead of him right from the start.'"
	
Instead of accusing Goodfellow during gunplay (this is the Franz accusation rule):
	say "Hardly seems necessary at this point, does it?"
	
The Franz accusation rule is listed first in the instead rules.

Instead of accusing Goodfellow when gunplay is not happening for the first time:
	say "You have no reason to suspect the constable. You called him yourself."
	
Instead of accusing Goodfellow when gunplay is not happening for the second time:
	say "Did you just watch 'The Mousetrap' or something?"
	
Instead of accusing Goodfellow when gunplay is not happening for the third time:
	say "This isn't going to work, you know."
