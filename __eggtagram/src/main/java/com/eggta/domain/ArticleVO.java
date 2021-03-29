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
	List<LikeVO> like_list;
	public List<LikeVO> getLike_list() {
		return like_list;
	}
	public void setLike_list(List<LikeVO> like_list) {
		this.like_list = like_list;
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
