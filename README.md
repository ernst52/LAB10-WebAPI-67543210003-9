# Lab10-WebAPI

โปรเจกต์นี้เป็น **Web API** ง่าย ๆ สำหรับฐานข้อมูลสินค้า สร้างด้วย **PHP** และ **MySQL** (ผ่าน XAMPP) เลียนแบบการทำงานของ [FakeStoreAPI](https://fakestoreapi.com/docs#tag/Products)  

---

## ฐานข้อมูล

- ฐานข้อมูล MySQL: `lab10_webapi`  
- ตาราง: `products`  
- คอลัมน์:  
  - `id` (INT, AUTO_INCREMENT, PRIMARY KEY)  
  - `title` (VARCHAR)  
  - `description` (TEXT)  
  - `price` (DECIMAL)  
  - `category` (VARCHAR)  
  - `quantity` (INT)  
  - `brand` (VARCHAR)  

มีการใส่ตัวอย่างสินค้าที่เกี่ยวข้องกับการสำรวจถ้ำทั้งหมด 42 รายการ เช่น หมวกกันน็อก ไฟหน้าหมวก ชุดสำรวจถ้ำ ฯลฯ”  

---

## API Endpoints

- **GET /products.php**  
  ส่งคืนสินค้าทั้งหมดในรูปแบบ JSON  

- **GET /products.php?id={id}**  
  ส่งคืนสินค้าหนึ่งชิ้นตาม ID  

- **POST /products.php**  
  เพิ่มสินค้าชิ้นใหม่ ส่ง JSON body แบบนี้:  
  ```json
  {
    "title": "Helios-72B 4500",
    "description": "QLED headlamp with graphene battery pack and 4500 lumens",
    "price": 795,
    "category": "Headlamp",
    "quantity": 4,
    "brand": "Lorenz Quantum"
  }
