-- ITEMS

local fullDrinks = {
    "REGAIN.regain_energy_drink",
    "REGAIN.regain_energy_drink_dark",
}

local emptyDrinks = {
    "REGAIN.regain_energy_drink_empty",
    "REGAIN.regain_energy_drink_dark_empty",
}

-- DISTRIBUTIONS

local fridgeDist = {
    "FridgeGeneric",
    "FridgeRich",
    "FridgeTrailerPark"
}

local shelfDist = {
    "ShelfGeneric",
    "StoreShelfDrinks",
}

local medicalDist = {
    "HospitalRoomShelves",
    "HospitalRoomCounter",
    "MedicalClinicDrugs",
}

local trashDist = {
    "BinHospital",
    "BinBathroom",
}

-- LOOP FOR DISTRIBUTIONS

for _,drink in ipairs(fullDrinks) do

    for _,dist in ipairs(fridgeDist) do
        table.insert(ProceduralDistributions.list[dist].items, drink)
        table.insert(ProceduralDistributions.list[dist].items, 0.1)
    end

    for _,dist in ipairs(shelfDist) do
        table.insert(ProceduralDistributions.list[dist].items, drink)
        table.insert(ProceduralDistributions.list[dist].items, 0.1)
    end

    for _,dist in ipairs(medicalDist) do
        table.insert(ProceduralDistributions.list[dist].items, drink)
        table.insert(ProceduralDistributions.list[dist].items, 1)
    end

end

for _,drink in ipairs(emptyDrinks) do
    for _,dist in ipairs(trashDist) do
        table.insert(ProceduralDistributions.list[dist].items, drink)
        table.insert(ProceduralDistributions.list[dist].items, 0.2)
    end
end

--
-- This is the code I used earlier, but it gets really long with more items and it's not as clean, I'll keep it just in case and because it's easy to understand
--

-- -- FULL DRINK

-- -- Fridges
-- table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["FridgeGeneric"].items, 80)

-- table.insert(ProceduralDistributions.list["FridgeRich"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["FridgeRich"].items, 80)

-- table.insert(ProceduralDistributions.list["FridgeTrailerPark"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["FridgeTrailerPark"].items, 80)

-- -- Shelves
-- table.insert(ProceduralDistributions.list["ShelfGeneric"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["ShelfGeneric"].items, 80)

-- table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, 80)

-- -- Medical
-- table.insert(ProceduralDistributions.list["HospitalRoomShelves"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["HospitalRoomShelves"].items, 80)

-- table.insert(ProceduralDistributions.list["BathroomCabinet"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["BathroomCabinet"].items, 99)

-- table.insert(ProceduralDistributions.list["HospitalRoomCounter"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["HospitalRoomCounter"].items, 80)

-- table.insert(ProceduralDistributions.list["MedicalClinicDrugs"].items, "REGAIN.regain_energy_drink")
-- table.insert(ProceduralDistributions.list["MedicalClinicDrugs"].items, 70)

-- -- EMPTY DRINK
-- table.insert(ProceduralDistributions.list["BinHospital"].items, "REGAIN.regain_energy_drink_empty")
-- table.insert(ProceduralDistributions.list["BinHospital"].items, 90)

-- table.insert(ProceduralDistributions.list["BinBathroom"].items, "REGAIN.regain_energy_drink_empty")
-- table.insert(ProceduralDistributions.list["BinBathroom"].items, 90)
