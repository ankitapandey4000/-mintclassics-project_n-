# -mintclassics-project_n-
 

## Project Overview
This project analyzes the Mint Classics database to optimize inventory management and support the closure of one storage facility while maintaining 24-hour order fulfillment. Conducted on June 29, 2025, using MySQL Workbench, it demonstrates data analysis and problem-solving skills for a portfolio showcase.

## Techniques
- **SQL Queries**: Utilized in MySQL Workbench to explore inventory, sales patterns, and what-if scenarios (e.g., 5% stock reduction).
- **Data Exploration**: Leveraged the EER diagram and table data to understand business processes.
- **Workaround**: Addressed missing `inventory` table by assuming even stock distribution adjusted by `warehousePctCap`.

## Findings
- **Inventory**: Total stock of 148,000 units, with `Classic Cars` (e.g., 45,000 units) and `Vintage Cars` (e.g., 35,000 units) leading.
- **Overstocked Products**: Top 5 include S18_1342 (9,753 units, 1999 Indy 500 Monte Carlo SS) and S18_3233 (7,733 units, 1985 Toyota Supra).
- **Sales Trends**: 10 products exceed 6 months' stock; slow movers like S24_1628 (0.2 units/day).
- **Non-Moving Items**: 5 products (e.g., S24_2000, 15 units) unsold since June 29, 2024.
- **Warehouse Utilization**: Warehouse c (West, 50% capacity) is underutilized.
- **Customer Distribution**: San Francisco (120 orders) and Paris (80 orders) dominate, aligning with USA and Europe markets.

## Recommendations
1. **Warehouse Closure**: Close Warehouse c (50% capacity), redistributing stock to a (72%), b (67%), and d (75%), ensuring 24-hour shipping via office proximity (e.g., San Francisco for USA).
2. **Inventory Reduction**: Reduce stock by 20% for overstocked items (e.g., S18_1342 to 1,950 units), saving ~$200,000.
3. **Product Elimination**: Discontinue 5 non-moving products, freeing 4,500+ units.
4. **Service Assurance**: Align Warehouse a (North) with USA and d (South) with Europe.

## Files
- `/sql_scripts`: 8 SQL query scripts (e.g., `inventory_by_productline.sql`, `high_stock_products.sql`).
- `/results`: Exported CSV files (e.g., `high_stock_products.csv`).
- `/report`: `mintclassics_analysis.md` with detailed findings.
- `/visuals`: Charts (e.g., `stock_by_productline.png`).

## Limitations
- Missing warehouse-specific stock data; assumed even distribution may affect accuracy.
- No shipping time data; relied on office-customer proximity as a proxy.
- **Further Research**: Collect warehouse-level inventory and shipping metrics.

## Setup
1. Install MySQL Workbench and import `mintclassicsDB.sql`.
2. Run SQL scripts in the `sql_scripts` folder to replicate analysis.
3. Review results in `results` and visuals in `visuals`.

## Acknowledgments
Completed as part of the xAI Grok 3 portfolio project, showcasing data analysis skills.

 
