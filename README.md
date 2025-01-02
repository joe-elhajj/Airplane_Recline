# Airplane Recline Analysis

## Project Overview
This project analyzes public opinions on airplane seat reclining etiquette, focusing on whether reclining is considered rude, how attitudes vary by age and gender, and statistical relationships between demographics and opinions.

## Repository Structure

## Data
- **FlyingDataUpdated-flying-etiquette.csv**:
  - Contains survey responses related to airplane seat reclining etiquette.
  - Key variables include:
    - `rudeToRecline`: Opinions on whether reclining is rude.
    - `Age`: Respondent's age group.
    - `Gender`: Respondent's gender.

## Key Results
### 1. **Hypothesis Testing**:
   - Most respondents believe reclining is **not rude**.
   - **Statistical Test**:
     - Proportion of the most common response is not significantly different from 50%.
     - 95% Confidence Interval: [0.4869, 0.5477].

### 2. **Correlation Analysis**:
   - Weak negative correlation (**r = -0.1817**, p = 0.0003) between age and attitudes toward reclining:
     - Older respondents are less likely to find reclining rude.
     - Younger respondents are slightly more likely to find reclining rude.

### 3. **Age Group Comparison**:
   - Respondents aged **50 or less** were more likely to find reclining "somewhat rude" (**29.11%**) compared to those aged **over 50** (**25.27%**).

### 4. **Gender Analysis**:
   - Females are slightly more likely to find reclining "somewhat rude," while males lean slightly more toward "very rude."

## Visualizations
Visualizations will be stored in the `/results/visualizations` folder, showcasing:
- Frequency distributions of opinions.
- Correlation plots between age and attitudes.
- Comparisons of opinions by age group and gender.

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Airplane_Recline.git
   cd Airplane_Recline
