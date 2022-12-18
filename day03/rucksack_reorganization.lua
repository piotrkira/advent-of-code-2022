local sum = 0

local function get_shared(compartment_1, compartment_2)
  for c in compartment_1:gmatch"." do
    for cc in compartment_2:gmatch"." do
      if c == cc then
        return c
      end
    end
  end
end

for line in io.lines("input.txt") do
  local length = string.len(line)
  local compartment_1 = line:sub(0, length/2)
  local compartment_2 = line:sub(length/2+1, length)
  local c = get_shared(compartment_1, compartment_2)
  if string.byte(c) > 97 then
    sum = sum + string.byte(c) - 96
  else
    sum = sum + string.byte(c) - 38
  end
end

print(sum)
