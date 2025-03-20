function fix_cs
  # Lua command to search and toggle fullscreen
  set LUA_COMMAND 'for s in screen do
    for _, c in ipairs(s.all_clients) do
      if c.name == "Counter-Strike 2" then
        c.fullscreen = false
      end
    end
  end'
  
  # Execute the command within AwesomeWM
  awesome-client "$LUA_COMMAND"
end
