package kr.or.delivery.model.vo;

import java.util.ArrayList;

import kr.or.table.model.vo.Member;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZcdEvent extends Member {
	private int eventNo;
	private int memberNo;
	private String eventName;
	private String eventContent;
	private String regDate;
	private String eventFinishdate;
	private int fileNo;
	private String filename;
	private String filepath;
	private ArrayList<ZcdEventFile> list;
}
