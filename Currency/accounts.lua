
-- accounts.lua

-- Account database logic

ACCOUNT_DB = nil

function InitializeAccountDB()
  ACCOUNT_DB, errorMsg = NewSQLiteDB("player_accounts.sqlite")
  if not ACCOUNT_DB then
    LOGWARNING("Cannot create account database.")
    error(errorMsg)
  end
  local AccountColumns = { "Name", "Value" }
  if not ACCOUNT_DB:CreateDBTable("Accounts", AccountColumns) then
    LOGWARNING("Cannot initialize account database.")
    error("Account database failure")
  end
end

function EnsureAccount(PlayerName)
  local value = nil
    assert(ACCOUNT_DB:ExecuteStatement(
          "SELECT Value FROM Accounts WHERE (Name = ?)",
          { PlayerName },
          function (row)
              value = row["Value"]
          end
      ))
    if value == nil then
      assert(ACCOUNT_DB:ExecuteStatement(
        "INSERT INTO Accounts (Name, Value) VALUES (?, ?)",
        { PlayerName, 0 }
      ))
    end
end

function AccountGet(PlayerName)
  EnsureAccount(PlayerName)
  local value = 0
  assert(ACCOUNT_DB:ExecuteStatement(
        "SELECT Value FROM Accounts WHERE (Name = ?)",
        { PlayerName },
        function (row)
            value = row["Value"]
        end
    ))
  return value
end

function AccountSet(PlayerName, Amount)
  EnsureAccount(PlayerName)
  assert(ACCOUNT_DB:ExecuteStatement(
    "UPDATE Accounts SET Value = ? WHERE Name = ?",
    {Amount, PlayerName}
  ))
  return true
end

function AccountAdd(PlayerName, Amount)
  AccountSet(PlayerName, AccountGet(PlayerName) + Amount)
  return true
end

function AccountSub(PlayerName, Amount)
  local newAmount = AccountGet(PlayerName) - Amount
  if newAmount < 0 then
    return false
  else
    AccountSet(PlayerName, newAmount)
    return true
  end
end
