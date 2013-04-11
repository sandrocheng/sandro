package com.tencent.onesecurity.safebox.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

import android.util.Log;


/**
 * 文件加密类
 * @author Joy
 *
 */
public class EncryptWorker {
	
	private static int KEY = 0x0;
	
	private static boolean isKeySetup = false;
	
	public static final int HEAD_LENGTH = 128;
	
	static {
		setupKEY();
	}
	
	/**
	 * 分配KEY
	 */
	public static void setupKEY(){
		// 暂时改成固定值，用于测试
		KEY = 170;
		isKeySetup = true;
		/*
		try {
			String strKey = ConfigDao.getInstance().findContentByType(DaoConstant.CONFIG_TYPE_KEY);
			
			if (null == strKey || strKey.length() == 0) {
				// 取一个随机数
				Random r = new Random();
				KEY = 1000 + r.nextInt(1000);
				// 将key存入DB
				ConfigEntity entity = new ConfigEntity();
				entity.setContent(String.valueOf(KEY));
				entity.setType(DaoConstant.CONFIG_TYPE_KEY);
				ConfigDao.getInstance().insert(entity);
			} else {
				KEY = Integer.parseInt(strKey);
			}
			
			isKeySetup = true;
			
		} catch (Exception e) {
			KEY = 0x0;
			isKeySetup = false;
			Log.i("Encrypt", e.getMessage());
		}
		*/
	}
	
	private static boolean checkKEY(){
		if (false == isKeySetup) {
			setupKEY();
		}
		return isKeySetup;
	}
	
	/**
	 * 文件头部加密
	 * @param filename
	 * @return 成功:源文件头，失败：null
	 */
	public static byte[] encryptFile(String filename) {
		return encryptFile(filename, HEAD_LENGTH);
	}
	
	/**
	 * 文件头部解密
	 * @param filename
	 * @return true:成功; false:失败
	 */
	public static boolean decryptFile(String filename) {
		return decryptFile(filename, HEAD_LENGTH);
	}
	
	/**
	 * 按指定长度加密文件头部
	 * @param filename
	 * @param headLength
	 * @return 成功:源文件头，失败：null
	 */
	public static byte[] encryptFile(String filename, int headLength) {
		
		if (false == checkKEY()) {
			return null;
		}
		
		RandomAccessFile file = null;
		FileChannel channel = null;
		byte[] originData = null;
		
		try {
			file = new RandomAccessFile(filename, "rw");
			// 如果文件小于要取的头部长度，则全部加密
			long fileLen = file.length();
			if(fileLen == 0){
				return null ;
			}
			int buffLen = (int) (fileLen < headLength ? fileLen : headLength);
			
			originData = new byte[buffLen];
			file.read(originData);
			
			byte[] endata = null;
			
			try {
				endata = SimpleEncryptor.encrypt(originData, KEY);
			} catch (Exception e) {
				return null;
			}
			
			file.seek(0);
			file.write(endata);
			
			// 改名
//			FileWorker.rename4Encrypt(filename);
			
			channel = file.getChannel();
			channel.force(true);
			
		} catch (Exception e) {
			originData = null;
			Log.i("Encrypt", e.getMessage());
		} finally {
			try {
				if (null != channel) {
					channel.close();
				}
				if (null != file) {
					file.close();
				}
			} catch (IOException e) {
				Log.i("Encrypt", e.getMessage());
			}
		}
		return originData;
	}
	
	/**
	 * 按指定长度解密文件头部
	 * @param filename
	 * @param headLength
	 * @return true:成功; false:失败
	 */
	public static boolean decryptFile(String filename, int headLength) {
		boolean res = false;
		
		if (false == checkKEY()) {
			return res;
		}
		
		RandomAccessFile file = null;
		FileChannel channel = null;
		
		try {
			file = new RandomAccessFile(filename, "rw");
			// 如果文件小于要取的头部长度，则全部解密
			long fileLen = file.length();
			int buffLen = (int) (fileLen < headLength ? fileLen : headLength);
			
			byte[] buffer = new byte[buffLen];
			file.read(buffer);
			
			byte[] dedata = SimpleEncryptor.decrypt(buffer, KEY);
			
			file.seek(0);
			file.write(dedata);
			
			channel = file.getChannel();
			channel.force(true);
			
			res = true;
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
		} finally {
			try {
				if (channel != null) {
					channel.close();
				}
				if (null != file) {
					file.close();
				}
			} catch (IOException e) {
				Log.i("Encrypt", e.getMessage());
			}
		}
		return res;
	}
	
	// == JOY OPZ start NOT USED ==
	
	public static byte[] getDecryptedFileHead(String filepath) {
		byte data[] = new byte[HEAD_LENGTH];
		
		File file = new File(filepath);
		if (!file.exists()) {
			return null;
		}
		InputStream input = null;
		try {
			input = new FileInputStream(file);
			if (input.read(data) < 0){
				return null;
			}
			
			return decryptFileHead(data);
		} catch (Exception e) {
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
	// == JOY OPZ end NOT USED ==
	/**
	 * 文件头解密
	 * @param filename
	 * @param originHead
	 * @return byte[]解密后的文件头
	 */
	public static byte[] decryptFileHead(byte[] head) {
		return SimpleEncryptor.decrypt(head, KEY);
	}
	
	
	/**
	 * 加密文本
	 * @param text
	 * @return
	 */
	public static byte[] encryptText(String text) {
		if (null == text || text.length() == 0) {
			return null;
		}
		try {
			return SimpleEncryptor.encrypt(text.getBytes(), KEY);
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
			return null;
		}
	}
	
	/**
	 * 解密文本
	 * @param data
	 * @return
	 */
	public static byte[] decryptText(byte[] data) {
		if (data == null || data.length == 0) {
			return null;
		}
		try {
			return SimpleEncryptor.decrypt(data, KEY);
		} catch (Exception e) {
			Log.i("Encrypt", e.getMessage());
			return null;
		}
	}
	
	/**
	 * 解密数据流
	 * @param data
	 */
	public static void decryptData(byte[] data) {
		SimpleEncryptor.decrypt(data, KEY, HEAD_LENGTH);
	}
	
	/**
	 * 加密数据流
	 * @param data
	 */
	public static void encryptData(byte[] data) {
		SimpleEncryptor.encrypt(data, KEY, HEAD_LENGTH);
	}
}
