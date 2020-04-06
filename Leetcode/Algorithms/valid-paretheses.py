class Solution:
    def isValid(self, s: str) -> bool:
        a = []
        for i in range(len(s)):
            if s[i] == ']' and len(a) != 0 and a[-1] == '[':
                a.pop()
            elif s[i] == ')'  and len(a) != 0 and a[-1] == '(':
                a.pop()
            elif s[i] == '}' and len(a) != 0 and a[-1] == '{':
                a.pop()
            else:
                a.append(s[i])
        if len(a) == 0:
            return True
        else:
            return False
