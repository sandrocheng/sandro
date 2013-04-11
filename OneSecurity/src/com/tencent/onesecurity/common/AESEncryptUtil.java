package com.tencent.onesecurity.common;

import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/**
 * AES加密器
 * 
 * 配置信息保存在数据库中用到的加密算法，or其他
 * @author Jess
 *
 */
public class AESEncryptUtil {
	public static final String SEED = "one-$%#^@&!*";		// 45362718
    /**
     * AES加密
     */
    public static String encrypt(String cleartext) throws Exception {  
        byte[] rawKey = getRawKey(SEED.getBytes());  
        byte[] result = encrypt(rawKey, cleartext.getBytes());  
        return toHex(result);  
    }  
      
    /**
     * AES解密
     */
    public static String decrypt(String encrypted) throws Exception {
        byte[] rawKey = getRawKey(SEED.getBytes());  
        byte[] enc = toByte(encrypted);  
        byte[] result = decrypt(rawKey, enc);  
        return new String(result);  
    }  
 
    private static byte[] getRawKey(byte[] seed) throws Exception {  
        KeyGenerator kgen = KeyGenerator.getInstance("AES");  
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");  
        sr.setSeed(seed);  
        kgen.init(128, sr); // 192 and 256 bits may not be available  
        SecretKey skey = kgen.generateKey();  
        byte[] raw = skey.getEncoded();  
        return raw;  
    }  
 
      
    private static byte[] encrypt(byte[] raw, byte[] clear) throws Exception {  
        SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");  
        Cipher cipher = Cipher.getInstance("AES");  
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec);  
        byte[] encrypted = cipher.doFinal(clear);  
        return encrypted;  
    }  
 
    private static byte[] decrypt(byte[] raw, byte[] encrypted) throws Exception {  
        SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");  
        Cipher cipher = Cipher.getInstance("AES");  
        cipher.init(Cipher.DECRYPT_MODE, skeySpec);  
        byte[] decrypted = cipher.doFinal(encrypted);  
        return decrypted;  
    }  
 
//    private static String toHex(String txt) {  
//        return toHex(txt.getBytes());  
//    }  
//    private static String fromHex(String hex) {  
//        return new String(toByte(hex));  
//    }  
      
    private static byte[] toByte(String hexString) {  
        int len = hexString.length()/2;  
        byte[] result = new byte[len];  
        for (int i = 0; i < len; i++)  
            result[i] = Integer.valueOf(hexString.substring(2*i, 2*i+2), 16).byteValue();  
        return result;  
    }  
 
    private static String toHex(byte[] buf) {  
        if (buf == null)  
            return "";  
        StringBuffer result = new StringBuffer(2*buf.length);  
        for (int i = 0; i < buf.length; i++) {  
            appendHex(result, buf[i]);  
        }  
        return result.toString();  
    }  
    private final static String HEX = "0123456789ABCDEF";  
    private static void appendHex(StringBuffer sb, byte b) {  
        sb.append(HEX.charAt((b>>4)&0x0f)).append(HEX.charAt(b&0x0f));  
    } 
}
