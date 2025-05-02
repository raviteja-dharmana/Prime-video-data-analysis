# <img src="https://logos-world.net/wp-content/uploads/2021/04/Amazon-Prime-Video-Logo.png" alt="Prime Logo" width="300"/>
# Prime Video Data Analysis (Python + SQL)

## Overview

This project presents a comprehensive **Exploratory Data Analysis (EDA)** of **Amazon Prime Video’s** extensive content library using **Python** and **SQL**. By examining over **7,000 entries**, we uncover meaningful insights into content trends, genre popularity, production countries, rating distributions, and more. The analysis emphasizes both programming and query-based approaches for real-world analytics.

## Objectives

- Clean and preprocess raw data to address nulls and inconsistencies.
- Perform descriptive analysis using Python and SQL.
- Explore data based on:
  - **Content Type**
  - **Release Year**
  - **Country of Origin**
  - **Rating** and **Genres**
- Engineer meaningful features:
  - **Year Difference** (Release vs. Prime addition year)
  - **Movie Category** (Short, Standard, Long)
  - **Age Suitability** (Kids, Teens, Mature)
- Create compelling visualizations using Python.
- Showcase SQL querying for insights and pattern recognition.

## Dataset

### Source
The dataset contains detailed information about Prime Video titles:

- **Title**: Name of the content.
- **Content Type**: Movie or TV Show.
- **Release Year**: Original release year.
- **Country**: Production country.
- **Rating**: Viewer guidance rating.
- **Duration**: Runtime in minutes or number of seasons.
- **Listed Genres**: Content classification (e.g., Drama, Comedy).

### Processing
- Null values were handled.
- Date fields and categories were standardized.
- The dataset was imported into **MySQL** for query-based analysis.

## Key Highlights

### Insights

- **Content by Country**:
  - The **USA** leads in content volume.
  - **India** and the **UK** also contribute significantly.

- **Popular Genres**:
  - Dominated by **Drama**, **Comedy**, **Action**, and **Thriller**.

- **Content Type Distribution**:
  - **Movies** make up **94.8%** of the dataset.

- **Ratings**:
  - TV Shows: Tend to be family-friendly (PG, TV-G).
  - Movies: More often rated for mature audiences (R, TV-MA).

- **Duration**:
  - Movies vary from short (<60 mins) to extended (>240 mins).
  - Newer content generally has shorter durations.

- **Top Contributors**:
  - **Directors**: Alastair Fothergill, Vikas Bahl
  - **Actors**: Shah Rukh Khan, Al Pacino, Emily Blunt

### Feature Engineering

- **Year Difference**:
  - Time gap between release and Prime Video listing.

- **Movie Category**:
  - **Short**: < 60 mins
  - **Standard**: 60–120 mins
  - **Long**: > 120 mins

- **Age Suitability**:
  - **Kids**: G, PG
  - **Teens**: PG-13
  - **Mature**: R, TV-MA

## Visualizations (Python)

- **Bar Charts**: Genre and rating distributions
- **Pie Charts**: Movies vs. TV shows
- **Heatmaps**: Attribute correlations
- **Scatter Plots**: Duration vs. release year

## SQL Analysis

SQL queries were written to:

- Count content by type:
  ```sql
  SELECT type, COUNT(*) FROM prime_data GROUP BY type;
  ```
- Most popular genres:
  ```sql
  SELECT listed_in, COUNT(*) as count FROM prime_data GROUP BY listed_in ORDER BY count DESC;
  ```
- Top contributing countries:
  ```sql
  SELECT country, COUNT(*) as count FROM prime_data GROUP BY country ORDER BY count DESC LIMIT 10;
  ```
- Ratings distribution:
  ```sql
  SELECT rating, COUNT(*) FROM prime_data GROUP BY rating;
  ```
- Longest movies:
  ```sql
  SELECT title, duration FROM prime_data WHERE type='Movie' ORDER BY duration DESC LIMIT 5;
  ```

## Technologies Used

- **Languages**: Python, SQL
- **Tools**:
  - **Jupyter Notebook** for Python analysis
  - **MySQL** for database querying
- **Libraries**:
  - **Pandas**, **NumPy**: Data handling
  - **Matplotlib**, **Seaborn**: Visualization

## Steps to Run the Project

### Python Workflow

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/prime-video-data-analysis.git
   ```
2. **Navigate to the folder**:
   ```bash
   cd prime-video-data-analysis
   ```
3. **Install requirements**:
   ```bash
   pip install -r requirements.txt
   ```
4. **Launch Jupyter Notebook**:
   ```bash
   jupyter notebook prime_video_analysis.ipynb
   ```

### SQL Workflow

1. **Import CSV into MySQL database**
2. **Open SQL client (e.g., MySQL Workbench)**
3. **Run queries from `prime_video_queries.sql`** to extract insights

## Key Learnings

- Learned end-to-end data analysis using Python and SQL.
- Practiced cleaning and preprocessing datasets.
- Developed SQL querying skills for real-world datasets.
- Created compelling visualizations to share insights.
- Strengthened storytelling using both code and queries.

## Conclusion

This Prime Video project blends Python and SQL to analyze and visualize streaming data. It showcases how multiple tools can be used in tandem to clean, analyze, and present findings effectively. The insights generated can aid streaming platforms in content curation, recommendation engines, and strategy formulation.

## Acknowledgments

Thanks to AI guidance and open data communities for enabling this project.

## Connect With Me

- LinkedIn: [Raviteja](https://www.linkedin.com/in/ravi-teja-dharmana/)
- GitHub: [Explore More Projects](https://github.com/your-username)
- Let’s connect and collaborate on exciting data projects! 🚀

