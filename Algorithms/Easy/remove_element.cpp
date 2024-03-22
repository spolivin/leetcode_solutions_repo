class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        int n = nums.size() - 1;
        int m = 0;

        while (m <= n) {
            if (nums[m] == val) {
                nums[m] = nums[n];
                nums[n] = nums[m];
                --n;
                continue;
            }

            ++m;
        }

        return m;
    }
};
