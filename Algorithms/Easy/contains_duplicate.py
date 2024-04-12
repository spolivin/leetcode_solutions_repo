from typing import List


class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        history = set()
        for num in nums:
            if num in history:
                return True
            history.add(num)
        return False
