package com.tencent.onesecurity.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;

/**
 * 文件操作Uitl
 * 
 * 从QD1.2迁移过来
 * @author Jess Yan
 * 
 */
public class FileUtil {
	
	/**
	 * 若某个文件存在，则删除，否则不用任何操作
	 * 
	 * @param file
	 */
	public static void deleteFile(File file) {
		if (file.exists())
			file.delete();
	}

	/**
	 * 是否有存储卡
	 * 
	 * @param context
	 * @return
	 */
	public static boolean hasStorageCard() {
		return android.os.Environment.getExternalStorageState().equals(android.os.Environment.MEDIA_MOUNTED);
	}

	/**
	 * 针对文本文件，把文件内容保存到一个字符串数组,每行一个字符串
	 * 
	 * @param file
	 * @return
	 */
	public static String getString(File file) {
		StringBuffer sb = new StringBuffer();
		try {
			FileInputStream in = new FileInputStream(file);
			byte[] buffer = new byte[1024];
			int length = 0;
			while ((length = in.read(buffer)) > 0) {
				sb.append(new String(buffer, 0, length));
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

	/**
	 * 将Drawable写到sd缓存中
	 * 
	 * @param drawable
	 * @param path
	 * @return
	 */
	public static void WriteDrawableToSd(Drawable drawable, String path) {
		if (!hasStorageCard() || drawable == null) {
			return;
		}
		File myCaptureFile = new File(path);
		long length = myCaptureFile.length();
		long drawableLength = getDrawableSize(drawable);
		if (myCaptureFile.exists() && length == drawableLength) {// 应该判断大小
			return;
		}
		Bitmap bm = null;
		if (drawable instanceof BitmapDrawable) {
			BitmapDrawable bd = (BitmapDrawable) drawable;
			bm = bd.getBitmap();
			try {
				WriteBitmapToSd(bm, path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 得到Drawable大小
	 * 
	 * @param drawable
	 * @return
	 */
	public static long getDrawableSize(Drawable drawable) {
		long size = 0;
		BitmapDrawable bd = (BitmapDrawable) drawable;
		if (bd == null) {
			return size;
		}
		Bitmap bm = bd.getBitmap();
		if (bm == null) {
			return size;
		}
		byte[] myByte = bitmapToBytes(bm);
		if (myByte == null) {
			return size;
		}
		size = myByte.length;
		return size;
	}

	/**
	 * bitmap转成byte数组
	 * 
	 * @param bitmap
	 * @return
	 */
	public static byte[] bitmapToBytes(Bitmap bitmap) {
		if (bitmap == null) {
			return null;
		}
		ByteArrayOutputStream os = null;
		try {
			os = new ByteArrayOutputStream();
			// 将Bitmap压缩成PNG编码，质量为100%存储
			bitmap.compress(Bitmap.CompressFormat.PNG, 100, os);// 除了PNG还有很多常见格式，如jpeg等。
			return os.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (os != null) {
					os.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	/**
	 * 数据流转成数组
	 * 
	 * @param is
	 * @return
	 */
	public static byte[] streamToBytes(InputStream is) {
		ByteArrayOutputStream os = new ByteArrayOutputStream(1024);
		byte[] buffer = new byte[1024];
		int len;
		try {
			while ((len = is.read(buffer)) >= 0) {
				os.write(buffer, 0, len);
			}
		} catch (java.io.IOException e) {
		}
		return os.toByteArray();
	}

	/**
	 * 将Bitmap写到sd缓存中
	 * 
	 * @param bm
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public static void WriteBitmapToSd(Bitmap bm, String path) throws IOException {
		if (!hasStorageCard() || bm == null) {
			return;
		}
		File myCaptureFile = new File(path);
		FileOutputStream bos = null;
		try {
			bos = new FileOutputStream(myCaptureFile);
			if (bos != null) {
				bm.compress(Bitmap.CompressFormat.PNG, 100, bos);
				bos.close();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 从sd缓存中读取Drawable
	 * 
	 * @param sdPath
	 * @return
	 */
	public static Drawable getDrawableFromSd(String path) {
		if (!hasStorageCard()) {
			return null;
		}
		File myCaptureFile = new File(path);
		if (!myCaptureFile.exists()) {
			return null;
		}
		try {
			if (getFileSizes(myCaptureFile) <= 0) {
				deleteFile(myCaptureFile);
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		Bitmap bmp = BitmapUtil.createPurgeableBitmap(path);
		BitmapDrawable drawable = new BitmapDrawable(bmp);
		return drawable;
	}
	
	/**
	 * 从sd缓存中读取Bitmap
	 * 
	 * @param sdPath
	 * @return
	 */
	public static Bitmap getBimapFromSd(String path) {
		if (!hasStorageCard()) {
			return null;
		}
		File myCaptureFile = new File(path);
		if (!myCaptureFile.exists()) {
			return null;
		}
		try {
			if (getFileSizes(myCaptureFile) <= 0) {
				deleteFile(myCaptureFile);
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		Bitmap bmp = BitmapUtil.createPurgeableBitmap(path);
		return bmp;
	}

	/**
	 * 取得文件大小
	 * 
	 * @param f
	 * @return
	 * @throws Exception
	 */
	public static long getFileSizes(File f) {// 取得文件大小
		return f.exists() ? f.length() : 0;
	}

	/**
	 * 删除文件或者文件见
	 * 
	 * @param fileName
	 * @return
	 */
	public static boolean delete(String fileName) {
		File file = new File(fileName);
		if (!file.exists()) {
			return false;
		} else {
			if (file.isFile()) {
				return deleteFile(fileName);
			} else {
				return deleteDirectory(fileName);
			}
		}
	}

	/**
	 * 
	 * 删除文件以及文件夹
	 * 
	 * @param dir
	 * 
	 * @return
	 */
	public static boolean deleteDirectory(String dir) {
		if (!dir.endsWith(File.separator)) {
			dir = dir + File.separator;
		}
		File dirFile = new File(dir);
		if (!dirFile.exists() || !dirFile.isDirectory()) {
			return false;
		}
		boolean flag = true;
		File[] files = dirFile.listFiles();
		if (files != null) {
			for (int i = 0; i < files.length; i++) {
				if (files[i].isFile()) {
					flag = deleteFile(files[i].getAbsolutePath());
					if (!flag) {
						break;
					}
				} else {
					flag = deleteDirectory(files[i].getAbsolutePath());
					if (!flag) {
						break;
					}
				}
			}
		}
		if (!flag) {
			return false;
		}
		if (dirFile.delete()) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 复制文件
	 * 
	 * @param sourceFile
	 * @param targetFile
	 */
	public static boolean copyFile(File sourceFile, File targetFile) {
		if (!sourceFile.exists()) {
			return false;
		}
		BufferedInputStream inBuff = null;
		BufferedOutputStream outBuff = null;
		try {
			inBuff = new BufferedInputStream(new FileInputStream(sourceFile));
			outBuff = new BufferedOutputStream(new FileOutputStream(targetFile));
			byte[] b = new byte[1024 * 5];
			int len;
			while ((len = inBuff.read(b)) != -1) {
				outBuff.write(b, 0, len);
			}
			outBuff.flush();
		} catch (IOException e) {
			// 空间不足会创建一个0b的文件
			if (targetFile.exists() && targetFile.length() == 0) {
				targetFile.delete();
			}
			return false;
		} catch (Exception e) {
			return false;
		} finally {
			try {
				if (inBuff != null) {
					inBuff.close();
				}
				if (outBuff != null) {
					outBuff.close();
				}
			} catch (IOException e) {
			}
		}
		return true;
	}

	/**
	 * 删除单个文件
	 * 
	 * @param fileName
	 * 
	 * @return
	 */
	public static boolean deleteFile(String fileName) {
		File file = new File(fileName);
		if (file.isFile() && file.exists()) {
			return file.delete();
		} else {
			return false;
		}
	}

	/**
	 * 获取文件的MD5
	 * 
	 * @param file
	 *            文件
	 * @return MD5字符串
	 */
	public static String getMD5(File file) {
		String md5 = null;
		try {
			InputStream fis = new FileInputStream(file);
			md5 = getMD5(fis);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return md5;
	}

	/**
	 * 获取输入流的MD5
	 * 
	 * @param is
	 *            输入流
	 * @return MD5字符串
	 */
	public static String getMD5(InputStream is) {
		String md5 = null;
		try {
			if (is != null) {
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] buffer = new byte[8192];
				int length = -1;
				while ((length = is.read(buffer)) != -1) {
					md.update(buffer, 0, length);
				}
				md5 = bytesToString(md.digest());
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		} catch (NoSuchAlgorithmException ex) {
			ex.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return md5;
	}

	public static String bytesToString(byte[] data) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
		char[] temp = new char[data.length * 2];
		for (int i = 0; i < data.length; i++) {
			byte b = data[i];
			temp[i * 2] = hexDigits[b >>> 4 & 0x0f];
			temp[i * 2 + 1] = hexDigits[b & 0x0f];
		}
		return new String(temp);
	}

	public static boolean write(File file, StringBuffer buffer)
			throws IOException {
		FileOutputStream fout;
		if (!checkAndCreadFile(file)) {
			android.util.Log.i("write", "write log fail");
			return false;
		}
		fout = new FileOutputStream(file, true);
		fout.write(buffer.toString().getBytes());
		fout.close();
		return true;
	}
	public static boolean checkAndCreadFile(File file) throws IOException {
		boolean flag = true;
		if (!file.exists()) {
			file.getParentFile().mkdirs();
			flag = file.createNewFile();
		}
		return flag;
	}
	public static File getSDCardDir() {
		return new File(Environment.getExternalStorageDirectory().getPath());
	}
}
