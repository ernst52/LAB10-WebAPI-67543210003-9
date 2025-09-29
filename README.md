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
  <img width="1107" height="641" alt="image" src="https://github.com/user-attachments/assets/f7fd9bbb-428b-4cfe-9ef7-d195638a5283" />

- **GET /products.php?id={id}**  
  ส่งคืนสินค้าหนึ่งชิ้นตาม ID
  <img width="1081" height="420" alt="image" src="https://github.com/user-attachments/assets/d5105db5-6eab-4890-827d-be0ba3d23914" />

- **POST /products.php**  
  เพิ่มสินค้าชิ้นใหม่ ส่ง JSON body แบบนี้:  
  ```json
  {
    "title": "Helios-72B 4500",
    "description": "QLED headlamp with graphene battery pack and 4500 lumens",
    "price": 795,
    "category": "Headlamp",
    "quantity": 4,
    "brand": "Lorenz Quantum Electric"
  }
  ```
  <img width="1106" height="675" alt="image" src="https://github.com/user-attachments/assets/b3bf0316-0ec9-4dd6-971a-e3d613dd705a" />

- **PUT /products.php?id={id}**  
  อัปเดตสินค้าตาม ID ส่ง JSON body แบบเดียวกับ POST
  <img width="1076" height="532" alt="image" src="https://github.com/user-attachments/assets/4fbc88d4-49dc-4a9c-b7c8-88c4ddb21b54" />
  <img width="1066" height="408" alt="image" src="https://github.com/user-attachments/assets/eaec035d-6654-4bd1-80f6-d795b594ae5b" />

- **DELETE /products.php?id={id}**  
  ลบสินค้าตาม ID
  <img width="1093" height="547" alt="image" src="https://github.com/user-attachments/assets/cc1db8e7-7775-4ef0-b290-3939053b5b59" />

