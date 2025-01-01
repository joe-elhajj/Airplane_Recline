PROC IMPORT DATAFILE="/home/username/FlyingDataUpdated-flying-etiquette.csv"
    OUT=flying_data
    DBMS=CSV
    REPLACE;
RUN;


/* Identify the most common response for rudeToRecline */
PROC FREQ DATA=flying_data ORDER=FREQ;
    TABLES rudeToRecline / NOCUM;
    TITLE "Frequency Distribution of Attitudes Toward Reclining Seats";
RUN;

/* Recode the most common response into a binary variable for further analysis */
DATA flying_data_binary;
    SET flying_data;
    IF rudeToRecline = "No, not rude at all" THEN common_response = 1; /* Replace with the most common response */
    ELSE common_response = 0;
RUN;

/* Perform a one-proportion Z-interval test on the binary variable */
PROC FREQ DATA=flying_data_binary;
    TABLES common_response / BINOMIAL(P=0.5); /* Replace 0.5 with the hypothesized proportion */
    TITLE "One-Proportion Z-Interval Test for Most Common Response";
RUN;

/* Recode age into two groups for demographic analysis */
DATA flying_data_age_groups;
    SET flying_data;
    /* Adjust based on actual Age values */
    IF Age = "60 or older" OR Age = "45-59" THEN Age_Group = "Over 50";
    ELSE IF Age = "Under 18" OR Age = "18-29" OR Age = "30-44" THEN Age_Group = "50 or Less";
RUN;

/* Recode rudeToRecline into a binary variable indicating whether the response is 'Yes, somewhat rude' */
DATA flying_data_opinion_binary;
    SET flying_data_age_groups;
    /* Adjust based on actual rudeToRecline values */
    IF rudeToRecline = "Yes, somewhat rude" THEN opinion_binary = 1;
    ELSE IF rudeToRecline NE "" THEN opinion_binary = 0; /* Handle missing values */
RUN;

/* Check the recoded dataset for correctness */
PROC FREQ DATA=flying_data_opinion_binary;
    TABLES Age_Group opinion_binary / MISSING;
    TITLE "Check Recoded Variables";
RUN;

/* Perform a one-proportion Z-test for respondents aged over 50 */
PROC FREQ DATA=flying_data_opinion_binary;
    WHERE Age_Group = "Over 50";
    TABLES opinion_binary / BINOMIAL(P=0.5); /* Hypothesized proportion of 50% */
    TITLE "One-Proportion Z-Test for Age > 50";
RUN;

/* Perform a one-proportion Z-test for respondents aged 50 or less */
PROC FREQ DATA=flying_data_opinion_binary;
    WHERE Age_Group = "50 or Less";
    TABLES opinion_binary / BINOMIAL(P=0.5); /* Hypothesized proportion of 50% */
    TITLE "One-Proportion Z-Test for Age <= 50";
RUN;

/* Check for missing values in the Age_Group variable */
PROC FREQ DATA=flying_data_opinion_binary;
    TABLES Age_Group / MISSING;
    TITLE "Check Missing Values in Age_Group";
RUN;

/* Perform a cross-tabulation of Age_Group and opinion_binary to explore relationships */
PROC FREQ DATA=flying_data_opinion_binary;
    TABLES Age_Group*opinion_binary / NOCOL NOPERCENT MISSING;
    TITLE "Cross-tabulation of Age Group and Opinion on Reclining (Including Missing)";
RUN;

/* Analyze the relationship between Gender and opinions on reclining */
PROC FREQ DATA=flying_data;
    TABLES Gender*rudeToRecline;
    TITLE "Gender vs Opinion on Reclining";
RUN;
