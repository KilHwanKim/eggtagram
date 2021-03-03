package com.eggta.orm;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.tika.Tika;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.eggta.domain.FileVO;
import com.eggta.service.FileService;

import net.coobird.thumbnailator.Thumbnails;
//1. uploads/yyyy/MM/dd/uuid_filename.확장자
// 2. db에는 분리되서 저장 됨
// 3. 이미지파일이면 썸네일 만들어서 저장 > uuid_th_filename.확장자
// 4. 썸네일은 디비에 저장하지 않는다
// 5. 저장된 실제파일객체와 디비의 정보를 비교하는 스케쥴러를 활용하여 정리함
@Component
public class FileProcessor {
	private static Logger logger = LoggerFactory.getLogger(FileProcessor.class);
	
	@Inject
	private FileService fsv;
	
	public void uploadFiles(MultipartFile[] files, int ano) {
		
		final String uploadDir = "C:\\_java\\_spring\\workspace\\uploads";
		LocalDate date = LocalDate.now(); // 2021-01-12
		String today = date.toString();
		today = today.replace("-", File.separator); // 2021\01\12 for win10
		
		File folders = new File(uploadDir,today);
		if(!folders.exists()) {
			folders.mkdirs();
		}
		
		for (MultipartFile file : files) {
			FileVO f_vo = new FileVO();
			f_vo.setSavedir(today);
			String orgFileName = file.getOriginalFilename();
			logger.info(" >>> orgFileName : " + orgFileName);
			logger.info(" >>> getName() : " + file.getName()); //html의 input name
			String fileName = orgFileName.substring(orgFileName.lastIndexOf("\\")+1);
			f_vo.setFname(fileName);
			
			UUID uuid = UUID.randomUUID();
			f_vo.setUuid(uuid.toString());
			
			String fullName = uuid.toString()+"_"+fileName; //uuid_파일이름.확장자
			
			File storeFile = new File(folders,fullName);
			try {
				file.transferTo(storeFile);
				
				if(isImageType(storeFile) ) {
					f_vo.setFtype(1);
					File thumb = new File(folders, uuid.toString()+"_th_"+fileName);
					Thumbnails.of(storeFile).size(300, 200).toFile(thumb);
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			f_vo.setAno(ano);
			fsv.resister(f_vo);			
		} //for end
		
	}
	public void uploadFiles(MultipartFile[] files, String nickname) {
		final String uploadDir = "C:\\_java\\_spring\\workspace\\uploads";
		LocalDate date = LocalDate.now(); // 2021-01-12
		String today = date.toString();
		today = today.replace("-", File.separator); // 2021\01\12 for win10
		
		File folders = new File(uploadDir,today);
		if(!folders.exists()) {
			folders.mkdirs();
		}
		
		for (MultipartFile file : files) {
			FileVO f_vo = new FileVO();
			f_vo.setSavedir(today);
			String orgFileName = file.getOriginalFilename();
			logger.info(" >>> orgFileName : " + orgFileName);
			logger.info(" >>> getName() : " + file.getName()); //html의 input name
			String fileName = orgFileName.substring(orgFileName.lastIndexOf("\\")+1);
			f_vo.setFname(fileName);
			
			UUID uuid = UUID.randomUUID();
			f_vo.setUuid(uuid.toString());
			
			String fullName = uuid.toString()+"_"+fileName; //uuid_파일이름.확장자
			
			File storeFile = new File(folders,fullName);
			try {
				file.transferTo(storeFile);
				
				if(isImageType(storeFile) ) {
					f_vo.setFtype(1);
					File thumb = new File(folders, uuid.toString()+"_th_"+fileName);
					Thumbnails.of(storeFile).size(300, 200).toFile(thumb);
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			f_vo.setNickname(nickname);
			logger.info("fileNick >>>>> "+nickname);
			fsv.resister(f_vo);			
		} //for end
		
		
		
	}
	public int deleteOldFiles(String nickname) {
		return fsv.remove(nickname);
	}

	private boolean isImageType(File storeFile) {
		try {
			String mimeType = new Tika().detect(storeFile);
			return mimeType.startsWith("image") ? true : false;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}

}
