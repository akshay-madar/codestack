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
  
9.Find the position of a  substring within the string
  testString1.find('xxy')
  testString1.rfind('l')

10.Text Allignment
    width = 20
    print 'HackerRank'.ljust(width,'-')
    print 'HackerRank'.center(width,'-')
    print 'HackerRank'.rjust(width,'-')
    HackerRank---------- 
    -----HackerRank-----
    ----------HackerRank
 
11.Text Wrapping 
   print textwrap.fill(string,max_width) : breaking a paragraph or long string in line by line 
   print textwrap.wrap(string,max_width) : lists

12. Supressing next line print
    for i in range(1, n+1):
        print(i, end = '') # end forces the print to come on the same line

13. Reverse a list
    list.reverse()
    
14. Finding number of occurences/index numbers of a substring in a string
    def count_substring(string, sub_string):
      count = [i for i in range(len(string)) if string.startswith(sub_string, i)]
      return len(count) # for number of occurences
      return count # for list containiing index numbers of occurences
 
15. String validators: syntax - string.func()
    isdigit()
    isalpha()
    isalnum()
    islower()
    isupper()

16. Capitalize first letter of each word in a string
    import string
    answer = string.capwords(sentence, sep = None)

17. Finding all possible substrings in a string
    length = len(input_string)
    print [input_string[i:j+1] for i in range(0, length) for j in xrange(i,length)]
   
18. Sort: i) sorted(list)
         ii) sort.list()
             print(list)

19. EOF - End of file error. If the input is initiated once, we can call the function only once. Other wise, we get EOF error. 

20. The major difference is that sets, unlike lists or tuples, cannot have multiple occurrences of the same element and store unordered values.

21. List to dictionary: 
    Collections:i) A counter is a container that stores elements as dictionary keys, 
                 and their counts are stored as dictionary values.
                ii) A Counter is a dict subclass for counting hashable objects. 
                    It is an unordered collection where elements are stored as dictionary keys and their counts are stored as dictionary values.
                    Counts are allowed to be any integer value including zero or negative counts.
                    The Counter class is similar to bags or multisets in other languages.
    from collections import Counter
    print(Counter(myList).items()) : returns the dictionary
 
22. Hashable objects: which has fixed function and unchangeable. Ex: tuple, int, string

23. To check whether the dictionary has the key :
    if dic[key]:
      True
      
24. Storing index as value:
    for i in range(0,n):
    d[raw_input()].append(i+1)

25. import math
    math.degrees() # to convert angle calculation to degrees
    math.atan() # to calculate tan of an angle
    pow(x, 2) # raise x to the power of 2. Both pow() and math.pow() are slower than ** 
    divmod(177, 10) # gives both - quotient and remainder of the division in a tuple ---> answer = (17, 7)

26. itertools:
    from itertools import permutations/combinations/combinations_with_replacement
    print list(permutations('abc',3))
    answer = [('a', 'b', 'c'), ('a', 'c', 'b'), ('b', 'a', 'c'), ('b', 'c', 'a'), ('c', 'a', 'b'), ('c', 'b', 'a')]
    
    from itertools import groupby
    for (key,group) in groupby(numbers): 
    print (key,list(group))
    answer = (1, [1, 1, 1])
              (3, [3, 3])
              (2, [2, 2])
              (1, [1, 1])
