# test python file
#sagar-updated
1.List Comprehensions:
  p= [ ([ i, j,k])for i in range( x + 1) for j in range( y + 1) for k in range(z+1) if ( ( i + j+ k ) != n )]
    print(p)

2.Split Function:
  returns a list of strings after breaking the given string by the specified separator
  word = 'geeks, for, geeks'
  print(word.split(', '))# splits on commas
  ['geeks', 'for', 'geeks']

3.Map Function:
  Returns a list of the results after applying the given function to each item of a given iterable (list, tuple etc.)
  def addition(n): 
    return n + n
  numbers = (1, 2, 3, 4) 
  result = map(addition, numbers) 
  print(list(result))
  {2, 4, 6, 8}
  
4.Join Function:
  myTuple = ("John", "Peter", "Vicky")
  x = "#".join(myTuple)
  John#Peter#Vicky

5.Checking and converting to upper/lower
  list=[x for x in s]
  h=[x.upper() if x.islower() else x.lower() for x in list ]
  g=''.join(h)

6.Print Function
  print("Hello {} {}! You just delved into python.".format(a,b))
 
7.String to a list : list(string)
  
8.List to a string :''.join(list)
  
9.
  
