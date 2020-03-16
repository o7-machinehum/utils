% Straddle, saddle up cowboy

stonk = 'AMD'

put_strike = 38
put_price = 0.99

current_price = 38.13
num_opt = 500

total_cost = num_opt * put_price
possible_price = [0:0.1:current_price];

profit = linspace(0,0,length(possible_price));

for i = 1:length(possible_price)
  % If the put is itm
  if possible_price(i) < put_strike
    profit(i) = profit(i) + ((put_strike - possible_price(i)) * num_opt);
  end
end

profit = profit - total_cost;
plot(possible_price, profit);
title(['Puts: ' stonk ' ' num2str(put_strike) 'p x' num2str(num_opt) ', put cost: ' num2str(put_price) ', Total Cost: ' num2str(total_cost)]); 
xlabel('stonk price')
ylabel('gains')
grid on;
grid minor;
print('out.pdf')
