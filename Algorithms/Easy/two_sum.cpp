class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> d;
        for (int i = 0; i != nums.size(); ++i) {
            int k = target - nums[i];
            if (d.contains(k)) {
                return {d[k], i};
                break;
            }
            d[nums[i]] = i;
        }
        return {0, 0};
    }
};
