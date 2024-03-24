class Solution {
public:
    vector<int> runningSum(vector<int>& nums) {
        
        const size_t dim = nums.size();
        vector<int> running_sum(dim);

        size_t sum = nums.front();
        running_sum[0] = sum;

        for (size_t i = 1; i != nums.size(); ++i) {
            sum += nums[i];
            running_sum[i] = sum;
        }

        return running_sum;

    }
};
