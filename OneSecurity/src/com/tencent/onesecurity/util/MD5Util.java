package com.tencent.onesecurity.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密帮助类
 * 
 * From QD1.2
 * @author Jess Yan
 *
 */
public class MD5Util {

	/**
	 * @param plainText 明文
	 * @return	16位的加密加密结果
	 */
	public static byte[] encrypt(String plainText) {
		return encrypt(plainText.getBytes());
	}
	
	public static byte[] encrypt(byte[] text) {
		try { 
			MessageDigest md = MessageDigest.getInstance("MD5"); 
			md.update(text);
			byte b[] = md.digest(); 
			return b;

			} catch (NoSuchAlgorithmException e) { 
			e.printStackTrace(); 
			}
		return null;
	}

	public static String encrypt_string(String plainText) {
		byte[] bytes = MD5Util.encrypt(plainText);
		return HexUtil.bytes2HexStr(bytes);
	}

	public static String encrypt_bytes(byte[] bytes) {
		byte[] result_bytes = MD5Util.encrypt(bytes);
		return HexUtil.bytes2HexStr(result_bytes);
	}
}
