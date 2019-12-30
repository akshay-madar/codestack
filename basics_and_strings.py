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
    print(list)
    
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
   
18. Sort: i) sorted(list) : gives the list
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
    print(Counter(myList).items()) : returns the dictionary ( Also can use .keys, .values)
      
 
22. Hashable objects: which has fixed function and unchangeable. Ex: tuple, int, string

23. To check whether the dictionary has the key :
    if dic[key]:
      True
      
24. Storing index as value:
    for i in range(0,n):
    d[raw_input()].append(i+1)
 
25. Named Tuple:    Link
  
     i)from collections import namedtuple
      Marks = namedtuple('Marks', 'physics, chemistry, biology')
      m1 = Marks('87', '54', '69')
      print(m1.chemistry)
      
    ii) m2 = Marks._make(['63','72','94'])
        print(m2)
      
    Example:
      from collections import namedtuple

      (n, categories) = (int(input()), input().split())
      Grade = namedtuple('Grade', categories)
      marks = [int(Grade._make(input().split()).MARKS) for _ in range(n)]
      print((sum(marks) / len(marks)))
 
26. Collections- Python 
    https://towardsdatascience.com/a-hands-on-guide-to-python-collections-aa350cb399e3
    
    
27. To count the unique elements in the list:
    Either use set or counter
    shoes = collections.Counter(map(int, raw_input().split()))
    
    from operator import itemgetter

    chars = list(input())
    d = [[c,chars.count(c)] for c in set(chars)]
    d.sort(key=itemgetter(0))
    d.sort(key=itemgetter(1), reverse=True)
    for i in d[:3]:
        print("{0} {1}".format(i[0], i[1]))

28. Deque:
    The deque is a list optimized for inserting and removing items.
    Deques support thread safe, memory efficient appends and pops from either side of the deque with approximately the same  
    O(1) performance in either direction
    d=deque()
    list = [1, 2, 3, 4, 5]
    deq = deque(list)
    d.rotate(3)
    d.popleft() : gives the the left most object
    
29. Itertools:
    product(A, B) returns the same as ((x,y) for x in A for y in B).
    
30. Append and Extend:
    append adds an element to a list, and extend concatenates the first list 
    with another list (or another iterable, not necessarily a list.)
    x = [1, 2, 3]
    x.append([4, 5]) : [1, 2, 3, [4, 5]]
    x.extend([4, 5]) : [1, 2, 3, 4, 5]

31. Args & Kwargs: [def(*agrs), def(*kwargs)]
    https://www.geeksforgeeks.org/args-kwargs-python/


32. import math
    math.degrees() # to convert angle calculation to degrees
    math.atan() # to calculate tan of an angle
    pow(x, 2) # raise x to the power of 2. Both pow() and math.pow() are slower than ** 
    divmod(177, 10) # gives both - quotient and remainder of the division in a tuple ---> answer = (17, 7)

33. itertools:
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
          
34. Getattr: The getattr() function returns the value of the specified attribute from the specified object.
     getattr(object, attribute, default)
    for _ in range(int(input())):
      inp = input().split()
      getattr(d, inp[0])(*[inp[1]] if len(inp) > 1 else [])
    print(*[item for item in d])

35. from collections import defaultdict
    d = defaultdict(lambda: -1)
    defaultdict will never raise a KeyError. Any key that does not exist gets the value returned by the default value, in this case -1.

36. from collections import OrderedDict
    It is a dictionary where keys maintain the order in which they are inserted.
    
    ordered_dictionary = OrderedDict()
    for _ in range(int(input())):
        item, price = input().rsplit(' ', 1) # 1 specifies the number of times split can happen
        ordered_dictionary[item] = ordered_dictionary.get(item, 0) + int(price) # get retrieves the value from the container. O specifies the default value to be returned
    [print(item, ordered_dictionary[item]) for item in ordered_dictionary]
    
 37. To know the the type of error:
     for i in range(int(input())):
     try:
        a,b=map(int,input().split())
        print(a//b)
     except Exception as e:
        print("Error Code:",e)
        
 38. Regex : Reg. exp. is a sequence of characters that define a search pattern. 
     Patterns are used by string searching algorithms for "find" or "find and replace" operations on strings, 
     or for input validation. 
      
     Find, Search, Split:
     str = "The rain in Spain"
     x = re.findall("ai", str): ['ai', 'ai']
     x = re.search("\s", str): If there is more than one match, only the first occurrence of the match will be returned : 3
     x = re.split("\s", str, 1): ['The','rain in Spain']
     
     https://www.w3schools.com/python/python_regex.asp
      
     import re
     re.split(r"[.,]", "any sample string containing , and .") - square parenthesis ensure that the string is split on both- . and ,
      
     >>> import re
      >>> m = re.match(r'(\w+)@(\w+)\.(\w+)','username@hackerrank.com') - w is for words, + is for all occurences
      >>> m.group(0)       # The entire match 
      'username@hackerrank.com'
      >>> m.group(1)       # The first parenthesized subgroup.
      'username'
      >>> m.group(2)       # The second parenthesized subgroup.
      'hackerrank'
      >>> m.group(3)       # The third parenthesized subgroup.
      'com'
      >>> m.group(1,2,3)   # Multiple arguments give us a tuple.
      ('username', 'hackerrank', 'com')
      >>> m.groups()
      ('username', 'hackerrank', 'com')
      >>> m = re.match(r'(?P<user>\w+)@(?P<website>\w+)\.(?P<extension>\w+)','myname@hackerrank.com')
      >>> m.groupdict()
      {'website': 'hackerrank', 'user': 'myname', 'extension': 'com'}
      
      
      m = re.search(r"([a-z0-9])\1+", input()) - more than 1 occurences for group 1
      print(m.group(1) if m else -1)

 39. Zip Fucntions: 
     This function returns a list of tuples. 
     The th tuple contains the th element from each of the argument sequences or iterables.
     If the argument sequences are of unequal lengths, then the returned list is truncated to the length of the shortest argument sequence.
     i) zip([1,2,3,4,5,6],'Hacker')
     [(1, 'H'), (2, 'a'), (3, 'c'), (4, 'k'), (5, 'e'), (6, 'r')]
     ii) A = [1,2,3], B = [6,5,4], C = [7,8,9]
         X = [[A],][B],[C]] = [[1,2,3],[6,5,4],[7,8,9]]
         print zip(*X)
         [(1, 6, 7), (2, 5, 8), (3, 4, 9)]
         for i in zip(*X):
            sum(i)/len(i)
 40. Strip: Removes all the leading and trailing spaces from a string
     string = '   Geeks for Geeks   '
     print(string.strip()) : Geeks for Geeks
     print(string.strip('   Geeks')) : for
     string = 'www.Geeksforgeeks.org'
     print(string.strip('.grow')) : Geeksforgeeks
 
41. Sorting of lists of lists based on particular index : 
         sorted(arr,key = lambda x: x[k])
         

42. any([1>0,1==0,1<0]) : True
    all(['a'<'b','b'<'c']) : True
      
43. List Comprehensions: 
    [i for i in range(8) if i%2!=0]
    [i for i in range(8) if i%2==0 if i%3==0] : Nested Loop
    ["Even" if i%2==0 else "Odd" for i in range(8)] : If-Else 
    all(i>0 for i in ls) - postivity check using for loop format
    any(str(i)==str(i)[::-1] for i in ls) - palindrome check unding for loop format
  
44. Palindrome/Reverse 
    i[::]=i[::-1]
45. Filter: l = list(filter(lambda x: x > 10 and x < 80, l))
      

