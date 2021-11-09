package edu.vinaenter.daos;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import edu.vinaenter.models.News;

@Repository
public class NewsDao {

	public List<News> getList() {
		List<News> datas = new ArrayList<>();

		datas.add(new News(1, "Title 1", "Author 1", new Date(), "Detail 1", 1));
		datas.add(new News(2, "Title 2", "Author 2", new Date(), "Detail 2", 1));
		datas.add(new News(3, "Title 3", "Author 3", new Date(), "Detail 3", 1));
		datas.add(new News(4, "Title 4", "Author 4", new Date(), "Detail 4", 0));
		datas.add(new News(5, "Title 5", "Author 5", new Date(), "Detail 5", 1));
		datas.add(new News(6, "Title 6", "Author 6", new Date(), "Detail 6", 1));

		return datas;
	}

}
