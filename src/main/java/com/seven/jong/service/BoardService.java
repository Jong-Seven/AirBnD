package com.seven.jong.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.seven.jong.DTO.BoardDTO;
import com.seven.jong.DTO.BoardReplyDTO;

public interface BoardService {
	//총 게시글 수
	public int numberOfBoard();
	public void writeSave(BoardDTO dto,HttpServletRequest request, MultipartHttpServletRequest mul);
	public void boardAllList(Model model, int num);
	public void contentView (int writeNo, Model model);
	public String modify(BoardDTO dto, HttpServletRequest request, MultipartHttpServletRequest mul);
	public String delete(int writeNo, String fileName, HttpServletRequest request);
	public void boardSearch(int num, String choice, String search, Model model);
	public List<BoardReplyDTO> getReplyList(int write_group);
	public void addReply(String content, int writeNo, String writer);
	public void replyDelete(int replyNum);
	public void selectReply(Model model, int reply_num, int writeNo);
	public void modifyReply(String content, int reply_num);
	String boardDelete(int writeNo, String fileName, HttpServletRequest request);
	String boardModify(BoardDTO dto, HttpServletRequest request, MultipartHttpServletRequest mul);
	
	

}
