class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int max_profit = 0;
        int cheapest_price = prices.front();
        for (const int& price : prices) {
            if (price < cheapest_price) {
                cheapest_price = price;
            } else {
                if (price - cheapest_price > max_profit) {
                    max_profit = price - cheapest_price;
                }
            }
        }
        return max_profit;
    }
};
