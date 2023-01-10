import os
import sys
import shutil

if len(sys.argv) < 2:
    folders = [f for f in os.listdir('.') if os.path.isdir(f) and f != 'build']
else:
    mod_num = sys.argv[1]
    folders = [f for f in os.listdir('.') if os.path.isdir(f) and f.startswith(f'{mod_num}_') and f != 'build']

# Loop through each folder
for folder in folders:
    # Get a list of all .md files in the folder
    md_files = [f for f in os.listdir(folder) if f.endswith('.md')]

    # Loop through each .md file
    for md_file in md_files:
        # Call marp on the .md file
        os.system(f'marp {folder}/{md_file}')

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
        shutil.copy(src, dst)


# Create a string containing the links in a <ul> tag
link_list = '\n'.join(links)
link_list = f'<ul>\n{link_list}\n</ul>'

# Create the final string that includes the <html> <head> and <body> tags
html_string = f'<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<title>My links</title>\n\t</head>\n\t<body>\n\t\t{link_list}\n\t</body>\n</html>'

# Write the link list to the index.html file
with open('build/index.html', 'w') as f:
    f.write(html_string)
