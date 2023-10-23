def sols(a, b, c, discriminant):
    if discriminant > 0:
        print("L'equation admet deux solutions distinctes:")
        print("x1:", (-b + discriminant**0.5) / (2*a))
        print("x2:",(-b - discriminant**0.5) / (2*a))
        
    elif discriminant == 0:
        print("L'equation admet une unique solution:")
        print("x1:", -b/(2*a))
    
    else:
        print("L'equation n'admet aucune solution")
a, b, c, d = [float(i) for i in input().split()]
sols(a, b, c, d)
