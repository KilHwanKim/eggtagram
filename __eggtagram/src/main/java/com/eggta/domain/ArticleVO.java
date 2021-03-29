package com.eggta.domain;

import java.util.List;

public class ArticleVO {
	int ano;
	String nickname;
	String content;
	String regdate;
	String thumb;
	List <FileVO> file_list;
	List <CommentVO> comment_list;
	int like_check; 
	int like_count;
	
	
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	public List<FileVO> getFile_list() {
		return file_list;
	}
	public void setFile_list(List<FileVO> file_list) {
		this.file_list = file_list;
	}
	public List<CommentVO> getComment_list() {
		return comment_list;
	}
	public void setComment_list(List<CommentVO> comment_list) {
		this.comment_list = comment_list;
	}
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
