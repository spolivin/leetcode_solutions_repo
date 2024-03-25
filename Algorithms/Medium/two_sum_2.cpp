class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> d;
        for (int i = 0; i != nums.size(); ++i) {
            int k = target - nums[i];
            if (d.contains(k)) {
                return {d[k], i + 1};
            }
            d[nums[i]] = i + 1;
        }
        return {0, 0};
    }
};
