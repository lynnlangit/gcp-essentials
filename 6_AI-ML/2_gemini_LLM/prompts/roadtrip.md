# Build a Road Trip Planner

1. Generate itinerary including Google Maps
2. Provide constraints
3. Include parameters
4. Use Gemini

## Prompt

Named parameter values  
month = {June}  
origin city, state = {Fargo, ND}  
destination city, state = {Salt Lake City, UT}  
state to view = {Wyoming}  
daily drive time in hours = {6}  

Plan a itinerary of daily driving routes in {month} from {origin city, state} to {destination city, state}.  
Work step-by-step, do not skip steps. Drive time each day should be as close to {daily drive time in hours} hours as possible.  
Verify the estimated drive time for each day using this process described.  
**Write a Python program to compute the actual distance between the route steps using 
the lat, long from the source and destination city as inputs and then verify using 
the results of a query to the Google Maps API to get the Google Maps driving time between the two cities to ensure 
the planned route's daily drives fall within the daily time constraint of no more than {daily drive time in hours} hours of driving.**   
Once you have completed this task, then move on to the next task.

Next review your planned itinerary and then consider that daily drives within the time constraint should maximize scenic views 
and should go through {state to view} as much as is possible while still honoring the drive time constraint. 
Update your plan and iterate to include this constraint.  
Generate a daily plan for the driving route given these instructions. 
Include altitude, scenic highlights and potential stops.  
Include valid Google Maps links for each day's route.  
Verify each link URL generated.  
