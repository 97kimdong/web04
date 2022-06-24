package com.okhospital.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.okhospital.dto.BoardDTO;
import com.okhospital.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	//다음 서비스 작업 객체를 주입
	@Inject
	BoardService boardService;
	
	@RequestMapping(value="list.do", method = RequestMethod.GET)
	public String boardList(Model model) throws Exception {
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		return "board/list";
	}
	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String boardRead(@RequestParam int seq, Model model) throws Exception {
		boardService.boardRead(seq);
		BoardDTO dto = boardService.boardRead(seq);
		model.addAttribute("dto", dto);
		return "board/readForm";
	}
	@RequestMapping(value="EditForm", method = RequestMethod.GET)
	public String EditForm(@RequestParam int seq, Model model) throws Exception {
		boardService.boardRead(seq);
		BoardDTO dto = boardService.boardRead(seq);
		model.addAttribute("dto", dto);
		return "board/EditForm";
	}
	@RequestMapping(value="visited", method = RequestMethod.GET)
	public String boardVisited(@RequestParam String visited, Model model) throws Exception {
		boardService.boardVisited(visited);
		return "redirect:/board/read.do";
	}
	
	@RequestMapping("write_form")	//board/write_form -> board/boardWriteForm
	public String boardWriteForm(Model model) throws Exception {
		return "board/boardWriteForm";
	}
	
	@RequestMapping(value="insert", method = RequestMethod.POST)
	public String boardWrite(BoardDTO bdto, Model model) throws Exception {
		boardService.boardWrite(bdto);
		return "redirect:/board/list.do";
	}
	
	@RequestMapping(value="update", method = RequestMethod.POST)
	public String boardUpdate(BoardDTO bdto, Model model) throws Exception {
		boardService.boardUpdate(bdto);
		return "redirect:/board/list.do";
	}
	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int seq, Model model) throws Exception {
		boardService.boardDelete(seq);
		return "redirect:/board/list.do";
	}
	@RequestMapping("readForm")
	public String readForm() {
		return "board/readForm";
	}
	@RequestMapping("list")
	public String list() {
		return "board/list";
	}
}
