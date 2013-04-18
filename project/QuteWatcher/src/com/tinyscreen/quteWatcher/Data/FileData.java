package com.tinyscreen.quteWatcher.Data;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.Deflater;
import java.util.zip.ZipOutputStream;

import com.tinyscreen.quteWatcher.log.InfoObj;
import com.tinyscreen.quteWatcher.log.Util;

public class FileData {

	public static List<InfoObj> infoList = new LinkedList<InfoObj>();
	
	private static final String FILE_NAME = "watcher_log";
	
	public static final String ZIP_FILE_NAME = "logZip";
	
	private static final int BUFF_SIZE = 2 * 1024 * 1024; // 2M Byte  
	
	/**
	 * 每收集到2000条数据，保存一次文件
	 */
	private static int MAX_PAGE_SIZE = 2000;
	
	/**
	 * 上传附件最大不超过500k
	 */
	private static final int MAX_MAIL_ATTACHMENT_SIZE = 500;
	
	/**
	 * 取得文件中的log日志
	 * @param file
	 * @return
	 */
	public static String getFileData(){
		String content="";
		File[] files = getLogFiles();
		if(files == null) return "";
		int size = files.length;
		for(int i = (size - 1);i>=0;i--){
			File file = files[i];
			content +="-------------------- log-"+(i + 1)+ "------------------------<br/>";
			if (file !=null && file.exists()) {
				InputStream in = null;
				BufferedReader bufferedreader = null;
				try {
					in = new FileInputStream(file);
					if (in != null) {
						InputStreamReader inputstreamreader = new InputStreamReader(in);
						bufferedreader = new BufferedReader(inputstreamreader);		
						String str = null;
						
						while ((str = bufferedreader.readLine()) != null) {
							content += str;
						}
						bufferedreader.close();
						inputstreamreader.close();
						in.close();
					}
				} catch (FileNotFoundException e) {
				} catch (IOException e) {
				} 
			}			
		}
		return content;
	}
	
	/**
	 * 取得最新的三个log日志文件
	 * @return
	 */
	private static File[] getLogFiles(){
		File file = new File(Util.getSDCardDir() + "/log/quteWatcher/");	
		if(file.exists()){
			File[] files = file.listFiles();
			List<FileSortObj> mailFiles = new ArrayList<FileSortObj>();
			for(File f:files){
				FileSortObj obj = new FileSortObj(f,f.getName(),FILE_NAME);
				mailFiles.add(obj);
			}
			return getSortLogFiles(mailFiles);
		}		
		return null;
	}
	
	public static synchronized void addData(InfoObj info){
		if(info==null){
			return;
		}
		infoList.add(info);
		if(infoList.size() > MAX_PAGE_SIZE){
			saveFile();
			infoList.clear();
		}
	}
	
	/**
	 * 取得所有压缩log文件
	 * 根据文件名取得最新的 1M 文件
	 * @return
	 */
	public static File[] getZipFiles() {
		File file = new File(Util.getSDCardDir() + "/log/zipFiles/");	
		if(file.exists()){
			File[] files = file.listFiles();
			List<FileSortObj> mailFiles = new ArrayList<FileSortObj>();
			for(File f:files){
				FileSortObj obj = new FileSortObj(f,f.getName(),ZIP_FILE_NAME);
				mailFiles.add(obj);
			}
			return getSortFiles(mailFiles);
		}
		return null;
	}
	
	/**
	 * 对附件文件按名称中的时间戳排序，并选择最新的MAX_MAIL_ATTACHMENT_SIZE大小的附件按时间递减排序
	 */
	private static File[] getSortFiles(List<FileSortObj> mailFiles ){
		if(mailFiles == null) return null;
		List<File> files = new ArrayList<File>();
		Collections.sort(mailFiles);
		long size = 0;
		for(FileSortObj obj : mailFiles){
			size += obj.getFile().length() / 1000;
			if( size < MAX_MAIL_ATTACHMENT_SIZE){
				files.add(obj.getFile());
			}
		}
		return files.toArray(new File[]{});
	}
	
	/**
	 * 对附件文件按名称中的时间戳排序，并选择最新的3个附件
	 */
	private static File[] getSortLogFiles(List<FileSortObj> mailFiles ){
		if(mailFiles == null) return null;
		List<File> files = new ArrayList<File>();
		Collections.sort(mailFiles);
		int num = 0;
		for(FileSortObj obj : mailFiles){
			if( num < 3){
				files.add(obj.getFile());
			}
			else{
				break;
			}
			num++;
		}
		return files.toArray(new File[]{});
	}	
	
	/**
	 * 创建日志文件
	 */
	private static File createLogFile(Date date){
		return new File(Util.getSDCardDir() + "/log/quteWatcher/"
				+ FILE_NAME + date.getTime()+ ".log");		
	}
	
	/**
	 * 日志zip名称
	 * @param date
	 * @return
	 */
	private static String createZipName(Date date){
		return Util.getSDCardDir() + "/log/zipFiles/" + ZIP_FILE_NAME + date.getTime() + ".zip";		
	}	
	
	/**
	 * 保存infoList中的数据到文件中，并对生成该文件的压缩文件
	 */
	public synchronized static void saveFile(){
		if(FileData.infoList==null || FileData.infoList.size() == 0){
			return;
		}
		File logFile = createLogFile(new Date());	
		StringBuffer buffer = new StringBuffer(getLogStr());
		try {
			boolean saveResult = write(logFile,buffer);
			if(saveResult){
				byte zipbuffer[] = new byte[BUFF_SIZE];
				String zipName = createZipName(new Date());	
				File zipfile = new File(zipName);
				if(!checkAndCreadFile(zipfile)){
					return;
				}
				try {
					ZipOutputStream outZip = new java.util.zip.ZipOutputStream(
							new java.io.FileOutputStream(zipName));
					outZip.setMethod(ZipOutputStream.DEFLATED);
					outZip.setLevel(Deflater.BEST_SPEED);
		            int len = 0;   
		            java.io.FileInputStream inputStream = new java.io.FileInputStream(logFile);   
		            java.util.zip.ZipEntry zipEntry =  new java.util.zip.ZipEntry(logFile.getName());  
		            zipEntry.setMethod(ZipOutputStream.DEFLATED);
		            outZip.putNextEntry(zipEntry);  
		            while((len=inputStream.read(zipbuffer)) != -1)   
		            {   
		            	outZip.write(zipbuffer, 0, len);   
		            }   
		            inputStream.close();
		            outZip.closeEntry(); 
					outZip.finish();
					outZip.close();

				} catch (FileNotFoundException e) {
				}
				catch (IOException e) {
				}				
			}
		} catch (IOException e) {
		}
	}
	
	/**
	 * 检查文件是否存在，不存在则创建文件
	 * 
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public static boolean checkAndCreadFile(File file)  {
		boolean flag = true;
		// 文件不存在，要先创建文件，然后写入数据
		if (!file.exists()) {
			file.getParentFile().mkdirs();
			try {
				flag = file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return flag;
	}	
	
	/**
	 * 创建日志文件
	 * @param file
	 * @param buffer
	 * @return
	 * @throws IOException
	 */
	public static boolean write(File file, StringBuffer buffer)
			throws IOException {
		FileOutputStream fout;
		// 文件不存在，要先创建文件，然后写入数据
		if (!checkAndCreadFile(file)) {
			return false;
		}
		fout = new FileOutputStream(file, true);
		fout.write(buffer.toString().getBytes());
		fout.close();
		return true;
	}	
	
	public static String getLogStr(){
		StringBuffer debugStr = new StringBuffer();
		if(FileData.infoList!=null){
			int size = FileData.infoList.size();
			for (int i = 0; i < size; i++) {
				InfoObj info = FileData.infoList.get(i);
				String str = null;
				if(info!=null){
					str = info.getTagTitle() + "&nbsp;&nbsp;&nbsp;" + info.getInfo();
					str = InfoObj.COLOR_MAP.get(info.getType()) + str + "</font>"; 
				}
				if(str==null) str="";
				debugStr.append(str + "<br/>");
			}
		}
		return debugStr.toString();
	}
	
	public static void cleanData(){
		infoList.clear();
		deleteFiles(Util.getSDCardDir() + "/log/quteWatcher/");
		deleteFiles(Util.getSDCardDir() + "/log/zipFiles/");
	}

	/**
	 * 删除目录下所有文件
	 * @param fileRoot
	 */
	private static void deleteFiles(String fileRoot) {
		File file = new File(fileRoot);	
		if(file.exists()){
			File[] files = file.listFiles();
			for(File f:files){
				f.delete();
			}
		}
	}
}
