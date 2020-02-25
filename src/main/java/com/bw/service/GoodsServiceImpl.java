package com.bw.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.bean.Goods;
import com.bw.mapper.GoodsMapper;
@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper gMapper;
	
	public List<Goods> selectGoods() {
		// TODO Auto-generated method stub
		return gMapper.selectGoods();
	}

}
