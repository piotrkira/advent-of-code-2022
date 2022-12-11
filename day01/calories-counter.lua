local lines = io.read("*a")

local max = 0
local counter = 0

for line in lines:gmatch("([^\n]*)\n?") do
  if line == '' then
    counter = 0
  else
    counter = counter + line
    if counter > max then
      max = counter
    end
  end
end

print(max)
