	 	function FileExtAndSizeValidation(filename,filesize){
		 	let regExp = new RegExp("\.(exe|sh|bat|js|msi|dll)$"); // .뒤로오는 것을()속에서 검사함,$는 ()로끝나는것 이라는뜻
		 	let maxSize= 1048576; //1Mb
	 		if(regExp.test(filename)){
	 			alert(filename+"파일은\허용되지 않는 파일 형식입니다");
	 			return false;
	 		}else if(filesize>maxSize){
	 			alert(filename+" : "+filesize+"는 1mb를 초과합니다");
	 			return false;
	 		}else{
	 			return true;
	 		}
	 		
	 	}
	 	function printsize(filesize){
	 		if(filesize===0) return '0byte'; // 데이터 타입까지비교 --> 숫자이면서 0인지 확인
	 		if(filesize < 1024){ 
	 			return filesize+' byte'
	 			}else if(filesize < 1024*1024){
	 				return parseFloat((filesize/1024).toFixed(2))+'kb';
	 			}else if(filesize < 1024*1024*1024){
	 				return parseFloat(((filesize/1024)/1024).toFixed(2))+'mb';
	 			}else{
	 				return "용량확인불가";
	 			}
	 				
	 		
	 	}