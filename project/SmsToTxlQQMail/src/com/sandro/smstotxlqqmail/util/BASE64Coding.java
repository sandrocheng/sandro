package com.sandro.smstotxlqqmail.util;

import java.nio.ByteBuffer;

/**
 * BASE64的工具类
 * @author kevinxu
 *
 */
public class BASE64Coding
{   
    public BASE64Coding() 
    {  
    }
    
    /**
     * 按系统默认编码encode该字符串
     * @param s
     * @return String
     */
    public static String encode (String s)
    {
        return new BASE64Encoder().encode(s.getBytes());
    }
    
    /**
     * 对字节数组进行encode
     * @param bytes
     * @return String
     */
    public static String encode(byte[] bytes)
    {
        return new BASE64Encoder().encode(bytes);
    }
    
    /**
     * 对ByteBuffer进行encode
     * @param buf
     * @return String
     */
    public static String encode(ByteBuffer buf)
    {
        return new BASE64Encoder().encode(buf);
    }
    
    /**
     * 对BASE64的字符串进行decode，若decode失败，则返回null
     * @param str
     * @return byte[]
     */
    public static byte[] decode(String str)
    {
        try
        {
            return new BASE64Decoder().decodeBuffer(str);
        }
        catch(Exception e)
        {
            return null;
        }
    }
}
