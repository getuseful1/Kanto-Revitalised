-- ============================================================================
-- Gen1Recomp Pokémon Rebalance Module (v4 Roster Overhaul Loader)
-- Features: 151 Unique Typings, Smogon Archetypes, Rebalanced Stats & Learnsets
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  local function loadGen(name)
    local status, fn = pcall(require, name)
    if status and type(fn) == "function" then
      fn(mod)
      mod.log:info("Kanto Revitalised: Successfully applied " .. name)
    else
      mod.log:error("Kanto Revitalised: Failed to load " .. name .. ": " .. tostring(fn))
    end
  end

  loadGen("rebalance_gen1")
  loadGen("rebalance_gen2")
  loadGen("rebalance_gen3")

  mod.log:info('Successfully loaded Kanto Revitalised Roster Overhaul across all Generations!')
end
