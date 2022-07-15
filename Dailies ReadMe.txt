~~ Objective ~~
	Objective to run all the included luminance quests as a group or solo.
	Keep Fellow sync'd together throughout.
	Spend Luminance at Nalicana when at 1 million or more luminance to avoid capping at the end of dailies.
~~ Setup Files ~~
	Extract the files to your Virindi Tank folder. Default location: C:\Games\VirindiPlugins\VirindiTank
	Once in game load %%RynOptions%%.met on one character to make all of the changes outlined below.
	Follow all setup instructions below. Please do not make any changes below the lines containing %% Do Not Edit Below Here %%
~~ Setup Meta ~~
	Requires edits to %%RynDQLOptions%%.met under %% Options %% state.
	Requires edits to %%RynDQLOptions%%.met under %% ToBotLocation %% state if you'd like to use a portal bot.

This meta pack has two options for setup, Preset and Assisted-Setup.
Preset requires you to follow the instructions below.

Assisted-Setup will handle the setup through in game prompts. If you clear persisent or global variables you will have to go through the setup again.


Under %%% Enable Options %%% in %%Options%% state.
	Change Never to Always on the options you'd like to use.
	Under the associated QuestToggles enable one of the toggles for Run,UseBot, or SummonPortal. feel free to mix and match if you'd prefer one method over another.

Run ~ Will route to the dungeon without Bots or Summoning the portal yourself.
UseBot ~ Will route to the Portal Bot you setup below to get to the locations faster.
SummonPortal ~ Will route to MP and summon the portal by one of the Fellow members setup below. Requires Primary Portal Tie to the associated portals.

Eg. Refer to VtankExamples.png
	
This is how it would look if you'd like to self summon Count Phainor portal.

UseBot - If you chose to UseBots on any of the above toggles it will require route edits to your bot in %%DQLOptions%%.met under %% ToBotLocation %% state.
SummonPortal - If you chose to SummonPortal on any of the above toggles it will require the following ties as primary on character specified under %% Summon Names Below %% Jump to Routes for list of how to get to them.

Under %% ToBotLocation %% state if you set any of the above metas to UseBot.
	Under the Line containing "From Town Network drop to Town Portal As A Once Route" create and embed a once route to the bots location.
	Under the Line containing "From Town Portal Drop to in front of Bot Location" Update the Landcell after portal space, create and embed a once route to in front of the bot.
	Under the Line containing "Landcell in front of bots to return to previous meta" Update the Landblock to the block in front of the bot.

LSRecall - Will use Lifestone Recall(not where you end up when you die) to get to candeth if you don't have the candeth recall for Purging the Corruption quest turnin.
TuskerSecondary - Will use secondary portal recall to get to Prodigal Tusker instead of running from Facility Hub. Very long run for this quest.

Under %%% Edit Fellow Count %%% in %%Options%% state.
	Change setpvar[FellowCount,number] to the number of members you plan to run the meta with.

Under %%% Edit Names Below %%% in %%Options%% state.
	Change setpvar[LeaderName,CharOne] to the character name you'd like to be fellow leader and to use doors/levers/puzzles in dungeons. Ex. setpvar[LeaderName,Ryn]
	Change setpvar[FellowNameTwo,CharTwo] to any other characters that is not the leader. Do the same for the remaining lines under this section. Up to the amount you have in the fellow Ex. setpvar[FellowNameTwo,Ryn II]

Under %%% Edit Bot Count %%% in %%Options%% state.
	[BotCount,number] to the number of portal bots on the account for setting up names.

Under %%% Bot Names Below %%%
	Change setpvar[BotNameOne,BotNameOne] to any of the portal bot names. Ex. setpvar[BotNameOne,RynBot]
	Change setpvar[BotNameTwo,BotNameTwo] to any of the portal bot names. Do the same for all remaining lines in this section up to the number of bots on the account. Ex. setpvar[BotNameTwo,RynBot II]

Under Chat %%% BotKeywords Below %%% If Summoning portals yourself is the wanted. These can be mixed and matched with self summon and bot use to save ties.
	Change setpvar[QuestKeyWordCountPhainor,QuestKeyWordCountPhainor] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordCountPhainor to summon Count Phainor dungeon.
	Change setpvar[QuestKeyWordDeathsAllure,QuestKeyWordDeathsAllure] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordDeathsAllure to summon Thrungus Hole dungeon.
	Change setpvar[QuestKeyWordNexusCrawl,QuestKeyWordNexusCrawl] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordNexusCrawl to summon Nexus Crawl dungeon.
	Change setpvar[QuestKeyWordProdigalBanderling,QuestKeyWordProdigalBanderling] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordProdigalBanderling to summon Ayan Town.
	Change setpvar[QuestKeyWordPurgingTheCorruption,QuestKeyWordPurgingTheCorruption] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordPurgingTheCorruption to summon Tumerok Chamber dungeon.
	Change setpvar[QuestKeyWordSplittingGrael,QuestKeyWordSplittingGrael] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordSplittingGrael to summon Ayan Town.
	Change setpvar[QuestKeyWordUnleashTheGearknight,QuestKeyWordUnleashTheGearknight] to match the keyword the bot needs to hear to summon the portal. RynBot requires the word QuestKeyWordUnleashTheGearknight to summon Reaving Facility dungeon.

Under %% Summon Names Below %% If Summoning portals yourself is the wanted.These can be mixed and matched with self summon and bot use to save ties.
	Change setpvar[UGKSummon,CharTwo] to the character that is tied to the respective portals from the list below. UGK Surface Ex setpvar[UGKSummon,Ryn II]
	Change setpvar[SplittingGraelSummon,CharThree] to the character that is tied to the respective portals from the list below. Ayan town tie Ex setpvar[SplittingGraelSummon,Ryn III]
	Change setpvar[PurgingTheCorruptionSummon,CharFour] to the character that is tied to the respective portals from the list below. Tumerok Chamber Ex setpvar[PurgingTheCorruptionSummon,Ryn IV]
	Change setpvar[ProdigalBanderlingSummon,CharThree] to the character that is tied to the respective portals from the list below. Ayan town tie Ex setpvar[ProdigalBanderlingSummon,Ryn III]
	Change setpvar[NexusCrawlSummon,CharFive] to the character that is tied to the respective portals from the list below. Nexus Crawl Surface Ex setpvar[NexusCrawlSummon,Ryn V]
	Change setpvar[DeathsAllureSummon,CharSix] to the character that is tied to the respective portals from the list below. Thrungus Hole Surface Ex setpvar[DeathsAllureSummon,Ryn VI]
	Change setpvar[CountPhainorSummon,CharSeven] to the character that is tied to the respective portals from the list below. Count Phainor Surface Ex setpvar[CountPhainorSummon,Ryn VII]

Under %% Quest Toggles Below %% Set to 1 to run the quest, set to 0 to skip the quest.

Under %% Clear At End Toggles Below %% Set to 1 not clear options at the end, Set to 0 clear options at the end.

Under %% Auto-spend lum at Nalicana %% Set to 1 auto spend at nalicana when above 1 million luminace, Set to 0 not spend luminace.

Under %% Bloodstone Shards to Keep before Turning in %% Set the number of BloodStone shards you'd like to keep before turning in. (Default is 15)

~~ Routes ~~
Primary Ties   Pathing
	UGK Surface Portal ~ From Plateau Village take Wilomine Villas(45.5N, 42.5W), Run NW to 40.1N, 50.9W, inside the burrow take all lefts to reach Reaving Facility. Once inside tie to surface.
	Ayan - Ayan in town drop or Ayan Nexus. ~ Rossu Morta Chapterhouse of Whispering Vlade Chapterhouse, tie to Ayan Baqur portal inside. Most Portal bots also have this tie.
	PTC - Tumerok Chamber Surface portal location 81.6S, 36.6W Run from Candeth to South Direlands at 88.6S, 66.8W then proceed to 81.6S, 36.6W. Once inside tie to surface.
	Prodigal Banderling - Ayan in town drop or Ayan Nexus. ~ From Zaikhail, take Sharvale settlement portal(12.7N, 1.7W), Run to 12.8N, 12.2W take. Once inside tie to surface.
	Nexus - Run Northeast from Ayan Baqur or Southeast from Mount Lethe (if you have the recall spell) to 40.1S, 79.2W. The recall is the fastest way. Once inside tie to surface.
	Deaths Allure - Take the Eastwatch portal in the Town Network, run through the Shattered Outlands pass at 93.0N, 47.0W, and then head due east to the small cave at 94.2N 43.0W. Once inside tie to surface.
	Count Phainor - Tie to surface portal at the end of Count Phainor. Graveyard at 65.0S 44.1W.
~ To Begin ~~
Once all settings are completed load QuestCheck on all characters setup above with /vt meta load QuestCheck or with a broadcast command of /ub bc QuestCheck 
Warning the broadcast will send to all open clients if Vital sharing is on
If you're missing recalls it will warn you that it is skipping associated quests.
If all options are setup correctly a Start button will pop up. Press Start to start the meta loop. Settings must be setup before you send start or it will not function!

If you have any feedback or run into any major issues please contact me on discord @ Ryn#7986 or submit an issue on the github with Meta Name, State Name, and issue that is occuring.

Also if you play on Coldeve and would like to save running to get each portal tie I am willing provide them.
~~ Dependencies ~~
Virindi Tank
Utility Belt version 0.2.6 03-11-22 or newer

Optional Rynthid Weapon meta included will kill pillars and rush portal on global, even if you dont take them down. requires fairly strong fellow.
