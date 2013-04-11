package com.tencent.onesecurity.safebox.util;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/**
 * 简单的加密算法
 * 
 * @author Joy
 */
public class SimpleEncryptor {
	
	/**
	 * 加密
	 * @param content
	 * @param key
	 * @return 加密后的byte[]
	 */
	public static byte[] encrypt(byte[] content, int key) {
		
		//long start = System.currentTimeMillis();
		
		byte[] res = new byte[content.length];

		for (int i=0; i<content.length; i++) {
			res[i] = (byte)(~content[i]^key);
		}
		
		if (res.length > 100) {
			
			res[0] = (byte)(res[0]^res[67]);
			res[67] = (byte)(res[0]^res[67]);
			res[0] = (byte)(res[0]^res[67]);
			
			res[32] = (byte)(res[32]^res[91]);
			res[91] = (byte)(res[32]^res[91]);
			res[32] = (byte)(res[32]^res[91]);
		}
 
		return res;
	}
	
	public static byte[] encrypt4AES(byte[] content, byte[] key) {
		
		try {             
            KeyGenerator kgen = KeyGenerator.getInstance("AES");  
            kgen.init(128, new SecureRandom(key));  
            SecretKey secretKey = kgen.generateKey();  
            byte[] enCodeFormat = secretKey.getEncoded();  
            SecretKeySpec keySecret = new SecretKeySpec(enCodeFormat, "AES");  
            Cipher cipher = Cipher.getInstance("AES");// 创建密码器   
            cipher.init(Cipher.ENCRYPT_MODE, keySecret);// 初始化   
            byte[] result = null;
			try {
				result = cipher.doFinal(content);
			} catch (IllegalBlockSizeException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
            return result; // 加密   
    } catch (NoSuchAlgorithmException e) {  
            e.printStackTrace();  
    } catch (NoSuchPaddingException e) {  
            e.printStackTrace();  
    } catch (InvalidKeyException e) {  
            e.printStackTrace();  
    } catch (BadPaddingException e) {  
            e.printStackTrace();  
    }  
		
		return null;
	}
	
	/**
	 * 解密
	 * @param content
	 * @param key
	 * @return 解密后的byte[]
	 */
	public static byte[] decrypt(byte[] content, int key) {
		
		byte[] res = new byte[content.length];
		
		for (int i=0; i<content.length; i++) {
			res[i] = (byte)(~content[i]^key);
		}
		
		if (res.length > 100) {
			
			res[0] = (byte)(res[0]^res[67]);
			res[67] = (byte)(res[0]^res[67]);
			res[0] = (byte)(res[0]^res[67]);
			
			res[32] = (byte)(res[32]^res[91]);
			res[91] = (byte)(res[32]^res[91]);
			res[32] = (byte)(res[32]^res[91]);
		}
		
		return res;
	}
	
	// == JOY OPZ start ==
	
	/**
	 * 指定长度加密
	 * @param content
	 * @param key
	 * @return 加密后的byte[]
	 */
	public static void encrypt(byte[] content, int key, int length) {
		
		for (int i=0; i<content.length && i<length; i++) {
			content[i] = (byte)(~content[i]^key);
		}
		
		if (content.length > 100) {
			
			content[0] = (byte)(content[0]^content[67]);
			content[67] = (byte)(content[0]^content[67]);
			content[0] = (byte)(content[0]^content[67]);
			
			content[32] = (byte)(content[32]^content[91]);
			content[91] = (byte)(content[32]^content[91]);
			content[32] = (byte)(content[32]^content[91]);
		}
	}
	
	/**
	 * 指定长度解密
	 * @param content
	 * @param key
	 * @return 解密后的byte[]
	 */
	public static void decrypt(byte[] content, int key, int length) {
		
		for (int i=0; i<content.length && i < length; i++) {
			content[i] = (byte)(~content[i]^key);
		}
		
		if (content.length > 100) {
			
			content[0] = (byte)(content[0]^content[67]);
			content[67] = (byte)(content[0]^content[67]);
			content[0] = (byte)(content[0]^content[67]);
			
			content[32] = (byte)(content[32]^content[91]);
			content[91] = (byte)(content[32]^content[91]);
			content[32] = (byte)(content[32]^content[91]);
		}
	}
	
//	public static void main(String args[]) {
//		SimpleEncryptor simple = new SimpleEncryptor();
//		
//		String str = "hey there!";
//		byte[] encrypted = simple.encrypt(str.getBytes());
//		
//		System.out.println(new String(encrypted));
//		
//		byte[] decrypted = simple.decrypt(encrypted);
//		
//		System.out.println(new String(decrypted));
//	}
}
