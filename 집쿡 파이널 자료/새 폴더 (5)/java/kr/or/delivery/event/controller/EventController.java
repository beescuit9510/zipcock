package kr.or.delivery.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

		@RequestMapping(value = "/eventList.do")
		public String eventList() {
			return "delivery/event/eventList";
		}
		@RequestMapping(value = "/eventView.do")
		public String eventView() {
			return "delivery/event/eventView";
		}
		@RequestMapping(value="/eventWriteFrm.do")
		public String eventWriteFrm() {
			return "delivery/event/eventWriteFrm";
		}
		@RequestMapping(value = "/eventWrite.do")
		public String eventWrite() {
			return "delivery/event/eventView";
		}
		@RequestMapping(value = "/eventUpdateFrm.do")
		public String eventUpdateFrm() {
			return "delivery/event/eventUpdateFrm";
		}
}
