package com.tencent.onesecurity.safebox.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.UUID;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Bitmap.CompressFormat;
import android.os.Environment;
import android.util.Log;

import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.util.FileUtil;

/**
 * 私密箱部分的文件工具类
 * @author Joy
 */
public class FileWorker {
	private static final String TAG = "FileWorker" ;
	
//	private static ExecutorService executorService = Executors.newFixedThreadPool(2);
	
	/**
	 * 导入不重命名 
	 * @param fromAbsoluteName 文件绝对路径
	 * @param type
	 * @return 
	 */
	public static boolean importFile(String fromAbsoluteName, String secureName,int type) {
		
		if (null == fromAbsoluteName || secureName == null) {
			return false;
		}
		
		try {
			File fromFile = new File(fromAbsoluteName);
			
			if (fromFile.exists()) {
			
				String toDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
				
				switch (type) {
				case DaoConstant.MEDIA_TYPE_PIC:
					toDirName += (File.separator + DaoConstant.SECURE_PIC_PATH);
					break;
				default:
					break;
				}
				
				// 如果新目录不存在则创建
				File toDir = new File(toDirName);
				if (false == toDir.exists() && false == toDir.mkdirs()) {
					return false;
				}
				// 新文件名为一个随机的唯一数
				//newName = UUID.randomUUID().toString() + ".bin";
				
				File toFile = new File(toDirName, secureName);
			
				if (!fromFile.renameTo(toFile)) {
//					Process pro = Runtime.getRuntime().exec("cp " + fromFile + " " + toFile);
//					if (pro.getErrorStream().available() <= 0) {
//						Process pro2 = Runtime.getRuntime().exec("rm -r " + fromFile+"");
//						if (pro2.getErrorStream().available() <= 0) {
//							return true;
//						}
//					}
//					return false;
					if (!FileUtil.copyFile(fromFile, toFile)) {
						return false;
					}
					FileUtil.deleteFile(fromFile);
				}
			}
			
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
			return false ;
		}
		
		return true;
	}
	
//	public static boolean moveFromTmp(String secureName){
//		if (secureName == null) {
//			return false;
//		}
//		String FromDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + DaoConstant.SECURE_PIC_TMP;
//		String toDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + DaoConstant.SECURE_PIC_PATH;
//		
//		// 如果新目录不存在则创建
//		
//		File fromFile = new File(FromDirName, secureName);
//		
//		File toFile = new File(toDirName, secureName);
//		
//		if(false == fromFile.exists()){
//			return false;
//		}
//		
//		File toDir = new File(toDirName);
//		
//		if (false == toDir.exists() && false == toDir.mkdirs()) {
//			return false;
//		}
//		
//		if (!fromFile.renameTo(toFile)) {
//			return false;
//		}
//		
//		return true;
//		
//	}
	/**
	 * 导入并重命名文件
	 * @param fromAbsoluteName 文件绝对路径
	 * @param type
	 * @return 成功:重命名后的文件名 ，失败:null
	 */
	public static String importFile(String fromAbsoluteName, int type) {
		String newName = null;
		
		if (null == fromAbsoluteName) {
			return null;
		}
		
		try {
			File fromFile = new File(fromAbsoluteName);
			
			if (fromFile.exists()) {
			
				String toDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
				
				switch (type) {
				case DaoConstant.MEDIA_TYPE_PIC:
					toDirName += (File.separator + DaoConstant.SECURE_PIC_PATH);
					break;
				default:
					break;
				}
				
				// 如果新目录不存在则创建
				File toDir = new File(toDirName);
				if (false == toDir.exists() && false == toDir.mkdirs()) {
					return null;
				}
				// 新文件名为一个随机的唯一数
				newName = UUID.randomUUID().toString() + ".bin";
				
				File toFile = new File(toDirName, newName);
			
				// 失败可能是跨盘符引起的，这种情况下，先copy再删除
				if (!fromFile.renameTo(toFile)) {
//					// == JOY OPZ ==
//					Process pro = Runtime.getRuntime().exec("cp " + fromFile + " " + toFile);
//					if (pro.getErrorStream().available() <= 0) {
//						Process pro2 = Runtime.getRuntime().exec("rm -r " + fromFile);
//						if (pro2.getErrorStream().available() <= 0) {
//							android.util.Log.d("lee", " 命令行成功 ") ;
//							return newName;
//						}
//					}
//					newName = null;
					// 移动文件名带空格文件失败
					if (!FileUtil.copyFile(fromFile, toFile)) {
						com.tencent.onesecurity.util.Log.w(TAG, "extra_sd import copyFile failed") ;
						return null;
					}
					fromFile.delete();
				}
			}
			
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
			newName = null;
		}
		
		return newName;
	}

	/**
	 * 导出文件
	 * @param fromFileName 重命名后的文件名, toAbsoluteName 原文件绝对路径
	 * @param type
	 * @return 成功 原始文件绝对路径 失败 null
	 */
	public static String exportFile(String fromFileName, String toAbsoluteName, int type) {
		//boolean res = false;
		String originalAbsPath = null ;
		if (null == fromFileName || null == toAbsoluteName) {
			return originalAbsPath;
		}
		
		try {
			String fromDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
			
			switch (type) {
			case DaoConstant.MEDIA_TYPE_PIC:
				fromDirName += (File.separator + DaoConstant.SECURE_PIC_PATH);
				break;
			default:
				return originalAbsPath;
			}

			File fromFile = new File(fromDirName, fromFileName);
			
			if (fromFile.exists()) {

				File toFile = new File(toAbsoluteName);
				if (toFile.exists()) { // 已有同名文件,原文件名后加0--9
					toFile = getRandomFileName(toFile);
				}
				
				// 如果原文件路径不存在，存到DCIM下
				String toDirname = toAbsoluteName.substring(0, toAbsoluteName.lastIndexOf("/"));
				File toDir = new File(toDirname);
				
				if (false == toDir.exists()/* && false == toDir.mkdirs() */) {
					com.tencent.onesecurity.util.Log.w(TAG, "export file not exist");
					String toFilePath = Environment.getExternalStorageDirectory().getPath() + File.separator + "DCIM";
					String originalName = toAbsoluteName.substring(toAbsoluteName.lastIndexOf("/"));
					File dcim = new File(toFilePath) ;
					// DCIM不存在
					if(dcim.exists() == false && dcim.mkdir() == false){
						return originalAbsPath ;
					}
					toFile = new File(toFilePath, originalName);
					if (toFile.exists()) {
						toFile = getRandomFileName(toFile);
					}
				}
				originalAbsPath = toFile.getAbsolutePath() ;
				//res = fromFile.renameTo(toFile);
				
				// 失败可能是跨盘符引起的，这种情况下，先copy再删除
				if (false == fromFile.renameTo(toFile)) {
//					Process pro = Runtime.getRuntime().exec("cp " + fromFile + " " + toFile);
//					// == JOY OPZ ==
//					if (pro.getErrorStream().available() <= 0) {
//						Process pro2 = Runtime.getRuntime().exec("rm -r " + fromFile);
//						res = (pro2.getErrorStream().available() <= 0);
//						return true;
//					}
					
					if (!FileUtil.copyFile(fromFile, toFile)) {
						com.tencent.onesecurity.util.Log.w(TAG, "extra_sd export copyFile failed") ;
						return null;
					}
					
					FileUtil.deleteFile(fromFile);
					return originalAbsPath ;
				}
			}
			
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
			//res = false;
			originalAbsPath = null ;
		}
		
		return originalAbsPath;
	}
	/**
	 * 重名文件 .后加随机数
	 * @param file
	 * @return
	 */
	private static File getRandomFileName(File file) {
		if(file != null){
			do{
				String absPath = file.getAbsolutePath() ;
				int random = (int) (Math.random() * 10);
				StringBuffer buffer = new StringBuffer(absPath);
				buffer.insert(absPath.lastIndexOf("."), random);
				file = new File(buffer.toString()) ;
			}while(file.exists()) ;
		}
		return file ;
	}

	
	/**
	 * 导出文件
	 * @param fromFileName 重命名后的文件名, toAbsoluteName 原文件绝对路径
	 * @param type
	 * @return true:成功;false:失败
	 */
//	public static boolean export4TmpFile(String fromFileName, String toAbsoluteName, int type) {
//		boolean res = false;
//		if (null == fromFileName || null == toAbsoluteName) {
//			return res;
//		}
//		
//		try {
//			String fromDirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
//			
//			switch (type) {
//			case DaoConstant.MEDIA_TYPE_PIC:
//				fromDirName += (File.separator + DaoConstant.SECURE_PIC_TMP);
//				break;
//			default:
//				return res;
//			}
//
//			File fromFile = new File(fromDirName, fromFileName);
//			
//			if (fromFile.exists()) {
//
//				File toFile = new File(toAbsoluteName);
//				if (toFile.exists()) { // 已有同名文件,原文件名后加0--9
//					int random = (int) (Math.random() * 10);
//					StringBuffer buffer = new StringBuffer(toAbsoluteName);
//					buffer.insert(toAbsoluteName.lastIndexOf("."), random);
//					toFile = new File(buffer.toString());
//				}
//				
//				// 如果原文件路径不存在，则创建
//				String toDirname = toAbsoluteName.substring(0, toAbsoluteName.lastIndexOf("/"));
//				File toDir = new File(toDirname);
//				
//				if (false == toDir.exists() && false == toDir.mkdirs()) {
//					com.tencent.onesecurity.util.Log.w(TAG, "export file not exist") ;
//					return false;
//				}
//				
//				res = fromFile.renameTo(toFile);
//				
//				// 失败可能是跨盘符引起的，这种情况下，先copy再删除
//				if (false == res) {
////					Process pro = Runtime.getRuntime().exec("cp " + fromFile + " " + toFile);
////					// == JOY OPZ ==
////					if (pro.getErrorStream().available() <= 0) {
////						Process pro2 = Runtime.getRuntime().exec("rm -r " + fromFile);
////						res = (pro2.getErrorStream().available() <= 0);
////						return true;
////					}
//					
//					if (!FileUtil.copyFile(fromFile, toFile)) {
//						com.tencent.onesecurity.util.Log.w(TAG, "extra_sd export copyFile failed") ;
//						return false;
//					}
//					
//					FileUtil.deleteFile(fromFile);
//					return true ;
//					
//				}
//				
//			}
//			
//		} catch (Exception e) {
//			Log.i("Encrypt", e.getMessage());
//			res = false;
//		}
//		
//		return res;
//	}
	
	/**
	 * 将加密后的文件名后缀从.b改为.bin
	 * @param fromAbsName
	 * @return
	 */
//	public static boolean rename4Encrypt(String fromAbsName) {
//		if (fromAbsName != null && fromAbsName.length() > 0) {
//			String toName = fromAbsName.concat("in");
//			File toFile = new File(toName);
//			File fromFile = new File(fromAbsName);
//			return fromFile.renameTo(toFile);
//		}
//		return false;
//	}
	
	/**
	 * 将原头部数据写回文件
	 * @param filename
	 * @param originHead
	 * @return true:成功; false:失败
	 */
	public static boolean recoverFile(String filename, byte[] originHead, int type) {
		boolean res = false;
		
		String absoluteName = getSecureFilePathByName(filename, type);
		
		RandomAccessFile file = null;
		FileChannel channel = null;
		try {
			file = new RandomAccessFile(absoluteName, "rw");
			file.write(originHead);
			channel = file.getChannel();
			channel.force(true);
			res = true;
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
		} finally {
			if (null != channel) {
				try {
					channel.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != file) {
				try {
					file.close();
				} catch (IOException e) {
					Log.i("Encrypt", e.getMessage());
				}
			}
		
		}
		
		return res;
	}
	
//	public static boolean recover4TmpFile(String filename, byte[] originHead, int type) {
//		boolean res = false;
//		
//		String absoluteName = getSecureFile4TmpPathByName(filename, type);
//		
//		RandomAccessFile file = null;
//		FileChannel channel = null;
//		try {
//			file = new RandomAccessFile(absoluteName, "rw");
//			file.write(originHead);
//			channel = file.getChannel();
//			channel.force(true);
//			res = true;
//		} catch (Exception e) {
//			Log.i("Encrypt", e.getMessage());
//		} finally {
//			if (null != channel) {
//				try {
//					channel.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//			}
//			if (null != file) {
//				try {
//					file.close();
//				} catch (IOException e) {
//					Log.i("Encrypt", e.getMessage());
//				}
//			}
//		
//		}
//		
//		return res;
//	}
	
	/**
	 * 获取私密箱文件的决定路径
	 * @param filename
	 * @param type
	 * @return
	 */
	public static String getSecureFilePathByName (String filename, int type) {
		String dirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
		
		switch (type) {
		case DaoConstant.MEDIA_TYPE_PIC:
			dirName += (File.separator + DaoConstant.SECURE_PIC_PATH);
			break;
		default:
		}
		
		String absoluteName = dirName + File.separator + filename;
		return absoluteName;
	}
	
//	public static String getSecureFile4TmpPathByName (String filename, int type) {
//		String dirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH;
//		
//		switch (type) {
//		case DaoConstant.MEDIA_TYPE_PIC:
//			dirName += (File.separator + DaoConstant.SECURE_PIC_TMP);
//			break;
//		default:
//		}
//		
//		String absoluteName = dirName + File.separator + filename;
//		return absoluteName;
//	}
	
	// == JOY OPZ start ==
	
	/*
	public static void writeHeadFile(String sourceFilePath, String rename) {
//		Bitmap bm = Thumbnails.getThumbnail(context.getContentResolver(), imgId, Thumbnails.MINI_KIND, null);
		
		byte[] imgData = getFileData(sourceFilePath);
		executorService.execute(new HeaderWriterThread(imgData, rename));
//		new HeaderWriterThread(imgData, rename).start();
	}
	*/
	
	public static void writeThumb(Bitmap bt, String name) {
		String dirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + "thumbs";
		File dir = new File(dirName);
		if (dir.exists() == false && dir.mkdirs() == false) {
			return;
		}
		
		File thumbFile = new File(dirName, name);
		if (thumbFile.exists()) {
			thumbFile.delete();
		}
		
		ByteArrayOutputStream baoStream = null;
		OutputStream out = null;
		try {
			thumbFile.createNewFile();
			
			byte data[] = null;
			if (bt != null) {
				baoStream = new ByteArrayOutputStream();
				bt.compress(CompressFormat.JPEG, 75, baoStream);
				
				if (baoStream.size() == 0) {
					return ;
				}
				data = baoStream.toByteArray();
				
				if (data != null) {
					EncryptWorker.encryptData(data);
					
					out = new FileOutputStream(thumbFile);
					out.write(data, 0, data.length);
					out.flush();
				}
			}
			
		} catch (Exception e) {
		} finally {
			if (baoStream != null) {
				try {
					baoStream.close();
				} catch (IOException e) {
				}
			}
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
		}
	}
	
	public static void deleteThumb(String name) {
		String thumbName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + "thumbs" + File.separator;
		
		// 删除缩略图文件
		File thumbFile = new File(thumbName + name);
		if (thumbFile.exists()) {
			FileUtil.deleteFile(thumbFile);
		}
	}
	
	public static Bitmap readThumb(String name) {
		String dirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + "thumbs";
		File file = new File(dirName + File.separator + name);
		if (file.exists() == false) {
			return null;
		}
		FileInputStream in = null;
		try {
			in = new FileInputStream(file);
			if  (in.available() == 0) {
				return null;
			}
			
			byte[] data = new byte[in.available()];
			in.read(data) ; // ?
			EncryptWorker.decryptData(data);
			
			Bitmap bt = BitmapFactory.decodeByteArray(data, 0, data.length);
			
			return bt;
		} catch (OutOfMemoryError e) {
		} catch (Exception e) {
		}finally{
			try {
				if(in != null){
					in.close() ;
				}
			} catch (IOException e) {
			}
		}
		return null;
	}
	
	public static byte[] getFileData (String sourceFilePath) {
		InputStream input = null;
		byte[] imgData = null;
		
		boolean flg = false;
		int count = 1;
		
		while (!flg && count++<3) {
			try {
				input = new FileInputStream(sourceFilePath);
				imgData = new byte[input.available()];
				if (input.read(imgData)<=0) {
					return null;
				}
				flg = true;
			} catch (OutOfMemoryError e) { 
				try {
					System.gc();
					Thread.sleep(1000);
				} catch (InterruptedException e1) {
				}
				
			} catch (Exception e1) {
				return null;
			} finally {
				if (input != null) {
					try {
						input.close();
					} catch (IOException e) {
					}
				}
			}
		}
		
		return imgData;
	}
	
	/*
	private static class HeaderWriterThread extends Thread {
		private byte[] imgData = null;
		private String fileName;
		
		HeaderWriterThread(byte data[], String fileName) {
			imgData = data;
			this.fileName = fileName;
		}
		
		public void run() {
			Bitmap bm = BitmapUtil.getThumbFromData(96, imgData);
			
			byte data[] = null;
			if (bm != null) {
				ByteArrayOutputStream baoStream = new ByteArrayOutputStream();
				bm.compress(CompressFormat.JPEG, 75, baoStream);
				if (bm != null) {
					bm.recycle();
				}
				data = baoStream.toByteArray();
				try {
					baoStream.close();
				} catch (IOException e) {
				}
			}
			
			if (data == null) {
				imgData = null;
				return ;
			}
			
			String dir = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + "/headFiles";
			File dirFile = new File(dir);
			if (!dirFile.exists()) {
				dirFile.mkdirs();
			}
			File toFile = new File(dir, fileName);
			if (!toFile.exists()) {
				try {
					toFile.createNewFile();
				} catch (IOException e) {
					return ;
				}
			}else {
				return ;
			}
			
			OutputStream out = null;
			try {
				out = new FileOutputStream(toFile);
				out.write(data, 0, data.length);
			} catch (Exception e) {
			} finally {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
			
			data = null;
			imgData = null;
		}
	}
	*/
	
	public static void deleteHeaderFile(String fileName) {
		String absPath = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + "/headFiles/" + fileName;
		File file = new File(absPath);
		if (file.exists()) {
			file.delete();
		}
	}

}
