CREATE TABLE BANK_CUSTOMERS (
        CUSTOMER VARCHAR(10) NOT NULL, 
        NUMBER_OF_LATE_PAYMENTS SMALLINT, 
        NUMBER_OF_CREDIT_APPLICATIONS SMALLINT, 
        DECLARED_BANKRUPTCY_IN_PAST_7_YRS VARCHAR(3), 
        AVERAGE_MONTHLY_FEE SMALLINT, 
        CREDIT_SCORE SMALLINT, 
        SATISFACTION SMALLINT, 
        DEFAULT_DATA SMALLINT, 
        AVERAGE_CASH_BALANCE VARCHAR(3), 
        AGE SMALLINT, 
        AGE_RANGE VARCHAR(5), 
        GENDER VARCHAR(6), 
        NUMBER_OF_PRODUCTS SMALLINT, 
        CUST_ACQUISITION_YEAR SMALLINT, 
        NO_OF_UNIQUE_PRODUCTS SMALLINT, 
        NO_OF_UNIQUE_PRODUCTS_GROUPED VARCHAR(9), 
        EQUITIES_BALANCE INTEGER, 
        INITIAL_MORTGAGE_AMT VARCHAR(14), 
        ADDRESS_CHANGES SMALLINT, 
        HOUSEHOLD SMALLINT, 
        CLIENTS_IN_HOUSEHOLD SMALLINT, 
        AVERAGE_CREDIT_CARD_BALANCE INTEGER, 
        CUSTOMER_TYPE VARCHAR(14), 
        HOME_BRANCH_CITY VARCHAR(27), 
        HOME_BRANCH_STATE VARCHAR(14), 
        SALESPERSON VARCHAR(4), 
        CHURN VARCHAR(3), 
        COUNT SMALLINT,
        BANKID VARCHAR(1)
    )
;
ALTER TABLE BANK_CUSTOMERS
      ADD CONSTRAINT CUSTOMER_PK
      PRIMARY KEY (CUSTOMER)
;
