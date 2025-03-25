```markdown
# PostgreSQL FAQ

## 1. What is PostgreSQL?
**Ans:** PostgreSQL একটি ওপেন-সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS), যা Object-Relational Database হিসেবে পরিচিত। সবচেয়ে উন্নত সাধারণ-উদ্দেশ্য অবজেক্ট-রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেমগুলির মধ্যে একটি এবং এটি ওপেন-সোর্স। PostgreSQL যেকোনো আকারে ব্যবহার, পরিবর্তন এবং বিতরণ করতে স্বাধীন।

---

## 2. What is the purpose of a database schema in PostgreSQL?
**Ans:** Database Schema হলো PostgreSQL-এ ডাটার সংগঠন ও কাঠামো সংরক্ষণ করার একটি পদ্ধতি। Schema ব্যবহার করে টেবিল ও অন্যান্য ডাটাবেজ অবজেক্ট গুলোকে নির্দিষ্ট ক্যাটাগরিতে ভাগ করা যায়, ফলে ডাটাবেসকে আরও সুনির্দিষ্ট ও পরিচ্ছন্ন রাখা যায়।

---

## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
**Ans:**
- **Primary Key (PK):** এটি একটি টেবিলের একটি বা একাধিক কলাম যা প্রতিটি row কে অন্যদের থেকে Unique এবং Non-Null করে তোলে।
- **Foreign Key (FK):** এটি এমন একটি কলাম, যা অন্য টেবিলের Primary Key এর সাথে সম্পর্কিত। এটি দুইটি টেবিলের মধ্যে সংযোগ স্থাপন করে এবং ডাটা ইন্টিগ্রিটি বজায় রাখে।

---

## 4. What is the difference between the VARCHAR and CHAR data types?
**Ans:**
- **VARCHAR:** পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে।
- **CHAR:** নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে।

---

## 5. Explain the purpose of the WHERE clause in a SELECT statement.
**Ans:** WHERE clause PostgreSQL-এ ডাটাবেজ থেকে নির্দিষ্ট শর্ত অনুযায়ী ডাটা ফিল্টার করতে ব্যবহৃত হয়। SELECT statement এর সাথে WHERE ব্যবহার করলে সকল ডাটা না এনে, কেবলমাত্র শর্ত অনুযায়ী মিল থাকা ডাটা আনা হয়।

---

## 6. What are the LIMIT and OFFSET clauses used for?
**Ans:**
- **LIMIT:** রেজাল্ট থেকে নির্দিষ্ট সংখ্যক রো (row) আনতে ব্যবহৃত হয়।
- **OFFSET:** নির্দিষ্ট সংখ্যক রো skip করে পরবর্তী ডাটা দেখাতে ব্যবহৃত হয়।

---

## 7. How can you modify data using UPDATE statements?
**Ans:** UPDATE স্টেটমেন্ট ব্যবহার করা হয় ডাটাবেজের বিদ্যমান ডাটা পরিবর্তন করতে। WHERE ক্লজ ব্যবহার করে নির্দিষ্ট row নির্বাচন করা হয়, যাতে সব ডাটা পরিবর্তন না হয়ে শুধুমাত্র প্রয়োজনীয় অংশ পরিবর্তন হয়।

---

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
**Ans:** JOIN অপারেশন ব্যবহার করা হয় একাধিক টেবিলের ডাটা একত্রিত করতে। যখন দুই বা ততোধিক টেবিলের মধ্যে সম্পর্ক থাকে, তখন JOIN ব্যবহার করে প্রয়োজনীয় তথ্য একত্রে আনা যায়। PostgreSQL বিভিন্ন ধরনের JOIN সাপোর্ট করে।

---

## 9. Explain the GROUP BY clause and its role in aggregation operations.
**Ans:** GROUP BY clause ব্যবহার করা হয় ডাটা গ্রুপ করে সারসংক্ষেপ তৈরি করতে। এটি সাধারণত aggregation ফাংশন **COUNT()**, **SUM()**, **AVG()**, **MAX()**, **MIN()** এর সাথে ব্যবহৃত হয়। একই ধরণের মানগুলিকে গ্রুপ করে, প্রতিটি গ্রুপের উপর নির্দিষ্ট গণনা বা বিশ্লেষণ চালাতে সাহায্য করে।

---

## 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
**Ans:**
Aggregate ফাংশন ব্যবহার করা হয় ডাটাবেজ থেকে গড় (**AVG**), যোগফল (**SUM**), সংখ্যা গণনা (**COUNT**) ইত্যাদি বের করতে।
এগুলো সাধারণত **GROUP BY** এবং **HAVING** ক্লজের সাথে ব্যবহৃত হয়।

```

