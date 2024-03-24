from typing import List


class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        res = [0] * len(nums)

        i = 0
        while i < len(nums):
            try:
                res[i + k] = nums[i]
            except IndexError:
                res[(i + k) % len(nums)] = nums[i]
            i += 1

        i = 0
        while i < len(nums):
            nums[i] = res[i]
            i += 1
