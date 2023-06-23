%dw 2.0
output application/json
//Here i am used to convert Array into object by using Reduce function and forms the Required output as of my Requirement
---
{
 name: payload reduce ((item, accumulator=[]) -> (accumulator + item.name) ),
 nameAgePair: payload reduce ((item, accumulator={}) -> (accumulator ++ (item.name):
(item.age)))
}





/*
output:
{
 "name": [
 "jam",
 "ram"
 ],
 "nameAgePair": {
 "jam": 56,
 "ram": 6
 }
}
*/