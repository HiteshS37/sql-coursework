SELECT
 Date,
 Region,
 Small_Bags,
 Large_Bags,
 XLarge_Bags,
 Total_Bags,
 Small_Bags + Large_Bags + XLarge_Bags AS Total_Bag_Calc
FROM `YOUR_PROJECT_ID.avocado_data.avocado_prices`
