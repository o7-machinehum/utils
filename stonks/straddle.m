% Straddle, saddle up cowboy

stonk = 'AMD'
call_strike = 38
call_price = 2.57

put_strike = 38
put_price = 0.99

current_price = 38.13
num_opt = 500

total_cost = num_opt * (call_price + put_price)
possible_price = [0:0.1:(current_price * 2)];

profit = linspace(0,0,length(possible_price));

for i = 1:length(possible_price)
  % If the call is itm 
  if possible_price(i) > call_strike
    profit(i) = profit(i) + ((possible_price(i) - put_strike) * num_opt);
  end

  % If the put is itm
  if possible_price(i) < put_strike
    profit(i) = profit(i) + ((put_strike - possible_price(i)) * num_opt);
  end
end

profit = profit - total_cost;
plot(possible_price, profit);
title(['Straddle: ' stonk ' ' num2str(call_strike) 'c/' num2str(put_strike) 'p x' num2str(num_opt) ', put cost: ' num2str(put_price) ', call cost: ' num2str(call_price) ', Total Cost: ' num2str(total_cost)]); 
xlabel('stonk price')
ylabel('gains')
grid on;
grid minor;
print('out.pdf')
