class Solution {
public:
    int majorityElement(vector<int>& nums) {
        int count = 0;
        int result = nums.front();

        for (size_t i = 0; i != nums.size(); ++i) {
            if (nums[i] == result) {
                ++count;
            } else {
                --count;
                if (count < 0) {
                    result = nums[i];
                    count = 0;
                }
            }
        }

        return result;
    }
};
