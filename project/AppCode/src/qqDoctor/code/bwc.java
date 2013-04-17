import android.content.Intent;
import android.text.TextUtils;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import java.io.ByteArrayInputStream;

final class bwc
  implements bui
{
  private Intent a;
  private bwc.a b;

  public bwc(Intent paramIntent)
  {
    this.a = new Intent(paramIntent);
  }

  private static int a(char paramChar)
  {
    int i;
    if ((paramChar >= '0') && (paramChar <= '9'))
      i = paramChar - '0';
    while (true)
    {
      return i;
      if ((paramChar >= 'A') && (paramChar <= 'F'))
      {
        i = 10 + (paramChar - 'A');
      }
      else
      {
        if ((paramChar < 'a') || (paramChar > 'f'))
          break;
        i = 10 + (paramChar - 'a');
      }
    }
    throw new RuntimeException("invalid hex char '" + paramChar + "'");
  }

  private boolean a(ByteArrayInputStream paramByteArrayInputStream)
  {
    paramByteArrayInputStream.reset();
    while (true)
    {
      if (paramByteArrayInputStream.available() <= 0)
        return TextUtils.isEmpty(this.b.b);
      String str1 = f(paramByteArrayInputStream);
      if ("0c".equals(str1))
      {
        String str3 = e(paramByteArrayInputStream);
        String str4 = "http://" + new String(a(str3));
        this.b.a = str4;
      }
      else if ("01".equals(str1))
      {
        String str2 = new String(a(e(paramByteArrayInputStream)));
        this.b.b = str2;
      }
    }
  }

  private static byte[] a(String paramString)
  {
    byte[] arrayOfByte;
    if (paramString == null)
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      int i = paramString.length();
      arrayOfByte = new byte[i / 2];
      for (int j = 0; j < i; j += 2)
        arrayOfByte[(j / 2)] = ((byte)(a(paramString.charAt(j)) << 4 | a(paramString.charAt(j + 1))));
    }
  }

  private boolean b(ByteArrayInputStream paramByteArrayInputStream)
  {
    paramByteArrayInputStream.reset();
    while (true)
    {
      if (paramByteArrayInputStream.available() <= 0)
        return TextUtils.isEmpty(this.b.b);
      String str = new String(a(e(paramByteArrayInputStream)));
      this.b.b = str;
    }
  }

  private boolean c(ByteArrayInputStream paramByteArrayInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = "";
    paramByteArrayInputStream.reset();
    while (true)
    {
      if (paramByteArrayInputStream.available() <= 0)
      {
        if (TextUtils.isEmpty(this.b.b))
          this.b.b = localStringBuilder.toString();
        return TextUtils.isEmpty(this.b.b);
      }
      String str1 = f(paramByteArrayInputStream);
      if (str1.equals("03"))
      {
        String str2 = new String(a(d(paramByteArrayInputStream)));
        localStringBuilder.append(str2);
        if (((String)localObject).equals("0c"))
          this.b.a = ("http://" + str2);
        else if (((String)localObject).equals("01"))
          this.b.b = str2;
      }
      else
      {
        localObject = str1;
      }
    }
  }

  private static String d(ByteArrayInputStream paramByteArrayInputStream)
  {
    String str1;
    if (paramByteArrayInputStream == null)
    {
      str1 = null;
      return str1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      String str2;
      if (paramByteArrayInputStream.available() > 0)
      {
        str2 = f(paramByteArrayInputStream);
        if (!str2.equals("00"));
      }
      else
      {
        str1 = localStringBuilder.toString();
        break;
      }
      localStringBuilder.append(str2);
    }
  }

  private static String e(ByteArrayInputStream paramByteArrayInputStream)
  {
    String str2;
    if (paramByteArrayInputStream == null)
    {
      str2 = null;
      return str2;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    while ((!f(paramByteArrayInputStream).equals("03")) && (paramByteArrayInputStream.available() > 0));
    while (true)
    {
      String str1 = f(paramByteArrayInputStream);
      if ((str1.equals("00")) || (paramByteArrayInputStream.available() <= 0))
      {
        str2 = localStringBuilder.toString();
        break;
      }
      localStringBuilder.append(str1);
    }
  }

  private static String f(ByteArrayInputStream paramByteArrayInputStream)
  {
    if (paramByteArrayInputStream == null);
    StringBuilder localStringBuilder;
    for (String str = null; ; str = localStringBuilder.toString().toLowerCase())
    {
      return str;
      int i = paramByteArrayInputStream.read();
      localStringBuilder = new StringBuilder(2);
      localStringBuilder.append("0123456789abcdef".charAt(0xF & i >> 4));
      localStringBuilder.append("0123456789abcdef".charAt(i & 0xF));
    }
  }

  public final String a()
  {
    bwc.a locala;
    if (this.b != null)
      locala = this.b;
    for (String str = locala.b + locala.a; ; str = null)
      return str;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    this.b = new bwc.a();
    if ((!a(localByteArrayInputStream)) && (!b(localByteArrayInputStream)) && (!c(localByteArrayInputStream)))
      this.b = null;
  }

  public final String b()
  {
    if (this.b != null);
    for (String str = this.b.a; ; str = null)
      return str;
  }

  public final SmsEntity c()
  {
    byte[] arrayOfByte = this.a.getByteArrayExtra("data");
    Object localObject = null;
    if (arrayOfByte != null)
    {
      int i = SDKUtil.getSDKVersion();
      localObject = null;
      if (i > 3)
      {
        a(arrayOfByte);
        SmsEntity localSmsEntity = new SmsEntity();
        bwc.a locala = this.b;
        String str = null;
        if (locala != null)
          str = this.b.a;
        localSmsEntity.phonenum = str;
        localSmsEntity.body = a();
        localSmsEntity.type = 1;
        localSmsEntity.protocolType = 2;
        localSmsEntity.raw = this.a;
        localObject = localSmsEntity;
      }
    }
    return localObject;
  }

  static final class a
  {
    String a;
    String b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwc
 * JD-Core Version:    0.6.2
 */