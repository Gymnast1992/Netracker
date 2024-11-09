#!/bin/zsh

# Display a message
echo "Maksym Semiankiv"
read -p "Press Enter to continue..."

# Go to the parent directory and create a new directory "Practice0"
cd ..
mkdir -p Practice0
read -p "Press Enter to continue..."

# Change to "Practice0" and create a "Test" directory inside it
cd Practice0
mkdir -p Test
cd Test

# Creating the file "about.me" with user details
echo "Creating the file about.me"
MyName="Maksym Semiankiv"
echo "$MyName"
Education="Lugansk National University"
echo "$Education"
echo "[Your Name and Surname] $MyName" > about.me
echo "[University name] $Education" >> about.me
read -p "Press Enter to continue..."

# Moving "about.me" up one directory level to "Practice0"
echo "Transferring file about.me to the directory Practice0"
mv about.me ../about.me
read -p "Press Enter to continue..."

# Setting the file to read-only
echo "Setting Read-only permissions"
cd ..
chmod 444 about.me  # 444 sets read-only permissions
echo "OK"
read -p "Press Enter to continue..."

# Displaying the contents of "about.me"
echo "Pulling the information from the about.me file"
cat about.me
read -p "Press Enter to continue..."

# Copy "about.me" to "Test" directory and rename it
echo "Copying the file about.me to the Test directory"
cp about.me Test/about.me
cd Test
mv about.me about_.me
cd ..
echo "Adding the third line: Year"
Year="2013"
echo "$Year"
echo "[Graduation year] $Year" >> about.me
read -p "Press Enter to continue..."

# File comparison using diff
echo "File comparisons"
diff about.me Test/about_.me
read -p "Press Enter to continue..."
