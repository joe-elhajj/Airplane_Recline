# Airplane Recline Statistical Analysis

## Project Overview
Airplane seat reclining has sparked debates among travelers about etiquette and comfort. This project analyzes survey data to explore public opinions on seat reclining, focusing on the relationships between age, gender, and perceived rudeness. The primary goal is to identify patterns and insights to better understand societal norms around airplane seat reclining.

---

## Data
- **Source**: A survey-oriented dataset exploring opinions about airplane seat reclining.
- **Dataset**:
  - **FlyingDataUpdated-flying-etiquette.csv**: Contains demographic details and survey responses, including variables such as age, gender, and attitudes toward reclining.

### Key Variables
#### Attitudes Toward Reclining
- `rudeToRecline`: Responses to whether reclining a seat is considered rude, with options ranging from "Not rude at all" to "Very rude."

#### Demographic Data
- `Age`: Age groups of respondents (e.g., Under 18, 18-29, 30-44, 45-59, 60 or older).
- `Gender`: Gender of respondents.

---

## Objectives
1. Perform hypothesis testing to evaluate whether the majority consider reclining rude.
2. Analyze correlations between age and attitudes toward reclining.
3. Compare attitudes by age groups and gender to identify significant differences.

---

## Key Findings
1. **Hypothesis Testing**:
   - Most respondents believe reclining is **not rude**.
   - **Statistical Test**:
     - Proportion of the most common response is not significantly different from 50%.
     - 95% Confidence Interval: [0.4869, 0.5477].

2. **Correlation Analysis**:
   - Weak negative correlation (**r = -0.1817**, p = 0.0003) between age and attitudes:
     - Older respondents are less likely to find reclining rude.
     - Younger respondents are more likely to perceive reclining as rude.

3. **Age Group Comparison**:
   - Respondents aged **50 or less** were more likely to find reclining "somewhat rude" (**29.11%**) compared to those aged **over 50** (**25.27%**).

4. **Gender Analysis**:
   - Females are slightly more likely to find reclining "somewhat rude," while males lean slightly more toward "very rude."

---

## Repository Structure
- **`data/`**: Contains the cleaned dataset (`FlyingDataUpdated-flying-etiquette.csv`).
- **`scripts/`**: SAS script for statistical analysis
- **`outputs/`**: Test and Procedure Results
- **`README.md`**: Project overview and documentation.

---

## How to Run the Code
1. **Requirements**:
   - SAS Studio or a compatible SAS environment.

2. **Steps**:
   - Clone this repository:
     ```bash
     git clone https://github.com/yourusername/Airplane_Recline.git
     cd Airplane_Recline
     ```
   - Open `Airplane_Recline.sas` in SAS Studio.
   - Run the script to perform statistical analysis.

3. **Output**:
   - View generated insights and visualizations in the `/results/visualizations` folder.

---

## Future Work
- Include additional variables (e.g., cultural background) to deepen insights.
- Explore regional differences in attitudes toward seat reclining.
- Apply machine learning models to predict perceptions based on demographics.

---

## Authors
- Joe El Hajj

---

## Acknowledgments
Thanks to the contributors of the survey data for enabling this analysis.

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contact
For questions or collaboration, feel free to reach out to:
- Email: joeelhajj01@icloud.com
- LinkedIn: [Joe El Hajj](https://www.linkedin.com/in/joe-el-hajj-443518301/)

