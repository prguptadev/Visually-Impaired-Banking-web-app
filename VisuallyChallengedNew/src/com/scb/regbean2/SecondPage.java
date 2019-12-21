package com.scb.regbean2;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.scb.regbean.FirstPage;
import com.scb.regbean4.FourthPage;

@Controller
public class SecondPage {
	int count = 0;
	int ctr = 0;

	@Autowired
	private FourthPage myservice;

	@RequestMapping("/Reg1")
	public ModelAndView meth1(HttpServletRequest req, FirstPage mb) {

		String fname = req.getParameter("fname");

		mb.setFname(fname);
		if (myservice.search(mb) == 1) {
			count = count + 1;
			return new ModelAndView("Reg2");
		}

		else
			return new ModelAndView("Reg1");

	}

	
	
	
	
	
	@RequestMapping("/Reg2")
	public ModelAndView meth2(HttpServletRequest req, FirstPage mb) {

		String dbnum = req.getParameter("card");

		mb.setDbno(dbnum);

		if (count == 1 && (myservice.search1(mb) == 1)) {
			count = count + 1;
			return new ModelAndView("Reg3");
		}

		else
			return new ModelAndView("Reg2");

	}

	@RequestMapping("/Reg3")
	public ModelAndView meth3(HttpServletRequest req, FirstPage mb) {

		String atmpn = req.getParameter("pin");
		mb.setAtmpno(atmpn);

		if (count == 2 && (myservice.search2(mb) == 1)) {
			count = count + 1;
			return new ModelAndView("Reg4");
		}

		else
			return new ModelAndView("Reg3");

	}

	@RequestMapping("/Reg4")
	public ModelAndView meth4(HttpServletRequest req, FirstPage mb) {

		String cvvn = req.getParameter("cvv");
		mb.setCvvno(cvvn);

		if (count == 3 && (myservice.search3(mb) == 1)) {
			count = count + 1;
			return new ModelAndView("Reg5");
		}

		else
			return new ModelAndView("Reg4");

	}

	@RequestMapping("/Reg5")
	public ModelAndView meth5(HttpServletRequest req, FirstPage mb) {

		String mob = req.getParameter("mobile");
		mb.setMobno(mob);

		if (count == 4 && (myservice.search4(mb) == 1)) {
			return new ModelAndView("LogUser");
		}

		else
			return new ModelAndView("Reg5");

	}
	
	
	

	@RequestMapping(path="/LogUser1",method=RequestMethod.GET)
	public String method3() {
		
		return "louser";
	}

	@RequestMapping(path="/LogUser2",method=RequestMethod.GET)
	public String method2() {
		
		return "Reg1";
	}

	@RequestMapping("/Log1")
	public ModelAndView method1(HttpServletRequest req, FirstPage mb) {

		String User = req.getParameter("usernm");
		mb.setUsername(User);
		myservice.insert(mb);
		return new ModelAndView("LogPass");

	}

	@RequestMapping("/Log2")
	public ModelAndView method2(HttpServletRequest req, FirstPage mb) {

		String Pass = req.getParameter("userps");
		mb.setPassword(Pass);

		myservice.insert1(mb);
		return new ModelAndView("regbio11");

	}
	
	
	@RequestMapping("/regbio11")
	public ModelAndView method12(HttpServletRequest req, FirstPage mb) {

		String bio = req.getParameter("txtAnsiTemplate");
		/*byte[] bArray = bio.getBytes();
		Blob blob = conn.createBlob();
		blob.setBytes(1, bArray);*/
		
		
		mb.setFinger(bio);

		myservice.insert10(mb);
		return new ModelAndView("User");

	}
	
	
	@RequestMapping(value="/acc")


	public ModelAndView listEmpl()
	{
		System.out.println("listEmpl()");
		ModelAndView m=new ModelAndView();
		List<FirstPage> data= myservice.getAll();
		/*m.setViewName("Accdetails");
		m.addObject("data",data);
		return m;	*/
		//m.setViewName("Accdetails");
		System.out.println("data--=>"+data);
		m.addObject("data",data);
		m.setViewName("Accdetails");
		return m;
	//return new ModelAndView("Accdetails");
		
	}
		
		
		@RequestMapping(value="/min")
		public ModelAndView listEmpl1()
		{
			System.out.println("listEmpl()");
			ModelAndView ma = new ModelAndView();
			List<FirstPage> data1= myservice.getAllm();
			/*m.setViewName("Accdetails");
			m.addObject("data",data);
			return m;	*/
			//m.setViewName("Accdetails");
			System.out.println("data--=>"+data1);
			ma.addObject("data1",data1);
			ma.setViewName("ministate");
			return ma;
		//return new ModelAndView("Accdetails");
	
	}
	/*@RequestMapping(value= "/regbio11", method = RequestMethod.POST)
	public String method21(
			@RequestParam(name = "txtAnsiTemplate") Blob n,
			ModelMap model){
		myservice.insert4(n);
		return "index";
		}
	*/
		

	
	/*@RequestMapping("/regbio11")
	public ModelAndView method21(HttpServletRequest req, FirstPage mb) {

		Blob bio = req.getParameter("txtAnsiTemplate");
		mb.setFinger(bio);
		System.out.println(bio);
		myservice.insert4(mb);
		return new ModelAndView("User");

	}
	*/
	
	/*
	 * 
	 * 
	 * hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh*/
	
	@RequestMapping("/Louser")
	public ModelAndView method411(HttpServletRequest req, FirstPage mb) {
		System.out.println("....Louser....");
		String luname = req.getParameter("luname");
		mb.setLouser(luname);
		if ((myservice.lousearch(mb) == 1)) {
			ctr = ctr + 1;
			System.out.println("login user insert...");
			return new ModelAndView("lopass");
		} else
			return new ModelAndView("louser");
	}

	@RequestMapping("/Lopass")
	public ModelAndView method511(HttpServletRequest req, FirstPage mb) {

		String lpass = req.getParameter("lupass");
		mb.setLopass(lpass);
		if ((myservice.lopsearch(mb) == 1)) {
			ctr = ctr + 1;
			System.out.println("logi n pass instered ...");
			return new ModelAndView("logbio11");
		} else
			return new ModelAndView("lopass");

	}
	
	@RequestMapping("/logbio11")
	public ModelAndView method517(HttpServletRequest req, FirstPage mb) {

		String lbio = req.getParameter("txtAnsiTemplate");
		mb.setLopass(lbio);
		//if (ctr == 2 && (myservice.lobsearch(mb) == 1)) {
		//	ctr = ctr + 1;
			return new ModelAndView("Transcation");
		//} else
			//return new ModelAndView("logbio11");

	}


	
	@RequestMapping("/forbio11")
	public ModelAndView method589(HttpServletRequest req, FirstPage mb) {

		String lbio1 = req.getParameter("txtAnsiTemplate");
		mb.setLopass(lbio1);
		//if ( && (myservice.lobsearch(mb) == 1)) {
		//	
			return new ModelAndView("newpass");
		//} else
			//return new ModelAndView("logbio11");

	}
	
	
	@RequestMapping("/Fopass")
	public ModelAndView method290(HttpServletRequest req, FirstPage mb) {

		String Pass1 = req.getParameter("fupass");
		mb.setPassword(Pass1);

		myservice.insertnew(mb);
		return new ModelAndView("congrat");

	}
	
}
