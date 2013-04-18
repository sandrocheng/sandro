package king.org.apache.commons.codec.digest;

import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import king.org.apache.commons.codec.binary.Hex;
import king.org.apache.commons.codec.binary.StringUtils;

public class DigestUtils
{
  private static final int STREAM_BUFFER_LENGTH = 1024;

  private static byte[] digest(MessageDigest paramMessageDigest, InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[1024];
    for (int i = paramInputStream.read(arrayOfByte, 0, 1024); i >= 0; i = paramInputStream.read(arrayOfByte, 0, 1024))
      paramMessageDigest.update(arrayOfByte, 0, i);
    return paramMessageDigest.digest();
  }

  private static byte[] getBytesUtf8(String paramString)
  {
    return StringUtils.getBytesUtf8(paramString);
  }

  static MessageDigest getDigest(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException.getMessage());
    }
  }

  private static MessageDigest getMd5Digest()
  {
    return getDigest("MD5");
  }

  private static MessageDigest getSha256Digest()
  {
    return getDigest("SHA-256");
  }

  private static MessageDigest getSha384Digest()
  {
    return getDigest("SHA-384");
  }

  private static MessageDigest getSha512Digest()
  {
    return getDigest("SHA-512");
  }

  private static MessageDigest getShaDigest()
  {
    return getDigest("SHA");
  }

  public static byte[] md5(InputStream paramInputStream)
  {
    return digest(getMd5Digest(), paramInputStream);
  }

  public static byte[] md5(String paramString)
  {
    return md5(getBytesUtf8(paramString));
  }

  public static byte[] md5(byte[] paramArrayOfByte)
  {
    return getMd5Digest().digest(paramArrayOfByte);
  }

  public static String md5Hex(InputStream paramInputStream)
  {
    return Hex.encodeHexString(md5(paramInputStream));
  }

  public static String md5Hex(String paramString)
  {
    return Hex.encodeHexString(md5(paramString));
  }

  public static String md5Hex(byte[] paramArrayOfByte)
  {
    return Hex.encodeHexString(md5(paramArrayOfByte));
  }

  public static byte[] sha(InputStream paramInputStream)
  {
    return digest(getShaDigest(), paramInputStream);
  }

  public static byte[] sha(String paramString)
  {
    return sha(getBytesUtf8(paramString));
  }

  public static byte[] sha(byte[] paramArrayOfByte)
  {
    return getShaDigest().digest(paramArrayOfByte);
  }

  public static byte[] sha256(InputStream paramInputStream)
  {
    return digest(getSha256Digest(), paramInputStream);
  }

  public static byte[] sha256(String paramString)
  {
    return sha256(getBytesUtf8(paramString));
  }

  public static byte[] sha256(byte[] paramArrayOfByte)
  {
    return getSha256Digest().digest(paramArrayOfByte);
  }

  public static String sha256Hex(InputStream paramInputStream)
  {
    return Hex.encodeHexString(sha256(paramInputStream));
  }

  public static String sha256Hex(String paramString)
  {
    return Hex.encodeHexString(sha256(paramString));
  }

  public static String sha256Hex(byte[] paramArrayOfByte)
  {
    return Hex.encodeHexString(sha256(paramArrayOfByte));
  }

  public static byte[] sha384(InputStream paramInputStream)
  {
    return digest(getSha384Digest(), paramInputStream);
  }

  public static byte[] sha384(String paramString)
  {
    return sha384(getBytesUtf8(paramString));
  }

  public static byte[] sha384(byte[] paramArrayOfByte)
  {
    return getSha384Digest().digest(paramArrayOfByte);
  }

  public static String sha384Hex(InputStream paramInputStream)
  {
    return Hex.encodeHexString(sha384(paramInputStream));
  }

  public static String sha384Hex(String paramString)
  {
    return Hex.encodeHexString(sha384(paramString));
  }

  public static String sha384Hex(byte[] paramArrayOfByte)
  {
    return Hex.encodeHexString(sha384(paramArrayOfByte));
  }

  public static byte[] sha512(InputStream paramInputStream)
  {
    return digest(getSha512Digest(), paramInputStream);
  }

  public static byte[] sha512(String paramString)
  {
    return sha512(getBytesUtf8(paramString));
  }

  public static byte[] sha512(byte[] paramArrayOfByte)
  {
    return getSha512Digest().digest(paramArrayOfByte);
  }

  public static String sha512Hex(InputStream paramInputStream)
  {
    return Hex.encodeHexString(sha512(paramInputStream));
  }

  public static String sha512Hex(String paramString)
  {
    return Hex.encodeHexString(sha512(paramString));
  }

  public static String sha512Hex(byte[] paramArrayOfByte)
  {
    return Hex.encodeHexString(sha512(paramArrayOfByte));
  }

  public static String shaHex(InputStream paramInputStream)
  {
    return Hex.encodeHexString(sha(paramInputStream));
  }

  public static String shaHex(String paramString)
  {
    return Hex.encodeHexString(sha(paramString));
  }

  public static String shaHex(byte[] paramArrayOfByte)
  {
    return Hex.encodeHexString(sha(paramArrayOfByte));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.digest.DigestUtils
 * JD-Core Version:    0.6.2
 */