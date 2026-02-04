data = [(3, 100), (1, 200), (7, 300), (6, 400)]

print(sorted(data, key=lambda item: item[0]))



list_a = [ 1, 2, 3, 4, 5 ]
f = lambda x : 2*x
result = map(f, list_a)
print(list(result))


list_a = [1, 2, 3, 4, 5, 6]
result = filter(lambda x : x % 2 == 0, list_a) 
print(list(result))


orders = [ ["1", "재킷", 5, 120000], 
["2", "셔츠", 6, 24000], 
["3", "바지", 3, 50000],
["4", "코트", 6, 300000] ]
result = list(map(lambda x: (x[0], x[2] * x[3]), orders))
print(result)