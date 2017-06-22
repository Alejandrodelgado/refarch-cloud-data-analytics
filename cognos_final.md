## Cognos Analytics
# Scenario Background

In this workshop, you will experience the following capabilities in IBM
Cognos Analytics:

-   Cognos Analytics Navigation
-   Create a New data server Connection
-   Create a Data Module
-   Data Discovery with Dashboard Assembly
-   Optional : Storytelling
-   Optional : Uploading Personal Data Sources
-   Optional Watson Analytics

You are a Chief Marketing Officer looking a recent satisfaction survey
with customer attributes and churn results presented to you from the IT
department.

In the last Board meeting, there was a long discussion around customer
satisfaction and how these low satisfaction scores and contributing to
customer churn. Your job is to discover and share any insights from the
data provided to you before the next board meeting next month.

Explore the data and discover how satisfied your customers are with your
bank, and what customers are leaving the bank and which ones should we
try and retain going forward.

Develop a dashboard to showcase your findings and use it to tell a story
of what you discovered and any actions you might take from this
analysis.

# Lets Get Started

Launch [Cognos Free Trial](https://www.ibm.com/analytics/us/en/technology/products/cognos-analytics/)
and SIGN IN to bring up the login page.

URL = <https://www.ibm.com/analytics/us/en/technology/products/cognos-analytics/>

![](cmedia/image2.png)


The NEW User Experience brings you directly into the completely
redesigned Cognos Analytics User Interface (UI). All Cognos Analytics
Users begin their navigation here.

![](cmedia/image3.png)

## Create a New data server Connection

Select Manage from the Navigation Panel. Hint : On the Bottom Left of the User Interface. 
Select Data Server Connection to create a new data server.

![](/media/CA/ca1.png)

Create a new data connection by selecting the ‘+’ and Select dashDB as the type

![](/media/CA/ca2.png)


![](/media/CA/ca3.png)

1. Rename the connection name from ‘New data server connection’ to ‘IA_Bank Customers’
1. Enter the your dashDB JDBC URL service credentials you obtained in the [prework exercise](https://github.com/ibm-cloud-architecture/refarch-cloud-data-analytics/blob/master/PreWork.md#step-d-create-the-dashdb-credentials).  Copy the "jdbcurl" (NOT the "ssljdbcurl") and paste into Cognos Analytics.  Your JDBC URL might look something like this (do not paste the quotes):  "jdbc:db2://dashdb-entry-yp-dal09-08.services.dal.bluemix.net:50000/BLUDB"
1. Create a signon associated to the new data connection. Select the ‘Use the following signon’ check box 
1. Select the  ‘+’ icon.

![](/media/CA/ca5.png)

1. Enter the your dashDB User ID
1. Enter your Password and confirm Password
1. Test your new Connection.  If it tests successfully, then
1. Save






Now we need to load the schema we will use in this exercise. **Select
the Schema** tab for the IA\_Bank Customers data server connection.
Select the Schema associated to your userid and select ‘**Load
Metadata’** until it’s successfully loaded with a Message and a green
button next to the schema

![](cmedia/image25.jpg)


![](cmedia/image26.jpg)


Create a Data Module
====================

With Cognos Analytics, Users are not restricted to only using existing
enterprise data sources. The NEW modeling capabilities in Cognos
Analytics allows the business user to blend in personal data sources
without requiring assistance from IT. This does not replace IT, it
simply augments the user experience to allow the User to work with
personal data sets and analyze that data in conjunction with the
enterprise data. Users can import external data from files, on premise
data sources and cloud data sources into Cognos Analytics. Multiple data
sources may be blended, cleansed and joined together to create a custom
and reusable data module for use in dashboards and reports and may be
shared with other users in the organization.

Create a new Data Module. **Select New** from Navigation Bar and
**Select Data Module**

![](cmedia/image27.png)


You are now give the options to select the data assets you wish to use
for your data module, **Select Data servers** because we are going to
connect to the ‘IA\_Bank Customers’ data server connection you created
earlier. **Select ‘IA Bank Customers’** which will display the schema we
loaded during the load metadata action taken earlier. Select the
‘SCHEMA’ associated with your dashDB instance, here I am using
‘DASH106554’

![](cmedia/image28.png)


Your Schema will now be added to selected sources. Mine is DASH106554.
**Select Start **

![](cmedia/image29.png)


Intent driven data modeling
---------------------------

This will launch you into the intent-driven portion of the modeling
functionality.

As a user, you will be able to indicate your “intent” in creating a data
module. Once a data source is selected, Users can enter their desired
search terms. Cognos Analytics analyzes the data source and will make
recommendations on which table(s) to begin with to create the User’s
custom data module. Cognos analytics will then identify a starting point
for a data module by suggesting related content to be used.

In the intent panel, **type “Customers”** and **click GO**. Cognos
Analytics will analyze all the tables in the selected data source, and
renders proposals for the data tables that contain related content. In
this scenario, we are suggesting all **tables with Customers** in the
table name. Since the user is interested in Customer information to
analyze Satisfaction and Churn information.

**Select ‘Add this Proposal’** to add these tables

![](cmedia/image30.png)

![](cmedia/image31.png)


**TECH TIP : YOU MAY CLICK ON EACH TABLE AND MOVE IT AROUND THE SCREEN
TO MODIFY THE DISPLAY TO YOUR PREFERENCE. TO MOVE THE ENTIRE DIAGRAM AT
ONCE, YOU MAY CLICK IN THE WHITESPACE AND MOVE WHILE HOLDING DOWN THE
LEFT MOUSE BUTTON. YOU MAY ALSO ZOOM IN/OUT ON THE DIAGRAM USING THE
SCROLL ON YOUR MOUSE. **

Relationships between tables have been determined by scanning data and
column information from the data. These relationships are indicated by
the lines shown connecting the tables. The relationship indicates how
the files are joined to one another based on a common data item. **Click
on the relationship lines** to see the detail of the join type. **Click
anywhere to close**

![](cmedia/image32.png)


**Adding and Removing Tables from a Data Module**

If the proposed data module has a table the User decides is not needed,
it may be easily removed by right clicking on the table in the diagram
and selecting remove. **Right click on the 'Nbank Customers Old'** table
in the diagram and **select Remove**.

![](cmedia/image33.png)

Tables may also be deleted from the data module table list. Click on
'Old Key Niagra Customers' Brand in the data module panel.

**Right Click on 'Old Key Niagra Customers'** table in the list to open
the Options. **Select Remove**.

![](cmedia/image34.png)


For our analysis, the only table we need is ‘Bank Customers’, **Remove**
the following tables from the model

**Kbank Customers**

**Nbank Customers**

**Old Banking Customer Data**

Your model should look like this now

![](cmedia/image35.png)


We will save our data module now.

> Click Save.
>
> Select My Content.
>
> Type ‘Bank Customers Module’ for the name.
>
> Click Save

![](cmedia/image36.png)

Expand the Bank Customers table in the Data Module View

![](cmedia/image37.png)


Create Custom Groups
--------------------

You can see the columns in the table now and from the icons quickly
identify the numeric and non-numeric fields. **Select ‘Number of Late
Payments** **more option** and you can see for each column the actions
we can perform to improve the usability for users using this data
module. As you can see we can Create Calculations, Clean, Filter,
Rename, Hide, Remove or modify the properties for the item selected.
Here we are going to create a custom group. Select **Create custom
groups.**

![](cmedia/image38.png)


Our Data Scientists, using SPSS and Watson Analytics have found some
interesting probabilities related to customer churn based on the number
of late payments a customer has. We will create distribution groups to
reflect these finding so we can share this information with others. To
start we can see that the product has created an equal distribution of
the late payment values into 10 groups distributed evenly.

![](cmedia/image39.png)


We will create 3 groups based on their findings.

> Rename the Grouping to ‘Group Late Payments’
>
> Change the \# of groups from 10 to 3
>
> Select Custom
>
> Change the lowest value to 1
>
> Change the 2^nd^ value to 21
>
> Change the last value to 3000
>
> Select Create

![](cmedia/image40.png)


The data scientists have also observed some consistencies with the \# of
Credit Applications a customer makes to their tendency to Churn. We will
create another Custom group for Number of Credit Applications. Create a
new custom grouping for Number of Credit Applications.

We will create 3 groups based on their findings.

> Rename the Grouping to ‘Group Late Payments’
>
> Change the \# of groups from 10 to 3
>
> Select Custom
>
> Change the lowest value to 05
>
> Change the 2^nd^ value to 26
>
> Change the last value to 3000
>
> Select Create

![](cmedia/image41.png)


Save the data module

Create Navigation Group
-----------------------

A navigation group is a collection of non-measure columns that business
users associate for data exploration. Navigation groups can now be
defined as part of a data module to help users easily explore and drill
down to see their underlying data. These can be logical navigation paths
that follow a defined hierarchy, or they can be defined to allow users
to navigate and drill down in any order that makes sense for their
analysis.

We will start by **selecting the more option** for the field ‘Bankid’.
Bankid is at the bottom of the field list for the Bank Customers table,
just above the new Group calculation we just created. Another option to
locate the field is to type’Bank’ in the **Find** area of the data
module window. Select ‘Create navigation Group’

![](cmedia/image42.png)

In traditional BI and OLAP technologies, a drill down action required a
pre-defined hierarchical data structure so that you could drill down
from Year to Month, but was not defined to allow a User to drill from
Year to Product. Navigation groups are much more flexible and can
accommodate drill down that aligns with how users need to analyze their
business.

![](cmedia/image43.png)


In our Analysis we wish look at information by Bank, Churn, Customer
Type, Location and Customer.

> **Rename the Navigation Group to Bank Churn Drill Path**
>
> **Drag Churn below Bankid**
>
> **Drag Customer Type below Churn**
>
> **Drag Home Brnch State below Customer Type**
>
> **Drag Customer below Home Branch State**
>
> **Click Apply**

![](cmedia/image44.png)


**Save the Data Module**

There are many more things to do in this data module, but for timing we
will save it and start finding insights.

Create Dashboard for Insights
=============================

We will now create a dashboard to analize the information created in our
data module.

Create a new dashboard from the Navigation pane

![](cmedia/image45.png)


Working with Templates
----------------------

The Template window appears allowing the user to select the type of
dashboard and the template style. Select the tabbed dashboard style.
This will allow you to have multiple pages for your dashboards. Select
the template with the three (3) small panels across the top, and two (2)
panels below. Click OK

![](cmedia/image46.png)


Each panel on the template acts as a placeholder for dashboard objects,
known as widgets. Templates are device aware and will auto-size to the
screen of the device being used.

Cognos Analytics provides many “out of the box” templates to choose
from. This library of templates is based on dashboard design best
practices. The templates are simply guidelines that allow quick and
visually appealing layout of widgets onto the dashboard. However, users
may still customize layouts to suit their preferences and may also
choose to start from a freeform (blank) template.

As we build the dashboard, we will reference the location placement for
widgets in the dashboard template using the following panel numbers

![](cmedia/image47.png)


As we start our dashboard design we will be asked to select the data
sources to use. We will select the data module we just created.
Dashboards support the use of many data sources, in this example we will
only use 1

> Select the '+' to add sources to the Dashboard
>
> Select My Content
>
> Select Bank Customers Module
>
> Click Open

![](cmedia/image48.png)


Working with Dashboard Design
-----------------------------

Rename Tab1. To rename the dashboard tab, click on the tab name “Tab 1”
to bring up the On-Demand Toolbar. Select the Pencil and rename the tab
to 'Customer Satisfaction'

![](cmedia/image49.png)


Expand Bank Customers and drag Staisfaction to Panel 1. Here we can see
the average Satifaction rating by our customers is 3.39.

Satisfaction is very easy to locate here because its one of the first 10
fields in the list, again like everything else in Cognos Analytics there
is a Find area where you can find fields very quickly.

![](cmedia/image50.png)

Next we will select Satisfaction and Ctrl Click Customer type and drag
it to Panel 2. Cognos Analytics gives me a visualization to start based
on the items selected. I can change these visualizations by selecting
the Change Visualization icon.

![](cmedia/image51.png)


By Deault we will show the visualizations that best suit the items and
there types inside the visualization. You can always select ‘**More**’.
Click anywhere else in the dashboard to remove this window.

![](cmedia/image52.png)


Select the bar chart just created, we will now look at actions available
to you from the menu bar.

> The View widget icon allows users to decide which widgets will be
> connected to which other widgets in the dashboard. By default all
> widgets in the dashboard are automatically connected without any
> coding.
>
> The pin will pin the widget for further use in other dashboards or to
> be used for story telling.
>
> The properties item is what we will look at now. The properties allows
> you to customize and change the properties of the widget
>
> The user icon we talked about earlier as well as the help.

![](cmedia/image53.png)

Select the Properties Icon for the bar chart.