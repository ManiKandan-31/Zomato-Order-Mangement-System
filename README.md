# 🛵 Zomato Order Management System

## 📌 Project Overview
This project is a **web application** that allows users to place food orders with real-time data processing and storage in **MySQL**. The system processes user orders, validates data, and stores order details in the database. We can also use the data for **ETL** (Extract, Transform, Load).

## 🔬 Dataset
The dataset includes order information, including:
- **User Data**: Customer details, including name, email, etc.
- **Order Data**: Details about each order, including items, total amount, and payment status.
- **Item Data**: Information about the food items, including name, category, and price.

## 🏗 Model Architecture
The web application is built using:
- ✔ **Flask** for backend development
- ✔ **HTML/CSS** for frontend
- ✔ **MySQL** for database management
- ✔ **ETL** components for revenue analysis, item sales, etc.

## 🔹 ETL Operations
- **Total Revenue from All Orders**
- **Revenue by Item**
- **Revenue by Payment Method**
- **Total Revenue by Date**
- **Orders by Payment Status**
- **Users with Most Orders**
- **Revenue by Category**
- **Customer Details with Orders**
- **Revenue by Customer**

## 🏆 Key Achievements
- ✔ **Increase in Sales**: sales can be increased
- ✔ **Real-Time Reporting**: Provides insights to help the Sales Director make strategic decisions

## Sample Output
Here is a sample output from placing an order through the web application:

### **Order Form**
![image](https://github.com/user-attachments/assets/348cf1b0-b6a6-47d8-9bb5-0fed49782498)
)

### ** Successful Order Placement**
```json
{
    "message": "Order placed successfully!"
}
