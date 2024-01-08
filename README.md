# Book Instance (Mini Library)

REST API untuk mengelola daftar buku dalam sebuah perpustakaan. API ini akan memungkinkan pengguna untuk menambahkan, mengambil daftar, mengambil detail, memperbarui, dan menghapus buku dari perpustakaan

## Technology
- Java 17
- Maven
- MySQL
- Spring Boot 3 (with Spring Web MVC, Spring Data JPA)

## Endpoints
- GET /books: Mendapatkan daftar semua buku dalam perpustakaan.
- GET /books/{id}: Mendapatkan detail buku berdasarkan ID.
- POST /books: Menambahkan buku baru ke dalam perpustakaan.
- PUT /books/{id}: Memperbarui informasi buku berdasarkan ID.
- DELETE /books/{id}: Menghapus buku dari perpustakaan berdasarkan ID.

## Resource
- Postman collection > Book Instance.postman_collection.json

## Running Application
1. Import postman collection
1. mvn spring-boot:run 
