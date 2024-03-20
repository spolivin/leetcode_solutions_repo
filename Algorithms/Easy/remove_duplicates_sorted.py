from typing import List


class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        
        left = 1
        right = 1

        while right < len(nums):
            if nums[right] != nums[right - 1]:
                nums[left] = nums[right]
                left = left + 1
            right = right + 1

        return left