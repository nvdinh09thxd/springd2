package edu.vinaenter.models;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
	private int id;
	private String title;
	private String author;
	private Date createBy;
	private String detail;
	private int status;

}
