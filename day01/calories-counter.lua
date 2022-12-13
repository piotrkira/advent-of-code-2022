local max = 0
local counter = 0

for line in io.lines("input.txt") do
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
