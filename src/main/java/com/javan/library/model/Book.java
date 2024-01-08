package com.javan.library.model;

import jakarta.persistence.*;
import java.sql.Date;


@Entity
@Table(name= "books")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "title")
    private String title;
    @Column(name = "author")
    private String author;
    @Column(name = "country")
    private String country;
    @Column(name = "language")
    private String language;
    @Column(name = "subject")
    private String subject;
    @Column(name = "publisher")
    private String publisher;
    @Column(name = "published")
    private Date published;
    @Column(name = "media")
    private String media;
    @Column(name = "pages")
    private Integer pages;
    @Column(name = "isbn")
    private String isbn;

    public Book() {

    }

    public Book(String title, String author, String country, String language, String subject, String publisher, Date published, String media, Integer pages, String isbn) {
        this.title = title;
        this.author = author;
        this.country = country;
        this.language = language;
        this.subject = subject;
        this.publisher = publisher;
        this.published = published;
        this.media = media;
        this.pages = pages;
        this.isbn = isbn;
    }

    public long getId() {
        return id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Date getPublished() {
        return published;
    }

    public void setPublished(Date published) {
        this.published = published;
    }

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public Integer getPages() {
        return pages;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\''+
                "title='" + title + '\''+
                "author='" + author + '\'' +
                ", country='" + country + '\'' +
                ", language='" + language + '\'' +
                ", subject='" + subject + '\'' +
                ", publisher='" + publisher + '\'' +
                ", published=" + published +
                ", media='" + media + '\'' +
                ", pages=" + pages +
                ", isbn='" + isbn + '\'' +
                '}';
    }
}
