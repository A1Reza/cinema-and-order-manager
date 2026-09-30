# 🎬 Cinema and Order Manager

> A **Jakarta EE** web application combining an **Online Order Management System** with a responsive **CinemaHub** interface.

<p align="center">
  <img src="https://img.shields.io/badge/Java-21-orange?style=for-the-badge&logo=openjdk" />
  <img src="https://img.shields.io/badge/Jakarta%20Servlet-6.1-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Tomcat-11.0.25-yellow?style=for-the-badge&logo=apachetomcat" />
  <img src="https://img.shields.io/badge/Bootstrap-5.3.8-purple?style=for-the-badge&logo=bootstrap" />
  <img src="https://img.shields.io/badge/Maven-Build-red?style=for-the-badge&logo=apachemaven" />
</p>

---

## 📖 About the Project

This project is built to practice **Java Web Development** concepts, including:

- **Jakarta Servlets** & **JSP**
- **Expression Language (EL)** & **JSTL**
- **HTTP Sessions** & **Cookies**
- **Servlet Filters**
- **HTTP methods** (`GET` / `POST`)
- **Request/Session attributes**, **Forwarding**, and **Redirects**
- **Bootstrap 5**, **Flexbox**, and **Responsive Grid Layouts**

The application merges two practical exercises into one clean project — an **Online Order Management System** and a **CinemaHub** showcase — with **no database required**. 🍪

---

## 🚀 Features

### 🛒 Online Order Management

- ➕ Create a new order
- 👤 Enter customer name
- 📦 Enter product name
- 💰 Enter product price
- 🔢 Enter product quantity
- 🧮 Automatically calculate the total price
- 📄 Display complete order information
- 🗂️ Store the latest order in the **HTTP Session**
- 👀 View the latest order from a separate request
- 🍪 Remember the customer's name using **Cookies**
- ✍️ Automatically use the saved customer name in the order form
- 🛡️ Protect the latest-order page using a **Servlet Filter**
- 🔀 Redirect unauthenticated requests to the order page
- 🔁 Create another order after completing an order
- 🌐 Use appropriate HTTP methods
- ↔️ Forward requests between Servlets and JSP pages

### 🎬 CinemaHub

- 📱 Responsive CinemaHub interface
- 🧭 Cinema navigation menu
- 🎞️ **Now Showing** section
- 🎥 Six movie cards
- 🖼️ Movie poster, title, genre, duration, rating, and description
- 🎟️ "Book Ticket" button
- 🏷️ Movie badges: `NEW`, `2D`, `3D`, `IMAX`
- ⭐ **Today's Special** section
- 🏢 Cinema information section (address, opening hours, halls, contact)
- 🔻 Responsive footer
- 📐 Bootstrap Flexbox & Grid utilities
- 📱 Layout optimized for mobile, tablet, and desktop

---

## 🧩 Technologies

| Technology | Usage |
| --- | --- |
| ☕ **Java 21** | Application development |
| 🧩 **Jakarta Servlet** | Request handling and server-side logic |
| 📄 **JSP** | Dynamic web pages |
| 🧾 **JSP Expression / Scriptlet / Directive** | Server-side JSP features |
| 🧠 **Expression Language (EL)** | Displaying data in JSP |
| 🗂️ **HTTP Session** | Storing the latest order |
| 🍪 **Cookies** | Remembering customer name |
| 🛡️ **Servlet Filter** | Protecting latest-order requests |
| 🎨 **Bootstrap 5.3.8** | Responsive UI |
| 🏗️ **HTML5** | Page structure |
| 📦 **Maven** | Project and dependency management |
| 🐱 **Apache Tomcat 11.0.25** | Application server |

---

## 🏗️ Project Structure

```text
cinema-and-order-manager
│
├── src
│   └── main
│       ├── java
│       │   └── ir
│       │       └── reza
│       │           └── store
│       │               ├── model
│       │               │   └── Order.java
│       │               │
│       │               ├── servlet
│       │               │   ├── OrderServlet.java
│       │               │   └── LatestOrderServlet.java
│       │               │
│       │               └── filter
│       │                   └── LatestOrderFilter.java
│       │
│       └── webapp
│           ├── index.jsp
│           ├── cinema.jsp
│           │
│           └── WEB-INF
│               └── views
│                   ├── order.jsp
│                   ├── result.jsp
│                   └── latest-order.jsp
│
├── pom.xml
└── README.md
```

---

## 🔄 Application Flow

### 🛒 Online Order

```text
Create Order
     │
     ▼
Order Form
     │
     ▼
Submit Order
     │
     ▼
OrderServlet
     │
     ├── Read Request Parameters
     ├── Calculate Total Price
     ├── Store Order in Session
     └── Store Customer Name in Cookie
     │
     ▼
Result Page
     │
     ▼
View Latest Order
     │
     ▼
LatestOrderFilter
     │
     ├── Session exists  ──▶  LatestOrderServlet  ──▶  Latest Order Page
     │
     └── Session missing ──▶  Redirect to /order
```

### 🎬 CinemaHub

```text
CinemaHub
   │
   ▼
Now Showing
   │
   ▼
Movie Cards
   │
   ▼
Today's Special
   │
   ▼
Cinema Information
   │
   ▼
Footer
```

---

## 🍪 Cookie Management

A **Cookie** is used to remember the customer's name:

- When an order is submitted, the customer's name is stored in a Cookie.
- On later requests, the application checks whether the Cookie exists.
- If it exists, the customer's name is automatically filled into the order form.
- The Cookie is scoped to the application context path with a limited lifetime.

---

## 🗃️ Session Management

The **latest created order** is stored in the HTTP Session:

```text
Session
   │
   └── latestOrder
```

- Each new order **replaces** the previous latest order.
- The latest-order page retrieves this data via a **separate request**.

---

## 🛡️ Servlet Filter

`LatestOrderFilter` protects the `/latest-order` endpoint:

- ✅ If the session contains a latest order → request is forwarded to the Servlet.
- ❌ Otherwise → the user is redirected to `/order`.

```text
Request  ──▶  Filter  ──▶  LatestOrderServlet  (if session exists)
                │
                └──▶  Redirect to /order  (if session missing)
```

---

## 🖥️ JSP Concepts Demonstrated

### 📄 JSP Directive

```jsp
<%@ page contentType="text/html;charset=UTF-8" %>
```

Used to configure the JSP page.

### 🧾 JSP Expression

```jsp
<%= "REZA_ASADIPOUR_HW28_Maktab146" %>
```

Used to evaluate and output a Java expression.

### 🧠 Expression Language (EL)

```jsp
${order.customerName}
${order.productName}
${order.productPrice}
${order.quantity}
${order.totalPrice}
```

### 📜 JSP Scriptlet

The result page also demonstrates Java code inside a JSP Scriptlet.

---

## 🎬 CinemaHub Layout

Movie cards use Bootstrap's responsive grid system:

```html
<div class="col-12 col-md-6 col-lg-4">
```

| Device | Layout |
| --- | --- |
| 📱 Mobile | 1 movie per row |
| 💻 Tablet | 2 movies per row |
| 🖥️ Desktop | 3 movies per row |

The page also uses Bootstrap **Flex utilities** for the navigation, Today's Special, and footer.

---

## 🏷️ Movie Badges

Badges are positioned over the movie poster using Bootstrap positioning utilities:

```html
<div class="position-relative">
    <img src="https://placehold.co/600x800"
         class="card-img-top"
         alt="Movie Poster">

    <span class="position-absolute top-0 end-0 badge bg-danger m-2">
        NEW
    </span>
</div>
```

Implemented badge types: `NEW`, `2D`, `3D`, `IMAX`.

---

## 📦 Maven Dependencies

Main dependencies used in `pom.xml`:

```xml
<dependency>
    <groupId>jakarta.servlet</groupId>
    <artifactId>jakarta.servlet-api</artifactId>
    <version>6.1.0</version>
    <scope>provided</scope>
</dependency>

<dependency>
    <groupId>jakarta.servlet.jsp</groupId>
    <artifactId>jakarta.servlet.jsp-api</artifactId>
    <version>4.0.0</version>
    <scope>provided</scope>
</dependency>
```

JSTL dependencies are also included for JSP support.

---

## ⚙️ Requirements

Before running the project, make sure you have:

- ☕ **Java 21**
- 📦 **Apache Maven**
- 🐱 **Apache Tomcat 11.0.25**
- 🧠 **IntelliJ IDEA** or another Java IDE
- 🌐 A modern web browser

---

## ▶️ Running the Project

### 1️⃣ Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/cinema-and-order-manager.git
cd cinema-and-order-manager
```

### 2️⃣ Open the project

Open the project using **IntelliJ IDEA**.

### 3️⃣ Configure Java

Make sure the project uses **Java 21**.

### 4️⃣ Configure Tomcat

Configure **Apache Tomcat 11.0.25** as the run configuration.

### 5️⃣ Build the project

```bash
mvn clean package
```

### 6️⃣ Deploy the WAR

Deploy the generated **WAR** file to Tomcat.

### 7️⃣ Open the application

```text
http://localhost:8080/online-store/
```

---

## 🌐 Main Pages

| Method | URL | Description |
| --- | --- | --- |
| `GET` | `/` | 🏠 Home page — navigation to main features |
| `GET` | `/order` | 📝 Display order form |
| `POST` | `/order` | ⚙️ Process a new order |
| `GET` | `/latest-order` | 👀 Display latest order (filter-protected) |
| `GET` | `/cinema.jsp` | 🎬 Open CinemaHub |

---

## 🔐 Application Concepts

```text
HTTP Request
      │
      ▼
   Servlet
      │
      ├── Request Parameters
      ├── Request Attributes
      ├── Session
      └── Cookies
      │
      ▼
     JSP
      │
      └── EL
```

Concepts covered in this project:

- ✅ `doGet()` / `doPost()`
- ✅ Request forwarding & redirect
- ✅ HTTP Session & Cookies
- ✅ Servlet Filters
- ✅ JSP, EL, JSP Directives, Expressions, Scriptlets
- ✅ HTML Forms
- ✅ Bootstrap — Flexbox, Grid, Positioning, Badges
- ✅ Responsive & Semantic HTML

---

## 🎯 Project Goals

1. Build Java Web applications with **Jakarta EE**
2. Handle HTTP requests with **Servlets**
3. Render dynamic content with **JSP**
4. Use **EL** to display server-side data
5. Work with **Sessions** and **Cookies**
6. Protect resources with **Servlet Filters**
7. **Forward** and **redirect** requests
8. Build responsive UIs with **Bootstrap**
9. Use **Flexbox** and the **Grid** system
10. Write clean **semantic HTML**

---

## 📌 Notes

- 🚫 **No database** is used in this project.
- 🗂️ Order data is stored in the **HTTP Session**.
- 🍪 Customer name is remembered using **Cookies**.
- 🛡️ The `/latest-order` page is protected by a **Servlet Filter**.

---

## 👨‍💻 Author

**Reza Asadipour**

Computer Engineering | Java Backend Developer

---

## 📄 License

This project was created for **educational and learning purposes**. 🎓

---

<p align="center">
  ⭐ <b>If you found this project useful, please give it a star!</b> ⭐ <br/>
  Made with ❤️ using Java, Jakarta EE & Bootstrap
</p>
