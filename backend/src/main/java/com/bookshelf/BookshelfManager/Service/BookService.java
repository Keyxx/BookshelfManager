package com.bookshelf.BookshelfManager.Service;

import com.bookshelf.BookshelfManager.Controller.ValidateParametersController;
import com.bookshelf.BookshelfManager.DAO.Book;
import com.bookshelf.BookshelfManager.Repository.BookRepository;
import jakarta.validation.ConstraintViolationException;
import jakarta.validation.Valid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.MethodArgumentNotValidException;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book getBookById(Integer id){
        return bookRepository.findById(id);
    }

    public List<Book> getBookByAuthorOrTitle(String title, String author){
        return bookRepository.findByTitleContainingOrAuthorContaining(title, author);
    }

    public Optional<Book> updateBook(Integer id, Book book) {
        Optional<Book> optionalBook = Optional.ofNullable(bookRepository.findById(id));
        if(optionalBook.isPresent()){
            Book updatedBook = optionalBook.get();
            BeanUtils.copyProperties(book, updatedBook, "id");
            return Optional.of(bookRepository.save(updatedBook));
        }else return Optional.empty();
    }

    public ResponseEntity<String> deleteBook(Integer id){
        bookRepository.deleteById(id);
        return new ResponseEntity<>("Book deleted", HttpStatus.OK);
    }

    public ResponseEntity<String> addBook(@Valid Book book) {
        bookRepository.save(book);
        return new ResponseEntity<>("New book added", HttpStatus.CREATED);
    }
}