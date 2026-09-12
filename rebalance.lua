-- ============================================================================
-- Gen1Recomp Pokémon Rebalance Module (v4 Roster Overhaul Loader)
-- Features: 151 Unique Typings, Smogon Archetypes, Rebalanced Stats & Learnsets
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  local function normalizePokemonData(data)
    if not data or type(data) ~= "table" then return data end

    local tList = data.types or data.type
    if not tList and (data.type1 or data.type2) then
      tList = {}
      if data.type1 then table.insert(tList, data.type1) end
      if data.type2 then table.insert(tList, data.type2) end
    end

    if tList then
      if type(tList) == "string" then tList = { tList } end
      data.types = tList
      data.type = tList
      if tList[1] then data.type1 = tList[1] end
      if tList[2] then data.type2 = tList[2] else data.type2 = tList[1] end
    end

    local lset = data.learnset or data.moves or data.levelUpMoves or data.level_up_moves
    if lset and type(lset) == "table" then
      local normalizedLset = {}
      for i, entry in ipairs(lset) do
        if type(entry) == "table" then
          local lvl = entry.level or entry.lvl or entry[1] or 1
          local mv = entry.move or entry.id or entry[2]
          if mv then
            table.insert(normalizedLset, {
              level = lvl,
              move = mv,
              lvl = lvl,
              id = mv,
              [1] = lvl,
              [2] = mv
            })
          end
        end
      end
      data.learnset = normalizedLset
      data.moves = normalizedLset
      data.levelUpMoves = normalizedLset
      data.level_up_moves = normalizedLset
    end

    return data
  end


  local function loadGen(name)
    if mod.loadModule then
      return mod.loadModule(name)
    end
  end

  loadGen("rebalance_gen1")
  loadGen("rebalance_gen2")
  loadGen("rebalance_gen3")

  mod.log:info('Successfully loaded Kanto Revitalised Roster Overhaul across all Generations!')
end
