class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        a = dict()
        j = 0
        for i in s:
            if i in a:
                if a[i] != t[j]:
                    return False
            if t[j] in a.values() and i not in a:
                return False
            a[i] = t[j]
            j = j+1
        return True
        
