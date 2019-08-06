# Getting Started
(TODO: Add some screenshots!)
(TODO: Add some overview)

## 1. Introduction to Git
### 1.1. What is Git?
Git is an open source (meaning, 'free') distributed version control system.
As a student, you probably have an experience of writing a report with your classmatess.
And when you did it, I'm pretty sure you have done those silly things like:
```
bigdata_final_report_draft.docx
bigdata_final_report_draft-v1-Steve.docx
bigdata_final_report_draft-v1-Steve-Jane.docx
bigdata_final_report_draft-v2-Stella.docx
...
bigdata_final_report_FINAL.docx
bigdata_final_report_FINAL_FINAL.docx
bigdata_final_report_FINAL_FINAL_FINAL.docx
bigdata_final_report_FINAL_FINAL_FINAL_for_submission.docx
bigdata_final_report_FINAL_FINAL_FINAL_for_submission-for_real.docx
```
Simply speaking, Git is a more elegant (or geeky) way of doing the same thing.
This course will utilize Git for many purposes, including sharing lecture materials, source codes, etc.
You may also submit your final project using Git at the end of semester.
Also, many academic institutions and enterprises use Git as a primary tool for managing and controlling their source codes,
so knowing how to use Git would be tremendously helpful after you graduate.
Moreover, many developers/data scientists/machine learning experts/etc. use Git to show off their projects and sell themselves.
I guess these are enough to motivate you to use Git, right?

However, there are a lot more to cover in this course, and I'm not going to dive too deeply into Git. 
Instead, I would like to point you to the following links where more detailed explanations are available.
I strongly encourage you to read them all before to move forward:
- https://guides.github.com/introduction/flow/
- https://guides.github.com/activities/hello-world/

### 1.2. Install Git (Windows Only)
For other operating systems, including Mac OS X and Linux, Git is readily available and you don't have to install anything. (TODO: not quite true. Add how to setup mac developer kit.) For Windows, you have to download Git from the Git website (https://git-scm.com/download/win) and install it. When you install Git with the Git installer downloaded from the link, simply click 'next' all the way through the end. Using default options should work just fine, unless you are an advanced user, which in this case you would probably not need to read this tutorial for newbies.

### 1.3. Clone a Git repository
Once you have the git installed (Windows), find `Git Bash` under `Start Menu > Git`. For Mac and Linux, simply open terminal.
In order to clone (=download) a repository, simply type
```bash
git clone https://github.com/stephenbaek/bigdata.git
```
The above code will then create a new folder named `bigdata` download all the files on this course repository in the new folder.


## 2. Install Python

### 2.1. Install Anaconda
<TODO: put an explanation here>

### 2.2. Create a conda virtual environment for the course
Virtual environment is <TODO: put an explanation here>

Find `Anaconda Prompt` under `Start Menu > Anaconda 3 (64-bit)` and open it.
You'll see a spooky black screen. Type the following command.
```bash
conda create -n bigdata python=3.6 ipykernel
```
- `conda create` is a command to create a virtual environment.
- `-n bigdata` sets the name of the new virtual environment to `bigdata`
- `python=3.6` specifies the version of python we will be using.

### 2.3. Activate the new environment
```bash
conda activate bigdata
```
You'll see the prompt has changed to `(bigdata) H:\>` or something like that on Windows. <TODO: other os>

### 2.4. Install Libraries
We are going to use some off-the-shelf libraries in this course.
Installing libraries is as simple as typing `pip install <name-of-library>` in the command line.

Two of the most useful libraries in this course will be `pandas` and `matplotlib`.
- `pandas` is <TODO: put an explanation here>
- `matplotlib` is <TODO: put an explanation here>

They can be installed by typing each line one at a time.
```bash
pip install pandas
pip install matplotlib
```

## 3. Your First Python Program

Open `Anaconda Prompt` and type:
```bash
jupyter notebook
```
This will open up something that looks like a file browser on your web browser. Navigate into `bigdata` folder (See 1.3 above).
Get into `assignments > assignment_01` folder. Run `hello_world.ipynb`. This will open up a "notebook" of codes with notes.
Follow the instructions there and execute Python codes.
