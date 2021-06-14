package com.seven.jong.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seven.jong.DTO.BoardDTO;
import com.seven.jong.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardContriller {
	@Autowired 
	BoardService bs;
	
	//boardAllList.jsp연결
	@GetMapping("/boardAllList")
	public String boardAllList(Model model) {
		System.out.println("boardAllList연결");
		bs.boardAllList(model);
		return "board/boardAllList";
	}
	//writeForm.jsp 연결
	@GetMapping("/writeForm")
	public String writeForm() {
		return "board/writeForm";
	}
	//게시물 저장
	@PostMapping("/writeSave")
	public String writeSave(BoardDTO dto, HttpServletRequest request) {
		bs.writeSave(dto, request);
		return "board/boardAllList";
	}
	//선택 게시물 보기
	@GetMapping("contentView")
	public String contentView (@RequestParam int writeNo, Model model ) {
		bs.contentView(writeNo, model);
		System.out.println("contentView연결");
		return "board/contentView";
	}
}
















