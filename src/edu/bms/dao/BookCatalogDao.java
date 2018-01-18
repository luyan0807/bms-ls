package edu.bms.dao;

import java.util.List;

import org.hibernate.Query;

import edu.bms.entity.BookCatalog;

public class BookCatalogDao extends BaseDao {
	public void save(BookCatalog bookcatalog){
		getSession().save(bookcatalog);
	}

	public void delete(BookCatalog bookCatalog) {
		getSession().delete(bookCatalog);
		
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> borrowSort(int pageNow, int pageSize) {
        String hql="From BookCatalog c, "
        		+ "BookInfo b where c.id=b.bookCatalog"
        		+ " order by c.borrowTime desc";
        System.out.println(hql);
        Query query = getSession().createQuery(hql);
		query.setFirstResult((pageNow - 1) * pageSize);  
        query.setMaxResults(pageSize);  
        List<Object[]> list=query.list();
        /*System.out.println(list);
        for (Object[] object : list) {
          System.out.println(object[0]);
          System.out.println(object[1]);
		}*/
		return list;
	}

	public int findAll() {
		String hql = "from BookCatalog ";  
        int size = getSession().createQuery(hql).list().size();   
        return size;  
	}

}
