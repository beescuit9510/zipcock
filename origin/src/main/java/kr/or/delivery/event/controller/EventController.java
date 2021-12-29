package kr.or.delivery.event.controller;

import java.util.ArrayList;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import kr.or.delivery.event.model.service.EventService;
import kr.or.delivery.model.vo.ZcdEvent;
import kr.or.delivery.model.vo.ZcdEventFile;

@Controller
public class EventController {

	@Autowired
	private EventService service;
	
		@RequestMapping(value = "/eventList.do")
		public String eventList(Model model) {
			ArrayList<ZcdEvent> list = service.selectEventList();
			model.addAttribute("list",list);
			return "delivery/event/eventList";
		}
		@RequestMapping(value="/eventWriteFrm.do")
		public String eventWriteFrm() {
			return "delivery/event/eventWriteFrm";
		}
		@RequestMapping(value = "/eventWrite.do")
		public String eventWrite(ZcdEvent ze, MultipartFile[] files, HttpServletRequest request, Model model) {
			//파일 목록 저장할 List
			ArrayList<ZcdEventFile> list = new ArrayList<ZcdEventFile>();
			if(files[0].isEmpty()) {
				
			}else {
				String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/delivery/event/");
				for(MultipartFile file : files) {
					String filename = file.getOriginalFilename();
					System.out.println(filename.indexOf("."));
					String onlyFilename = filename.substring(0,filename.indexOf(".")+1);
					String extention = filename.substring(filename.indexOf(".")+1);
					String filepath = null;
					int count = 0;
					while(true) {
						if(count == 0) {
							filepath = onlyFilename+extention;
						}else {
							filepath = onlyFilename+"_"+count+extention;
						}
						File checkFile = new File(savePath+filepath);
						if(!checkFile.exists()) {
							break;
						}
						count++;
					}
					try {
						FileOutputStream fos = new FileOutputStream(new File(savePath+filepath));
						BufferedOutputStream bos = new BufferedOutputStream(fos);
						byte[] bytes = file.getBytes();
						bos.write(bytes);
						bos.close();
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					ZcdEventFile zef = new ZcdEventFile();
					zef.setFilename(filename);
					zef.setFilepath(filepath);
					list.add(zef);
				}
			}
			int result = service.insertEvent(ze,list);
			if(result == -1 || result != list.size()) {
				model.addAttribute("msg","등록실패");
			}else {
				model.addAttribute("msg","등록성공");
			}
			model.addAttribute("loc", "delivery/event/eventList");
			return "common/msg";
		}
		@RequestMapping(value = "/eventView.do")
		public String eventView(int eventNo, Model model) {
			ZcdEvent ze = service.selectOneEvent(eventNo);
			model.addAttribute("ze", ze);
			return "common/msg";
		}
		@RequestMapping(value = "/eventUpdateFrm.do")
		public String eventUpdateFrm(int eventNo,Model model) {
			ZcdEvent ze = service.selectOneEvent(eventNo);
			model.addAttribute("ze",ze);
			return "delivery/event/eventUpdateFrm";
		}
		@RequestMapping(value = "/eventUpdate.do")
		public String eventUpdate(ZcdEvent ze, String oldFilename, String oldFilepath, int status, MultipartFile[] files, HttpServletRequest request, Model model) {
			if(!ServletFileUpload.isMultipartContent(request)) {
				model.addAttribute("msg", "오류");
				model.addAttribute("loc", "/");
				return "common/msg";
			}
			ArrayList<ZcdEventFile> list = new ArrayList<ZcdEventFile>();
			String root = request.getSession().getServletContext().getRealPath("/resources/upload/delivery/event/");
			if(status ==2) {
				File delFile = new File(root+ "/" + oldFilepath);
				delFile.delete();
			}else if (oldFilename != null) {
				ZcdEventFile zef = new ZcdEventFile();
				zef.setFilename(oldFilename);
				zef.setFilepath(oldFilepath);
				list.add(zef);
			}
			int result = service.updateEvent(ze,list);
			if(result>0) {
				model.addAttribute("msg", "이벤트 수정 완료");
				model.addAttribute("loc", "delivery/event/eventView");
			}else {
				model.addAttribute("msg", "이벤트 수정 실패");
				model.addAttribute("loc", "delivery/event/eventUpdateFrm");
			}
			return "common/msg";
		}
		@RequestMapping(value = "/eventDelete.do")
		public String eventDelete(int eventNo, HttpServletRequest request, Model model) {
			ZcdEvent ze = service.selectOneEvent(eventNo);
			int result = service.deleteEvent(eventNo);
			if(result>0) {
				if(ze.getList() != null) {
					String root = request.getSession().getServletContext().getRealPath("/resources/upload/delivery/event/");
					String file = root + ze.getList().get(3).toString();
					System.out.println(file);
					File delFile = new File(file);
					delFile.delete();
				}
				model.addAttribute("msg", "삭제성공");
				model.addAttribute("loc", "delivery/event/eventList");
			}else {
				model.addAttribute("msg", "삭제실패");
				model.addAttribute("loc", "delivery/event/eventView");
			}
			return "common/msg";
		}
		@RequestMapping(value = "eventUploadImage.do")
		public void eventUploadImage(HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("/resources/upload/delivery/event/");
			
		}
}
