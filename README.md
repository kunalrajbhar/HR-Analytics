# HR Analytics Project 👨‍💼📊

## 📄 Project Overview
This project focuses on analyzing employee data to uncover insights about attrition, compensation, work-life balance, and other HR metrics. The goal is to help the organization understand employee behavior and improve retention strategies through data-driven insights. The analysis is performed using **MySQL**, **Excel**, **PowerBI**, and **Tableau**.

---

## ⚙️ KPIs Analyzed

### 1. **Average Attrition Rate for All Departments**
- **Metric**: The percentage of employees leaving the company across different departments.
- **Objective**: Identify departments with the highest attrition to target for retention strategies.

### 2. **Average Hourly Rate of Male Research Scientists**
- **Metric**: The average hourly rate of male employees in the **Research Scientist** job role.
- **Objective**: Gain insights into salary structures for a key role within the company.

### 3. **Attrition Rate vs Monthly Income Statistics**
- **Metric**: Analyze how attrition rates compare with monthly income levels.
- **Objective**: Determine if higher income has a significant impact on reducing attrition.

### 4. **Average Working Years for Each Department**
- **Metric**: The average number of years employees have worked in each department.
- **Objective**: Understand employee tenure across different departments to identify areas where employees may stay longer.

### 5. **Job Role vs Work-Life Balance**
- **Metric**: The relationship between different job roles and their corresponding work-life balance ratings.
- **Objective**: Identify which job roles experience better work-life balance and how it affects overall employee satisfaction.

### 6. **Attrition Rate vs Years Since Last Promotion**
- **Metric**: The relationship between the years since the last promotion and the attrition rate.
- **Objective**: Investigate if a lack of promotions correlates with higher attrition.

---

## 🔑 Key Findings

1. **Average Attrition Rate for All Departments**: 
   - Highest Attrition: Research & Development with 51.21% attrition rate.Lowest Attrition: Hardware with 49.44% attrition rate.

2. **Average Hourly Rate of Male Research Scientists**: 
   - This KPI is to find out the average hourly rate of male research scientists which is 114.45. While for female research scientist, it is 115.93.

3. **Attrition Rate vs Monthly Income**: 
   - The Research & Development department has the highest attrition rate (51.21%) despite a relatively high average income, suggesting that factors other than compensation, such as job satisfaction or work-life 
     balance, might be influencing turnover.
     
4. **Average Working Years for Each Department**: 
   - Employees in the Software department have the longest average tenure of 20.65 years and Employees in Human Resources have a slightly shorter average tenure of 20.45 years.

5. **Job Role vs Work-Life Balance**: 
   - Research Scientists and Sales Representatives report the best work-life balance with scores of 2.51. Manufacturing Directors have the lowest score of 2.47, indicating potential issues with work-life balance 
     in this role.


6. **Attrition Rate vs Years Since Last Promotion**: 
   - Highest Attrition: Employees with 21-25 years since their last promotion have the highest attrition rate at 51.23%.
   - Lowest Attrition: Employees who have been promoted within the last 6-10 years have the lowest attrition rate at 49.66%.

---

## 🛠️ Tools & Technologies Used

- **MySQL**: For querying and extracting data to calculate KPIs and perform initial data aggregation.
- **Excel**: For data manipulation, cleaning, and preliminary analysis.
- **PowerBI**: For building interactive dashboards to visualize KPIs and explore insights.
- **Tableau**: For creating advanced visualizations and deep-diving into key HR metrics.

---

## 📊 Data Visualizations
The project includes visualizations for:
- Attrition Rate per Department.
- Monthly Income vs Attrition Rate.
- Average Working Years per Department.
- Job Role vs Work-Life Balance comparison.
- Years Since Last Promotion vs Attrition Rate.

---

## 📂 Project Structure

```plaintext
├── data
│   └── HR Analytics Project (Group-1).sql              # MySQL script for querying employee data
├── reports
│   ├── HR Analytics Project (Group-1).xlsx         # Excel file for data cleaning and KPI calculations
│   └── HR Analytics Project (Group-1).pbix         # PowerBI dashboard file
├── visualizations
│   └── HR Analytics Project (Group-1).twbx # Tableau dashboard for in-depth analysis
├── README.md                    # Project documentation
└── results
    └── HR Analytics Project (Group-1).pptx       # Final report with KPIs and insights
