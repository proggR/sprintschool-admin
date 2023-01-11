# SprintSchool: Agile Education for a rapidly changing digital workplace

## Thesis

Hands on project based learning is the best way to learn in software, while experience working in a team is most critical for career development. By leveraging a "fake" company, with "fake" projects, it reduces the risk of mismatched student placements to 0, allowing for students to adopt more hats in a faster pace, while building out their portfolio at the same time. This model will result in both better outcomes, and being Agile, it will naturally be able to adapt to the changing industry on a dime, keeping up with the pace of employment directions better than Colleges/Universities, while providing a deeper understanding for a more affordable price than Bootcamps.

## Working With This Repo

### Git (Preferred)

If you intend to edit anything, you'll need to have `git` installed locally in order to clone the repo.

#### Install Git

**On Debian Flavored Linux:** `sudo apt install git-all`

**On Windows:** Download the [Windows Binary](https://git-scm.com/download/win) and install it. __Note:__ audit [GitForWindows](https://gitforwindows.org/)

#### Generate Github Personal Access Token (if you haven't already)

- **Step 1**: In Github, click your avatar at the top-right followed by `Settings`
- **Step 2**: At the very bottom of the left side navigation, click `Developer Settings`
- **Step 3**: Click `Personal Access Tokens` followed by `Tokens (classic)`
- **Step 4**: To the right of the page title is `Generate New Token`. Click that, again opting for `classic`
- **Step 5**: Provide a Note/name, select your expiration timeout, and check the box next to `repo` at the top
- **Step 6**: Click `Generate token` from the bottom, and then copy/save the token it provides for you. You'll need this


#### Clone Repo

Open your Terminal/Command prompt and navigate to the folder you want to save the `sprintschool-admin` directory in.

Then type: `git clone https://github.com/proggR/sprintschool-admin.git`

This should prompt you for your username, followed by your password.

**Important Note:** For the password, you'll need to paste in the personal access token created previously.


#### Push Changes

If you have access to, you can push changes once committed with `git push origin main`.

If you lack access, or process dictates no direct pushes, then you can create a `Pull Request` from the Pull Requests tab on the repo page in Github.

**Important Note:** The pull request method will need documentation.

### ZIP (Read-Only)

Alternatively you can click `Code` and `Download ZIP`, and then extract it to where you want locally. This allows you to view the resources, but edits will require the Git method be used.

## Repo Structure

Core sections of the repo:

- `index.html`: The Sprint School Admin Dashboard. Links to the local website, curriculum index, keynotes index, and third party services.
- `gh.css`: Provides the CSS to indexes and materials. Currently replicated in both `build` folders, but should be referenced from 1 spot.
- `web`: The website for SprintSchool. Opening `index.html` in a browser will render it.
- `github`: Github management Terraform codebook to adapt for SprintSchool/FakeCo's processes
- `admin`: Meta ideation and thought capture space. Process and objective documentation will live here.
- `0_newhire`: The New Hire Crash Course (NHCC) curriculum. Its comprised of:         
    - `curriculum.md`: An outline of the programs curriculum, including assignments and FakeCo extension courses
    - `build`: The compiled HTML files for the program. It contains an `index.html` that links to all resources.
    - `compile.py`: Script used to compile course resources into the `build` folder. Accepts a numerical course ID to compile single courses. It uses `pandoc` for Markdown parsing.
    - `Courses`: Folders starting with a number and underscore are separate courses. They're comprised of:
        - `0_learn.md`: The curriculum materials
        - `1_execute.md`: The assignments
        - `test.md`: The final test questions
        - `syllabus.md`: The syllabus for the course (note: syllabus2.md is likely going to become syllabus.md)    
    - `keynotes`: Contains any presentations for workshops/sessions. Its comprised of:
        - `build`: The compiled HTML presentations for the course sessions. It contains an `index.html` that links to all resources.
        - `compile.py`: Script used to compile keynotes into the `build` folder. Accepts a numerical course ID to compile single courses. It uses `marp` for Markdown parsing.
        - `Courses`: Folders starting with a number and underscore are separate courses. They're comprised of sessions following the names `session1.md`, `session2.md`, etc
- `fakeco`: Contains FakeCo project outlines, broken into frontend, backend, and infrastructure subprojects.
    - `proj1`: Acts as a way to maintain a high level overview of the first FakeCo project's subprojects. Subprojects include:
        - `app1/serv1/infra1`: Home for FakeCo's first app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `proj2`: Acts as a way to maintain a high level overview of the second FakeCo project's subprojects. Subprojects include:
        - `app2/serv2/infra2`: Home for FakeCo's second app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `proj3`: Acts as a way to maintain a high level overview of the third FakeCo project's subprojects. Subprojects include:
        - `app3/serv3/infra3`: Home for FakeCo's third app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `proj4`: Acts as a way to maintain a high level overview of the fourth FakeCo project's subprojects. Subprojects include:
        - `app4/serv4/infra4`: Home for FakeCo's fourth app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `proj5`: Acts as a way to maintain a high level overview of the fifth FakeCo project's subprojects. Subprojects include:
        - `app5/serv5/infra5`: Home for FakeCo's fifth app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `proj6`: Acts as a way to maintain a high level overview of the sixth FakeCo project's subprojects. Subprojects include:
        - `app6/serv6/infra6`: Home for FakeCo's sixth app & service. Will include project outline and PM plan (ie: will be a managed project), including building out the client, server, and devops codebooks separately and then integrating them in the final phase.
    - `zany1`: Home for ideation of the first hackathon project. Should be bigger in scope, but achievable within a 48 hour hackathon event. Ideally it builds on a successful FakeCo prototype aiming to polish it into a release candidate.
