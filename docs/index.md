---
layout: home
title: Home
---
# Welcome to My Personal Site

I’m Pranav, an MSc Applied Data Analytics graduate from Boston University with a passion for leveraging data to solve complex problems. Currently a Data Science Intern at Providence Health, I apply statistical analysis and machine learning models to uncover insights in gene expression data from pancreatic cancer samples.

I am proficient in Python, R, and SQL in terms of programming languages. I have also used Keras and Apache Spark for deep learning and big data analysis, I thrive in roles that leverage cutting edge technology and research to transform data into actionable insights. I’m eager to connect with like-minded professionals and explore collaborative opportunities in data science and analytics!

## Recent Posts

{% for post in site.posts %}

- [{{ post.title }}]({{ post.url }})
{% endfor %}

