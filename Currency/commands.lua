
-- commands.lua

function BindCommands()
  cPluginManager.BindCommand("/account", "admin", CommandAccount, "~ Manage player account")
  cPluginManager.BindCommand("/coins", "", CommandCoins, "- Get the amount of coins you possess")
  cPluginManager.BindCommand("/price", "", CommandPrice, "~ Get the price for an item")
  cPluginManager.BindCommand("/buy", "", CommandBuy, "~ Buy an item")
  cPluginManager.BindCommand("/sell", "", CommandSell, "- Sell the selected items from your inventory")
end

function CommandAccount(Split, Player)
  local valid = (size(Split) == 3 and Split[3] == "get") or (size(Split) == 4)
  valid = valid and (Split[3] == "get" or Split[3] == "set" or Split[3] == "add" or Split[3] == "sub")
  if (not valid) then
    Player:SendMessageFailure("Usage: /account <player> <get:set:add:sub> <value>")
    return true
  end
  local playername = Split[2]
  local operator = Split[3]
  local coins = AccountGet(playername)
  if operator == "get" then
    SendAccountMessage(
      Player,
      playername,
      coinstr(coins)
    )
    return true
  end
  local value = tonumber(Split[4])
  if (value == nil) then
    SendAccountMessage(Player, playername, "Invalid value.")
    return true
  end
  if operator == "set" then
    AccountSet(playername, value)
    SendAccountMessage(
      Player,
      playername,
      "Set to " .. coinstr(AccountGet(playername))
    )
  elseif operator == "add" then
    AccountAdd(playername, value)
    SendAccountMessage(
      Player,
      playername,
      coinstr(coins) .. " + " .. coinstr(value) .. " = " .. coinstr(AccountGet(playername))
    )
  elseif operator == "sub" then
    if AccountSub(playername, value) then
      SendAccountMessage(
        Player,
        playername,
        coinstr(coins) .. " - " .. coinstr(value) .. " = " .. coinstr(AccountGet(playername))
      )
    else
      SendAccountMessage(Player, playername, "Not enough coins left.")
    end
  end
  return true
end

function AccountMessage(PlayerName, Message)
  local jsonClickEvent = {
    action="run_command",
    value="/account " .. PlayerName .. " get"
  }
  local json = {
    "",
    {
      text="[Account:",
      color="gold",
      bold=true,
      clickEvent=jsonClickEvent
    },
    {
      text=PlayerName,
      color="gold",
      bold=false,
      clickEvent=jsonClickEvent
    },
    {
      text="] ",
      color="gold",
      bold=true,
      clickEvent=jsonClickEvent
    },
    {
      text=Message,
      color="white",
      bold=false
    }
  }
  return cJson:Serialize(json)
end

function SendAccountMessage(Player, PlayerName, Message)
  Player:SendMessageRaw(AccountMessage(PlayerName, Message))
end

function CommandCoins(Split, Player)
  SendCoinsMessage(Player, coinstr(AccountGet(Player:GetName())))
  return true
end

function CommandPrice(Split, Player)
  if size(Split) ~= 3 then
    SendCoinsMessage(Player, "Usage: /price <itemid:itemstring> <amount>", 1)
    return true
  end
  local itemName = Split[2]
  local itemCount = tonumber(Split[3])
  if itemCount == nil or itemCount <= 0 or itemCount > 64 then
    SendCoinsMessage(Player, "Invalid amount. Choose an amount between 1 and 64.", 1)
    return true
  end
  local item = cItem()
  if StringToItem(itemName, item) then
    item.m_ItemCount = itemCount
    local price = GetPrice(item.m_ItemType, item.m_ItemDamage, itemCount)
    if price == -1 then
      SendCoinsMessage(Player, "The item " .. ItemToFullString(item) .. " cannot be traded.", 1)
    else
      SendCoinsMessage(Player, "The price for \"" .. ItemToFullString(item) .. "\" is " .. coinstr(price) .. ".")
    end
  else
    SendCoinsMessage(Player, "Unknown item.", 1)
  end
  return true
end

function CommandBuy(Split, Player)
  if size(Split) ~= 3 then
    SendCoinsMessage(Player, "Usage: /buy <itemid:itemstring> <amount>", 1)
    return true
  end
  local itemName = Split[2]
  local itemCount = tonumber(Split[3])
  if itemCount == nil or itemCount <= 0 or itemCount > 64 then
    SendCoinsMessage(Player, "Invalid amount. Choose an amount between 1 and 64.", 1)
    return true
  end
  local item = cItem()
  if StringToItem(itemName, item) then
    item.m_ItemCount = itemCount
    local price = GetPrice(item.m_ItemType, item.m_ItemDamage, itemCount)
    if price == -1 then
      SendCoinsMessage(Player, "The item " .. ItemToFullString(item) .. " cannot be traded.", 1)
    else
      if AccountSub(Player:GetName(), price) then
        local successfullAdded = Player:GetInventory():AddItem(item, true)
        if successfullAdded < itemCount then
          SendCoinsMessage(Player, "There is not enough place in your inventory.", 1)
          AccountAdd(Player:GetName(), price)
        else
          SendCoinsMessage(Player, "Bought " .. ItemToFullString(item) .. ".", 0)
        end
      else
        SendCoinsMessage(Player, "Not enough coins.", 1)
      end
    end
  else
    SendCoinsMessage(Player, "Unknown item.", 1)
  end
  return true
end

function CommandSell(Split, Player)
  local inventory = Player:GetInventory()
  local item = inventory:GetEquippedItem()
  if item:IsEmpty() then
    SendCoinsMessage(Player, "No items selected.", 1)
    return true
  end
  local price = GetPrice(item.m_ItemType, item.m_ItemDamage, item.m_ItemCount)
  if price == -1 then
    SendCoinsMessage(Player, "The item " .. ItemToFullString(item) .. " cannot be traded.", 1)
  else
    AccountAdd(Player:GetName(), price)
    SendCoinsMessage(Player, "Sold " .. ItemToFullString(item) .. " for " .. coinstr(price) .. ".", 0)
    inventory:RemoveItem(item)
  end
  return true
end

function CoinsMessage(Message, Status)
  local color = "gold"
  if Status == 1 then
    color = "red"
  end
  local jsonClickEvent = {
    action="run_command",
    value="/coins"
  }
  local json = {
    "",
    {
      text="[Coins] ",
      color=color,
      bold=true,
      clickEvent=jsonClickEvent
    },
    {
      text=Message,
      color="white",
      bold=false
    }
  }
  return cJson:Serialize(json)
end

function SendCoinsMessage(Player, Message, Status)
  Player:SendMessageRaw(CoinsMessage(Message, Status))
end
