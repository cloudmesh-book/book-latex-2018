Tutorials, Topic Paper, Term Paper, Project Report
==================================================

 

Dependendt on the class you need to do different assignments. The
assignments will be clearly posted in this document and updated in case
clarification is needed.

We use the following terminology:

Tutorials:

:   Tutorials are written in markdown, RST, or LaTeX and include
    information on a particular technical issue that is in general
    helpful for other students. Tutorials can be small, but sume may
    need to be substential. As we expect that the tutorials can be
    included in the Handbook, please be careful of plagiarizm and do not
    just copy the tutorial from elswhere.

Topic Paper:

:   A topic paper, or short paper is a smapp paper about a technology,
    application, or useful information that provides an overview of what
    you are trying to describe and analyses its relatinship to the class
    topic. Be mindful about plagiarizm. The paper is written in
    LaTeX and uses jabref for bibliography management.

Term Paper:

:   A term paper is an enhanced topic paper. The difference is in
    length. Comparative or review papers can also be term papers. Term
    papers should have the quality to be publishable either in a
    workshop or as part of the handbook.

Project Paper:

:   A project reportis an enhanced topic paper that includes not just
    the analysis of a topic, but an actuall code, with benchmark or
    demosntarted appliction use. Obviously it is longer than a paper and
    includes descriptions about reproducability of the application. Term
    papers should have the quality to be publishable either in a
    workshop or as part of the handbook.

Assignments:

:   In addition to the previously discussed toppict you also are doing a
    small number of assignments. These assignments may take you one or
    multiple weeks to accomplish. Some of them are pass fail, while
    others will receive a grade. It will be clearly stated at the
    beginning of the assignment which of the evaluation will apply.

Examples from prior classes are avalable in the class proceedings listed
in Section [\[S:p-intro\]](#S:p-intro){reference-type="ref"
reference="S:p-intro"}.

Dependent on the class you have to fulfill different requirements.
Please make sure you understand which requirement you will have.

E516

:   In these classes you will need to produce tutorials, topic papers
    and a project report with real code.

E616

:   In these classes you will need to produce tutorials, topic papers
    and a project report with real code.

I524

:   same as E616, but you have the choice to substitute the project
    report with a term paper.

Please be aware that the project or term paper constitute to a
significant portion of your grade of your class grade. You have plenty
of time to make this choice and if you find you struggle with
programming you may want to consider a term paper instead of a project.

In case you chose a project your maximum grade for the entire class
could be an A+. However, an A+ project must be truly outstanding and
include an exceptional project report. Such a project and report will
have the potential quality of being able to be published in a
conference.

In case you chose a term Paper for I524 your maximum grade for the
*entire* class will be an A-.

Please note that a project includes writing a project paper. However the
length is a bit shorter than for a term paper.

Team
----

Software projects and term papers can be conducted with one, two or
three class members. We do not allow more than three members in a
project, paper, or assignment team. It will be up to you to determine a
team, but we recommend that you chose wisely. Naturally if a team member
does not contribute to the project you need to address this early on.
Please do not come to us a week before the deadline is due and say a
team member has not contributed, this is far to late to do any
adjustment to the team. It is in your responsibility to manage the team.
You can build different teams throughout the semestar for different
tasks. Please communicate clearly and timely with your class mates.

Common Deleiverables
--------------------

Both Projects and Term paper have the following common deliverables

Work Breakdown:

:   This is an appendix to the document that describes in detail who did
    what in the project. This section comes in a new page after the
    references. It does not count towards the page length of the
    document. It also includes explicit URLs to the the git history that
    documents the statistics to demonstrate not only one student has
    worked on the project. If you can not provide such a statistic or
    all checkins have been made by a single student, the project has
    shown that they have not properly used git. Thus points will be
    deducted from the project. Furthermore, if we detect that a student
    has not contributed to a project we may invite the student to give a
    detailed presentation of the project.

Bibliography:

:   All bibliography has to be provided in a jabref/bibtex file. This is
    regardless if you use LaTeX or Word. There is **NO EXCEPTION** to
    this rule. PLease be advised doing references right takes some time
    so you want to do this early. Please note that exports of Endnote or
    other bibliography management tools do not lead to properly
    formatted bibtex files, despite they claiming to do so. You will
    have to clean them up and we recommend to do it the other way
    around. Manage your bibliography with jabref, and if you like to use
    it import them to endnote or other tools. Naturally you may have to
    do some cleanup to. If you use LaTeX and jabref, you have naturally
    much less work to do. What you chose is up to you.

Report Format:

:   All reports will be using the our common format. This format is not
    the same as the ACM format, so if you use systems such as overleaf
    or sharelatex, you need to upload it and use it there.

    The format for LaTeX and Word found here:

    \URL{https://github.com/cloudmesh-community/hid-sample/tree/master/paper}

There will be **NO EXCEPTION** to this format. In case you are in a
team, you can use either github while collaboratively developing the
LaTeX document or use MicrosoftOne Drive which allows collaborative
editing features. All bibliographical entries must be put into a
bibliography manager such as jabref, or Mendeley and exported to bibtex.
This will guarantee that you follow proper citation styles. You can use
either ACM or IEEE reference styles. Your final submission will include
the bibliography file as a separate document.

Documents that do not follow the ACM format and are not accompanied by
references managed with jabref or are not spell checked will be returned
without review.

Project Paper
-------------

### Systems Usage

Projects may be executed on your local computer, a cloud or other
resources you may have access to. This may include:

-   chameleoncloud.org

-   furturesystems.org

-   AWS (you will be responsible for charges)

-   Azure (you will be responsible for charges)

-   virtualbox if you have a powerful computer and like to prototype

-   other clouds, please confirm with us.

Access to clouds must be scripted and a cmd5 extension must be developed
as part of your project to receive full credit.

### Deliverables

The following artifacts are part of the deliverables for a project

Code:

:   You must deliver the **source code** in github. The code must be
    compilable and a TA may try to replicate to run your code. You MUST
    avoid lengthy install descriptions and everything must be
    installable from the command line. We will check submission. All
    team members must be responsible for one or all parts of the
    project.

    Code repositories are for code, if you have additional libraries
    that are needed you need to develop a script or use a DevOps
    framework to install such software. Thus zip files and `.class`,
    `.o` files are not permissible in the project. Each project must be
    reproducible with a simple script. An example is:

        git clone ....
        make install
        make run
        make view

    Which would use a simple make file to install, run, and view the
    results. You are expected to integrate cmd5, which we teach in
    class. In addition you can use or are expected to us DOCKERFILES,
    ansible, or shell scripts. It is not permissible to use GUI based
    DevOps preinstalled frameworks. Everything must be installable and
    reproducable form the command line.

Data:

:   Data is to be hosted on IUs google drive if needed. If you have
    larger data, it should be downloaded from the internet. It is in
    your responsibility to develop a download program. The data **must**
    not be stored in github. You will be expected to write a python
    program that downloads the data.

Project Report:

:   A report must be produced while using the format discussed in the
    Report Format section. The following length is required:

    -   6 pages, one student in the project

    -   8 pages, two students in the project

    -   10 pages, three students in the project

License:

:   All projects are developed under an open source license such as
    Apache 2.0 License. You will be required to add a LICENCE.txt file
    and if you use other software identify how it can be reused in your
    project. If your project uses different licenses, please add in a
    README.md file which packages are used and which license these
    packages have.

Term Paper
----------

In case you chose the term paper, you or your team will pick a topic
relevant for the class. You will write a high quality scholarly paper
about this topic. The following artifacts are part of the deliverables
for a term paper. A report must be produced while using the format
discussed in the Report Format section. The following length is
required:

-   8 pages, one student in the project

-   10 pages, two student in the project

-   12 pages, three student in the project
