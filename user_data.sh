#!/bin/bash
 
# Update the system
dnf update -y
 
# Install Apache web server
dnf install -y httpd
 
# Start Apache automatically
systemctl enable httpd
 
# Start Apache now
systemctl start httpd
 
# Create the website homepage
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>My First Terraform Project</title>
</head>
<body>
    <h1>Welcome to HANUMA KUMAR BANDI AWS Web Server!</h1>
    <h2>Deployed using Terraform</h2>
    <p>EC2 instance is running successfully.</p>
</body>
</html>
EOF
