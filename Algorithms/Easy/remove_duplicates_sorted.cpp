class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        
        int left = 1;
        int right = 1;

        while (right < nums.size()) {
            if (nums[right] != nums[right - 1]) {
                nums[left] = nums[right];
                ++left;
            }

            ++right;
        }

        return left;
    }
};
