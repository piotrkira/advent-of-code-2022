local max = 0
local counter = 0

for line in io.lines("input.txt") do
  if line == '' then
    if counter > max then
      max = counter
    end
    counter = 0
  else
    counter = counter + line
  end
end

print(max)
