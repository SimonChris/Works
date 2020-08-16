"Grief" by Simon Christiansen

The story genre is "Fiction". The release number is 1. The story creation year is 2008.

[The story headline is "Competition release".]

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

Release along with cover art.

Include Conditional Undo by Jesse Mcgrew.

Include Smarter Parser by Aaron Reed.

Test me with "wake up / get up / get keys / w / w / get toys / wake thomas / no / e / s / cook / unlock door with keys / s / drive to work / up / north / thomas, hide under desk / work / s / s / drive home".

Test crash with "wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / go to school / n / n / enter classroom  / s / drive to work / up / n / work / s / s / drive to school / n / pick up thomas / s / drive home".

Test abduction with "wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / go to school / n / thomas, play / s / drive to work / up / n / work / s / s / drive to school / n / talk to officer".

Test burglar with "wake up / get up / get keys / w / s / unlock door / s / drive to work / up / n / work / s / s / drive home / talk to officer".

Test fire with "wake up / get up / get keys / w / s / unlock door / s / close door / lock door / drive to work / up / n / work / s / s / drive home / talk to officer".

Test accident with "wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / thomas, stay / close door / lock door /  drive to work / up / n / work / s / s / drive home /  talk to officer".

Test closet with "wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / drive to work / up / thomas, hide in closet / north / work / s / x thomas".

Test truth with "wake up / get up / get keys / w / w / get toys / wake thomas / no / e / s / cook / unlock door with keys / s / drive to work / up / north / thomas, hide under desk / work / s / s / drive home / restore".

Part 1 - Rules

Understand "look [something]" as examining.

Requesting the walkthrough is an action applying to nothing. Understand "walkthrough" and "walkthru" as requesting the walkthrough. 

Carry out requesting the walkthrough:
	say "'Grief' has several different endings. This walkthrough will describe how to reach each one of them.[line break][line break]";
	say "The Car Crash: 'wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / go to school / n / n / enter classroom  / s / drive to work / up / n / work / s / s / drive to school / n / pick up thomas / s / drive home' [line break][line break]";
	say "The Abduction: 'wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / go to school / n / thomas, play / s / drive to work / up / n / work / s / s / drive to school / n / talk to officer'[line break][line break]";
	say "The Burglar: 'wake up / get up / get keys / w / s / unlock door / s / drive to work / up / n / work / s / s / drive home / talk to officer'[line break][line break]";
	say "The Fire: 'wake up / get up / get keys / w / s / unlock door / s / close door / lock door / drive to work / up / n / work / s / s / drive home / talk to officer'[line break][line break]";
	say "The Accident: 'wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / thomas, stay / close door / lock door /  drive to work / up / n / work / s / s / drive home /  talk to officer'[line break][line break]";
	say "The Broom Closet: 'wake up / get up / get keys / w / w / wake thomas / no / e / s / cook / unlock door with keys / s / drive to work / up / thomas, hide in closet / north / work / s / x thomas[line break][line break]";
	say "Accepting the Truth (the 'real' ending): 'wake up / get up / get keys / w / w / get toys / wake thomas / no / e / s / cook / unlock door with keys / s / drive to work / up / north / thomas, hide under desk / work / s / s / drive home / restore'[line break]".

Requesting information is an action applying to nothing. Understand "info", "about"  and "information" as requesting information.

Carry out requesting information:
	say "'Grief' is a very short game which is intended to be replayed several times. Unlike most interactive fiction it is quite easy to get the game into an unwinnable state. Decisions made early in the game can make some endings impossible to reach. It will probably be necessary to restart several times to reach the final ending.[line break][line break]If you get stuck typing 'HELP' will provide hints on what to do in the current situation. There is often more than one hint available at a given time so if the first hint doesn't help the next one might.[line break][line break]Typing 'WALKTHRU' will provide detailed instructions on how to reach each of the endings.[line break][line break]Lastly, i would like to thank my beta testers: Katzy, Ramona, Wesley Osam, Carl Muckenhoupt and Hakim Cassimally.".

Commenting is an action applying to one topic. Understand "comment [text]", "c [text]", "* [text]", "** [text]" and "*** [text]" as commenting.

When play begins: 
    say "Are you male or female? >"; 
    if men win, now the player is male;
    otherwise now the player is female;
    say "[line break][bold type]First time players should type 'ABOUT' for some basic information about the game.[roman type][line break]".

To decide whether men win: 
    (- Question('male','M//','man','female','F//','woman') -) 


Include (- 


[ Question pos1 pos2 pos3 neg1 neg2 neg3 i; 
    for (::) 
    { if (location == nothing || parent(player) == nothing) read buffer parse; 
        else read buffer parse DrawStatusLine; 
        i=parse-->1; 
        if (i==pos1 or pos2 or pos3) rtrue; 
        if (i==neg1 or neg2 or neg3) rfalse; 
        print "Please choose ", (address) pos1, " or ", (address) neg1, ". > "; 
    } 
]; 


-) 

To say undo denial:
	say "You wish you could restore the past and undo your actions. But the past refuses to change.".

Rule for deciding whether to allow undo:
	if the player is in Not A Dream:
		say "[undo denial]";
		now Thomas is in the afterlife;
		deny undo;
	otherwise:
		say "If only you had done something else...[line break]";
		allow undo.

Rule for deciding whether all includes scenery: it does not.

Before going through a closed door (called the blocking door):
	if the player is in the car:
		say "You'll have to get out of the car first.";
		stop the action;
	if the blocking door is locked and the player is carrying the keys:
		say "(first unlocking [the blocking door] with [the keys])";
		silently try unlocking the blocking door with the keys;
	say "(first opening [the blocking door])[line break]";
	silently try opening the blocking door;
	if the blocking door is closed, stop the action.

Before locking an open door (called the lockdoor) with the keys:
	say "(first closing the door)";
	silently try closing the lockdoor.

A door  is usually scenery.

Furniture is a kind of supporter. It is scenery and enterable. Instead of taking, pulling or pushing furniture: say "You see no reason to rearrange the furniture right now.".

Before pushing furniture to: say "You see no reason to rearrange the furniture right now."; stop the action.

To say parent title: say "[if the player is male]dad[otherwise]mum".

Instead of examining the player: if Thomas is visible, say "Never mind you! Thomas is as good looking as ever! You are sure he will be popular at school."; otherwise say "Never mind you! Thomas is all that matters today.".

Check restoring the game:
	if the player is in Not A Dream:
		say "[undo denial]";
		end the game saying "[deathmessage]";
	otherwise:
		say "If only you had done everything differently...".

Check restarting the game: 
	if the player is in Not A Dream:
		say "[undo denial]";
		end the game saying "[deathmessage]";
	otherwise:
		say "If only you had done everything differently...".

Talking to is an action applying to one thing. Understand "talk to [something]" and "speak to [something]" as talking. 

Carry out talking to: say "You can't think of anything to say.".

Instead of asking someone about something: say "(In this game conversation is handled by using 'TALK TO (SOMETHING)'.".

Instead of telling someone about something: say "(In this game conversation is handled by using 'TALK TO (SOMETHING)'.".

Instead of talking to the player when the location is not just a dream for the first time: say "'Everything is going to be ok', you tell yourself. 'It was all just a bad dream...'".

Instead of talking to the player when the location is not just a dream at least twice: say "Once more you assure yourself that everything is going to be ok.".

Instead of waiting: say "You really don't have time to just stand around doing nothing. This is Thomas's first day at school!".

Instead of kissing Thomas when thomas is awake: say "He is so adorable. You give him a brief kiss which he promptly wipes off with the back of his hand.".

Instead of kissing Thomas when Thomas is asleep: try waking thomas.

Instead of swearing obscenely: say "There is no need to use that kind of language! You need to set a good example for your son.".

Instead of swearing mildly: say "There is no need to use that kind of language! You need to set a good example for your son.".

Instead of sleeping during Driving to work: say "You aren't tired anymore. And there wouldn't be time anyway. This is going to be a busy day.".

Instead of sleeping when Driving to work has ended: say "You are getting a bit tired. But the day is not over yet.".

Instead of singing when thomas is visible and thomas is awake: say "You sing a little song for Thomas.".

Instead of singing when thomas is visible and thomas is asleep: say "You sing a little song to wake him up."; try waking Thomas.

Instead of singing when thomas is not visible and the location is not just a dream: say "You sing a little song for yourself.".

Tickling is an action applying to one thing. Understand "tickle [someone]" as tickling.

Carry out tickling:
	say "That wouldn't be very polite.".

Instead of tickling thomas when thomas is asleep:
	try waking thomas.

Instead of tickling thomas when thomas is awake:
	say "Thomas giggles.".

Instead of tickling the player:
	say "That would be pretty pointless.".

Understand "dream" as sleeping.

The afterlife is a room.

Driving to school is a scene. Driving to school begins when play begins. Driving to school ends when the location is OutsideWork.

When Driving to school ends:
	remove the children from play;
	remove the parents from play.
	
Driving to work is a scene. Driving to work begins when play begins. 

Driving to work ends happily when the papers are not in your office and thomas is in your office.

Driving to work ends in tragedy when the papers are not in your office and thomas is not in your office.

Thomas dying is a scene. Thomas dying begins when Driving to work ends in tragedy.

Learning the truth is a scene. Learning the truth begins when Driving to work ends happily.

Learning the truth ends when the location is OutsideHouse and Thomas is in the location.

Awakening is a scene. Awakening begins when learning the truth ends. Awakening ends when Thomas is in the afterlife.

When Awakening ends:
	end the game saying "[deathmessage]".

DeadThomas is a person. The printed name of DeadThomas is "Thomas". The description of DeadThomas is "If you are seeing this the game is bugged.". Understand "thomas", "son", "kid", "him" and "tomas" as DeadThomas.

Instead of talking to DeadThomas:
	say "There is no reply. Maybe he is asleep?".

Instead of examining DeadThomas:
	say "He doesn't respond. Just then, you notice the bottle of drain cleaner standing next to him. The lid has been removed. The bottle is less than full. When the ambulance arrives there is nothing they can do. It is far too late. If only you had found some other place for him to hide...";
	end the game saying "[deathmessage]".

Persuasion rule for asking DeadThomas to try doing something:
	say "There is no reply. Maybe he is asleep?";
	persuasion fails.

Instead of doing something other than talking to or examining to DeadThomas:
	try examining DeadThomas.

Rule for printing the name of DeadThomas while listing contents:
	say "Thomas, lying on the floor. He appears to be sleeping".

When thomas dying begins:
	remove the OutBirds from play;
	if thomas is in the broom closet:
		remove thomas from play;
		remove the cleaning supplies from play;
		now DeadThomas is in the broom closet;
	otherwise if thomas is in the classroom:
		now Thomas is in the schoolyard;
	otherwise if thomas is in the schoolgrounds and thomas is not in the classroom:
		remove Thomas from play;
		now the police officer is in the schoolyard;
	otherwise if thomas is in InsideHouse and the front door is unlocked:
		change the description of OutsideHouse to "Something is going on. The front door is wide open. Yellow police tape blocks the entrance. Something must have happened!";
		now the front door is open;
		now the tape is in OutsideHouse;
		now the police officer is in OutsideHouse;
	otherwise if thomas is in OutsideHouse and the front door is unlocked:
		change the description of OutsideHouse to "Something is going on. There is a police officer standing outside the house. The front door is open. Something must have happened.";
		now the front door is open;
		now the police officer is in OutsideHouse;
		now Thomas is in thomas bedroom;
	otherwise if thomas is in InsideHouse and the front door is locked:
		set the house on fire;
		now the police officer is in OutsideHouse;
	otherwise if thomas is in OutsideHouse and the front door is locked:
		now the police officer is in OutsideHouse;
		now Thomas is in the afterlife.

When learning the truth begins:
	change the description of OutsideHouse to "Here you are! Finally home. Safe and sound.".

When learning the truth ends:
	say "You made it! You got through the entire day without leaving Thomas out of your sight while you worked. And now everything is going to be ok. Thank god that horrible thing was just a dream.[line break][line break]Just a dream...";
	remove thomas from play;
	now thomas is not following;
	now the player is in Not A Dream.

The tape is scenery. The description of the tape is "POLICE LINE - DO NOT CROSS.".

Instead of taking the tape: say "You are tempted to tear of the tape and rush into the house. But the police officer approaches you before you get the chance."; try talking to the police officer.

Instead of doing something other than examining or taking to the tape: say "You don't see what that would accomplish.".

The smoke is scenery. Understand "wisps", "wisp", "window" and "windows" as the smoke. The description of the smoke is "Wisps of smoke are coming out of the windows. The fire must have occurred recently.".

To set the house on fire:
	Change the description of OutsideHouse to "Oh my god. The house is blackened and scarred. Wisps of smoke are coming out the windows. There must have been a fire!";
	now the front door is open;
	now the smoke is in OutsideHouse.

The police officer is a person. The description of the police officer is "Wearing the distinct uniform of the city police. His face betrays no emotion.". 

To say police message:
	say "You can't shake the dreadful feeling that something might have happened to Thomas. You need to talk to the Officer. Just to be sure...".

Instead of going somewhere when the police officer is in the location:
	say "[police message]".

Instead of Driving when the police officer is in the location:
	say "[police message]".

Instead of LocationDriving when the police officer is in the location:
	say "[police message]".

Instead of answering the police officer that:
	try talking to the police officer.

Instead of doing something other than talking to when the police officer is in the location at least five times (this is the serve and protect rule):
	say "The officer approaches you.";
	try talking to the officer.

The serve and protect rule is listed first in the Instead rules.

Instead of talking to the police officer when in the schoolyard:
	say "You ask about Thomas and the officer looks at you with pity. Witnesses have stated that Thomas was playing at the playground when a tall stranger approached him. A while later they left the schoolyard together. Nobody has seen them since.[line break][line break]You never see Thomas again. If only you hadn't left him alone...";
	end the game saying "[deathmessage]".

Instead of talking to the police officer when in OutsideHouse and Thomas is in InsideHouse and the front door is unlocked:
	say "One of the neighbours had called the police after he saw a suspicous stranger entering your house. There are no signs of forced entry. Apparently you had forgotten to lock the door. Thomas was in the house.[line break][line break]The police are not quite sure what happened next but it seems that Thomas must have surprised the burglar who then fired at him instinctively. At least there doesn't seem to be any reason why the burglar would have wanted to shoot a child on purpose.[line break][line break]Thomas is dead. If only you had remembered to lock the door...";
	end the game saying "[deathmessage]".

Instead of talking to the police officer when in OutsideHouse and Thomas is in InsideHouse and the front door is locked:
	say "The neighbours called when they saw the smoke. Preliminary investigations indicate that the fire started because Thomas was playing with matches to pass the time. He couldnt get out. Apparently the front door was locked and he couldn't reach the opening mechanism.[line break][line break]He is dead. If only you hadn't locked him inside...";
	end the game saying "[deathmessage]".

Instead of talking to the police officer when in OutsideHouse and Thomas is in the afterlife:
	say "You ask about Thomas and the officer looks at you with pity. Thomas had been playing on the sidewalk in front of the house. Apparently the front door had been locked. There was an accident when he tried to run accross the street.[line break][line break]He was pronounced dead when he reached the hospital. If only you hadn't locked him out of the house...";
	end the game saying "[deathmessage]".

Requesting help is an action applying to nothing. Understand "help", "hints" and "hint" as requesting help.

Carry out requesting help:
	say "No hints are available at the moment.".

Instead of requesting help when the location is just a dream:
	say "All you need is to [bold type]wake up[roman type].".

Instead of requesting help when in thomas bedroom and thomas is asleep for the first time:
	say "You just need to wake Thomas.".

Instead of requesting help when in thomas bedroom and thomas is asleep for the second time:
	say "You can also just let him sleep through the day if you prefer. Perhaps things will turn out differently that way.".

Instead of requesting help when the location is the kitchen and thomas is in the location and thomas is hungry:
	say "You need to serve some breakfast before you leave. Thomas is hungry.".

Instead of requesting help when the location is OutsideHouse for the first time during Driving to school:
	say "To use the car just type DRIVE TO LOCATION where LOCATION is the name of the place you want to go to.".

Instead of requesting help when the location is OutsideHouse for the second time during Driving to school:
	say "You don't have to drive Thomas to school if you don't want to.".

Instead of requesting help when the location is OutsideHouse for the third time during Driving to school:
	say "You can just let him stay home. Or even bring him to work with you.".

Instead of requesting help when in your bedroom for the first time during Driving to school:
	say "Well, you need to drive to thomas to school, go to work and pick him up at the school on your way home."

Instead of requesting help when in your bedroom for the second time during Driving to school:
	say "Perhaps you already tried that and it didn't go too well? You can always just let him stay home."

Instead of requesting help when in your bedroom for the third time during Driving to school:
	say "Or maybe even bring him to work with you?"

Instead of requesting help when in your bedroom for the fourth time during Driving to school:
	say "You should bring some of his toys, though. In case he gets bored."

Instead of requesting help when the player is in the company and thomas is in the company and thomas is not in the officedesk for the first time during Driving to work:
	say "You will need to find somewhere for Thomas to hide if you want him to stay while you work.".

Instead of requesting help when the player is in the company and thomas is in the company and thomas is not in the officedesk for the second time during Driving to work:
	say "Maybe he could hide in the broom closet?".

Instead of requesting help when the player is in the company and thomas is in the company and thomas is not in the officedesk for the third time during Driving to work:
	say "The broom closet may be a bad idea. Perhaps there is somewhere he could hide in your office?".

Instead of requesting help when the player is in the company and thomas is in the company and thomas is not in the officedesk for the fourth time during Driving to work:
	say "He could maybe hide under the desk?".

Instead of requesting help when the player is in the company and thomas is in the officedesk during Driving to work:
	say "Thomas will need some way to pass the time. Did you think to bring some toys from his bedroom?".

Instead of requesting help during thomas dying:
	if DeadThomas is in the broom closet:
		say "You should check the broom closet immediately. Thomas was in there the entire time!";
	otherwise if Thomas is in the schoolyard:
		say "You need to go pick up Thomas at the school.";
	otherwise if the police officer is in the schoolyard:
		say "You need to go pick up Thomas at the school. You just left him there by himself.";
	otherwise if the police officer is in OutsideHouse:
		say "You need to go home and check how Thomas is doing. You left him alone at the house all day.";
	otherwise:
		say "Now you just have to drive Thomas home and everything will be okay.".

Instead of requesting help during Learning the truth:
	say "Now you just have to drive Thomas home and everything will be okay.".

Instead of requesting help during Awakening:
	say "There doesn't seem to be antything you can do here. Perhaps it is time to restart?".



Part 2 - Game World

Just A Dream is a room. The description of just a dream is "Noise. People talking. Shapes coming and going. You pay them no attention. This is just a dream you keep reminding yourself. Just a very bad dream. You have had it before, remember? All you have to do is wake up and everything will be fine."

The player is in just a dream.

The shapes are scenery in just a dream.

The noise is scenery in just a dream.

The dream people are scenery in just a dream. Understand "people" and "persons" as the dream people.

Instead of doing something other than waking up, looking, commenting, exiting, requesting information, requesting help or requesting the walkthrough when the location is just a dream for the first time (this is the first denial rule):
	say "It's just a bad dream. There is no need to do anything.".

Instead of doing something other than waking up, looking, commenting, exiting, requesting information, requesting help or requesting the walkthrough when the location is just a dream for the second time (this is the second denial rule):
	say "All you have to do is wake up...".

Instead of doing something other than waking up, looking, commenting, exiting, requesting information, requesting help or requesting the walkthrough when the location is just a dream at least three times (this is the third denial rule):
	try waking up.

The first denial rule is listed first in the instead rules.

The second denial rule is listed first in the instead rules.

The third denial rule is listed first in the instead rules.

Instead of waking up when the location is just a dream:
	say "You close your eyes and concentrate. It's just a dream. Just a dream...[line break][line break]When you open your eyes again you find yourself[line break]";
	move the player to the bed.

Instead of exiting when the location is just a dream:
	try waking up.

Instead of waking up when the location is not just a dream and the player is not in Not A Dream:
	say "You are already awake! Thank god it was all just a bad dream."

Chapter 1 - The House

Section 1 - The Bedroom

Your Bedroom is a room. "[if unvisited]It is a beautiful morning. The sun is shining, and everything seems perfect. Today is Thomas's first day at school and you are almost as excited as he is. You need to drive him to school before you go to work. [end if]Your large and comfortable bed almost fills the entire room. Next to it is a small bed table. The only exit is the bedroom door to the west.". The printed name of Your Bedroom is "In Your Bedroom".

The table is furniture in the bedroom. The description of the table is "A small wooden table next to the bed. On the table is an ashtray.". The printed name of the table is "bed table". Understand "bed table" as the table.

The ashtray is scenery in Your Bedroom. Understand "ash", "tray", "ugly" and "clay" as the ashtray. The description of the ashtray is "It is an ugly assymetric ashtray made out of clay. Thomas made it for you in kindergarten. None of you smoke but it's the thought that counts!".

Instead of taking the ashtray: say "You see no reason to move the ashtray. It looks just fine on the bed table.".

Instead of doing something other than taking or examining to the ashtray: say "You see no reason to mess around with the ashtray.".

Understand "key/keys" as "[key]".

Understand "car/door [key]" or "[key] to the front door" or "[key] to my/the car" or "[key]" as "[keys]".

On the table are some  keys. Understand "[keys]" or "keychain" or "chain" as the keys. The description of the keys is "The key chain contains both the keys to your car, and the key to the front door.". The indefinite article of the keys is "your".

After taking the keys for the first time: say "[if Thomas is hungry]You remember to pick up the keys before you leave. Imagine if Thomas was late for school because you had to run around the house looking for them? What an embarassment that would be.[otherwise]There they are! Imagine if Thomas was late for school because you couldn't find the keys. What an embarassment that would be.".

The bed is furniture in the bedroom. The description of the bed is "This large two-person bed is currently only used by you. [if player is male] Your wife is on a business trip, so you will have to take care of Thomas until she returns. What a pity that she will miss his first day at school.[otherwise]Your husband is on a business trip, so you will have to take care of Thomas until he returns. What a pity that he will miss his sons first day at school.". The bed is enterable.

Before going somewhere when the player is on the bed:
	say "(first getting off the bed)";
	try exiting.

The bedroom Hallway is a room. "Thomas's bedroom is right to the west of you while your own lies to the east. To the south you see the entrance to the kitchen.[if unvisited] Thomas will need a good healthy breakfast to get through the day!". The printed name of the bedroom hallway is "The Hallway".

The bedroom door is a door. It is west of the bedroom and east of The bedroom hallway. The description of the bedroom door is "The door to your bedroom. Nothing special about it.".

Section 2 - Thomas' Room

Thomas Bedroom is a room. "Thomas room is full of brightly colored toys scattered all over the place. One wrong step and you might slip on something and break your neck!"

The ThomasDoor is a door. It is west of the bedroom hallway and east of the bedroom. The description of the ThomasDoor  is "The door to Thomas bedroom has several of his drawings hanging on it. He is so creative!". The printed name of the ThomasDoor is "door to Thomas bedroom.". Understand "door to Thomas's bedroom", "Thomas" and "door" as the ThomasDoor .

Does the player mean doing something to the ThomasDoor: it is very unlikely.

The drawings are a backdrop. The drawings are in Thomas bedroom and the hallway. The description of the drawings is "He loves to draw. Maybe he will be an artist some day? The drawings depict several different scenes. Many show The Happy Bears involved in various happiness inducing activities.". Understand "drawing", "scene" and "scenes" as the drawings.

Instead of examining the drawings at least twice: say "The drawings depict several different scenes. Many show The Happy Bears involved in various happiness inducing activities. You really don't have time to study them in detail right now. You will have to spend some time with Thomas after work."

Instead of taking the drawings: say "Nah. They look good on the door!".

Instead of doing something other than taking or examining to the drawings: say "They are fine where they are.".

In the bedroom are some toys. Understand "brightly", "colored" and "toy" as the toys. Instead of pushing the toys: say "Nah. He should clean his own room but he can do that some other time. You don't want an argument to spoil this perfect day.". The description of the toys is "All sorts of expensive childrens toys are scattered haphazardly around the room. Maybe you spoil him a bit, but he is your only child.". The toys are scenery. 

Instead of doing something other than examining, taking or pushing the toys: say "You don't have time to play with him right now. He needs to go to school!".

Instead of taking the toys for the first time:
	say "You scoop up some random toys from the floor. Thomas might want some of his own toys to play with later.";
	now the player is carrying the toystuff.

Instead of taking the toys for the second time:
	say "You don't need to carry around a ton of toys. He should clean his own room some other time.".

The toystuff is a thing. The description of the toystuff is "Some random toys you took from Thomas room. They include a G.I. Joe figure, a Happy Bear, some legos and a robot that transforms into a tow truck.". The printed name of the toystuff is "toys". The indefinite article of the toystuff is "some". Understand "toy","toys", "joe", "figure", "happy", "bear", "lego", "legos", "transformer" and "robot" as the toystuff.

Does the player mean doing something to the toystuff: it is likely.

Instead of giving the toystuff to thomas when thomas is awake:
	say "Thomas happily accepts the toys.";
	now thomas is carrying the toystuff.

Instead of giving something to thomas when thomas is asleep:
	say "He is sleeping.".

In the bedroom is thomas bed. Thomas bed is furniture and enterable. The description of thomas bed is "A small but comfortable bed. Happy teddy bears adorn the lining." The printed name of thomas bed is "the bed".

The blanket is scenery in the bedroom. Understand "linen", "lining", "teddy", "bears", "bear" and "happy" as the blanket. The description of the blanket is "The blanket is covered with pictures of The Happy Bears, talking bears whose power is to make people happy. Thomas loves hearing stories about them. He even made some drawings that are now hanging on the door.".

Instead of taking the blanket when thomas is asleep: try waking thomas.

Instead of taking the blanket when thomas is awake: say "You see no reason to carry around a blanket.".

Instead of doing something other than examining or taking to the blanket: say "You see no reason to mess with the blanket.".

Does the player mean doing something to Thomas bed: it is unlikely.

On thomas bed is a man called Thomas. Understand "son", "kid", "him", "thomas's" and "tomas" as thomas. The description of Thomas is "He is five and a half years old and the most important thing in the world. It's funny. When you were younger, you couldn't imagine ever having children. Now you can't imagine living without him.". Thomas can be either asleep or awake. Thomas is asleep. Thomas can be either fed or hungry. Thomas is hungry. Thomas can be either following or not following. Thomas is not following. Thomas can be either sleepy or not sleepy. Thomas is not sleepy. Thomas can be either at play or not at play. Thomas is not at play.

Instead of entering thomas bed:
	say "It is too small for an adult.".

Does the player mean doing something to thomas: it is very likely.

Rule for writing a paragraph about Thomas when thomas is not on thomas bed and thomas is not in the car and thomas is not in the schoolyard and thomas is not at play: say "Thomas is here.".

[Rule for writing a paragraph about Thomas when thomas is not on thomas bed and thomas is not in the car and thomas is not in the schoolyard and thomas is not at play at least twice: say "Thomas is here.".]

Rule for writing a paragraph about Thomas when thomas is on thomas bed: say "Thomas is sleeping soundly in his bed."

Rule for writing a paragraph about Thomas when thomas is in the car: say "Thomas is sitting on the passenger seat, impatiently waiting for the trip to be over."

Rule for writing a paragraph about Thomas when thomas is in the schoolyard and thomas is not at play: say "Thomas stares longingly at the playground."

Instead of waking Thomas when Thomas is on thomas bed: 
	say "You gently nudge him awake. He opens his eyes and yawns loudly.[line break]
'Rise and shine!' you say cheerfully. 'Today is your first day at school! You need to get up now so we won't be late'.[line break]'But i'm tired!' he complains, while yawning again. 'Do I have to go to school right now? Can't I just stay in bed?'"; now Thomas is awake; now Thomas is sleepy.

Understand "y/yes/sure/ok/okay/right" as "[yes]".

Understand "n/no/nope/negative" as "[no]".

After reading a command when Thomas is sleepy:
	if the player's command includes "[yes]":
		 say "'Sure you can', you say. Just stay in bed as long as you like.'[line break]'Thanks [parent title]', he mumbles and promptly falls asleep again."; 
		now Thomas is asleep;
		now Thomas is not sleepy;
		reject the player's command;
	if the player's command includes "[no]":
	 	say "'No you can't, you little rascal', you reply while ruffling his hair. 'You get up now and I will go make us some breakfast.'[line break]'Okay...' he yawns and clumsily climbs out of the bed. You help him get dressed and make sure that he is as good looking as ever!";
		now Thomas is not sleepy;
		move Thomas to thomas bedroom;
		now Thomas is following;
		reject the player's command;
	otherwise:
		say "Thomas falls asleep again.[line break](You need to answer yes or no when he asks you a question).";
		now Thomas is asleep;
		now Thomas is not sleepy;
		reject the player's command.

Instead of saying yes:
	say "Nobody has asked you anything at the moment.".

Instead of saying no:
	say "Nobody has asked you anything at the moment.".

Every turn: 
    if Thomas is awake and Thomas is following and the location of Thomas is not the location of the player 
    begin; 
	move Thomas to the location of the player;
	say "Thomas follows you closely.";
    end if.

Instead of taking thomas when thomas is awake during Driving to work, say "He is too old to be carried around anymore.".

Instead of taking thomas when Thomas is awake and Driving to work has ended, try thomas following.

Instead of taking Thomas when Thomas is asleep: try waking thomas.

Instead of talking to thomas when thomas is asleep:
	try waking thomas.

Understand "shake [something]" as waking.

Instead of talking to thomas when thomas is awake for the first time during Driving to school:
	say "You tell Thomas all about how exciting his first day at school will be![line break](If you want Thomas to do something you can type 'Thomas, follow me' where the text after the comma is whatever action you want him to perform).".

Instead of talking to thomas when thomas is awake at least twice during Driving to school:
	say "Once more you assure Thomas that he will have a great time! There is nothing to worry about.".

Instead of talking to thomas when thomas is awake and Driving to school has ended during Driving to work:
	say "You apologise to Thomas for making him late for school but assure him that everything will be ok.".

Instead of talking to thomas when thomas is awake during thomas dying:
	say "Thomas happily tells you all about his day. You are relieved to hear that everything seems to have turned out fine. He liked his teachers. He met lots of new friends. He is looking forward to going to school again tomorrow. You are so happy for him.";
	now thomas is following.



After reading a command:
        let T be indexed text;
        let T be the player's command;
        replace the regular expression "^(tell|ask) (\w+) to (\w*)" in T with
"\2, \3";
        [say "([T]).";] [for testing]
        change the text of the player's command to T. 

Instead of answering thomas that when thomas is awake: say "Thomas doesn't understand what you want him to do.".

Persuasion rule for asking Thomas to try doing something other than waking up when thomas is asleep (this is the sleeping rule): say "He is sleeping."; persuasion fails.

The sleeping rule is listed first in the persuasion rules.

Persuasion rule for asking Thomas to try waking up: persuasion succeeds.

[Persuasion rule for asking Thomas to try doing something other than going, staying, waiting, entering, exiting, waking up, hiding in, hiding, playing, giving, following, pushing or sleeping  (this is the default persuasion rule): say "Thomas doesn't understand what you want him to do."; persuasion fails.]

Persuasion rule for asking Thomas to try doing something (this is the default persuasion rule): say "Thomas doesn't understand what you want him to do."; persuasion fails.

The default persuasion rule is listed last in the persuasion rules.

Persuasion rule for asking Thomas to try going: persuasion succeeds.

Persuasion rule for asking Thomas to try staying: persuasion succeeds.

Persuasion rule for asking Thomas to try waiting: persuasion succeeds.

Persuasion rule for asking Thomas to try sleeping: persuasion succeeds.

Persuasion rule for asking Thomas to try entering: persuasion succeeds.

Persuasion rule for asking Thomas to try exiting: persuasion succeeds.

Instead of thomas waking up: try waking thomas; the rule succeeds.

Persuasion rule for asking Thomas to try playing: persuasion succeeds.

Persuasion rule for asking Thomas to try giving: persuasion succeeds.

Instead of Thomas giving something to the player:
	say "Thomas gives you [the noun].";
	now the player is carrying the noun;
	the rule succeeds.

After thomas going: now thomas is not following; continue the action.

Understand "go to sleep" or "go back to sleep" or "fall asleep" or "stay in bed" or "go back to bed" or "go to bed" as sleeping.

Instead of Thomas sleeping: say "He can't just sleep on the ground!"; the rule succeeds.

Instead of thomas entering thomas bed: try Thomas sleeping; the rule succeeds.

Instead of Thomas sleeping while in Thomas bedroom:
	say "'I've changed my mind, Thomas', you say. 'You don't have to go to school today. Just stay in bed all day!'[line break]Thomas yawns. 'Thanks [parent title]', he says and climbs back into bed where he promptly falls asleep.";
	move Thomas to thomas bed;
	now Thomas is asleep;
	now Thomas is not sleepy;
	the rule succeeds.

Staying is an action applying to nothing. Understand "stay" or "stay here" or "stay put" or "wait here" as staying.

Instead of Thomas staying: say "'Just wait here, Thomas', you say. 'I will be right back'. 'Okay [parent title]', he replies. He is such a good kid."; now Thomas is not following; the rule succeeds.

Instead of Thomas waiting: try Thomas staying; The rule succeeds.

Instead of staying: try waiting.

Following is an action applying to nothing. Understand "come" or "here" or "follow" or "come on/here" or "follow me" or "come with me" as following.

Persuasion rule for asking Thomas to try following: persuasion succeeds.

Instead of Thomas following when thomas is not in a container: say "'Time to go, Thomas!' you say and he happily follows you."; now Thomas is following; now thomas is not at play; The rule succeeds.

Instead of Thomas following when Thomas is in a container (called hiding place):
	say "Thomas gets out of [the hiding place] and happily follows you again.";
	now Thomas is in the location;
	now Thomas is following;
	the rule succeeds.

Instead of following: say "You are the parent. You should be a leader not a follower.".

Playing is an action applying to nothing. Understand "play" and "go play" and "have fun" and "play with thomas" and "have some fun" and "relax" as playing.

Carry out playing: say "You are way too busy right now. It will have to wait till later.".

Instead of Thomas playing when thomas is not in thomas bedroom and thomas is not in the schoolyard: say "Thomas doesn't feel like playing right now."; the rule succeeds.

Instead of Thomas playing when thomas is in thomas bedroom: 
	say "'Never mind about school!' you say. 'Just play with your toys, Thomas.'[line break]He happily obliges."; now thomas is at play; the rule succeeds.

Rule for writing a paragraph about thomas when thomas is in thomas bedroom and thomas is at play: say "Thomas is busy playing with his toys.".

Instead of thomas playing when thomas is at play: say "He is already playing. If you want him to stop just tell him to follow you."; the rule succeeds.

Instead of talking to Thomas when Thomas is asleep: try waking Thomas.

Understand the command "leave" as something new.

Understand "leave" as exiting.

Leaving is an action applying to one thing. Understand "leave [something]" as leaving .

Carry out Leaving:
	try exiting.

Instead of leaving Thomas:
	try asking thomas to try staying.

Section 3 - The Kitchen

The Kitchen is a room. "[if driving to work is happening]Sunlight is streaming in through the windows of the kitchen.[otherwise]The kitchen looks the same as always.[end if] The refrigerator is humming lightly to itself. Next to it is a cabinet. The table in the middle of the room is where you usually have breakfast. To the south lies the front door[if driving to work is happening], behind which the day is just waiting for you to seize it.[otherwise].". 

The kitchen door is a door. It is south of the bedroom hallway and north of the kitchen. The description of the kitchen door is "The door to the kitchen.".

Does the player mean doing something to the kitchen door: it is unlikely.

In the kitchen is the kitchen table. The description of the kitchen table is "A round table. You usually eat breakfast together here. There are four chairs standing around the table.". The kitchen table is furniture.

In the kitchen are some chairs. The chairs are furniture and enterable. The description of the chairs is "Four ordinary wooden chairs are standing by the kitchen table.". Understand "chair" as the chairs. The printed name of the chairs is "chair".

Instead of going south when the player is in the kitchen and thomas is in the kitchen and thomas is hungry for the first time: 
say "'Let's go Thomas', you say as you reach for the front door. 'You can't be late on your first day at schoo!l'[line break]'But [parent title]', he objects, 'I am hungry!'[line break]Oops. You totally forgot to make breakfast. Silly you.".

Instead of going south when the player is in the kitchen and thomas is in the kitchen and thomas is hungry at least twice:
say "You really should serve some breakfast first. Thomas will need plenty of energy for his first day at school!".

The refridgerator is in the kitchen. Understand "fridge" and "refrigerator" as the refridgerator. The description of the refridgerator is "It keeps things cool.". The refridgerator is openable, scenery, container and not open.

Instead of listening to the refridgerator: say "A slight humming confirms that the refrigerator is still working.".

Instead of listening when in the kitchen: say "[if Driving to work is happening]You hear the singing of the birds outside. It is going to be a beautiful day.[otherwise]The only sound is the humming from the refrigerator.".

The birds are scenery in the kitchen. Understand "bird", "song" and "singing" as the birds. The description of the birds is "You can't see them from in here. Only hear them.".

Instead of listening to the birds: say "They sing beautifully.".

Instead of doing something other than listening or examining to the birds: say "You can't reach them from in here.".

The cupboard is in the kitchen. Understand "cupboard" and "closet" and "cabinet" as the cupboard. The description of the cupboard is "A cabinet where you keep all the stuff that doesn't need to be kept cool.". The cupboard is openable, scenery, container and not open.

The bowls are scenery in the kitchen. The description of the bowls is "You keep an assortment of bowls and plates in the cupboard.". Understand "bowl" and "bowls" and "plate" and "plates" as the bowls.

Understand "food/breakfast" and "some food/breakfast" as "[food]".

Serving is an action applying to nothing. Understand "serve [food]" and "make [food]" and "give [food]" and "eat [food]" and "have [food]" and "cook" and "cook [food]" as serving. 

Serving to is an action applying to one thing. Understand "feed [someone]" and "give food to [someone]" as serving to.

Carry out serving to: try serving.

Instead of serving when thomas is fed: say "You already had breakfast. No time to waste!".

Instead of serving when thomas is not visible:  say "Thomas isn't here. You don't feel like eating without him.".

Instead of serving when the location is not the kitchen: say "You need to go to the kitchen first.".

Carry out serving: say "You quickly procure some bowls and cereals from the cupboard and some milk from the fridge. You even allow Thomas to put some sugar on his cereal. He usually only gets to do that on the weekends but today is special! Now Thomas should be ready for school."; now thomas is fed.

The breakfast is scenery in the kitchen. Instead of doing something other than examining or attacking to the breakfast: try serving. Instead of examining the breakfast: if Thomas is hungry, say "There is no breakfast here. You will have to make some yourself."; otherwise say "You already ate it.". The breakfast is edible.

Instead of eating when in the kitchen: try serving.

Instead of opening the refridgerator: try serving.

Instead of opening the cupboard: try serving.

Instead of taking the bowls: try serving.

Instead of exiting when the player is not on a supporter and the location is the kitchen: try going south.

Section 3 - Outside the House

OutsideHouse is a room. The description of OutsideHouse is "[if Driving to work is happening]The weather is beautiful. The birds are singing. You have a feeling it's going to be a wonderful day.[otherwise]Here you are. Home again at last.[end if] The front door is to the north.". The printed name of OutsideHouse is "Outside the House".

Instead of going nowhere from OutsideHouse:
	say "It is too far to walk. You should drive the car instead.".

InsideHouse is a region. Your bedroom, thomas bedroom, the hallway and the kitchen are in InsideHouse.

The front door is a door. It is south of the kitchen and north of OutsideHouse. The description of the front door is "The door to your house.". The front door is lockable and locked. The keys unlock the front door.

Instead of going inside while in OutsideHouse: try going north.

The house is scenery in OutsideHouse. It is container and enterable. Instead of entering the house, try going north. The description of the house is "It's hardly a mansion, but it's home."

The OutBirds are scenery in OutsideHouse. Understand "bird", "birds", "song" and "singing" as the OutBirds. The description of the OutBirds is "A couple of birds are sitting in a nearby tree, celebrating the day with their song."

Instead of listening to the OutBirds: say "They sing beautifully.".

Instead of listening when the OutBirds are in the location: say "You hear the singing of the birds.".

Instead of doing something other than examining or listening to the OutBirds: say "You can't reach them. They are too high up in the tree.".

The tree is scenery in OutsideHouse. The description of the tree is "A small elm tree standing by the road."

Instead of climbing the tree: say "Really. You are too old to be climbing trees.".

Persuasion rule for asking Thomas to try climbing: say "It is way too dangerous. Imagine if Thomas had an accident on his first day at school!"; persuasion fails.

The road is scenery in OutsideHouse. The description of the road is "It's just a normal road. There is a beautiful elm tree standing next to it.".

The car is a thing in OutsideHouse. The description of the car is "The car is nothing fancy but it gets you from A to B.". The car is container, fixed in place and enterable. Understand "trunk", "hood" and "car door" as the car.

Instead of opening the car:
	say "If you want to enter the car just type 'enter car'.".

Instead of locking the car with the keys:
	say "You make sure the car door is locked.".

Instead of unlocking the car with the keys:
	say "You unlock the car door.".

Instead of taking, pushing, or pulling the car: say "It is way too heavy. Maybe you should drive it instead?".

Instead of pushing the car to: say "It is way too heavy. Maybe you should drive it instead?".

Instead of searching the car when nothing is in the car: say "It is roomy enough for the both of you.".

Rule for writing a paragraph about the car when not in OutsideWork: say "Your car is here, ready to take you wherever you need to go.".

The seat belts are part of the car. Understand "belt", "safety" and "seatbelt" as the seat belts. The description of the seat belts is "You should always fasten your seat belt in case there is an accident.".

Protecting relates one thing to various people. The verb to protect (it protects) implies the protecting relation.

Understand the command "fasten" as something new.

Fastening is an action applying to one thing. Understand "fasten [something]", "buckle [something]", "fasten your [something]", "buckle your [something]", "fasten [something] seatbelt", "fasten [something] seat belt", "buckle [something] seatbelt" and "buckle [something] seat belt" as fastening.

Carry out fastening:
	say "That is not something you can fasten.".

Instead of fastening the seat belts:
	if the seat belts protect the player:
		say "You are already wearing your seat belt.";
		stop the action;
	if the player is not in the car:
		try entering the car;
	if the player is in the car:
		say "You fasten your seat belt.";
		now the seat belts protect the player.

Instead of taking the seat belts:
	try fastening the seat belts.

Instead of fastening thomas when thomas is awake:
	if the car is in the location:
		try thomas fastening the seat belts;
	otherwise:
		say "Thomas looks confused. The car isn't here.".

Persuasion rule for asking thomas to try fastening: persuasion succeeds.

Instead of thomas fastening the seat belts:
	if the seat belts protect Thomas:
		say "Thomas is already wearing his seat belt.";
		the rule succeeds;
	if thomas is not in the car:
		try thomas entering the car;
	if thomas is in the car:
		say "Thomas fastens his seat belt.";
		now the seat belts protect thomas;
		the rule succeeds.

Before exiting when in the car:
	now the seat belts do not protect the player;
	now the seat belts do not protect thomas.

Driving is an action applying to nothing. Understand "drive" as driving.

Check driving:
	if the car is not in the location:
		say "The car isn't here." instead;
	otherwise if the player is not holding the keys:
		say "Damn. You forgot the keys!" instead.

Carry out driving:
	if the player is not in the car:
		say "You get in the car.";
		if thomas is following and thomas is not in the car:
			now thomas is in the car;
		now the player is in the car;
	say "Where would you like to go? (type DRIVE TO followed by the place you want to go).".

CarDriving is an action applying to one thing. Understand "drive [something]" as CarDriving.

Check CarDriving:
	if the noun is not the car:
		say "You can't drive [the noun]." instead.

Carry out CarDriving: say "That didn't make any sense.".

Instead of entering the car: try driving.

Before exiting when the player is in the car:
	 if thomas is in the car: 
		now thomas is in the location.

After exiting when the car is visible:
	say "You get out of the car and find yourself[line break]";
	try looking.

Instead of CarDriving the car: try driving.

Understand "school/schol/" as "[school]".

Understand "work/company/office" as "[work]".

Understand "home/house" as "[home]".

Understand "n/w/s/e/north/west/south/east" as "[direction]".

LocationDriving is an action applying to one topic. Understand "drive [text]" and "drive to [text]"  and "go to [text]" as LocationDriving.

Check LocationDriving:
	if the car is not in the location:
		say "The car isn't here." instead;
	otherwise if the player is not holding the keys:
		say "Damn. You forgot the keys!" instead.

Carry out LocationDriving:
	if Thomas is following and thomas is not in the car:
		now thomas is in the car;
	if the player is not in the car:
		say "You get in the car.";
		now the player is in the car;
	if the topic understood includes "[school]":
		say "You drive to the school.";
		move the car to OutsideSchool;
		try exiting;
	otherwise if the topic understood includes "[work]":
		say "You drive to work.";
		move the car to OutsideWork;
		try exiting;
	otherwise if the topic understood includes "[home]":
		say "You drive back home again.";
		if thomas dying is happening and thomas is in the car:
			Play the car crash;
			stop the action;
		move the car to OutsideHouse;
		try exiting;
	otherwise if the topic understood includes "[direction]":
		say "You need to name a location, not just a direction.";
	otherwise:
		 say "You don't know how to get there. Anyway, the only places you will need to visit today are the house, the school and the company where you work.".

To play the car crash:
	say "It all happens so fast. You are going through an intersection when another car suddenly slams into your side sending your car spinning wildly out of control. You make a futile attempt to regain control before finally coming to an abrupt stop at the wall of a nearby house.[line break][line break]You survive. Thomas is not so lucky. If only you could have avoided the accident somehow...";
	end the game saying "[deathmessage]".

To say deathmessage:
	say "You have died inside".

Chapter 4 - School

The schoolgrounds is a region. OutsideSchool, The Schoolyard and OutsideClassroom is in the schoolgrounds.

Section 1 - Outside

OutsideSchool is a room. The printed name of OutsideSchool is "Outside the School.". The description of OutsideSchool is "The gate to the schoolyard is north of you. The school motto is etched into the stone arch.".

The motto is scenery in OutsideSchool. The description of the motto is "'Education is life itself'".

Understand "school motto", "stone" and "arch" as the motto.

Instead of doing something other than examining or attacking to the motto: say "It is just a sequence of words. It hardly makes any sense to do anything with them.".

The gate is scenery in OutsideSchool. The description of the gate is "An open gateway, with the school motto engraved in the arch, leads into the school.". The gate is container and enterable. Instead of entering the gate: try going north. Understand "school", "entrance" and "schoolyard" as the gate.

Instead of opening the gate:
	say "It is just an open gateway leading into the schoolyard. There are no doors to open or close.".

Instead of searching the gate: say "It leads into to the schoolyard.".

Instead of Thomas entering the gate: say "Thomas is to shy to go there by himself.".

Instead of going inside when in OutsideSchool:
	try going north.

Section 2 - Schoolyard

The Schoolyard is a room. It is north of OutsideSchool. The description of the schoolyard is "The schoolyard is [if the children are in the location]filled with parents and children, coming and going[otherwise]almost completely deserted[end if]. To the north, steps lead up to the main entrance. [if the children are in the location] A couple of children are busy at the playground, closely watched by their parents.[otherwise]The playground is empty.[end if]".

The children are scenery in the schoolyard. The description of the children is "Lots of other children are here along with their parents. A few are at play in the playground." Understand "child" and "kids" and "kid" as the children. 

Does the player mean doing something to the children: it is very likely.

Instead of taking the children: say "Why? You have Thomas!".

Instead of doing something other than taking or examining to the children: say "There is no need to bother other peoples children. You need to take care of Thomas.".

The parents are scenery in the schoolyard. The description of the parents is "Several other parents are here, keeping a close eye on their children.". Understand "parent" and "adult" and "adults" as the parents. 

Instead of talking to the parents for the first time: say "You have a pleasant conversation with some of the other parents. You all agree that you should get to know each other better and make sure that your children get along."

Instead of talking to the parents at least twice: say "You would love to get to know the other parents better but it will have to wait. It's getting late."

Instead of doing something other than talking to or examining to the parents: say "There is no need to bother the other parents. You need to take care of Thomas.".

Instead of going north in the schoolyard when Thomas is not following and thomas is not in the classroom during Driving to work: say "It hardly makes sense to go to school without Thomas.".

Instead of going north in the schoolyard when Driving to work has ended:
	say "School is over. Time to go home.".

Instead of going north in the schoolyard when thomas is in the classroom during Driving to work: say "It's tempting to go back and check how he is doing but you would probably just embarrass him. You will see him again after work.".

Instead of going north in the schoolyard when thomas is following and Driving to school has ended during Driving to work: 
	say "Well, he is going to be late, but at least he got here. You manage to find the classroom and apologise profusely to the teacher for being so late. After quickly kissing Thomas goodbye you leave the school again. You are late for work as well now.";
	now thomas is in the classroom;
	now thomas is not following.

Instead of going north in the schoolyard when Driving to work has ended:
	say "There is nothing more to do here. It is time to go home.".

Instead of Thomas going north in the schoolyard:
	say "Thomas is too shy to go inside by himself.";
	the rule succeeds.

The playground is scenery in the schoolyard. Understand "play" as the playground. "There is a slide, some swings and a sandbox.[if the children are in the location] A couple of children are playing there.".

A plaything is a kind of thing. A plaything is scenery. 

The slide is a plaything in the schoolyard. The description of the slide is "It seems so small. You distinctly remember the playground having a HUGE slide when you went to school here. Perhaps they replaced it with a smaller model?".

Instead of examining the slide for the second time: say "Or maybe you were just smaller back then...".

The swings are playthings in the playground. Understand "swing" as the swings. The description of the swings is "You hope they are safe. Imagine if one them came loose while Thomas was using it and he went flying through the air...".

The sandbox is a plaything in the playground. Understand "sand" and "box" as the sandbox. The description of the sandbox is "You never really liked sandboxes when you were a kid. You used to prefer games with more clearly defined goals.".

Instead of doing something other than examining or taking to a plaything: say "You are a bit too old for that don't you think?".

Instead of taking a plaything: try taking the playground.

Instead of doing something other than examining or taking to the playground: say "You are a bit too old for that don't you think?".

Instead of taking the playground: say "While Thomas would love to have his own private playground at home you don't think you could get away with it.".

Rule for writing a paragraph about Thomas when thomas is in the schoolyard and thomas is not at play during Driving to work: say "Thomas stares longingly at the playground."

Instead of thomas playing when thomas is in the schoolyard and thomas is not at play during Driving to work:
	say "It can't hurt to let him have some fun. A few moments later he is happily playing with the other children."; now thomas is at play; now thomas is not following; the rule succeeds.

Instead of thomas playing when thomas is in the schoolyard and Driving to work has ended:
	say "Thomas is too tired to play right now. He just wants to go home."; the rule succeeds.

Rule for writing a paragraph about thomas when thomas is at play and thomas is in the schoolyard:
	say "Thomas is playing with the other children at the playground.".

Instead of examining Thomas when thomas is in the schoolyard and thomas is at play:
	say "Thomas is [one of]playing in the sandbox[or]using the swings[or]going down the slide[in random order].".

Rule for writing a paragraph about Thomas when thomas is in the schoolyard during thomas dying: say "Thomas is waiting for you to pick him up."

The stairs are scenery in the schoolyard. Understand "stair", "step" and "steps" as the stairs. The description of the stairs is "Stone steps ascend to the main entrance of the school.". The stairs are container and enterable. Instead of entering or climbing the stairs: try going north.

Instead of exiting while in the schoolyard: try going south.

Instead of going inside when in the schoolyard: try going north.

Section 3 - Inside the School

OutsideClassroom is a room. "Here you are! Standing right outside the door to the classroom. You can't help feeling a little nervous about leaving Thomas here but you suppose you will have to get used to it.". The printed name of OutsideClassroom is "Outside the Classroom.".

The school doors is a door. It is north of the schoolyard and south of OutsideClassroom. It is open. The description of the school doors is "At the top of the stairs a pair of doors lead into the school". Understand "door", "doors", "pair of doors", "main", "entrance" and "gate" as the school doors. Instead of entering the school doors while in the schoolyard: try going north. Does the player mean doing something to the school doors: it is unlikely.

Instead of exiting while in OutsideClassroom: try going south.

The classroom is a container in OutsideClassroom. It is scenery, transparent and enterable. Understand "classroom", "inside", "window", "inside of the classroom", "class" and "room" as the classroom. The description of the classroom is "A few kids are already there along with their parents. The teacher, a kind looking elderly woman, is standing by her desk.".

Instead of searching the classroom: try examining the classroom.

The classdoor is scenery in OutsideClassroom. Understand "door", "classroom door", "class door" and "room door" as the classdoor. The description of the classdoor is "Through a window in the door you can see the inside of the classroom.". The printed name of the classdoor is "door".


Instead of opening the classdoor: try entering the classroom.

Instead of entering the classdoor: try entering the classroom.

Instead of an actor going inside while in OutsideClassroom: try the actor entering the classroom; the rule succeeds.


The classchildren are scenery in OutsideClassroom. The description of the classchildren is "A few other children are sitting by the tables. Some are there with their parents but others seem to be alone." Understand "child" and "kids" and "kid" and "children" as the classchildren. The printed name of the classchildren is "children".

Does the player mean doing something to the classchildren: it is very likely.

Instead of taking the classchildren: say "Abducting a child from a crowded classroom is probably not a good idea.".

Instead of doing something other than taking or examining to the classchildren: say "There is no need to bother other peoples children. You need to take care of Thomas.".

The classparents are scenery in OutsideClassroom. The description of the classparents is "Several other parents are here, keeping a close eye on their children.". Understand "parent" and "parents" and "adult" and "adults" as the classparents. The printed name of the classparents is "parents". 

Instead of talking to the classparents for the first time: say "They can't hear you through the door.".

Instead of talking to the classparents at least twice: say "The door is still in the way."

Instead of doing something other than talking to or examining to the classparents : say "There is a door between you and them.".

The teacher is scenery in OutsideSchool. The description of the teacher is "She seems both caring and competent. You are sure Thomas will be save with her."

Instead of talking to the teacher: say "You would have to enter the classroom first. Then again, maybe Thomas ought to go in there by himself? He is a big boy now.".

Instead of doing something other than talking to or examining to the teacher : say "There is a door between you and her.".

The classtables are scenery in OutsideSchool. The description of the classtables is "The classroom is filled with several wooden tables. A few have children sitting at them.". Understand "table" and "tables" and "desks" as the classtables. The printed name of the classtables is "tables".

The desk is scenery in OutsideSchool. The description of the desk is "The desk seems to be empty. Hopefully, the teacher has some teaching materials stored somewhere.".

The classchairs are scenery in the classroom. The description of the classchairs is "The chairs seem decent but it's hard to tell at first glance. You hope Thomas won't get back problems or something. He will have to sit on one of those chairs for several years after all. Perhaps you should get him a pillow.". Understand "chairs" and "chair" as the classchairs. The printed name of the classchairs is "chairs".

Instead of going west while in OutsideClassroom: try entering the classroom.

Instead of Thomas going west while in OutsideClassroom: try Thomas entering the classroom.

Instead of entering the classroom: 
	say "Thomas holds your hand as you walk into the classroom together. You introduce yourself to the other parents and have a short chat with the teacher. After kissing Thomas goodbye you regretfully leave the school. He will have to do without you for the rest of the day.";
	now Thomas is not following;
	now Thomas is in the classroom;
	now the player is in the schoolyard;
	the rule succeeds.	

[Instead of doing something other than examining or entering to the classroom: say "".]

Instead of pushing Thomas when in OutsideClassroom: try Thomas entering the classroom.

Instead of Thomas entering the classroom: 
	say "Thomas is a big boy now! He would just be embarrassed if you went in there with him. You kiss him goodbye and tell him to meet you in the schoolyard. Through the window in the door you see the teacher assigning him a table and welcoming him to the class. 'He will be fine', you reassure yourself as you leave the school.";
	now Thomas is not following;
	now Thomas is in the classroom;
	now the player is in the schoolyard;
	the rule succeeds.


Chapter 5 - Work

The Company is a region. OutsideWork, the workhallway and Your Office are in The Company.

Section 1 - The parking basement

OutsideWork is a room. "Your company shares this parking garage with the other firms using the building. A few other cars are parked here. The elevator to the east is ready to take you to the floor where you work." The printed name of OutsideWork is "In the Parking Garage".

Rule for writing a paragraph about the car when in OutsideWork: say "Your car is parked here.".

The basement elevator is scenery in OutsideWork. It is container and enterable. The description of the elevator is "A plain metallic elevator door with a call button next to it.". Understand "lift" and "door" as the elevator.

The basement button is scenery in OutsideWork. The description of the button is "It calls the elevator. What more do you need to know?". Understand "call" as the button.

Persuasion rule for asking Thomas to try pushing: persuasion succeeds.

Instead of an actor pushing the button: try the actor entering the elevator; the rule succeeds.

Instead of entering the elevator: say "You use the elevator to get to the floor where you work. The doors open and you find yourself in"; now the player is in the workhallway.

Instead of an actor going up while in OutsideWork: Try the actor entering the elevator; the rule succeeds.

Instead of an actor going east while in OutsideWork: Try the actor entering the elevator; the rule succeeds.

Instead of Thomas entering the elevator: say "You don't feel comfortable letting him ride the elevator alone."; the rule succeeds.

The other cars are scenery in OutsideWork. Understand "car" as the other cars. The description of the other cars are "A few of them look a lot more expensive than yours but mostly they are just standard middle class cars."

Instead of CarDriving the other cars: say "You should probably use your own car. You have no idea how to hotwire a car anyway.".

Instead of taking the other cars: try CarDriving the other cars.

Understand "steal [something]" and "kidnap [something]" as taking.

Does the player mean taking the other cars: it is likely.

Does the player mean doing something other than taking to the other cars: it is unlikely.

The office building is scenery in OutsideWork. The description of the office building is "You can't see it since you are standing in the basement.".

Instead of burning the office building: say "While you have sometimes been tempted your job really isn't that bad.".

Instead of doing something other than burning or examining to the office building: try examining the office building.

Section 2 - The Hallway

The workhallway is a room. "To the south is the door to the elevator and to the west is the broom closet. The hallway continues north. Following it will lead you to your office.". The printed name of the workhallway is "A Hallway".

Following it is an action applying to one topic. Understand "follow [text]" as following it.

Carry out following it: try following.

Instead of following while in the workhallway: 
	try going north.

The top elevator is scenery in the workhallway. It is container and enterable. The description of the elevator is "It looks just the same as the one in the parking basement.". Understand "lift" and "door" as the elevator.

Instead of examining the elevator at least twice: say "A plain metallic elevator door with a call button next to it.".

The top button is scenery in the workhallway . The description of the button is "It calls the elevator. What more do you need to know?". Understand "call" as the button.

Instead of an actor pushing the button: try the actor entering the elevator; the rule succeeds.

Instead of an actor going down while in the workhallway: Try the actor entering the elevator; the rule succeeds.

Instead of an actor going south while in the workhallway: Try the actor entering the elevator; the rule succeeds.

Instead of entering the elevator: say "You use the elevator to get back down again. The doors open and you find yourself"; now the player is in the OutsideWork.

Instead of Thomas entering the elevator: say "You don't feel comfortable letting him ride the elevator alone."; the rule succeeds.

Understand "call [something]" as entering.

In the workhallway is the broom closet. It is container, scenery and enterable. The description of the broom closet is "The broom closet contains a few brooms and a lot of cleaning supplies. [if thomas is in the broom closet]Thomas is currently hiding inside.[otherwise if DeadThomas is in the broom closet]Thomas is lying on the floor. He appears to be sleeping.". Understand "brooms", "cleaning" and "supplies" as the broom closet.

Instead of taking the broom closet: say "It's not your job to clean the place.".

Instead of opening or closing the broom closet: try taking the broom closet.

Instead of searching the broom closet when the broom closet encloses nothing: say "There is nothing of interest inside. You are not a cleaner.".

In the broom closet are some cleaning supplies. Understand "broom" as the cleaning supplies. The description of the cleaning supplies is "A few brooms and a lot of cleaning supplies.".

Instead of taking the cleaning supplies: try taking the broom closet.

Instead of an actor going west while in the workhallway: try the actor entering the broom closet; the rule succeeds.

Instead of entering the broom closet: say "You don't feel like squeezing into the broom closet. There isn't much room in there for an adult.".

After Thomas entering the broom closet: now Thomas is not following; continue the action.

Hiding in is an action applying to one thing. Understand "hide in [something]", "hide under [something]" and "hide [something]" as Hiding in.

Check Hiding in:
	if the noun is not a container:
		say "There is nowhere to hide." instead.

Carry out Hiding in:
	try entering the noun.

Persuasion rule for asking Thomas to try hiding in: persuasion succeeds.

Instead of Thomas Hiding in: try Thomas entering the noun; the rule succeeds.

Hiding is an action applying to nothing. Understand "hide", "play hide and seek", "let's play hide and seek", "conceal", "abscond", "camouflage", "take cover" and "stow away" as Hiding.

Carry out Hiding:
	say "You have nothing to hide from.".

Persuasion rule for asking Thomas to try Hiding: persuasion succeeds.

Instead of Thomas Hiding: say "Thomas doesn't know where you want him to hide. You will have to be more specific."; the rule succeeds.

Before going north when in the workhallway: say "You follow the usual route and soon arrive at".

Section 3 - The Office

Your Office is a room. "Small, but vastly preferable to the cubicle you used to have. [if the papers are in the location]Papers are scattered all over the desk. There is plenty of work to be done.". It is north of the workhallway.

Instead of exiting when the location is your office and the player is not in a container and the player is not on a supporter:
	say "You get back to the elevator.";
	try going south.

Working is an action applying to nothing. Understand "work", "do work" and "get to work" as working.

Carry out working:
	say "You work really hard.".

Instead of working when the location is not your office:
	say "There is nothing here for you to do. You will need to get to your office first.".

Understand "get to my office", "get to office" and "go to work" as a mistake( "You will have to be a bit more specific on how you intend to accomplish that. Try finding the car and driving there.").

Understand "find car" and "find the car" as a mistake( "Sorry. You will have to do that on your own.").

The officedesk is scenery in your office. The description of the officedesk is "It serves its purpose. There is room for your stuff on top of it and your legs fit neatly in the space beneath. Your computer monitor occupies the center of the desk. Next to it is your calendar.". Understand "table", "desk" and "space" as the officedesk. It is container and enterable. The printed name of the officedesk is "desk".

Instead of entering the officedesk: say "You have a chair if you need to sit down. And there isn't enough room for an adult to hide under the desk.".

After Thomas entering the officedesk:
	say "Thomas hides under the desk.".

Instead of looking under the officedesk when thomas is in the officedesk:
	try searching the officedesk.

Instead of looking under the officedesk when thomas is not in the officedesk:
	say "The space under the desk is too small for you. Thomas might be able to hide there, though.".

Instead of searching the officedesk when the papers are in the location and thomas is not in the officedesk: say "Paperwork is scattered all over the desk. There is plenty of work to be done.".

Instead of searching the officedesk when thomas is in the officedesk:
	say "Thomas is hiding under the desk.".

Instead of searching the officedesk when the papers are not in the location and thomas is not in the officedesk: try examining the officedesk.

The computer is scenery in Your office. Understand "PC", "monitor", "screen" and "machine" as the computer. The description of the computer is "An older model but more than sufficient for the work you do.". The computer is a device.

Instead of taking the computer: say "It is too heavy to carry around.".

Instead of switching on the computer during Driving to work: say "You turn on the computer and wait impatiently for it to finish loading. You are now ready to start working."; now the computer is switched on.

Instead of switching on the computer when Driving to work has ended: say "There is no more work to be done. Time to go home.".

Instead of doing something other than examining, taking, switching on or switching off to the computer:
	say "You don't feel like messing around with the computer. The IT department is supposed to handle any necessary maintenance.".

The calendar is scenery in Your Office. The description of the calendar is "It is a joke-a-day calendar depicting Dilbert comic strips. You don't find them all that funny but it was a gift from [if the player is male]your wife.[otherwise]your husband."

Instead of taking the calendar: say "You prefer to keep it on the desk.".

Instead of doing something other than taking or examining to the calendar: say "No need to mess around with the calendar.".

The officechair is furniture in your office. The description of the officechair is "A comfortable office chair.". Understand "chair" as the officechair. The officechair is enterable. The printed name of the officechair is "chair".

Instead of doing something other than examining, entering or getting off to the officechair: 
	say "There is no need to mess around with your chair. It is just fine where it is.".

The papers are scenery in your office. Understand "paper" and "paperwork" as the papers. The description of the papers is "The paperwork seems to have been piling up lately. There is certainly no shortage of work to be done.".

Instead of taking the papers: try working.

Instead of working when the location is your office and thomas is in the location for the first time during Driving to work:
	say "The project manager drops by to see how you are doing and is surprised when he notices Thomas.[line break]'Why on earth did you bring your son to work? Bring Your Children To Work Day was last month! We can't have children running around here.'[line break]You will have to figure out what to do with Thomas.".

Instead of working when the location is your office and thomas is in the location at least twice during Driving to work:
	say "You are not allowed to keep him here. If only there was somewhere he could hide...".

Instead of working when the location is your office and thomas is in The Company and thomas is not in the location and thomas is not in the officedesk and thomas is not in the broom closet for the first time during Driving to work:
	say "The project manager drops by with Thomas tagging along. 'We found your son wandering around the bulding! Why the hell did you bring him here? We can't have children running around.' [line break]You will have to figure out what to do with Thomas.".

Instead of working when the location is your office and thomas is in The Company and thomas is not in the location and thomas is not in the officedesk and thomas is not in the broom closet at least twice during Driving to work:
	say "Thomas is still in the building. You will have to figure out what to do with him.".

Instead of working when the location is your office and thomas is in the officedesk and not there is something to play with for the first time during Driving to work:
	say "The project manager stops by and is pleased to see you hard at work. Luckily, Thomas manages to keep quiet.".

Instead of working when the location is your office and thomas is in the officedesk and not there is something to play with at least twice during Driving to work:
	say "Thomas starts complaining of boredom. There is no way he is going to hide quietly under the desk all day long. You will have to think of some way to entertain him.".

To decide whether there is something to play with:
	if the toystuff is in the location or the player is carrying the toystuff or thomas is carrying the toystuff:
	 	yes; 
	otherwise:
		 no.

Instead of playing when in your office and thomas is in the location and not there is something to play with during Driving to work:
	say "There is nothing here to play with.".

Instead of playing when in your office and thomas is in the location and there is something to play with during Driving to work:
	say "You play with Thomas for a while. Unfortunately, you still have work to do. He will have to entertain himself while you work.".

Instead of working when the location is your office and thomas is in the officedesk and there is something to play with during Driving to work:
	say "By some miracle you manage to get through the day without anyone discovering Thomas. You get him food from the canteen and convince him that you are playing a game where he has to hide from the other adults. Most of the time he either sleeps or plays with his toys. Finally, it is time to go home. The papers are gone and your desk is empty once more. There will be more work to do tomorrow.";
	now Thomas is in the location;
	remove the papers from play.

Instead of working when the location is your office and Thomas is in the broom closet during Driving to work:
	say "You start going through the papers and the day passes much like any other. When you are almost done, the realisation suddenly hits you: Thomas was hiding in the broom closet! You totally forgot about him!";
	remove the papers from play.

Instead of working when in your office and thomas is not in The Company during Driving to work:
	say "You start going through the papers and the day passes much like any other. Your job isn't the most exciting in the world but it pays the bills. When you are done the papers are gone and your desk is empty once more. There will be more work to do tomorrow.";
	remove the papers from play.

Instead of working when Driving to work has ended:
	say "You are done for today.".

Chapter 6 - Conclusion

Section 1 - Awakening

Not A Dream is a room. The description of not a dream is "The dreadful truth is, this is not a dream. There really was an accident on the way back from school. Thomas really is dead. No matter how much you try to forget it. No matter how much you wonder what you could have done differently, the past stubbornly refuses to change.".

Instead of doing something other than looking, waking up, commenting, requesting help or jumping when in Not A Dream (this is the despair rule):
		say "Thomas is dead. There is no point in doing anything anymore. Nothing you do will bring him back.".

The despair rule is listed first in the Instead rules.

Instead of doing something when in Not A Dream at least four times(this is the second  despair rule):
		say "(There doesn't seem to be anything you can do here. Perhaps it is time to restart?)".

The second despair rule is listed first in the Instead rules.