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

LIST Inventory = MagicGem, (LongSword), ShortSword, HeavyArmor, (LightArmor), (BowArrows), (HealingPotions), Antidotes, DaggerFire, StaffBlizzards, (ScrollBinding), (RecipeBook), (CrestTenby), CursedSword, CursedSpear, CursedAx, CursedDagger, Spellbook, FancySalt

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
-HeroRela >= 15:
//good Hero
}
{
-HeroRela <= 0:
//Bad Hero
}
{
-AntagonistRela >= 12:
//Good Villan
}
{
-AntagonistRela <= 0:
//Bad Villan
}
{
-TownRela >= -5:
//TownDestroyed
}
{
- HaveMythicalRing == 1:
//RingEnding
}
{
- Gold <= 0:
//Poorboy 
}
{
- Gold > 0:
//Keepo Managing Stall
}
{
- Gold >= 500:
//RichEnding
}



//Town is happy, If Town is not destoryed/Hero corrupt/Villain win
//Has Cursed Weapon
//Amount of Gold left (leave for rich life or be stall manager or no gold means bankrupt)
//Magic Gem will lead to VillanBad
//Salt will lead to ending
//List items you have left
-> END

