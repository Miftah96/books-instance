package com.javan.library.controller;

import com.javan.library.model.Book;
import com.javan.library.repository.BookRepository;
import com.javan.library.utils.ResponseHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping("/api")
public class BookController {
    @Autowired
    BookRepository bookRepository;

    @PostMapping("/books")
    public ResponseEntity<Object> createBook(@RequestBody Book book) {
        try {
            Book _book = bookRepository.
                    save(new Book(
                            book.getTitle(),
                            book.getAuthor(),
                            book.getCountry(),
                            book.getLanguage(),
                            book.getSubject(),
                            book.getPublisher(),
                            book.getPublished(),
                            book.getMedia(),
                            book.getPages(),
                            book.getIsbn()
                    ));
            return ResponseHandler.generateResponse(HttpStatus.CREATED, "Successfully added data !", _book);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(HttpStatus.INTERNAL_SERVER_ERROR, e.getMessage(), null);
        }
    }

    @GetMapping("/books")
    public ResponseEntity<Object> getAllBooks(@RequestParam(required = false) String title) {
        try {
            List<Book> books = new ArrayList<Book>();

            if (title == null)
                bookRepository.findAll().forEach(books::add);
            else
                bookRepository.findByTitleContaining(title).forEach(books::add);

            if (books.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return ResponseHandler.generateResponse(HttpStatus.OK,"Successfully retrieved data!", books);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(HttpStatus.INTERNAL_SERVER_ERROR, e.getMessage(), null);
        }
    }

    @GetMapping("books/{id}")
    public ResponseEntity<Object> getBookById(@PathVariable("id") Long id) {
        Optional<Book> bookData = bookRepository.findById(id);

        if (bookData.isPresent()) {
            return ResponseHandler.generateResponse(HttpStatus.OK, "Successfully retrieved data!", bookData.get());
        } else {
            return ResponseHandler.generateResponse(HttpStatus.NOT_FOUND, "Data is not found !", null);
        }
    }

    @PutMapping("/books/{id}")
    public ResponseEntity<Object> updateBook(@PathVariable long id, @RequestBody Book book) {
        Optional<Book> bookData = bookRepository.findById(id);

        if (bookData.isPresent()) {
            Book _book = bookData.get();
            _book.setTitle(book.getTitle());
            _book.setAuthor(book.getAuthor());
            _book.setCountry(book.getCountry());
            _book.setLanguage(book.getLanguage());
            _book.setSubject(book.getSubject());
            _book.setPublisher(book.getPublisher());
            _book.setPublished(book.getPublished());
            _book.setMedia(book.getMedia());
            _book.setPages(book.getPages());
            _book.setIsbn(book.getIsbn());
            return ResponseHandler.generateResponse(HttpStatus.OK, "Successfully updated data!", bookRepository.save(book));
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("books/{id}")
    public ResponseEntity<Object> deleteBook(@PathVariable("id") long id) {
        try {
            bookRepository.deleteById(id);
            return ResponseHandler.generateResponse(HttpStatus.NO_CONTENT, "Data deleted successfully !", null);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(HttpStatus.INTERNAL_SERVER_ERROR, e.getMessage(), null);
        }
    }

}
