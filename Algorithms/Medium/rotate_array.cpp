class Solution {
public:
    void rotate(vector<int>& nums, int k) {
        
        const size_t dim = nums.size();
        vector<int> result(dim);

        for (size_t i = 0; i != dim; ++i) {
            if (i + k < dim) {
                result[i + k] = nums[i];
            } else {
                result[(i + k) % dim] = nums[i];
            }
        }

        for (size_t i = 0; i != dim; ++i) {
            nums[i] = result[i];
        }
    }
};
