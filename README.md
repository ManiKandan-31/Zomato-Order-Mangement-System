Zomato Order Management SystemProject DescriptionThis project is a web application that allows users to place food orders with real-time data processing and storage in MySQL. The system processes user orders, validates data, and stores order details in the database.
Project Structureapp.py: Main application script.
templates/: Directory containing HTML templates.
requirements.txt: List of dependencies required to run the project.
database_schema.sql: SQL script for setting up the database schema.
How to RunClone the repository:
git clone https://github.com/yourusername/zomato-order-management.git
cd zomato-order-managementInstall the dependencies:
pip install -r requirements.txtSet up the MySQL database using database_schema.sql:
mysql -u root -p < database_schema.sqlRun the application:
python app.pyAccess the application at:
http://localhost:5000DependenciesSee requirements.txt for a list of dependencies.
LicenseThis project is licensed under the MIT License.
AuthorYour Name
ContributingPull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
