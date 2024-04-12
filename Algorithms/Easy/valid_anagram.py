class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        d1, d2 = {}, {}
        for l1 in s:
            if l1 not in d1.keys():
                d1[l1] = 1
                continue
            d1[l1] += 1
        for l1 in t:
            if l1 not in d2.keys():
                d2[l1] = 1
                continue
            d2[l1] += 1
        return d1 == d2
