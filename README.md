React Ecosystem Health Audit:

An end-to-end data analytics project evaluating the health of selected React ecosystem libraries through adoption, maintenance activity, developer job demand, and migration considerations.

Built using PostgreSQL, SQL, and Microsoft Power BI, this project transforms library-level data into actionable insights through interactive dashboards.

Project Overview:
The React ecosystem offers a wide range of libraries for state management, routing, forms, data fetching, UI components, and more. Choosing the right libraries requires evaluating more than popularity alone.

This project explores the relationship between ecosystem adoption, community engagement, maintenance activity, package size, and market demand to support more informed technology assessment and migration planning.

Objectives:
- Analyze adoption using weekly npm downloads and GitHub stars.
- Evaluate maintenance signals using last commit dates and open issues.
- Assess developer job demand using Naukri job-posting data.
- Compare ecosystem health across library categories.
- Identify libraries that may warrant closer monitoring or migration evaluation.
- Present findings through interactive Power BI dashboards.

Tools and Technologies:
- PostgreSQL — Data storage, transformation, and validation.
- SQL — Aggregation, filtering, ranking, conditional classification, and analytical queries.
- Microsoft Power BI — Interactive dashboards, KPI cards, visualizations, and DAX measures.

Project Workflow:
1. Data preparation: Imported the library dataset into PostgreSQL.
2. Data classification: Applied SQL-based rules to classify libraries as Maintained, Unmaintained, or Issue Risk.
3. Exploratory analysis: Compared adoption, maintenance indicators, package size, and job demand.
4. Dashboard development: Built a three-page Power BI report.
5. Validation: Cross-checked key KPI values and analytical results between PostgreSQL and Power BI.
Dashboard Pages:

1. Ecosystem Overview:
Provides a high-level view of the React library landscape, including category distribution, adoption metrics, and library comparisons.

2. Risk and Migration Priorities:
Examines maintenance activity and open issues to help identify libraries that may need further investigation.

3. Market and Migration Insights:
Compares npm adoption, GitHub stars, developer job demand, and bundle size to support ecosystem assessment and migration planning.

Dashboard Screenshots :
### 1. Ecosystem Overview
screenshots/dashboard1.png
### 2. Risk and Migration Priorities
screenshots/dashboard2.png
### 3. Market and Migration Insights
screenshots/dashboard3.png

Key Findings:
The analysis covers 20 libraries, classified as follows:
- 16 Maintained
- 2 Unmaintained
- 2 Issue Risk
Additional validated metrics:
- 7 libraries have more than 1,000 recorded job postings.
- 38,080 average GitHub stars across the dataset.
- 44.45 KB average bundle size.
  
These findings illustrate why adoption, market demand, maintenance signals, and package size should be considered together rather than relying on a single popularity metric.

Health Classification Methodology:
The SQL classification applies the following rules in order:

Condition	Classification:
Last commit before January 1, 2024	Unmaintained
More than 500 open issues, if the first rule does not match	Issue Risk
Otherwise	Maintained


Important: These are rule-based analytical labels created for this project, not comprehensive assessments of security, quality, or overall library health. The thresholds are project-defined and should be interpreted in context.

Repository Structure
react-ecosystem-health-audit/
├── data/
│   └── ecosystem_health.csv
├── sql/
│   ├── 01_create_table.sql
│   ├── 02_update_health_verdict.sql
│   └── 03_data_analysis.sql
├── powerbi/
│   └── Ecosystem_Health_Audit.pbix
└── README.md

How to Reproduce the Analysis:
Prerequisites:
- PostgreSQL
- pgAdmin
- Microsoft Power BI Desktop
Step 1: Create the Database Table
1. Create a PostgreSQL database.
2. Open the Query Tool in pgAdmin.
3. Run sql/01_create_table.sql to create the ecosystem_health table.
   
Step 2: Import the CSV Dataset
1. In pgAdmin, locate the ecosystem_health table under your database schema.
2. Right-click the table and select Import/Export Data.
3. Under the Import tab, enter the full path to data/ecosystem_health.csv in the Filename field.
4. Set Format to csv.
5. Configure the header and delimiter settings to match the CSV file.
6. Click OK to start the import.
   
Step 3: Apply Health Classification:
Run sql/02_update_health_verdict.sql to classify libraries using the project's maintenance rules.

Step 4: Run SQL Analysis
Execute the queries in sql/03_data_analysis.sql to explore library adoption, maintenance indicators, and job demand.

Step 5: Open the Power BI Dashboard:
1. Open powerbi/Ecosystem_Health_Audit.pbix in Power BI Desktop.
2. Configure the PostgreSQL connection if prompted.
3. Refresh the report if necessary to load the dataset.
   
Limitations
- The analysis covers a selected dataset of 20 libraries, not the entire React ecosystem.
- Naukri job-posting counts are indicative of observed demand and may change over time.
- npm downloads and GitHub stars are adoption and community-interest signals, not direct measures of library quality.
- The classification thresholds are project-defined and should not be treated as universal standards.
  
Skills Demonstrated
SQL querying and aggregation · PostgreSQL data management · Data validation · DAX measures · Power BI dashboard design · KPI development · Exploratory data analysis · Analytical storytelling



