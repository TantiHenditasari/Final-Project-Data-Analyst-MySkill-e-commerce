# FINAL PROJECT DATA ANALYST MYSKILL E-COMMERCE
## OVERVIEW
This end-to-end data analysis project extracts strategic business insights and examines customer behavior within e-commerce utilizing SQL, Python, and Looker Studio.
- SQL: utilized for data cleaning and extraction. SQL helped uncover sales and market patterns by observing customer behavior, providing crucial insights to inform strategies for sales optimization and growth
- Python: employed for in-depth analysis, leveraging data processing libraries like Pandas and NumPy, and visualization tools such as Matplotlib, to thoroughly explore problems and identify key sales trends
- Looker Studio: used to design and build interactive dashboards, visualizing market trends and product sales performance for clear interpretation and effective presentation to business stakeholders
## TOOLS USED
This project leverages the following tools for data extraction, analysis, and visualization:
- **Google BigQuery:** a cloud-based, serverless data warehouse utilized for rapid and efficient data querying and extraction, seamlessly integrating with other Google Cloud services.
- **Google Colab:** a cloud-based platform employed for executing Python code, enabling in-depth data analysis, including cleaning and transformation processes.
- **Google Sheets:** used for efficient data management, organization, validation, and quick preliminary analysis.
- **Looker Studio:** a powerful platform used to build interactive dashboards easily, capable of connecting to various data sources for comprehensive visualization.
## KEY FINDINGS, INSIGHTS AND RECOMMENDATIONS
### 1. Data Analysis using SQL
Link: https://github.com/TantiHenditasari/Final-Project-Data-Analyst-MySkill-e-commerce/tree/main/Data-Analysis-SQL
#### Answer No 1
Insights: In 2021, the highest transaction value was recorded in August, with total sales amounting to 227,862,694

Recommendations:
- Conduct a comprehensive analysis of the August sales peak to identify the underlying drivers and ensure optimal inventory levels for high-performing products in anticipation of future promotional events
- Leverage the insights gained from August's performance to develop and implement scalable sales strategies aimed at optimizing revenue generation across other months

#### Answer No 2
Insights: In 2022, the 'Mobiles & Tablets' category generated the highest transaction value, amounting to 918,451,572

Recommendations:
- Conduct a thorough analysis and evaluation of sales trends within the 'Mobiles & Tablets' category to identify top-selling products and understand their underlying success factors
- Optimize advertising and promotional efforts specifically for this category to enhance its sales performance and market share further
- Continuously stay updated with technological advancements and product trends in the 'Mobiles & Tablets' sector to ensure sustained sales optimization
- Leverage the successful marketing strategies from this category as a benchmark to improve sales performance across other product categories

#### Answer No 3
Insights: From a comparison of 2021 and 2022 sales data, the 'Books' and 'Others' categories experienced a decrease in transaction value, while all other categories showed an increase

Recommendations:
- Conduct a thorough analysis and evaluation of products within the categories experiencing sales decline to understand the underlying reasons
- Optimize and enhance advertising and promotional efforts for the declining categories, leveraging successful marketing strategies from categories that showed growth
- Implement inventory clearance and flash sales, particularly for slow-moving or outdated items. Alternatively, explore product return options with manufacturers if contractual agreements permit
- Continuously stay updated with market trends and consumer preferences to boost sales in the 'Others' and 'Books' categories

#### Answer No 4
Insights: In 2022, the most popular payment methods were Cash on Delivery (COD), PayAxis, Customer Credit, EasyPay, and Jazzwallet. COD emerged as the primary choice for customers, for over 1,800 transactions

Recommendations:
- Enhance logistical reliability to further support the Cash on Delivery (COD) method, thereby improving performance and service quality, and solidifying it as a core strength of the company
- Increase the promotion of alternative payment methods, especially digital options, by offering various incentives. Digital methods provide advantages such as enhanced security and operational efficiency, which are not inherent in COD
- Conduct further research into the challenges or drawbacks associated with other payment methods to gain a deeper understanding of their lower adoption rates

#### Answer No 5
Insights:
- Samsung dominates with a transaction value of 588,764,062, slightly surpassing Apple's sales of 444,855,280, which holds the second position
- There is a significant transaction value gap between Samsung and Apple compared to the other three brands
- Sony, Huawei, and Lenovo compete closely with nearly equivalent transaction values."

Recommendations:
- Prioritize inventory and promotional efforts for Samsung and Apple products, as they consistently demonstrate sales dominance with the highest transaction values
- Evaluate the sales strategies for the other three brands (Sony, Huawei, and Lenovo) to identify areas for improvement
- Develop distinct marketing strategies for Sony, Huawei, and Lenovo, given their similar transaction values, to enhance each brand's competitiveness
- Continuously stay updated with technological advancements and product trends to align with market demands, particularly focusing on features of top-selling products
  
### 2. Data Analysis using Pyhton
Link: https://github.com/TantiHenditasari/Final-Project-Data-Analyst-MySkill-e-commerce/tree/main/Data-Analysis-Python
#### Answer No 1
Insights:
- The top 5 best-selling products in the "Mobiles & Tablets" category are: IDROIX_BALRX7-Gold, IDROIX_BALRX7-Jet Black, Infinix Hot 4-Gold, Samsung_Grand Prime Plus-Black, and Infinix_Zero 4-Grey
- IDROIX_BALRX7-Gold is the clear top-seller with 1,000 units sold. The sales gap between this product and the second-place product, IDROIX_BALRX7-Jet Black, which only sold 31 units, is substantial
- This significant gap could be attributed to differences in price, features, smartphone models, or customer preferences.

Recommendations:
- IDROIX_BALRX7-Gold is the ideal item for the grand prize of the year-end festival competition. Its high sales volume and popularity could lead to increased participation
- While the other top-selling products only sold between 10 and 31 units, they could be used as second or third prizes as an alternative way to promote these products
- However, due to the low sales volume of the other products in the top 5 list, they may not be a strong incentive for participants. Therefore, offering other best-selling products from different categories could be a more effective alternative to maintain high participant interest.

#### Answer No 2.1
Insights:
- The 'Others' category experienced the most significant sales decline, with a negative growth of 163 items compared to the previous year, highlighting it as the category with the lowest performance
- Other categories that also showed a decrease in sales are 'Soghaat' (-147 items), 'Men Fashion' (-15 items), and 'Beauty & Grooming' (-12 items)
- This indicates a broader issue with a portion of the inventory not meeting market demand, leading to excess stock, particularly in the 'Others' category
  
Recommendations:
- Conduct a thorough analysis and evaluation of the marketing strategies for these declining categories by studying current market trends, seasonal demand, and recent product updates
- Implement a customer satisfaction survey specifically for items within these low-performing categories to better understand consumer preferences and identify potential issues
- To clear unsold stock, initiate tactical promotions such as warehouse clearance sales, product bundling, and bonus promos for purchasing certain items
- If a Memorandum of Understanding (MOU) with suppliers exists, consider returning products to mitigate further losses

#### Answer No 2.2
Insights:
- The item with the most significant sales decrease in the 'Others' category is RB_Dettol Germ Busting Kit-bf, which sold 155 fewer items than the previous year
- Other products in this category that experienced a sales decline did so by less than 25 items, making the RB_Dettol Germ Busting Kit-bf an outlier
- Given that this product is a sanitizing and healthcare item, its steep decline could be an indicator of a dynamic shift in market trends and consumer demand within this specific segment.

Recommendations:
- Conduct a deeper analysis into the market segmentation for the products with decreasing sales to understand which consumer groups are no longer purchasing them
- Boost sales for these specific products by launching targeted marketing campaigns and promotional offers

#### Answer No 3
Insights:
- In 2022, there were 820 customers who initiated the checkout process but did not complete their payment. This represents a significant opportunity to optimize our conversion rate and recover potential revenue
- This behavior may be a result of customers not receiving promotions that align with their preferences, or it could be attributed to the expiration of a relevant seasonal trend

Recommendations:
- Launch a targeted re-engagement campaign for the customers on this list. This should include timely reminders and special offers tailored to their specific interests or the items left in their carts
- Offer the exclusive promos during key moments, such as the company anniversary. This can serve as a powerful incentive to motivate these customers to complete their purchases

#### Answer 4.1
Insights:
- Weekend sales experienced a consistent decline each month, while weekday sales showed a significant increase, particularly in December
- Weekend sales were consistently lower than weekday sales, with October being the only exception, where the sales gap was minimal
- If the campaign was primarily intended to boost weekend sales, it appears to have been ineffective, as performance declined after October
- However, if the campaign's goal was to influence weekday sales, the widening sales gap in November and December suggests it was successful in shifting customer purchasing behavior
- The declining weekend sales may be attributed to the holiday season, during which customers tend to focus on leisure activities rather than online purchasing

Recommedations:
- Perform a detailed analysis of customer behavior during this quarter, with a specific focus on holiday season trends, to gain a deeper understanding of the factors driving these sales patterns
- Adjust the campaign strategy to align more effectively with market trends and seasonal demands
- Create special offers and incentives, such as exclusive discounts or free shipping, specifically for weekend checkouts to increase engagement and improve the conversion rate on these days

#### Answer 4.2
Insights:
- The average total weekend sales for the quarter stood at 6.1 million, while weekday sales were significantly higher at 8.5 million
- Weekday sales consistently outperformed weekend sales, with a difference of $2.3 million, which represents a 38.64% increase

Recommendations:
- Conduct in-depth research to analyze customer behavior during weekends within this quarter
- Implement a series of special, weekend-specific promotions and offers to incentivize purchases and increase conversion rates
- Evaluate the successful components of the weekday sales campaign and determine how those strategies can be adapted or applied to boost weekend sales

### 3. Data Visualizations using Google Looker Studio
Link: https://github.com/TantiHenditasari/Final-Project-Data-Analyst-MySkill-e-commerce/tree/main/Data-Visualization-Looker_Studio
