from typing import List


class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        hash_map = {}
        for num in nums:
            if num not in hash_map.keys():
                hash_map[num] = 1
            else:
                hash_map[num] += 1
        
        hash_map = {k: v for k, v in sorted(
            hash_map.items(), key=lambda item: item[1], reverse=True
            )}
        
        return list(hash_map.keys())[:k]
