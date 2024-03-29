import os
import sys
import shutil

if len(sys.argv) < 2:
    folders = [f for f in os.listdir('.') if os.path.isdir(f) and f != 'build' and f != 'keynotes']
else:
    mod_num = sys.argv[1]
    folders = [f for f in os.listdir('.') if os.path.isdir(f) and f.startswith(f'{mod_num}_') and f != 'build' and f != 'keynotes']

# Loop through each folder
for folder in folders:
    # Get a list of all .md files in the folder
    md_files = [f for f in os.listdir(folder) if f.endswith('.md')]

    # Loop through each .md file
    for md_file in md_files:
        # Call marp on the .md file
        html_file = md_file.replace('.md','.html')
        os.system(f'pandoc {folder}/{md_file} -t html -s -c gh.css -o {folder}/{html_file}')

links = []

# Loop through each folder again
for folder in folders:
    # Get a list of all .html files in the folder
    html_files = [f for f in os.listdir(folder) if f.endswith('.html')]

    # Loop through each .html file
    for html_file in html_files:
        # Build the source and destination file paths
        src = f'{folder}/{html_file}'
        dst = f'build/{folder}_{html_file}'
        links.append(f'<li><a href="./{folder}_{html_file}">{folder}_{html_file}</a></li>')
        # Copy the .html file to the build folder
        shutil.move(src, dst)

if len(sys.argv) > 1:
    sys.exit()

# Create a string containing the links in a <ul> tag
links.sort()
link_list = '\n'.join(links)
link_list = f'<ul>\n{link_list}\n</ul>'

# Create the final string that includes the <html> <head> and <body> tags
html_string = f'<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<title>NHCC Curriculum Index</title>\n\t</head>\n<link rel="stylesheet" href="gh.css" />\n\t<body>\n\t<h1>NHCC Curriculum Index</h1>\n<a href="../../index.html">SprintSchool Dashboard</a><br/><a href="../keynotes/build/index.html">Keynotes Index</a><br/><br/>\t\t{link_list}\n\t</body>\n</html>'

# Write the link list to the index.html file
with open('build/index.html', 'w') as f:
    f.write(html_string)
