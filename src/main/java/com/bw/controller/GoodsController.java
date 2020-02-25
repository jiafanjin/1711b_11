package com.bw.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.bean.Goods;
import com.bw.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService gService;
	
	@RequestMapping({"queryAll","/"})
	public String list(Model model){
		List<Goods> list = gService.selectGoods();
		model.addAttribute("list",list);
		
		return "list";
	}
}
