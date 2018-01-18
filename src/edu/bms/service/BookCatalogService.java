package edu.bms.service;

import java.util.List;

import edu.bms.dao.BookCatalogDao;
import edu.bms.entity.BookCatalog;

public class BookCatalogService {
    private BookCatalogDao bookCatalogDao;
    
	public BookCatalogDao getBookCatalogDao() {
		return bookCatalogDao;
	}

	public void setBookCatalogDao(BookCatalogDao bookCatalogDao) {
		this.bookCatalogDao = bookCatalogDao;
	}

	public void save(BookCatalog bookCatalog) {
		bookCatalogDao.save(bookCatalog);// TODO Auto-generated method stub
		
	}

	public void delete(BookCatalog bookCatalog) {
		// TODO Auto-generated method stub
		bookCatalogDao.delete(bookCatalog);
	}

	public List<Object[]> borrowSort(int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return bookCatalogDao.borrowSort(pageNow,pageSize);
	}

	public int findAll() {
		// TODO Auto-generated method stub
		return bookCatalogDao.findAll();
	}

    
}
