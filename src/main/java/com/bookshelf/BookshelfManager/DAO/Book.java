package com.bookshelf.BookshelfManager.DAO;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Table(name = "Book")
@Data
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotEmpty
    private String title;
    @NotEmpty
    private String author;
    @NotEmpty
    private String genre;
    private LocalDate publishDate;
    private Integer pageCount;
    private String status;
    private Integer rating;
    private String notes;
    private byte[] image;
}
