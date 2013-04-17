import com.qq.jce.wup.UniAttribute;
import com.qq.jce.wup.UniPacket;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;

public final class j
{
  private static int a = 0;

  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      String str2 = i.a(localMessageDigest.digest());
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = null;
    }
  }

  private static void a(byte[] paramArrayOfByte, n paramn)
  {
    try
    {
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.decode(paramArrayOfByte);
      paramn.a = ((Integer)localUniPacket.get("iRet"));
      UniAttribute localUniAttribute = new UniAttribute();
      byte[] arrayOfByte = (byte[])localUniPacket.get("cannon");
      if (arrayOfByte != null)
      {
        localUniAttribute.setEncodeName("utf-8");
        localUniAttribute.decode(new p("xS3E7oPA%R5h=$lo".getBytes()).b((byte[])arrayOfByte));
        paramn.b = ((Integer)localUniAttribute.get("ret"));
        paramn.c = ((String)localUniAttribute.get("errorstring"));
        paramn.d = ((String)localUniAttribute.get("verifyKey"));
        localUniAttribute.get("verifyByte");
        paramn.e = ((String)localUniAttribute.get("verifyUrl"));
        paramn.f = ((String)localUniAttribute.get("sid"));
        localUniAttribute.get("accountId");
        paramn.g = ((String)localUniAttribute.get("ksid"));
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static byte[] a(long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = null;
    if (paramString4 == null);
    while (true)
    {
      return localObject;
      try
      {
        UniAttribute localUniAttribute = new UniAttribute();
        if (paramLong != 0L)
          localUniAttribute.put("uin", Long.valueOf(paramLong));
        if (paramString1 != null)
          localUniAttribute.put("un", paramString1);
        if (paramString2 != null)
          localUniAttribute.put("email", paramString2);
        if (paramString3 != null)
          localUniAttribute.put("pwd", paramString3);
        localUniAttribute.put("returnType", Byte.valueOf((byte)0));
        UniPacket localUniPacket = new UniPacket();
        localUniPacket.setEncodeName("utf-8");
        int i = a;
        a = i + 1;
        localUniPacket.setRequestId(i);
        localUniPacket.setServantName("MicroBlogServer");
        localUniPacket.setFuncName("login");
        localUniPacket.put("version", Integer.valueOf(1));
        localUniPacket.put("licence", "1234".getBytes());
        localUniPacket.put("Q-UA", "ADRQQSECURE_GA/100100&NA/NA&ADR&305016&googleNexusOne");
        localUniPacket.put("imei", paramString4);
        localUniPacket.put("ct", Byte.valueOf((byte)0));
        byte[] arrayOfByte2 = localUniAttribute.encode();
        localUniPacket.put("cannon", new p("xS3E7oPA%R5h=$lo".getBytes()).a((byte[])arrayOfByte2));
        byte[] arrayOfByte3 = localUniPacket.encode();
        arrayOfByte1 = arrayOfByte3;
        localObject = arrayOfByte1;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          byte[] arrayOfByte1 = null;
        }
      }
    }
  }

  public static byte[] a(long paramLong, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Object localObject = null;
    if (paramString3 == null);
    while (true)
    {
      return localObject;
      try
      {
        UniAttribute localUniAttribute = new UniAttribute();
        localUniAttribute.setEncodeName("utf-8");
        localUniAttribute.put("returnType", Byte.valueOf((byte)0));
        if (paramLong != 0L)
          localUniAttribute.put("uin", Long.valueOf(paramLong));
        if (paramString1 != null)
          localUniAttribute.put("un", paramString1);
        if (paramString2 != null)
          localUniAttribute.put("email", paramString2);
        if (paramString4 != null)
          localUniAttribute.put("verifyKey", paramString4);
        if (paramString5 != null)
          localUniAttribute.put("verifyCode", paramString5);
        UniPacket localUniPacket = new UniPacket();
        localUniPacket.setEncodeName("utf-8");
        int i = a;
        a = i + 1;
        localUniPacket.setRequestId(i);
        localUniPacket.setServantName("MicroBlogServer");
        localUniPacket.setFuncName("verifyCode");
        localUniPacket.put("version", Integer.valueOf(1));
        localUniPacket.put("licence", "1234".getBytes());
        localUniPacket.put("Q-UA", "ADRQQSECURE_GA/100100&NA/NA&ADR&305016&googleNexusOne");
        localUniPacket.put("imei", paramString3);
        localUniPacket.put("ct", Byte.valueOf((byte)0));
        byte[] arrayOfByte2 = localUniAttribute.encode();
        localUniPacket.put("cannon", new p("xS3E7oPA%R5h=$lo".getBytes()).a((byte[])arrayOfByte2));
        byte[] arrayOfByte3 = localUniPacket.encode();
        arrayOfByte1 = arrayOfByte3;
        localObject = arrayOfByte1;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          byte[] arrayOfByte1 = null;
        }
      }
    }
  }

  public static byte[] a(String paramString1, String paramString2, byte paramByte, String paramString3)
  {
    try
    {
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("utf-8");
      localUniAttribute.put("followType", Byte.valueOf((byte)0));
      localUniAttribute.put("accountId", paramString3);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      int i = a;
      a = i + 1;
      localUniPacket.setRequestId(i);
      localUniPacket.setServantName("MicroBlogServer");
      localUniPacket.setFuncName("followUser");
      localUniPacket.put("version", Integer.valueOf(1));
      localUniPacket.put("licence", "1234".getBytes());
      localUniPacket.put("Q-UA", "ADRQQSECURE_GA/100100&NA/NA&ADR&305016&googleNexusOne");
      localUniPacket.put("ct", Byte.valueOf((byte)0));
      if (paramString1 != null)
        localUniPacket.put("sid", paramString1);
      if (paramString2 != null)
        localUniPacket.put("ksid", paramString2);
      byte[] arrayOfByte2 = localUniAttribute.encode();
      localUniPacket.put("cannon", new p("xS3E7oPA%R5h=$lo".getBytes()).a((byte[])arrayOfByte2));
      byte[] arrayOfByte3 = localUniPacket.encode();
      arrayOfByte1 = arrayOfByte3;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static byte[] a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("utf-8");
      localUniAttribute.put("postType", Byte.valueOf((byte)0));
      localUniAttribute.put("content", paramString3);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      int i = a;
      a = i + 1;
      localUniPacket.setRequestId(i);
      localUniPacket.setServantName("MicroBlogServer");
      localUniPacket.setFuncName("postMsg");
      localUniPacket.put("version", Integer.valueOf(1));
      localUniPacket.put("licence", "1234".getBytes());
      localUniPacket.put("Q-UA", "ADRQQSECURE_GA/100100&NA/NA&ADR&305016&googleNexusOne");
      localUniPacket.put("ct", Byte.valueOf((byte)0));
      if (paramString1 != null)
        localUniPacket.put("sid", paramString1);
      if (paramString2 != null)
        localUniPacket.put("ksid", paramString2);
      byte[] arrayOfByte2 = localUniAttribute.encode();
      localUniPacket.put("cannon", new p("xS3E7oPA%R5h=$lo".getBytes()).a((byte[])arrayOfByte2));
      byte[] arrayOfByte3 = localUniPacket.encode();
      arrayOfByte1 = arrayOfByte3;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    InputStream localInputStream;
    ByteArrayOutputStream localByteArrayOutputStream;
    Object localObject;
    Exception localException2;
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      localHttpURLConnection.setRequestProperty("Method", "POST");
      localHttpURLConnection.setConnectTimeout(60000);
      localHttpURLConnection.setReadTimeout(60000);
      localHttpURLConnection.setDoOutput(true);
      OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
      localOutputStream.write(paramArrayOfByte);
      localOutputStream.close();
      if (localHttpURLConnection.getResponseCode() != 200)
        break label168;
      localInputStream = localHttpURLConnection.getInputStream();
      localByteArrayOutputStream = new ByteArrayOutputStream(1024);
      byte[] arrayOfByte1 = new byte[1024];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i <= 0)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (Exception localException1)
    {
      localObject = null;
      localException2 = localException1;
    }
    localException2.printStackTrace();
    while (true)
    {
      return localObject;
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      localObject = arrayOfByte2;
      try
      {
        localInputStream.close();
        localByteArrayOutputStream.close();
      }
      catch (Exception localException3)
      {
      }
      break;
      label168: localObject = null;
    }
  }

  public static l b(byte[] paramArrayOfByte)
  {
    l locall;
    if (paramArrayOfByte == null)
      locall = null;
    while (true)
    {
      return locall;
      locall = new l();
      a(paramArrayOfByte, locall);
    }
  }

  public static o c(byte[] paramArrayOfByte)
  {
    o localo;
    if (paramArrayOfByte == null)
      localo = null;
    while (true)
    {
      return localo;
      localo = new o();
      a(paramArrayOfByte, localo);
    }
  }

  public static m d(byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte == null)
      localObject = null;
    while (true)
    {
      return localObject;
      m localm = new m();
      try
      {
        UniPacket localUniPacket = new UniPacket();
        localUniPacket.setEncodeName("utf-8");
        localUniPacket.decode(paramArrayOfByte);
        localm.a = ((Integer)localUniPacket.get("iRet"));
        UniAttribute localUniAttribute = new UniAttribute();
        byte[] arrayOfByte = (byte[])localUniPacket.get("cannon");
        if (arrayOfByte != null)
        {
          localUniAttribute.setEncodeName("utf-8");
          localUniAttribute.decode(new p("xS3E7oPA%R5h=$lo".getBytes()).b((byte[])arrayOfByte));
          localm.b = ((Integer)localUniAttribute.get("ret"));
          if (localUniAttribute.get("msgId") == null);
          long l1;
          for (long l2 = 0L; ; l2 = l1)
          {
            Long.valueOf(l2);
            localm.c = ((String)localUniAttribute.get("errorstring"));
            localm.d = ((String)localUniAttribute.get("verifyKey"));
            localUniAttribute.get("verifyByte");
            localm.e = ((String)localUniAttribute.get("verifyUrl"));
            break;
            l1 = ((Long)localUniAttribute.get("msgId")).longValue();
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localObject = localm;
      }
    }
  }

  public static k e(byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte == null)
      localObject = null;
    while (true)
    {
      return localObject;
      k localk = new k();
      try
      {
        UniPacket localUniPacket = new UniPacket();
        localUniPacket.setEncodeName("utf-8");
        localUniPacket.decode(paramArrayOfByte);
        localk.a = ((Integer)localUniPacket.get("iRet"));
        UniAttribute localUniAttribute = new UniAttribute();
        byte[] arrayOfByte = (byte[])localUniPacket.get("cannon");
        if (arrayOfByte != null)
        {
          localUniAttribute.setEncodeName("utf-8");
          localUniAttribute.decode(new p("xS3E7oPA%R5h=$lo".getBytes()).b((byte[])arrayOfByte));
          localk.b = ((Integer)localUniAttribute.get("ret"));
          localk.c = ((String)localUniAttribute.get("errorstring"));
          localk.d = ((String)localUniAttribute.get("verifyKey"));
          localUniAttribute.get("verifyByte");
          localk.e = ((String)localUniAttribute.get("verifyUrl"));
        }
        localObject = localk;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     j
 * JD-Core Version:    0.6.2
 */