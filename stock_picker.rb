#!/usr/bin/ruby

def stock_picker(stock_list)

    buy_day = 0
    sell_day = 0
    profit = 0


    stock_list.each_with_index do |stock_price, day|
        stock_list.each_with_index do |price, index|
            if index <= day
                next
            end

            potential_profit = price - stock_price

            if potential_profit > profit
                profit = potential_profit
                buy_day = day
                sell_day = index
            end
        end
    end

    best_stock = [buy_day, sell_day]

    p best_stock
end

stock_picker([17,3,6,9,15,8,6,1,10])