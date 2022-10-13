INCLUDE Scene1
INCLUDE Scene2
INCLUDE Scene3
INCLUDE Scene4
INCLUDE Scene5
INCLUDE Scene6
INCLUDE Scene7
INCLUDE Scene8

VAR Scene = 0
VAR Gold = 1000
VAR HeroRela = 10 //max +-20
VAR AntagonistRela = 0 //max +-20
VAR TownRela = 0 //max = +-20
VAR Healing = 10
VAR Antidi = 5
VAR HaveCursedSword = 0
VAR HaveMythicalRing = 0
VAR HaveScroll = 1

LIST Inventory = MagicGem, (LongSword), ShortSword, HeavyArmor, (LightArmor), (BowArrows), (HealingPotions), Antidotes, (DaggerFire), StaffBlizzards, (ScrollBinding), (RecipeBook), (CrestTenby), CursedSword, CursedSpear, CursedAx, CursedDagger, Spellbook, FancySalt

//Why do both the Great Hero and the Demon Lord keep visiting my merchant stall?

Every morning I had the same routine

Get up, get ready, and place my stall in the best part of town where business was booming

Right now this was in a hazardous area where many evildoers have been spotted

This didn't stop me from choosing to take my business here

Getting more customers willing to take their business here 

This was the town of Tenby where business thrived and people from far and wide came to visit for a taste of what the town had to offer

Most of this community had all types of species living together in harmony 

But not all wanted harmony 

I was but a simple trader of goods finding my stock to be quite high quality compared to most 

Many of my customers were local folk but once in a while I got a new customer looking for something rare 

Not long ago two names came into popularity with rumors spreading of their individual achievements 

A hero going by the name Elrris who has saved many lives and fought with many different adventures bringing peace to many lands including our own

The other was a villain going by Drekalynch who was said to be the spawn of a demon, he has done many evil deeds hiding in the shadows as his power grows and his plans for world domination continued

These two were at odds but the goodness of the hero outweighed the evil of the demon for now 

 I had no part to play in their stories, I had my own and it was a simple one 
To buy and sell from whoever came to my stall doing my small contribution to those that required my services

*[Continue?]
-> Scene_1


=== MainLoop ===

~ Scene = RANDOM(2, 8)

{ 
- ! Scene_2 && Scene <= 2 :
    -> Scene_2
- ! Scene_3 && Scene <= 3 :
    -> Scene_3
- ! Scene_4 && Scene <= 4 :
    -> Scene_4
- ! Scene_5 && Scene <= 5 :
    -> Scene_5
- ! Scene_6 && Scene <= 6 :
    -> Scene_6
- ! Scene_7 && Scene <= 7 :
    -> Scene_7
- ! Scene_8 && Scene <= 8 :
    -> Scene_8
}

{ Scene_1 && Scene_2 && Scene_3 && Scene_4 && Scene_5 && Scene_6 && Scene_7 && Scene_8 :
    -> Conclusion
- else:
    -> MainLoop
}



=== Conclusion == 
//where gold, relationships, and actions matters for endings (endings are town dies, town lives, hero corrupted, hero save people, villan turn good, villan has big evil army(gem affect this))

You have {Inventory}
You have {Gold} gold left

{
-HeroRela >= 15: The hero has saved the town and defeated all of the enemies including Drekalynch! The town is happy and celebrates!
//good Hero
}
{
-HeroRela <= 0: After making multiple mistakes, the hero slowly commits more and more atrocities. While the hero ended up defeating Drekalynch, they quickly replaced them as the new demon lord. The Kingdom issued a warrant for the hero which caused further unease in the town.
//Bad Hero
}
{
-AntagonistRela >= 12: The news spreads that the battle between Elrris and Drekalynch is over. Drekalynch surrendered, and disappeared. One day, a traveler comes to your store, it's Drekalynch! But instead of attacking you, he just buys a few things, acting like any friendly customer. He has begun a new life as a wandering traveler, atoning for his past deeds. He becomes one of your best customers in the future
//Good Villan
}
{
-AntagonistRela <= 0: News spread that the hero Elrris and any of his supporters were dead at the hands of Drekalynch with chaos spreading across Tenby, no good creature left  was safe. With no hero to stop evil, the demon was in power to control all   
//Bad Villan
}
{
-TownRela >= -5: I stood at the foot of my stand, staring at the crumbled down and ragged place I used to know as home. Everything was destroyed, what had gone wrong? Where was I to go now, what will my life be like beyond this point? I felt alone, defeated, as if this was through faults of my own. All hope left my body, this place will never be the same again.
//TownDestroyed
}
{
- HaveMythicalRing == 1: The mythical ring emits an intense blue light around me. I feel my soul being transcendent as my consciousness slowly fades away. “I am celestial…”
//RingEnding
}
{
- Gold <= 0: I have lost too much to keep going with this stall, I decided to sell my stall and start a job at the (random occupation) to get back on my feet
//Poorboy 
}
{
- Gold > 0: Business as usual, I closed up shop for the day and prepared for another day of business tomorrow 
//Keepo Managing Stall
}
{
- Gold >= 500: With the amount of money I have acquired, I have decided to take close up my stall temporarly for a life of luxury
//RichEnding
}
{
- HaveCursedSword == 1: As time passes, I grow more and more attached to the sword I bought from the mysterious merchant. Eventually, I decide I have to start testing them out myself…at night…on unsuspecting test subjects. Nobody suspects their lovable merchant could be behind such a thing…
- bought_cursed_weapon > 1: As time passes, I grow more and more attached to the weapons I bought from the mysterious merchant. Eventually, I decide I have to start testing them out myself…at night…on unsuspecting test subjects. Nobody suspects their lovable merchant could be behind such a thing…
- bought_cursed_weapon == 1: As time passes, I grow more and more attached to the weapon I bought from the mysterious merchant. Eventually, I decide I have to start testing them out myself…at night…on unsuspecting test subjects. Nobody suspects their lovable merchant could be behind such a thing…
}

//Magic Gem will lead to VillanBad
-> END

