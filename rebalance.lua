-- ============================================================================
-- Gen1Recomp Pokémon Rebalance Module (v4 Roster Overhaul Loader)
-- Features: 151 Unique Typings, Smogon Archetypes, Rebalanced Stats & Learnsets
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  local function loadGen(name)
    if mod and mod.path and type(mod.path) == "string" then
      local pattern = mod.path .. "/?.lua;" .. mod.path .. "/?/init.lua"
      if not package.path:find(pattern, 1, true) then
        package.path = pattern .. ";" .. package.path
      end
    end

    local status, fn = pcall(require, name)
    if not (status and type(fn) == "function") then
      local pathsToTry = {
        name .. ".lua",
        name
      }
      if mod and mod.path then
        table.insert(pathsToTry, 1, mod.path .. "/" .. name .. ".lua")
        table.insert(pathsToTry, 2, mod.path .. "/" .. name)
      end
      for _, path in ipairs(pathsToTry) do
        local loaded, err = loadfile(path)
        if loaded and type(loaded) == "function" then
          status = true
          fn = loaded
          break
        end
      end
    end

    if status and type(fn) == "function" then
      local runStatus, err = pcall(fn, mod)
      if runStatus then
        mod.log:info("Kanto Revitalised: Successfully applied " .. name)
      else
        mod.log:error("Kanto Revitalised: Error executing " .. name .. ": " .. tostring(err))
      end
    else
      mod.log:error("Kanto Revitalised: Failed to load " .. name .. ": " .. tostring(fn))
    end
  end

  loadGen("rebalance_gen1")
  loadGen("rebalance_gen2")
  loadGen("rebalance_gen3")

  mod.log:info('Successfully loaded Kanto Revitalised Roster Overhaul across all Generations!')
end
