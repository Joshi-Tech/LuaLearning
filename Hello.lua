print('Hello')

--This is for comment
--[[print(6+6)
a=5
b=6
print(a+b)

myArray={5,6,'Ram'}
print(myArray[3], myArray[1])
myString1='Ram'
myString2='Shyam'
print(myString1 ..' ' .. myString2)
]]



--[[function firstAdding(a,b)
  return a+b
end
print(firstAdding(5,9))
]]

--[[function getBoolean()
  a=5
  b=3
  if a>b
  then print ('yes')
  else
    print('no')
end
end
print(getBoolean())
]]

--[[ Get value from an array function
function getValueFromAnArray(n)
  return myArray[n]
end

print(getValueFromAnArray(2))
]]

--[[numberTable={2,3,5,7,11}
print(numberTable[1])
for i=1, #numberTable do
  print(numberTable[i])
end
]]

--[[
in below code it prints value with its index
numberTable={2,3,5,7,11}
for index, value in ipairs(numberTable) do  ***HERE USED INDEX AND VALUE HENCE USING iPAIRS***
  print(index, value)
end
]]

--[[ ***Key Pairs***
local studentTable={'name', 'age', 'class', 'subject'}
studentTable.name='Ram'
studentTable.age=20
studentTable.class= 10
studentTable.subject='Science'
for key, value in pairs(studentTable) do ***HERE USING KEY PAIRS***
  print(key..': ', value)
  end
  ]]
  
 --[[ -- ***Sorting A Table***
 sortTable={'Ram','Govind','Ganesh', 'Radha', 'Bhagwati', 'Arjun', 'Laxmi'}
 table.sort(sortTable)
 for i=1, #sortTable do
    print(sortTable[i])
  end
  ]]
  
 --[[-- ***When Number of Parameters are Unknown***
 local unknownNumberOfParameters = function (...)
 return p1,p2,p3, p1+p2+p3
end
print(unknownNumberOfParameters(2,5,7))
]]


--In Lua, select is a built-in function used to handle variable numbers of arguments in functions. It allows you to access specific arguments or the count of arguments passed to a function. 
--print(select('#',5,9,8,7,6))
--print(select('2',5,9,8,7,6)) --prints all the values from index 2

--[[-- ***Below code will print numbers of selectTable. Every next iteration will have one number less from the previous one***
selectTable = {5, 8, 3, 9, 12, 18, 17, 15}
-- Function to unpack table elements as arguments and print them using select
function getValueFromSelectTable(...)
    local length = select('#', ...)
    for i = 1, length do
        print(select(i, ...))
    end
end
-- Call the function with table elements unpacked
getValueFromSelectTable(table.unpack(selectTable))
]]

--[[nameTable ={'Ram', 'Shyam', 'Govind', 'Hari', 'Radha'}
table.sort(nameTable)
for i=1, #nameTable do
  print(nameTable[i])
end
  ]]
  
  n1=10   n2=12 n3=18 n4=2
  
  
  --[[ ***Select function used with VarArg**
  function addNumbers(...)
    local sum =0
    for i=1, select('#', ...) do
      sum = sum+select(i,...)
     
    end
    return sum
    end
  print(addNumbers(n1,n2))
  print(addNumbers(n1,n2,n3))
  print(addNumbers(n1,n2,n3,n4))
]]

--[[
-- ***Concatenate Tables***
firstName={'Ram', 'Shyam'}
lastName={'Singh','Sharma'}
for i=1, #firstName do
  print(firstName[i] .. ' ' .. lastName[i])
end
]]


--[[ ***Multiplying Two Tables***
quantity={5,9,11}
price={8,3,12}
for i=1,#price do
  --for j=1,#y do
    print('£'..quantity[i]*price[i])
end
]]

 --[[***Recursive Function***
function printNumber(n)
  while n < 10 do
    print(n)
    n = n + 1  -- Increment n to avoid an infinite loop
  end
end
printNumber(0)  -- Example call with a number less than 10
]]

-- ***Meta Table***
local metaTable_add= function(a,b)
  return {value=a.value+b.value}
end

local myTable1={value=100}
local myTable2={value=300}
local metaTable={__add=metaTable_add}
setmetatable(myTable1,metaTable)
local newTable=myTable1 + myTable2
print(newTable.value)

-- **Meta Table Multiply***
local metaTable_mult = function(a, b)
  return { value = a.value * b.value }
end

local metaTable_mul = { __mul = metaTable_mult }
setmetatable(myTable1, metaTable_mul)
--setmetatable(myTable2, metaTable_mul)  -- Ensure both tables have the metatable
local newTable1 = myTable1 * myTable2
print(newTable1.value)
