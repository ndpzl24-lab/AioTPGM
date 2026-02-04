capitals ={"Korea":"Seoul","USA":"Washington","UK":"London"} 


for k in capitals:
    print(k, ":", capitals[k])
    
for k in capitals.keys():
    print(k)    
    
for v in capitals.values():
    print(v)   
    
for k, v in capitals.items():
    print(k, v)