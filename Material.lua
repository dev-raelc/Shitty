local MaterialAPI = {}
local MaterialList = {
	[2753915549] = {
		["Magma Ore"] = {"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"},
		["Leather"] = {"Brute [Lv. 45]"} ,
		["Scrap Metal"] = {"Brute [Lv. 45]"},
		["Angel Wings"] = {"God's Guard [Lv. 450]"},
		["Fish Tail"] = {"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"}
	},
	[4442272183] = {
		["Magma Ore"] = {"Magma Ninja [Lv. 1175]"},
		["Scrap Metal"] = {"Swan Pirate [Lv. 775]"},
		["Radioactive Material"] = {"Factory Staff [Lv. 800]"},
		["Vampire Fang"] = {"Vampire [Lv. 975]"},
		["Mystic Droplet"] = {"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
	},
	[7449423635] = {
		["Mini Tusk"] = {"Mythological Pirate [Lv. 1850]"},
		["Fish Tail"] = {"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"},
		["Scrap Metal"] = {"Jungle Pirate [Lv. 1900]"},
		["Dragon Scale"] = {"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"},
		["Conjured Cocoa"] = {"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"},
		["Demonic Wisp"] = {"Demonic Soul [Lv. 2025]"},
		["Gunpowder"] = {"Pistol Billionaire [Lv. 1525]"}
	}
}
function MaterialAPI:ListMaterial(IdPlace)
	local List = {}
	for i,v in pairs(MaterialList[IdPlace]) do
		table.insert(List, i)
	end
	return List
end
function MaterialAPI:CheckMaterialMob(IdPlace,Mob)
	return MaterialList[IdPlace][Mob]
end
return MaterialAPI
