package com.eggta.orm;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.eggta.domain.FileVO;
import com.eggta.persistence.FileDAO;


@Component
public class FileSweeper {

	private static Logger logger = LoggerFactory.getLogger(FileSweeper.class);
	
	
	
	@Inject 
	private FileDAO fdao;
	// (cron = 초 분 시 일 월 요일 [년도])
	@Scheduled(cron = "0 * * * * *")
	public void fileSeep() throws Exception {
		
		String base = "C:"+File.separator +"_java"+File.separator +"_spring"+File.separator +"workspace"+File.separator +"uploads"+File.separator +"";
		File target_dir = Paths.get(base).toFile();
		ArrayList <String> dbList = new ArrayList();
		
		for (FileVO fvo : fdao.selectAllList()) {
			
			
			String dbName = fvo.getUuid()+"_"+fvo.getFname();
			String Thumb  = fvo.getUuid()+"_th_"+fvo.getFname();
			logger.info(">>> dbName"+ dbName);
			dbList.add(dbName);
			dbList.add(Thumb);
			
			
		}
		
		
		for (File file : FileUtils.listFiles(new File(base),TrueFileFilter.INSTANCE,TrueFileFilter.INSTANCE)) {
			
			String fileName = file.getName();
			logger.info(">>> fileName: " + fileName);
			if (!dbList.contains(fileName)) {
				file.delete();
			}
			
		}
		
		
		
		
	}
	
	
}
