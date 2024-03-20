from typing import List


class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        n = len(nums) - 1
        m = 0
        while m <= n:
            if nums[m] == val:
                nums[m], nums[n] = nums[n], nums[m]
                n -= 1
                continue
            m += 1
        
        return m
