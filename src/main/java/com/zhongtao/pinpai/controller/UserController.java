package com.zhongtao.pinpai.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhongtao.pinpai.bean.Billboard;
import com.zhongtao.pinpai.bean.Brand;
import com.zhongtao.pinpai.bean.New;
import com.zhongtao.pinpai.bean.User;
import com.zhongtao.pinpai.service.BillboardService;
import com.zhongtao.pinpai.service.BrandService;
import com.zhongtao.pinpai.service.NewService;
import com.zhongtao.pinpai.service.UserService;



@Controller
public class UserController {
		
	@Autowired
	UserService userService;
	@Autowired
	BrandService brandService;
	@Autowired
	BillboardService billboardService;
	@Autowired
	NewService newService;
	
	@RequestMapping("/admin/login")
	  public String login(HttpServletRequest request,Model model){
        String uname = request.getParameter("uname");
        String password =request.getParameter("password");
        User user = userService.selectByNamePwd(uname);
            if(user!=null & user.getPassword().equals(password)){	
            	HttpSession session = request.getSession(true);
            	session.setAttribute("user", user);
                return "redirect:/admin/plist";
            }else{
                return "/admin/login";
            }
        }
        
	@RequestMapping("/admin/list")
	public String list(ModelMap map) {
		List<User> list=userService.list();
		map.put("List",list);
		return "admin/list";
	}
	
	@RequestMapping("/admin/adduser")
	public String add(User user,HttpServletRequest request) { 
		HttpSession session=request.getSession();  
		Object u=(Object) session.getAttribute("user");
		if(((User)u).getRole()!=1) {
			return "admin/adduser";
		}else {
			userService.add(user);
			return "redirect:/admin/list";
		}
		
	}

	@RequestMapping(value="/admin/update/{id}")
	public String update(User user,HttpServletRequest request){
			userService.update(user);
			return "redirect:/admin/list";
	}
	
	@RequestMapping(value="/admin/findById/{id}")
	public String findById(@PathVariable("id")int id,HttpServletRequest request,Model model) {
		HttpSession session=request.getSession();  
		Object u=(Object) session.getAttribute("user");
		if(((User)u).getRole()!=1) {
			return "redirect:/admin/list";
		}else {
		User user =userService.findById(id);
		model.addAttribute("user", user);
		return "admin/update";
		}
	}
		
	@RequestMapping("/admin/delete/{id}")
	public String delete(@PathVariable("id")int id,HttpServletRequest request) {
		HttpSession session=request.getSession();  
		Object u=(Object) session.getAttribute("user");
		if(((User)u).getRole()!=1) {
			return "redirect:/admin/list";
		}else {
		userService.delete(id);
		return "redirect:/admin/list";
		}
	}

	@RequestMapping("/admin/plist")
	public String plist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		PageHelper.startPage(pn, 5);
		List<Brand> brand=brandService.list();
		PageInfo<Brand> pageInfo = new PageInfo<Brand>(brand,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/plist";
	}
	
	@RequestMapping("/admin/addpin")
	public String add(HttpServletRequest request,MultipartFile file,Brand b)throws Exception {
		String name = UUID.randomUUID().toString().replaceAll("-", "");
		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
		String url = request.getSession().getServletContext().getRealPath("/upload");
		file.transferTo(new File(url+"/"+name + "." + ext));
        b.setImg("upload/"+name + "." + ext);
        brandService.add(b);
		return "redirect:/admin/plist";
	}

	@RequestMapping("/admin/addpinpai/{byid}")
	public String selectById(@PathVariable("byid")int byid,ModelMap map) {
		List<Billboard> byidlist=billboardService.selectById(byid);
		map.put("Byidlist", byidlist);
		return "admin/addpinpai";
	}
	
	@RequestMapping("/admin/bdelete/{pid}")
		public String bdelete(@PathVariable("pid")int pid){
			brandService.delete(pid);
			return "redirect:/admin/plist";
	}

	
	@RequestMapping(value="/admin/updatep/{pid}")
	public String updateP(Brand b,HttpServletRequest request,MultipartFile file)throws Exception {
		if(!file.isEmpty()) {
			String name = UUID.randomUUID().toString().replaceAll("-", "");
			String ext = FilenameUtils.getExtension(file.getOriginalFilename());
			String url = request.getSession().getServletContext().getRealPath("/upload");
			file.transferTo(new File(url+"/"+name + "." + ext));
	        b.setImg("upload/"+name + "." + ext);
	        brandService.update(b);
		}else {
			brandService.update(b);
		}
		return "redirect:/admin/plist";
	}
	
	
	@RequestMapping(value="/admin/findBrand/{pid}")
	public ModelAndView findBrand(@PathVariable("pid")int pid ) {
		ModelAndView mv=new ModelAndView("/admin/updatep");
		Brand brand =brandService.findById(pid);
		mv.addObject("brand",brand);
		return mv;
	}
	
	@RequestMapping("/admin/addb")
	public String add(Billboard b) {
		billboardService.add(b);
		return "redirect:/admin/billblist";
	}
	
	@RequestMapping("/pinpai")
	public String listbrand(ModelMap map,Model model) {
		Billboard bill=billboardService.selectBill();
		List<Billboard> billboard =billboardService.selectById(bill.getByid());
		map.put("Billboard",billboard);
		List<Brand> brand=brandService.findlist(bill.getByid());
		map.put("Brand",brand);
		int byid=bill.getByid();
		model.addAttribute("byid",byid);
		List<New> n=newService.listn();
		map.put("n", n);
		return "pinpai";
	}
	
	@RequestMapping("/pinpai/{byid}")
	public String Listbrand(@PathVariable("byid")int byid,ModelMap map,Model model) {
		List<Billboard> billboard =billboardService.selectById(byid);
		map.put("Billboard",billboard);
		List<Brand> brand=brandService.findlist(byid);
		map.put("Brand",brand);
		model.addAttribute("byid",byid);
		List<New> n=newService.listn();
		map.put("n", n);
		return "pinpai";
	}
	
	@RequestMapping("/pinpailist/{bid}/{byid}")
	public String pinpailist(@PathVariable("bid")int bid,@PathVariable("byid")int byid,ModelMap map,Model model) {
		Billboard billboard=billboardService.findById(bid);
		model.addAttribute("billboard", billboard);
		List<Brand> brand=brandService.pinpailist(bid);
		map.put("Brand", brand);
		List<Billboard> bill=billboardService.selectById(byid);
		map.put("bill", bill);
		List<Brand> b=brandService.listp();
		map.put("B", b);
		return "pinpailist";
	}
	
	@RequestMapping("/admin/billblist")
	public String billblist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		PageHelper.startPage(pn, 5);
		List<Billboard> billblist= billboardService.list();
		PageInfo<Billboard> pageInfo = new PageInfo<Billboard>(billblist,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/billblist";
	}
	
	@RequestMapping("/admin/pdelete/{bid}")
	public String pdelete(@PathVariable("bid")int bid){
		billboardService.delete(bid);
		return "redirect:/admin/billblist";
	}
	
	@RequestMapping("/admin/findBid/{bid}")
	public String findBid(@PathVariable("bid")int bid,Model model) {
		Billboard billboard=billboardService.findById(bid);
		model.addAttribute("billboard", billboard);
		return "admin/updateBid";
	}
	
	@RequestMapping("/admin/updateBid/{bid}")
	public String updateBid(Billboard b) {
		billboardService.update(b);
		return "redirect:/admin/billblist";
	}
	
	@RequestMapping("/pinpaidetail/{pid}")
	public String pinpaidetail(@PathVariable("pid")int pid,Model model,Brand brand,ModelMap map) {
		brand=brandService.findById(pid);
		model.addAttribute("brand", brand);
		List<Billboard> bill=billboardService.selectById(brand.getYid());
		map.put("bill", bill);
		List<Brand> b=brandService.listp();
		map.put("B", b);
		return "pinpaidetail";
	}
	
	@RequestMapping("/admin/listnew")
	public String listnew(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		PageHelper.startPage(pn,7);
		List<New> n=newService.list();
		PageInfo<New> pageInfo = new PageInfo<New>(n,7);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/listnew";
	}
	
	@RequestMapping("/admin/addnew")
	public String addnew(New n) {
		String name=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		n.setTime(name);
		newService.add(n);
		return "redirect:/admin/listnew";
	}
	
	@RequestMapping("/admin/deletenew/{nid}")
	public String deletenew(@PathVariable("nid")int nid) {
		newService.delete(nid);
		return "redirect:/admin/listnew";
	}
	
	@RequestMapping("/admin/finbyidnew/{nid}")
	public String finbyidnew(@PathVariable("nid")int nid,Model model) {
		New n=newService.findById(nid);
		model.addAttribute("n", n);
		return "admin/updatenew";
	}
	
	@RequestMapping("/admin/updatenew")
	public String updatenew(New n) {
		newService.update(n);
		return "redirect:/admin/listnew";
	}
	
	@RequestMapping("/moreNews")
	public String listnews(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model,ModelMap map) {
		PageHelper.startPage(pn, 5);
		List<New> news= newService.list();
		PageInfo<New> pageInfo = new PageInfo<New>(news,5);
		model.addAttribute("pageInfo", pageInfo);
		List<New> n=newService.listn();
		map.put("n", n);
		return "moreNews";
	}
	
	@RequestMapping("/newsdetail/{nid}")
	public String newsdetail(@PathVariable("nid")int nid,Model model,ModelMap map) {
		New news=newService.newsdetail(nid);
		model.addAttribute("news", news);
		List<New> n=newService.listn();
		map.put("n", n);
		return "newsdetail";
	}
	
	@RequestMapping("/admin/plist/{yid}")
	public String plist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model,@PathVariable("yid") int yid ) {
		PageHelper.startPage(pn, 5);
		List<Brand> brand=brandService.findplist(yid);
		PageInfo<Brand> pageInfo = new PageInfo<Brand>(brand,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/plist";
	}
}
