class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = "".join([char.lower() for char in s if (char.isalnum() == True)])
        if s == s[::-1]:
            return True
        return False
