![](assets/logo.png)
# Airbnb Data Analytics Project Summary
## In this project, I:
### - Connected Python to my local PostgreSQl server.
### - Established the required tables.
### - Filled the tables with data from CSV files.
### - Answer multiple business requests which are:
	 - Find neighborhoods where you can sleep on a real bed in a villa with internet while paying the lowest price possible?
	 - For each guest reviewer, find the nationality of the reviewer’s favorite host based on the guest’s highest review score given to a host. Output the user ID of the guest along with their favorite host’s nationality. In case there is more than one favorite host from the same country, list that country only once (remove duplicates).?
	 - Find the distinct room types (filter_room_types column). Output each unique room types in its own row.
	 - Rank each host based on the number of beds they have listed. The host with the most beds should be ranked 1 and the host with the least number of beds should be ranked last. Hosts that have the same number of beds should have the same rank but there should be no gaps between ranking values. A host can also own multiple properties. Output the host ID, number of beds, and rank from highest rank to lowest.
 	 - To better understand the effect of the review count on the price of accommodation, categorize the number of reviews into groups along with the price. 
	 - Find the total number of searches for each room type (apartments, private, shared) by city.
	 - You're given a dataset of searches for properties on Airbnb. For simplicity, let's say that each search result (i.e., each row) represents a unique host. Find the city with the most amenities across all their host's properties. Output the name of the city.
	 - Estimate the growth of Airbnb each year using the number of hosts registered as the growth metric. The rate of growth is calculated by taking ((number of hosts registered in the current year - number of hosts registered in the previous year) / the number of hosts registered in the previous year) * 100. Output the year, number of hosts in the current year, number of hosts in the previous year, and the rate of growth. Round the rate of growth to the nearest percent and order the result in the ascending order based on the year. Assume that the dataset consists only of unique hosts, meaning there are no duplicate hosts listed.
	 - Find the average number of beds in each neighborhood that has at least 3 beds in total. Output results along with the neighborhood name and sort the results based on the number of average beds in descending order.
 	 - Find the average accommodates-to-beds ratio for "shared rooms" in each city. Sort your results by listing cities with the highest ratios first.
	 - Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.
	 - You’re given a table of rental property searches by users. The table consists of search results and outputs host information for searchers. Find the minimum, average, maximum rental prices for each host’s popularity rating.
	 - Display the average number of times a user performed a search which led to a successful booking and the average number of times a user performed a search but did not lead to a booking. The output should have a column named action with values 'does not book' and 'books' as well as a 2nd column named average_searches with the average number of searches per action. Consider that the booking did not happen if the booking date is null. Be aware that search is connected to the booking only if their check-in dates match.
	 - Find the average host response rate with a cleaning fee for each zipcode. Present the results as a percentage along with the postal code value. Convert the column 'host_response_rate' from TEXT to NUMERIC using type casts and string processing (take missing values as NULL). Order the result in ascending order based on the average host response rater after cleaning. (Save the output to a csv file with the name a14).
	