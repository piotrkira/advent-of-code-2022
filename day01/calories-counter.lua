local lowest_max = 0
local counter = 0

local max_values = {}

local function save_n_max(n, value)
  -- init empty list
  for i = 1, n do
    if not max_values[i] then
      max_values[i] = 0
    end
  end
  for i = n, 1, -1 do
    if max_values[i] < value then
      if i < n then
        max_values[i+1] = max_values[i]
      end
      max_values[i] = value
    end
  end
  return max_values[n]
end

for line in io.lines("input.txt") do
  if line == '' then
    if counter > lowest_max then
      lowest_max = save_n_max(3, counter)
    end
    counter = 0
  else
    counter = counter + line
  end
end

local top3_sum = max_values[1] + max_values[2] + max_values[3]
print("Max calories: ", max_values[1])
print("Sum of max 3 calories: ", top3_sum)
