# Zomato Order Management System

## Project Description
This project is a web application that allows users to place food orders with real-time data processing and storage in MySQL. The system processes user orders, validates data, and stores order details in the database.

## Project Structure
- `app_home.py`: Main application script.
- `templates/`: Directory containing HTML templates.
- `static/`: Directory containing static files (if any).
- `requirements.txt`: List of dependencies required to run the project.
- `database_schema.sql`: SQL script for setting up the database schema.

## How to Run
1. Clone the repository.
2. Install the dependencies: `pip install -r requirements.txt`.
3. Set up the MySQL database using `database_schema.sql`.
4. Run the application: `python app_home.py`.
5. Access the application at `http://localhost:5000`.

## Sample Output
Here is a sample output from placing an order through the web application:

### **Order Form**
![image](https://github.com/user-attachments/assets/348cf1b0-b6a6-47d8-9bb5-0fed49782498)
)

### **Successful Order Placement**
```json
{
    "message": "Order placed successfully!"
}
