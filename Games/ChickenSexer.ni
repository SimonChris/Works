"The Example of the Chicken Sexer" by Simon Christiansen

[Sprint 2: A more complicated chicken sexing mission, where several chickens must be sexed and made to rebel against the farmer.]

The story genre is "Comedy". The release number is 1. The story creation year is 2012.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

Include Smarter Parser by Aaron Reed.

Include Basic Help Menu by Emily Short.

Include Plurality by Emily Short.

Include Numbered Disambiguation Choices by Aaron Reed.

Include Quip-Based Conversation by Michael Martin.

[Puzzles involving the trimmed fingernails necessary to sex the chickens.]

[To Do: 
	Implement the printed name of a chicken properly.
	Pictures of chicken cloacas.]

Part 1 - Rules

Chapter 1 - Game Rules

A chicken is a kind of animal. A chicken is usually neuter. Understand "chicken", "chick" and "feather/feathers" as a chicken.  Understand "chickens" as the plural of chicken.

A chicken can be realmale or realfemale. A chicken is usually realmale.

A cloaca is a kind of thing. A cloaca is part of every chicken. Understand "cloaca" as a cloaca.

Instead of examining a cloaca:
	if the cloaca is part of a chicken (called the current chicken):
		try sexing the current chicken.
		
Instead of doing something other than examining to a cloaca:
	say "Don't be disgusting!"

A chicken has some indexed text called the chickname. The chickname of a chicken is usually "chicken". Understand the chickname property as describing a chicken.

Rule for printing the name of a chicken ( called the current chicken):
    say "[chickname of the current chicken]".
    
Instead of examining a chicken (called the current chicken):
	if the current chicken is neuter:
		say "A chicken of indeterminate gender.";
	otherwise if the current chicken is male:
		say "A male chicken.";
	otherwise if the current chicken is female:
		say "A female chicken.";
    
The description of a chicken is usually "A chicken of indeterminate gender."

Persuasion rule for asking a chicken to try doing something:
	persuasion succeeds.

Naming is an action applying to one thing and one topic. Understand "name [something] [text]" as naming.

Check naming: 
	if the noun is not a chicken:
		say "You only name chickens." instead;
	otherwise if the noun is neuter:
		say "You can't name it without knowing its gender." instead.
		
Carry out naming a chicken ( called the current chicken ):
    let N be indexed text; let N be "[the topic understood]"  in sentence case; 
    replace the text "'" in N with ""; 
    now the chickname of the current chicken is "[N]"; 
    now the current chicken is proper-named; 
    say "You decide to think of the chicken as '[chickname of the current chicken]'." 
 
Sexing is an action applying to one thing. Understand "sex [something]" as sexing.

Check sexing:
	if the noun is not a chicken:
		say "Your powers only work on chickens." instead;
	otherwise if the noun is not neuter:
		say "You've already sexed [the noun]." instead.
		
Carry out sexing:
	if the noun is realmale:
		now the noun is male;
	otherwise:
		now the noun is female;
	now the noun is not neuter.
		
Report sexing:
	if the noun is male:
		say "[The noun] is definitely male.";
	otherwise:
		say "[The noun] is definitely female.".
		
The player is carrying a certificate. Understand "paper/papers" and "document" as the certificate. The printed name of the certificate is "certificate from the Zen-Nippon school of chick sexing". The description of the certificate is "As one of the first Americans to be certified in the Japanese art of chick sexing, you proudly carry this certificate."

Instead of dropping the certificate:
	say "Absolutely not."
	
Instead of eating the certificate:
	say "Now you are just being silly."

Praying is an action applying to nothing. Understand "pray" as praying.

Report praying:
	say "If there was a patron saint of chicken sexing, you would pray to him. But there isn't, so you don't."
	
The reject commanding for talking rule is not listed in any rulebook.

The clothes are a backdrop. The clothes are everywhere.  Understand "suit", "tie" and "clothes" as the clothes. 

The description of the clothes is "You are impeccably dressed in a dark suit with a matching tie. It never hurts to make a good impression."

Instead of doing something other than examining to the clothes:
	say "You see no reason to mess with your clothes."
	
The description of the player is "You're male."
	
Understand "xyzzy" as a mistake ("Chicken sexing is not magic, even though it may appear as such to outsiders.")

After reading a command: [Understands tell chicken to...]
        let T be indexed text;
        let T be the player's command;
        replace the regular expression "^(tell|ask) (\w+) to (\w*)" in T with
"\2, \3";
        change the text of the player's command to T. 

When play begins:
	choose row 1 in Table of Basic Help Options;
	now description entry is "The game you currently playing is the result of the first iteration of work on a game which is supposed to someday become an epic story about chicken sexing. I am developing the game using an Agile Scrum-like process, in which each iteration, or 'Sprint', will result in a fully playable game. This minimizes risk by ensuring that I can always just release the result of the latest sprint, should I decide not to spend any more time on it.
	
Furthermore, another advantage of this process is that I can get feedback from prospective players after each sprint, and incorporate this in subsequent releases. This is where you come in. The feature backlog below describes the features currently under consideration, but this will change as I get feedback from the testers.

The current release of the game is very short, but demonstrates the basic functionalities that will present in the full game. It also has a very simple plot, with three different endings. See if you can find them all!

Feature backlog:

A proper plot, in which the chicken sexer gradually grows disillusioned with his work, and leads an army of chickens in rebellion.

The possibility of training chickens to perform various tricks, which may be necessary for puzzle solving.

'The Antient Fraternity of Chicken Sexers.' A silly secret society, which will play a pivotal role in the plot. The player will need to advance through various secret rituals to gain access to chicken sexing secrets, and jobs.

Randomized chicken sexing missions. Sex as many chickens as possible before time runs out! It may be necessary to make a certain amount of money this way to advance the plot.

Puzzles revolving around the sexer's need to keep his fingernails expertly trimmed.

'The Sexy Chick - The Premier Magazine for Chicken Sexers'. Pdf feelie of a chicken sexing magazine, consisting almost entirely of pictures of baby chicks labelled 'Male' or 'Female'. It can possibly also include a short editorial of some kind.

Philosophical discussions about the epistemological consequences of chicken sexing.
	
Feature suggestions are more than welcome!"
	

Table of Basic Help Options (continued)
	title		subtable		description
	"Contacting the author"	--	"Feedback can be sent to: SimonChris1729@gmail.com."
	"Hints"	Table of Hints		--
	
Table of Hints
	title	subtable	description	toggle
	"The farmer won't let me sex [the barn chicken]."	Table of Certificate Hints		""	hint toggle rule 
	"How do I get [the barn chicken] to calm down?"	Table of Calming Hints	""	hint toggle rule
	"How do I save [the barn chicken]?"	Table of Saving Hints	""	hint toggle rule
	
Table of Certificate Hints
	hint	used
	"You need to prove to the farmer that you know what you are doing."	a number
	"Do you have any official proof of your credentials?"
	"Show the certificate to the farmer."
	
Table of Calming Hints
	hint	used
	"There are many ways you can make [the barn chicken] calm down. Try to experiment a bit."	a number
	"You can talk to [it-them of the barn chicken], pet [it-them of the barn chicken], or sing a song."
	
Table of Saving Hints
	hint	used
	"The farmer doesn't want male chickens."	a number
	"If you identify [the barn chicken] as female, you will buy [it-them of the barn chicken] some time."
	"You can also try to attack the farmer."
	"You aren't much of a fighter. Maybe you can get someone else to do your dirty work for you?"
	"You can give commands to other people or animals by typing something like NPC, ACTION."
	"Tell [the barn chicken] to attack the farmer."
	"You won't be able to command [the barn chicken] until [it-they of the barn chicken] has been both sexed and named."


Part 2 - Scenes

When play begins:
	say "[bold type]'Chicken sexing is a delicate art, requiring Zen-like concentration and a brain surgeon's dexterity. The bird is cradled in the left hand and given a gentle squeeze that causes it to evacuate its intestines... With his thumb and forefinger, the sexer flips the bird over and parts a small flap on its hindquarters to expose the cloaca, a tiny vent where both the genitals and anus are situated, and peers deep inside.'
	
Joshua Foer - 'Moonwalking with Einstein'[roman type]
	
Another day, another farmer in need of assistance. If it weren’t for people like you, the entire American agricultural sector would've gone bankrupt years ago.
	
You adjust your tie as you step out of the helicopter. Time to get to work.

[bold type]Type ABOUT or HELP for some basic information about the game, as well as a hint menu[roman type].".

Chapter 1 - Simple Scenes

Part 3 - Game World

Chapter 1 - The Barn

The Barn is a room. The description of the barn is "There are piles of hay everywhere in here. A soft layer of sawdust covers the floor, and makes moving around feel like walking through coarse sand. The sun shines through the slits between the planks, causing crisscrossing rays of light to illuminate the dusty air."

The printed name of the barn is "The Barn"

The hay is scenery in the barn. Understand "pile/piles" as the hay.

Instead of doing something to the hay:
	say "You have no particular interest in hay. In fact, you prefer to avoid it."
	
The light is scenery in the barn. Understand "sun", "dust/dusty" and "sunlight" as the light. The description of the light is "The sunlight illuminating the dusty air gives the place a weird dreamlike quality."

Instead of doing something other than examining to the light:
	say "That's hardly tangible."
	
The sawdust is scenery in the barn. The description of the sawdust is "Your feet sink into the sawdust. It feels almost like walking on sand.".

Instead of doing something other than examining to the sawdust:
	say "It's just sawdust."
	
The planks are scenery in the barn. The description of the planks is "The barn is composed of old-fashioned wooden planks."

Instead of doing something other than examining to the planks:
	say "You are a chicken sexer, not a barn architect."

The barn door is a door. It is south of the barn. Understand "Gate/gates/doors" as the barn door. The barn door is scenery and locked.

Instead of exiting when in the barn:
	try going south.

The description of the barn door is "A large pair of wooden doors block the exit from the barn."

Instead of opening the barn door:
	say "You can't leave until you've done your job."

The table is an object in the barn. The description of the table is "A sturdy wooden table."

Instead of taking the table, say "It's much too heavy, and it doesn't belong to you anyway."

Rule for writing a paragraph about the table:
	say "In the middle of the room is a large wooden table, on which [if the chicken is not calm]a baby chick is currently trying to hide between its own tiny wings[otherwise][the barn chicken] is sitting[end if]."

The barn chicken is a chicken on the table.  The description of the barn chicken is "A tiny baby chick[if the chicken is not calm], trying to hide in the middle of the empty table[end if].".

The barn chicken can be calm. The barn chicken is not calm. 

Instead of taking the chicken when the chicken is neuter:
	say "Your job is to sex it, not take it."
	
Instead of taking the chicken:
	say "The farmer is watching you carefully. There is no way you can take [the barn chicken] without being noticed."

Instead of sexing the barn chicken when the farmer is not satisfied:
	say "'Hold it right there, buddy,' says the farmer. 'I ain't lettin['] you touch my chickens, until you've shown me you're qualified.'".
	
Instead of sexing the barn chicken when the farmer is satisfied and the barn chicken is not calm:
	say "[The barn chicken] is too nervous. You need to make it calm down before you can do an accurate sexing."
	
After sexing the chicken:
	say "You carefully pick up the chicken with your expertly trimmed fingernails, and inspect its cloaca. In simple cases, the cloaca contains a small bead, the shape of which determines the gender. This is not one of those cases. To almost everyone in the world this would be just another chicken cloaca. To you, it's clearly male.
	
Now that you know his gender, he somehow seems more like an individual. You almost feel like you should [bold type]name the chicken something[roman type]."
	
Instead of talking to the barn chicken when the barn chicken is not calm:
	say "'There, there,' you say, in the soothing voice you have spent years perfecting. 'It'll be over in a second.'

The chicken peeks out from beneath its wings. After a while, it seems to decide that you aren't so dangerous after all, and emerges completely. It looks up at you with big innocent eyes.";
	now the barn chicken is calm.
	
Instead of talking to the barn chicken when the barn chicken is calm:
	say "You already made [it-them of the barn chicken] calm down. Having an actual conversation is a bit beyond your skills."
	
Understand "pet [something]" as touching.

Instead of touching the barn chicken when the barn chicken is not calm:
	try talking to the barn chicken.
	
Instead of singing when the barn chicken is not calm:
	say "'There, there little chiiiicken,' you gently croon. 'Eeeeverything's fine.'
	
To your surprise, it seems to work. The chicken peeks out from beneath its wings. After a while, it seems to decide that you aren't so dangerous after all, and emerges completely. It looks up at you with big innocent eyes.";
	now the barn chicken is calm.
	
Instead of singing when the barn chicken is calm:
	say "There is no reason to sing."
	
Instead of touching the barn chicken when the barn chicken is calm:
	say "You gently caress the feathers of [the barn chicken]. [It-they of the barn chicken] doesn't seem to mind."
	
Instead of the barn chicken attacking the farmer when the chickname of the barn chicken is "chicken":
	say "The chicken looks at you with big uncomprehending eyes. You can hardly expect a simple animal to understand instructions.";
	the rule succeeds.
	
Instead of the barn chicken attacking the farmer:
	say "'[barn chicken],' you say with a confident voice. You raise your finger and point at the farmer: 'Attack!'.

[The barn chicken] slowly stands up, looking like he might fall over at any moment. Then, almost faster than the eye can follow, he launches himself off the table, gliding through the air like a flying squirrel, towards the farmer. He lands on the farmers face and pecks at the eyes, furiously.

The farmer drops to his knees and screams. 'Aaargghhh! Not my vitreous humor! Get off me!' He rips [the barn chicken] off his face and throws him at you. 'You're insane, both of you! Take that damn chicken and get off my farm!

You catch [the barn chicken] in your outstretched hand. 'You're the boss,' you say to the farmer, and shrug. The sunlight caresses your face, as you step outside. It's going to be a wonderful day.

You are never hired as a chicken sexer again, but that's okay. You have [the barn chicken], and all the other chickens you manage to rescue during the next years. The neighbors start avoiding your house. They tell stories about the crazy chicken person, who lives in a house full of chickens, and talks to them all day long. It's fine. Who cares what they think?";
	end the story saying "You've made a difference".

The farmer is a man in the barn. Understand "man" as the farmer. The description of the farmer is "You've met almost as many farmers as chickens, and this one doesn't stand out. He is wearing overalls, a short-sleeved shirt, and a straw hat. He is giving you the usual 'Does this city-slicker really think he knows more about my chickens than I do?' look.".

The farmer is wearing the farmer's clothes. Understand "overalls", "short-sleeved", "shirt", "straw" and "hat" as the farmer's clothes.

The description of the farmer's clothes is "Typical farmer clothes. Not really your style."

Instead of doing something other than examining to the farmer's clothes:
	say "They're not really your style."

Rule for writing a paragraph about the farmer:
	say "The farmer stands by the gate to the south, waiting for you to do your job."
	
Instead of sexing the farmer:
	say "He is either male, or a very convincing transvestite. Your training only covered chickens."
	
The farmer can be satisfied. The farmer is not satisfied.

Instead of talking to the farmer when the farmer is not satisfied:
	say "'You better show me some credentials, buddy,' says the farmer."
	
Instead of talking to the farmer when the farmer is satisfied and the barn chicken is neuter:
	say "'Go ahead,' says the farmer, and gestures towards the chicken. 'Show me what you can do.'"
	
Instead of talking to the farmer when the barn chicken is not neuter and the chickname of the barn chicken is "chicken":
	say "You consider telling the farmer that your work is done, but you feel like something is missing. That cute little chicken needs a name."

Instead of showing the certificate to the farmer when the farmer is not satisfied:
	say "The farmer reads the certificate and snorts. 'Zen-Nippon school, eh? Well ain't that just swell. Okay, buddy, show me what you've got.'";
	now the farmer is satisfied.
	
Instead of showing the certificate to the farmer when the farmer is satisfied:
	say "He's already seen it."
	
Instead of giving the certificate to the farmer:
	try showing the certificate to the farmer.
	
Instead of attacking the farmer when the chickname of the barn chicken is "chicken":
	say "You are not going to attack the farmer for the sake of some nameless chicken."
	
Instead of attacking the farmer:
	say "You consider trying to take down the farmer for [the barn chicken]'s sake, but decide against it. He looks much stronger than you.
	
You look at [the barn chicken], and imagine that you see a flash of anger in his eyes. Your mind must be playing tricks on you."
	
The greeting of the farmer is hello.
	
Table of Quip Texts (continued)
	quip	quiptext
	hello	"'That didn't take long,' says the farmer, and eyes you suspiciously. 'Which is it then: Male or female?'"
	sayMale	"The farmer smiles, revealing rows of yellow teeth. 'I guess ya won't be givin['] me any eggs, will ya?' He picks up [the barn chicken] from the table, and turns towards you. 'Let's get to work. Plenty more where that came from.'
	
With that, he throws the gate wide open, and leaves the barn. You try not to think about [the barn chicken]. It's just a chicken, after all. Plenty more where that came from."
	sayFemale	"The farmer looks disappointed. 'Really? I coulda sworn it had the swagger of a cockerel. Well, I guess ya'll be givin['] me plenty of eggs, little chicken.' He picks up [the barn chicken] from the table, and turns towards you. 'Let's get to work. Plenty more where that came from.'
	
With that, he throws the gate wide open, and leaves the barn.

You think about [the barn chicken], and smile. It'll be several weeks at least before the secondary sex characteristics start becoming apparent, even to the untrained eye of the farmer. Several weeks of life for little [barn chicken]. Not much, but better than nothing."
	plead	"'Hahahaha.' The farmer laughs and drops of spittle land on your face. 'You sure are a funny guy, buddy. Now, which is it: Male or female?'"

The litany of the farmer is the Table of Farmer Conversation.
	
Table of Farmer Conversation
	prompt	response	enabled
	"Male"	sayMale	1
	"Female"	sayFemale	1
	"Does it matter? Can't you just let it live a full life, regardless? If it turns out to be male, I'm sure it'll be of use elsewhere..."	plead	1
	
After quipping when the current quip is sayMale:
	end the story saying "You are a monster"
	
After quipping when the current quip is sayFemale:
	end the story saying "You made a difference"
	
In the barn is a reminder.

Rule for writing a paragraph about the reminder:
	say "Your job is to [bold type]sex the chicken[roman type].";
	remove the reminder from play.