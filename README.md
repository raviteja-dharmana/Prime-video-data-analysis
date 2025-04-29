# Prime Video Exploratory Data Analysis (EDA)

## Overview

This project is an **Exploratory Data Analysis (EDA)** of **Prime Video's** vast library of movies and TV shows. The dataset comprises over **7,000 entries**, and the goal is to uncover key insights about content trends, production patterns, audience preferences, and the diversity of genres. By leveraging Python and data visualization tools, this project offers an opportunity to explore data cleaning, feature engineering, and presenting findings through engaging visualizations.

## Objectives

- Perform data cleaning and handle missing values and inconsistencies.
- Analyze attributes such as **content type**, **release year**, **country of origin**, and **ratings**.
- Engineer new features like:
  - **Year Difference**: Time difference between release year and addition to Prime Video.
  - **Movie Category**: Classification of movies based on duration.
  - **Age Suitability**: Categorization of content based on ratings.
- Visualize trends in **genres**, **content types**, and **duration** patterns.
- Provide actionable insights for stakeholders, content creators, and strategists.

## Dataset

### Source
The dataset used in this project is publicly available and contains the following attributes:

- **Title**: Name of the movie or TV show.
- **Content Type**: Indicates whether the content is a movie or a TV show.
- **Release Year**: The year the content was originally released.
- **Country**: The country of origin for the content.
- **Rating**: The content rating (e.g., PG, TV-MA, etc.).
- **Duration**: The duration of the movie (in minutes) or the number of seasons for TV shows.
- **Listed Genres**: Genres the content is categorized under.

The dataset was cleaned and preprocessed to handle missing and inconsistent data.

## Key Highlights

### Insights Uncovered

- **Content Production by Country**:
  - The **United States** leads content production, contributing significantly to Prime Video's library.
  - **India** and **United Kingdom** also have substantial content representation.

- **Genre Popularity**:
  - **Dramas** and **Comedies** dominate across global content.
  - **Action** and **Thrillers** are very popular in the U.S. and other English-speaking countries.

- **Content Type and Ratings**:
  - **Movies** account for 94.8% of the total content on Prime Video.
  - Movies are more likely to have **mature ratings** (e.g., TV-MA, R), while TV shows tend to cater to a broader audience, often with **family-friendly** ratings (e.g., PG, TV-G).

- **Duration Patterns**:
  - The longest movie in the dataset exceeds **240 minutes**.
  - Movies produced in **earlier years** tend to have longer durations, while newer movies and shows are usually shorter, indicating quicker addition to the platform.

- **Top Contributors**:
  - **Directors**: Notable directors like **Alastair Fothergill** and **Vikas Bahl** are among the most featured in the library.
  - **Actors**: **Shah Rukh Khan**, **Al Pacino**, and **Emily Blunt** frequently appear in Prime Video’s content library.

### Feature Engineering
To derive deeper insights, the following features were engineered:

- **Year Difference**:
  - Captures the gap between the **release year** and the **year the content was added** to Prime Video.
  
- **Movie Categories**:
  - Classified movies as:
    - **Short** (< 60 mins)
    - **Standard** (60–120 mins)
    - **Long** (> 120 mins)

- **Age Suitability**:
  - Categorized ratings into:
    - **Kids** (G, PG)
    - **Teens** (PG-13)
    - **Mature** (R, TV-MA)

## Visualizations
The project includes various visualizations to effectively communicate findings:

- **Heatmaps**: Showing correlations between attributes.
- **Bar Charts**: Analyzing genre popularity, top actors, and content type distributions.
- **Pie Charts**: Depicting the proportion of movies versus TV shows.
- **Scatter Plots**: Identifying patterns in movie duration and year differences.

## Technologies Used

- **Programming Language**: Python
- **Libraries**:
  - **Pandas**: For data manipulation and cleaning.
  - **NumPy**: For numerical computations.
  - **Matplotlib** and **Seaborn**: For creating insightful visualizations.
  - **Jupyter Notebook**: For an interactive coding environment.

## Steps to Run the Project


1. **Clone the repository**:  
   Clone the project repository from GitHub to your local machine.
   ```bash
   git clone https://github.com/your-username/prime-video-data-analysis.git
   ```

2. **Navigate to the project directory**:  
   Move into the project folder you just cloned.
   ```bash
   cd prime-video-data-analysis
   ```

3. **Install required Python libraries**:  
   Install all the necessary libraries using the `requirements.txt` file.
   ```bash
   pip install -r requirements.txt
   ```

4. **Open the Jupyter Notebook**:  
   Launch Jupyter Notebook to explore and run the analysis.
   ```bash
   jupyter notebook prime_video_analysis.ipynb
   ```

5. **Run all cells**:  
   Once the notebook opens, run all the cells to see the full analysis and visualizations.



# Key Learnings
-This project provided hands-on experience in:

-Data cleaning techniques for handling real-world data with missing and inconsistent values.

-Feature engineering for deriving deeper insights.

-Creating impactful visualizations to communicate findings effectively.

-Storytelling with data to uncover trends in the entertainment industry.

# Conclusion
This Prime Video EDA project was an insightful exercise in analyzing streaming content and understanding audience preferences. The analysis provides valuable insights that can help content creators, strategists, and business analysts in the entertainment industry make data-driven decisions. The findings also emphasize the power of data science in uncovering hidden patterns and driving innovation.

# Acknowledgments
Special thanks to Ai guidance and support throughout this project.

# Connect With Me
Feel free to reach out with feedback, suggestions, or collaboration opportunities! 😊

LinkedIn: [Raviteja](https://www.linkedin.com/in/ravi-teja-dharmana/)

Explore more projects: Let’s connect to discuss exciting data science projects! 🚀
