var goldBars = 0
let unlockTreasureChest: (inout Int) -> Void = { inventory in
    inventory += 100
}

unlockTreasureChest(&goldBars)
print(goldBars)