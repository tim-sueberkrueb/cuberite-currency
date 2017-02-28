-- market.lua

-- Offers functionality to get the price for
-- minecraft items on the market (see prices.lua)

function GetPrice(Id, Meta, Count)
  for category, pricesMap in pairs(PRICES) do
    LOG(category)
    for _, data in pairs(pricesMap) do
      itemId = data[1]
      itemMeta = data[2]
      itemName = data[3]
      itemPrice = data[4]
      if itemId == Id and (itemMeta == Meta or itemMeta == -1) then
        return itemPrice * Count
      end
    end
  end
  return -1
end
