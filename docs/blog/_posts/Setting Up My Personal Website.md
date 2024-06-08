---
layout: post
title: "Setting Up My Personal Website"
date: 2024-06-07
categories: blog
---

# Setting Up My Personal Website

Welcome to my first blog post! I'm excited to share the journey of setting up my personal website using GitHub Pages and Jekyll. This site will serve as my portfolio, blog, and a place to showcase my projects.

## Why GitHub Pages and Jekyll?

I chose GitHub Pages and Jekyll because they offer a simple and effective way to create and host a static website for free. With my background in data analytics and programming, it was a natural fit to use these tools.

## Steps to Set Up the Site

Here's a brief overview of the steps I took to get my site up and running:

1. **Create a GitHub Repository:**
   - I created a new repository on GitHub and named it appropriately (e.g., `my-portfolio-site`).

2. **Set Up the `docs` Folder:**
   - I created a `docs` folder in my repository, which GitHub Pages uses as the source for the site's files.

3. **Configure Jekyll:**
   - Added a `_config.yml` file in the `docs` folder to configure Jekyll settings like the site title, description, and theme.
   ```yaml
   title: "Surya Pranav Sukumaran"
   description: "Personal blog and portfolio"
   theme: jekyll-theme-minimal
   markdown: kramdown
   baseurl: "/my-portfolio-site"
   url: "https://yourusername.github.io"

