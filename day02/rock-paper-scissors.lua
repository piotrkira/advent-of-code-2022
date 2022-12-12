local score_table = { A = { X = 4, Y = 8, Z = 3}, B = { X = 1, Y = 5, Z = 9}, C = { X = 7, Y = 2, Z = 6}}

local score = 0
for line in io.lines("input.txt") do
  local oponent = line:sub(1,1)
  local me = line:sub(3,3)
  score = score + score_table[oponent][me]
end

print(score)
