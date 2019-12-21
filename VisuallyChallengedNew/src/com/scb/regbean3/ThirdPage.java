package com.scb.regbean3;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.scb.regbean.FirstPage;


@Repository

public class ThirdPage{
	
	String uname;
	String ecard;
	String fbio;
	String password;
	String myuser;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Transactional
	
	public int search(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where name=?",new Object[]{mb.getFname()}, Integer.class);
	}
	
	public int search1(FirstPage mb){
		ecard =mb.getDbno();
		return jdbcTemplate.queryForObject("Select count(*) from scb where  debitcard_no=?",new Object[]{mb.getDbno()}, Integer.class);
	}
	
	public int search2(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where  atm_pin=?",new Object[]{mb.getAtmpno()}, Integer.class);
	}
	
	public int search3(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where  cvv=?",new Object[]{mb.getCvvno()}, Integer.class);
	}
	
	public int search4(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where  mobile=?",new Object[]{mb.getMobno()}, Integer.class);
	}
	
	
	
	public String insertuu(FirstPage mb){
		uname = mb.getUsername();
		System.out.println("uname : "+uname);
		return "";
		
	}

	
	public int insertbb(FirstPage mb) {
		// TODO Auto-generated method stub
		fbio = mb.getFinger();
		System.out.println("finger :->"+ fbio);
		
String query  =  "update scb set user_id = ? , password = ?, finger = ? where debitcard_no = ? ";
		
		return jdbcTemplate.update(query,uname,password,fbio,ecard);
		
	}
	
/*	@Override
	public List<FirstPage> listAll() {
		// TODO Auto-generated method stub
String query="select name, mobile, tot_balance, acc_no number, bank_branch from scb where user_id = ?";
		
		List<FirstPage> list=jdbcTemplate.query(query,uname,new FirstRowMapper());
				return list;

	}*/
	
	/*public List<FirstPage> listAll() {
		// TODO Auto-generated method stub
String query="select name, mobile, tot_balance, acc_no number, bank_branch from scb where user_id = ?";
		
		List<FirstPage> list= jdbcTemplate.query("select name, mobile, tot_balance, acc_no number, bank_branch from scb where user_id = ?",new Object[]{uname}, new FirstRowMapper());
				//jdbcTemplate.query(query, new FirstRowMapper());
		
		
		System.out.println("-----------------------------------------------------------------------------");
		System.out.println(list);
		System.out.println("-----------------------------------------------------------------------------");
				return list;

	}*/
	
	public int insertnewp(FirstPage mb) {
		String pass12 = mb.getPassword();
		
String query1  =  "update scb set password = ? where user_id = ? ";
		
		return jdbcTemplate.update(query1,pass12,myuser);
		
	}
	
	public int insertpp(FirstPage mb){
		String pass = mb.getPassword();
		password = pass;
		//System.out.println(uname);
		//System.out.println(pass);
		//System.out.println(ecard);
		System.out.println("finger insert 1 : " +fbio);
		System.out.println("pass insert 1 :-"+pass);
		return 0;
		
		
		
	//	return jdbcTemplate.update("insert into cust_login values('"+uname+"','"+pass+"')");
		
	}
	
	
	/*public int search5(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where user_id=?",new Object[]{mb.getUserName1()},Integer.class);
		
	}
	
	public int search6(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where password=?",new Object[]{mb.getUserPass()},Integer.class);
		
	}
	
	*/

	public int searchluu(FirstPage mb){
		myuser = mb.getLouser();
		return  jdbcTemplate.queryForObject("Select count(*) from scb where user_id=?",new Object[]{mb.getLouser()},Integer.class);
		
	}

	public int searchlpp(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where password=?",new Object[]{mb.getLopass()},Integer.class);
		
	}
	
	
	public int searchlbb(FirstPage mb){
		return jdbcTemplate.queryForObject("Select count(*) from scb where finger=?",new Object[]{mb.getLobio()},Integer.class);
		
	}

/*	public List<FirstPage> listAll() {
		// TODO Auto-generated method stub
String query="select name, mobile, tot_balance, acc_no number, bank_branch from scb where user_id =?";
	
		List<FirstPage> list=jdbcTemplate.query(query,new PreparedStatementSetter() {
			public void setValues(PreparedStatement pss)throws SQLException {
				pss.setString(1, uname);
			}
		}
				,new FirstRowMapper());
				return list;
	}
	*/
	
	
	public List<FirstPage> listAll() {
		FirstPage mb  = new FirstPage();
		
		String sql= "select name,mobile,tot_balance,acc_no,bank_branch from scb where user_id ='"+myuser+"'";
		System.out.println(sql);
		List<FirstPage> list =  jdbcTemplate.query(sql,new RowMapper<FirstPage>() {

			@Override
			public FirstPage mapRow(ResultSet arg0, int arg1) throws SQLException {
				
				// TODO Auto-generated method stub
				FirstPage mb= new FirstPage();
				mb.setFname(arg0.getString(1));
				mb.setMobno(arg0.getString(2));
				mb.setBlac(arg0.getInt(3));
				mb.setAcc(arg0.getInt(4));
				mb.setBank_br(arg0.getString(5));
				return mb;
				
			}
			
		});
		System.out.println("list -->  "+list.size());
		return list;
	}
	
	
	
	
	
	///////////////////////////
	
	
	
	public List<FirstPage> listAllm() {
		FirstPage mb  = new FirstPage();
		
		String sql= "select name,acc_no,amount,cred_deb, tot_balance from scb where user_id ='"+myuser+"'";
		System.out.println(sql);
		List<FirstPage> list =  jdbcTemplate.query(sql,new RowMapper<FirstPage>() {

			@Override
			public FirstPage mapRow(ResultSet arg0, int arg1) throws SQLException {
				
				// TODO Auto-generated method stub
				FirstPage mb= new FirstPage();
				mb.setFname(arg0.getString(1));
				mb.setAcc(arg0.getInt(2));
				mb.setBlac(arg0.getInt(3));
				mb.setCrdr(arg0.getString(4));
				mb.setTotal(arg0.getString(5));
			
				return mb;
				
			}
			
		});
		System.out.println("list -->  "+list.size());
		return list;
	}
}


	
	


