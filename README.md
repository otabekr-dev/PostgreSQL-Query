# 📊 `sales` jadvali

```sql
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    product VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL
);
```
---

## 📌 Namuna ma’lumotlar

```sql
INSERT INTO sales (customer_name, city, product, quantity, price, sale_date) VALUES
('Ali', 'Tashkent', 'Laptop', 1, 800.00, '2025-09-01'),
('Vali', 'Samarkand', 'Phone', 2, 500.00, '2025-09-02'),
('Laylo', 'Bukhara', 'Tablet', 1, 300.00, '2025-09-03'),
('Aziz', 'Tashkent', 'Phone', 3, 500.00, '2025-09-03'),
('Dilnoza', 'Namangan', 'Laptop', 2, 800.00, '2025-09-04'),
('Bobur', 'Samarkand', 'Laptop', 1, 800.00, '2025-09-04'),
('Madina', 'Bukhara', 'Phone', 1, 500.00, '2025-09-05'),
('Javlon', 'Tashkent', 'Tablet', 2, 300.00, '2025-09-05'),
('Shahnoza', 'Andijan', 'Phone', 4, 500.00, '2025-09-06'),
('Rustam', 'Samarkand', 'Laptop', 1, 800.00, '2025-09-06');
```

---

## 📌 Shu jadval orqali mashqlar

1. **Filter**

   * Tashkentdan bo‘lgan buyurtmalarni chiqar.
   * Faqat `Phone` sotilgan buyurtmalar.
   * 2025-09-02 va 2025-09-05 oralig‘idagi buyurtmalar.

2. **Sorting**

   * Eng qimmat buyurtmani chiqar.
   * Eng oxirgi 3 ta buyurtmani chiqar (`ORDER BY sale_date DESC LIMIT 3`).

3. **Pagination**

   * Birinchi 5 ta buyurtma.
   * Keyingi 5 ta buyurtma.

4. **Aggregation**

   * Umumiy buyurtmalar soni.
   * Umumiy tushum (`SUM(quantity * price)`).
   * Eng katta miqdor (`MAX(quantity)`), eng kichik (`MIN(quantity)`).
   * O‘rtacha narx (`AVG(price)`).

5. **GROUP BY / HAVING**

   * Har bir shahar bo‘yicha qancha buyurtma.
   * Har bir mahsulot bo‘yicha tushum.
   * Faqat 2 dan ortiq buyurtma bo‘lgan shaharlarni chiqar.
