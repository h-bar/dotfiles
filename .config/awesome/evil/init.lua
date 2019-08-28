-- evil = {}

require("evil.volume")
require("evil.cpu")
require("evil.temperature")
require("evil.ram")
require("evil.mpd")

if is_laptop then
  require("evil.battery")
end

-- return evil
