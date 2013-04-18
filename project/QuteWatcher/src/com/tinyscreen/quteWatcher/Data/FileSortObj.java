package com.tinyscreen.quteWatcher.Data;

import java.io.File;

/**
 * 用于文件排序的对象
 * @author Administrator
 *
 */
public class FileSortObj implements Comparable<Object>{
	
	private File file;
	
	private String fileName;
	
	/**
	 * 文件名中的时间戳，用于排序
	 */
	private long fileSort;
	
	/**
	 * 文件名称前缀
	 */
	private String filePrefix;
	
	public FileSortObj(File file,String fileName,String filePrefix){
		this.filePrefix = filePrefix;
		this.setFile(file);
		this.setFileName(fileName);
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
		String dateStr = fileName.substring(this.filePrefix.length(), fileName.length()-4);
		setFileSort(Long.parseLong(dateStr));
	}

	public long getFileSort() {
		return fileSort;
	}

	public void setFileSort(long fileSort) {
		this.fileSort = fileSort;
	}

	@Override
	public int compareTo(Object another) {
		FileSortObj obj = (FileSortObj) another;
		if(this.getFileSort() < obj.getFileSort()){
			return 1;
		}
		else if(this.getFileSort() > obj.getFileSort()){
			return -1;
		}
		return 0;
	}

}
