package com.tencent.onesecurity.util;

/**
 *
 * @author sobranie
 */
public class XxteaCoding {
    private byte[] key = null;

    /** 
     * @param args 
     */ 
    public static void main(String[] args) { 
        String s = "你好：andot。asdff"; //args[0];//
        byte[] k = "1234567890abcde".getBytes(); 
        XxteaCoding c = new XxteaCoding(k);
        String e = c.encode2HexStr(s.getBytes()); 
        System.err.println(e);
        byte[] d = c.decodeFromHexStr(e);
        System.out.print(new String(d)); 
    } 

    public XxteaCoding(byte[] key) {
        this.key = makePassword(key);
    }

    private static void toIntArray(byte[] data, int[] v) {
        int i = 0;
        int j = 0;
        int a = data.length >> 2;
        for (i = 0; i < a; i++) {
            v[i] = (data[j++] & 0x000000FF);
            v[i] |= (data[j++] & 0x000000FF) << 8;
            v[i] |= (data[j++] & 0x000000FF) << 16;
            v[i] |= (data[j++] & 0x000000FF) << 24;
        }
        if (j < data.length) {
            v[i] = (data[j++] & 0x000000FF);
            for (int k = 8; j < data.length; j++, k += 8) {
                v[i] |= (data[j] & 0x000000FF) << k;
            }
        }
    }

    private static void toByteArray(int[] data, int len, byte[] v) {
        int i = 0;
        int j = 0;
        int a = v.length >> 2;
        if (a > len) {
            a = len;
        }
        for (i = 0; i < a; i++) {
            v[j++] = (byte) (data[i] & 0x000000FF);
            v[j++] = (byte) ((data[i] >>> 8) & 0x000000FF);
            v[j++] = (byte) ((data[i] >>> 16) & 0x000000FF);
            v[j++] = (byte) ((data[i] >>> 24) & 0x000000FF);
        }
        if (len > a && j < v.length) {
            v[j++] = (byte) (data[i] & 0x000000FF);
            for (int k = 8; k <= 24 && j < v.length; k += 8) {
                v[j++] = (byte) ((data[i] >>> k) & 0x000000FF);
            }
        }
    }

    
    public static byte[] makePassword(byte[] key) {
        byte b[] = key;
        if (key != null && key.length > 16) {
            b = MD5Coding.encode(key);
        }
        return b;
    }

    public static int EndianSwap(int n) {
        return ((n << 24) | ((n & 0xFF00) << 8) | ((n & 0xFF0000) >>> 8) | (n >>> 24));
    }

    public byte[] encode(byte[] data) {
        int[] v = null;
        int[] k = null;
        int n;

        if (data == null || key == null || data.length == 0) {
            return data;
        }
        
        n = ((data.length % 4 == 0) ? ((data.length >>> 2) + 1) : ((data.length >>> 2) + 2));
        v = new int[n];
        toIntArray(data, v);
        v[n - 1] = data.length;

        n = (key.length % 4 == 0) ? (key.length >>> 2) : ((key.length >>> 2) + 1);
        if (n < 4) {
            n = 4;
        }
        k = new int[n];
        for (int i = 0; i < n; i++) {
            k[i] = 0;
        }
        toIntArray(key, k);

        n = v.length - 1;
        int z = v[n], y = v[0], delta = 0x9E3779B9, sum = 0, e;
        int p, q = 6 + 52 / (n + 1);
        while (q-- > 0) {
            sum = sum + delta;
            e = sum >>> 2 & 3;
            for (p = 0; p < n; p++) {
                y = v[p + 1];
                z = v[p] += (z >>> 5 ^ y << 2) + (y >>> 3 ^ z << 4) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);
            }
            y = v[0];
            z = v[n] += (z >>> 5 ^ y << 2) + (y >>> 3 ^ z << 4) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);
        }

        n = v.length << 2;
        byte[] result = new byte[n];
        toByteArray(v, v.length, result);
        return result;
    }

    public byte[] decode(byte[] data) {
        int[] v = null;
        int[] k = null;
        int n;

        if (data == null || key == null || data.length == 0) {
            return data;
        }

        if (data.length % 4 != 0 || data.length < 8) {
            return null;
        }
        n = data.length >>> 2;
        v = new int[n];
        toIntArray(data, v);

        n = (key.length % 4 == 0) ? (key.length >>> 2) : ((key.length >>> 2) + 1);
        if (n < 4) {
            n = 4;
        }
        k = new int[n];
        for (int i = 0; i < n; i++) {
            k[i] = 0;
        }
        toIntArray(key, k);

        n = v.length - 1;
        int z = v[n], y = v[0], delta = 0x9E3779B9, sum, e;
        int p, q = 6 + 52 / (n + 1);

        sum = q * delta;
        while (sum != 0) {
            e = sum >>> 2 & 3;
            for (p = n; p > 0; p--) {
                z = v[p - 1];
                y = v[p] -= (z >>> 5 ^ y << 2) + (y >>> 3 ^ z << 4) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);
            }
            z = v[n];
            y = v[0] -= (z >>> 5 ^ y << 2) + (y >>> 3 ^ z << 4) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);
            sum = sum - delta;
        }

        n = v[v.length - 1];
        if (n < 0 || n > (v.length - 1) << 2) {
            return null;
        }
        byte[] result = new byte[n];
        toByteArray(v, v.length - 1, result);
        return result;
    }

    /**
     * 解密
     * @param code 加密后的hexStr
     * @return byte[] 解密后的字节数组
     */
    public byte[] decodeFromHexStr(String code)
    {
        return decode(HexUtil.hexStr2Bytes(code));
    }
    
    /**
     * 解密
     * @param code 加密后的base64Str
     * @return byte[] 解密后的字节数组
     */
//    public byte[] decodeFromBase64Str(String code)
//    {
//        return decode(BASE64Coding.decode(code));
//    }   

    /**
     * 加密并转为16进制字符串
     * @param in 需要进行加密的字节数组
     * @return String 加密后的16进制字符串
     */
    public String encode2HexStr(byte in[])
    {
        return HexUtil.bytes2HexStr(encode(in));
    }
    
    /**
     * 加密并转为Base64字符串
     * @param in 需要进行加密的字节数组
     * @return String 加密后的Base64字符串
     */
//    public String encode2HexBase64(byte in[])
//    {
//        return BASE64Coding.encode(encode(in));
//    }
    
}