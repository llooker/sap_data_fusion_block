**NOTE: This block requires exporting SAP data into BigQuery through Cloud Data Fusion**

___
# Readme: SAP (Cloud Data Fusion) Looker Block

## This block has been released in public preview, we are actively looking for opportunities to collect feedback and refine the LookML, as well as dashboards. If you are interested in helping us make this block better please email us at sap-cdf-looker-block-feedback@google.com 

### What does this Block do for me?

- Expertise - Leverage analytics expertise of Looker and CDF product teams
- Central Data Platform - Take advantage of Looker's data platform functionality, including data actions, scheduling, permissions, alerting, parameterization, and row level security allowing users to only see what data they have access
- Visualizations – Customizable reports and dashboards with additional value-add analysis to monitor orders and sales across teams, regions and business units, understand where materials are getting damaged or returned and drill into customer behavior to better grasp when and where orders are being placed

### Block Info
This block is modeled on the BigQuery Cloud Data Fusion SAP export schema, SAP Table Reader and SAP Pipelines. The data from SAP is then consolidated into a few Looker Explores optimized for flexible analysis. This Block should serve as template that can be further enhanced. 

### Block Structure (Explore Groups)
- SAP – Order To Cash - provides a comprehensive view designed help with order management, highlight gaps in order fulfillment, and report order profit and loss
- SAP – Procure To Pay – provides a holistic view designed to help procurement leaders maximize savings while optimizing supplier performance and managing delivery risks
- Order to Cash Dashboard: Used by Execs for a high level overview. This dashboard shows general delivery performance, monitors manufacturer output, and highlights customers and suppliers that need attention to improve end to end satisfaction. Click on any of the top line measures to dive into the relevant granular dashboards.
 
- Procure to Pay Dashboard: Used by Execs for a high level overview. This dashboard shows general inventory management and performance, allowing the user to track product life cycle from procurement of raw materials to the production of products.  Click on any of the top line measures to dive into the relevant granular dashboards.
 

### Required Customization
- sql_table_name - in each of the views, the sql_table_name parameter must be changed to match your table names.
- Currency Conversions – coming soon

### Potential Improvements
Cost / Performance - GCP recently introduced partitioned tables into Data Transfer Service. We can architect this model using those partitioned tables and _PARTITIONTIME psuedo-column. However, this comes at the sacrifice of persisting the funnel using PDTs. Depending on the size of your tables, this can result in either an increase or decrease in cost and performance.
If you are concerned with cost and performance, we recommend enabling BigQuery Cloud Billing and performance logs, which Looker also has dedicated Blocks for.
