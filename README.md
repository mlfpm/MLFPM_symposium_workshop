# MLFPM symposium workshop

This repository contains everything you need to follow the Machine Learning Frontiers in Precision Medicine (MLFPM) student workshop, happening in Munich on Tuesday, 18/10/2022.

The session is divided in two parts:

1) Medical imaging classification and explainability
2) Network-based genome-wide association studies - GWAS

Slides presented during the session available [here](https://docs.google.com/presentation/d/1JYD9hWlIsq7y6tI9Gd1snMYqyxikeWLgg127aTz_RgI/edit?usp=sharing)

---

### Part 1 setup

For part 1, we will run a Google [colab notebook](https://colab.research.google.com/) (with GPU access), 
and use a [chest X-ray dataset hosted in Kaggle](https://www.kaggle.com/datasets/tawsifurrahman/covid19-radiography-database). 
This means that you'll need both Google and Kaggle accounts to proceed. You can find instructions on this 
regard [here](https://support.google.com/accounts/answer/27441?hl=en) and [here](https://www.kaggle.com/).

Once that's taken care of, and in order to access the data, you should activate a Kaggle API key. Once logged in to Kaggle,
you should see a menu called "API" under the 'Account' menu (that you can access when you click your small picture 
in the top-right corner of the screen). Once there, click on "Create new API token". This should download a file called
"kaggle.json". When opening it, you should see your user name and an automatically generated password. Don't lose it; we'll
need it for the next step!

Last but not least, let's load the project in the cloud. Go to [Google colab](https://colab.research.google.com/), and paste
the URL of this repository (https://github.com/mlfpm/MLFPM_symposium_workshop) under 'GitHub' on the pop-up menu. A notebook should immediately open, and we're good to go!

---

### Part 2 setup

In this part, the goal is to follow the standard steps of a GWAS analysis. We'll also explore what extra insights we can
get applying graph theory in this framework.

To execute it, go to [RStudio cloud](https://rstudio.cloud) (you can log in with your gmail credentials), 
and click on "New Project" -> "New Project from Git Repository". When prompted, paste the lint to this repo.
After some loading time, we're good to go!

---

 This project has received funding from the European Union's Horizon 2020 research and innovation programme under the Marie Skłodowska-Curie grant agreement No.  813533
 <div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_Europe.svg/255px-Flag_of_Europe.svg.png">
</div>

---
