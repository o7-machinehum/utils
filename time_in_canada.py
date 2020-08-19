from datetime import datetime as dt

# Time in Canada
time_in_canada = [ 
                    
                    [dt(2020, 1, 1),   dt(2020, 2, 18)  ] , 
                    [dt(2020, 2, 28),  dt(2020, 3, 1)   ] ,
                    [dt(2020, 3, 6),   dt(2020, 3, 8)   ] ,
                    [dt(2020, 3, 12),  dt(2020, 3, 17)  ] ,
                    [dt(2020, 5, 12),  dt(2020, 8, 31)  ] ,
                 
                 ]

days = int(0)
for time in time_in_canada:
    days += (time[1] - time[0]).days

print('Been in Canada for: {} days'.format(days))
print('{} Days remaining!'.format((6*30) - days))
