package com.bookshelf.BookshelfManager.Repository;

import com.bookshelf.BookshelfManager.DAO.Book;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

    Book findById(Integer id);
    List<Book> findByTitleContainingOrAuthorContaining(@Param("title") String title, @Param("author") String author);

    @Transactional
    void deleteById(Integer id);


}
