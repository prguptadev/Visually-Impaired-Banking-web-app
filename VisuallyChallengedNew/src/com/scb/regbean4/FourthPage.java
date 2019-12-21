package com.scb.regbean4;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.scb.regbean.FirstPage;
import com.scb.regbean3.ThirdPage;

@Service
public class FourthPage{
	
	@Autowired
	private ThirdPage mydao;
	@Transactional
	
	public int search(FirstPage mb){
		return mydao.search(mb);
	}

	public int search1(FirstPage mb){
		return mydao.search1(mb);
	}
	
	public int search2(FirstPage mb){
		return mydao.search2(mb);
	}
	
	
	public int search3(FirstPage mb){
		return mydao.search3(mb);
	}
	
	public int search4(FirstPage mb){
		return mydao.search4(mb);
	}
	
	public String insert(FirstPage mb){
		return mydao.insertuu(mb);
		
	}
	public int insert1(FirstPage mb){
		return mydao.insertpp(mb);
		
	}
	public int insertnew(FirstPage mb){
		return mydao.insertnewp(mb);
		
	}
	
/*	public int search5(FirstPage mb){
		return mydao.search5(mb);
		
	}
	*/
/*	public int search6(FirstPage mb){
		return mydao.search6(mb);
		
	}
	

	
	public int search61(FirstPage mb){
		return mydao.search61(mb);
		
	}
	
	public String search7(FirstPage mb){
		return mydao.search7(mb);
		
	}*/
	
	
	
	public List<FirstPage> getAll(){
		return mydao.listAll();
	}

	
	public List<FirstPage> getAllm(){
		return mydao.listAllm();
	}
	public int insert10(FirstPage mb) {
		// TODO Auto-generated method stub
		return  mydao.insertbb(mb);
		
	}
		
	public int lousearch(FirstPage mb){
		return mydao.searchluu(mb);
		
	}
	
	public int lopsearch(FirstPage mb){
		return mydao.searchlpp(mb);
		
	}
	
	
	public int lobsearch(FirstPage mb){
		return mydao.searchlbb(mb);
		
	}
	
}