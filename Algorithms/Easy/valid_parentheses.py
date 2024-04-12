class Solution:
    def isValid(self, s: str) -> bool:
        openers = ('(', '[', '{')
        if s[0] not in openers:
            return False
        stack = []
        for char in s:
            if char in openers:
                stack.append(char)
            else:
                try:
                    if (char == ')' and stack[-1] == '(') \
                    or (char == ']' and stack[-1] == '[') \
                    or (char == '}' and stack[-1] == '{'):
                        stack.pop()
                    else:
                        return False
                except IndexError:
                    return False

        return True if stack == [] else False
