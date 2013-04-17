import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import com.tencent.lbsapi.QLBSService;
import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.antitheft.IAntitheftTips;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.SMSUtil;
import java.nio.ByteBuffer;

public final class btp extends BaseManager
{
  private static final char[] f = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private Context a;
  private IAntitheftTips b;
  private btt c;
  private QLBSService d;
  private Handler e = null;

  private static byte a(char paramChar)
  {
    byte b1;
    if ((paramChar >= '0') && (paramChar <= '9'))
      b1 = (byte)(paramChar - '0');
    while (true)
    {
      return b1;
      if ((paramChar >= 'a') && (paramChar <= 'f'))
        b1 = (byte)(10 + (paramChar - 'a'));
      else if ((paramChar >= 'A') && (paramChar <= 'F'))
        b1 = (byte)(10 + (paramChar - 'A'));
      else
        b1 = 0;
    }
  }

  private btp.a a(StringBuilder paramStringBuilder, btp.a parama)
  {
    parama.b = -1;
    parama.c = true;
    int i = paramStringBuilder.indexOf("QSAT#");
    if (i < 0);
    while (true)
    {
      return parama;
      int j = i + 5;
      int k = paramStringBuilder.indexOf("[tencent]");
      String str1;
      label49: Short localShort1;
      String str2;
      Object localObject;
      byte[] arrayOfByte1;
      if (k <= 0)
      {
        str1 = paramStringBuilder.substring(j);
        int m = str1.indexOf("#");
        localShort1 = Short.valueOf(Short.parseShort(str1.substring(0, m)));
        str2 = str1.substring(m + 1);
        if ((str2 != null) && (!str2.equals("")))
          break label271;
        localObject = new byte[0];
        arrayOfByte1 = d();
      }
      try
      {
        byte[] arrayOfByte4 = TccCryptor.decrypt(this.a, (byte[])localObject, arrayOfByte1);
        arrayOfByte2 = arrayOfByte4;
        if (arrayOfByte2 == null)
          continue;
        ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte2);
        Short localShort2 = Short.valueOf(localByteBuffer.getShort());
        long l1 = localByteBuffer.getLong();
        byte[] arrayOfByte3 = new byte[16];
        localByteBuffer.get(arrayOfByte3, 0, arrayOfByte3.length);
        String str3 = new String(arrayOfByte3).trim();
        parama.d = localByteBuffer.getLong();
        String str4 = PhoneInfoUtil.getIMEI(this.a);
        long l2 = Long.parseLong(this.c.a.a("qq_num", ""));
        if ((localShort2 != localShort1) || (!str3.equals(str4)) || (l1 != l2))
        {
          parama.b = -1;
          continue;
          str1 = paramStringBuilder.substring(j, k);
          break label49;
          label271: byte[] arrayOfByte5 = new byte[str2.length() / 2];
          for (int n = 0; ; n++)
          {
            if (n >= arrayOfByte5.length)
            {
              localObject = arrayOfByte5;
              break;
            }
            char c1 = str2.charAt(n << 1);
            char c2 = str2.charAt(1 + (n << 1));
            arrayOfByte5[n] = ((byte)((a(c1) << 4) + a(c2)));
          }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          localOutOfMemoryError.printStackTrace();
          byte[] arrayOfByte2 = null;
        }
        parama.b = -1;
        switch (localShort1.shortValue())
        {
        case 4:
        case 5:
        default:
        case 1:
        case 6:
        case 2:
        case 3:
        }
      }
      continue;
      parama.b = 0;
      continue;
      parama.b = 0;
      continue;
      parama.b = 1;
      continue;
      parama.b = 2;
    }
  }

  private static StringBuilder a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder;
      int j = paramArrayOfByte[i];
      char[] arrayOfChar = new char[2];
      arrayOfChar[1] = f[(j & 0xF)];
      int k = (byte)(j >>> 4);
      arrayOfChar[0] = f[(k & 0xF)];
      localStringBuilder.append(new String(arrayOfChar));
    }
  }

  private void a(btp.a parama, short paramShort, double paramDouble1, double paramDouble2)
  {
    int i = parama.b;
    short s = 0;
    switch (i)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      a(parama, s, paramShort, paramDouble1, paramDouble2);
      return;
      s = 1;
      continue;
      s = 2;
      continue;
      s = 3;
    }
  }

  private boolean a(btp.a parama, short paramShort1, short paramShort2, double paramDouble1, double paramDouble2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("QSAT#");
    localStringBuilder.append(paramShort1);
    localStringBuilder.append('#');
    ByteBuffer localByteBuffer = ByteBuffer.allocate(52);
    localByteBuffer.putShort(paramShort1);
    localByteBuffer.putShort(paramShort2);
    localByteBuffer.putLong(Long.parseLong(this.c.a.a("qq_num", "")));
    String str1 = PhoneInfoUtil.getIMEI(this.a);
    if (str1 == null)
      str1 = "";
    byte[] arrayOfByte1 = new byte[16];
    byte[] arrayOfByte2 = str1.getBytes();
    int i = 0;
    if (i >= arrayOfByte1.length)
    {
      localByteBuffer.put(arrayOfByte1);
      localByteBuffer.putLong(parama.d);
      localByteBuffer.putDouble(paramDouble1);
      localByteBuffer.putDouble(paramDouble2);
      byte[] arrayOfByte3 = d();
      byte[] arrayOfByte4 = localByteBuffer.array();
      localStringBuilder.append(a(TccCryptor.encrypt(this.a, arrayOfByte4, arrayOfByte3)));
      String str2 = new String(localStringBuilder);
      SMSUtil.sendSMS(parama.a, str2, this.a);
      return true;
    }
    if (i > -1 + arrayOfByte2.length)
      arrayOfByte1[i] = 0;
    while (true)
    {
      i++;
      break;
      arrayOfByte1[i] = arrayOfByte2[i];
    }
  }

  private boolean c()
  {
    boolean bool = true;
    String str = Settings.Secure.getString(this.a.getContentResolver(), "location_providers_allowed");
    if ((str != null) && (str.contains("gps")));
    while (true)
    {
      return bool;
      Intent localIntent = new Intent();
      localIntent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
      localIntent.addCategory("android.intent.category.ALTERNATIVE");
      localIntent.setData(Uri.parse("custom:3"));
      try
      {
        PendingIntent.getBroadcast(this.a, 0, localIntent, 0).send();
      }
      catch (PendingIntent.CanceledException localCanceledException)
      {
        localCanceledException.getMessage();
        bool = false;
      }
    }
  }

  private static byte[] d()
  {
    byte[] arrayOfByte = new byte[13];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfByte.length)
        return arrayOfByte;
      arrayOfByte[i] = ((byte)"%#!*^().,ljhd".charAt(i));
    }
  }

  public final btt a()
  {
    return this.c;
  }

  public final boolean a(IAntitheftTips paramIAntitheftTips, String paramString1, String paramString2)
  {
    String str1 = this.c.a.a("qq_num", "");
    if ((str1 != null) && (!"".equals(str1)));
    boolean bool;
    for (int i = 1; ; i = 0)
    {
      bool = false;
      if (paramIAntitheftTips != null)
      {
        bool = false;
        if (paramString1 != null)
        {
          bool = false;
          if (paramString2 != null)
          {
            if (i != 0)
              break;
            String str5 = this.c.a(true);
            bool = false;
            if (str5 != null)
            {
              String str6 = this.c.a.a("helper", null);
              bool = false;
              if (str6 != null)
                break;
            }
          }
        }
      }
      label102: return bool;
    }
    this.b = paramIAntitheftTips;
    String str2 = this.c.a.a("server_num", "");
    if ((str2 != null) && (str2.compareTo(paramString1) == 0));
    btp.a locala1;
    StringBuilder localStringBuilder;
    int m;
    btp.a locala2;
    for (int j = 1; ; j = 0)
    {
      locala1 = new btp.a();
      locala1.c = false;
      localStringBuilder = new StringBuilder(paramString2);
      if ((j == 0) || (i == 0))
        break label292;
      locala1 = a(localStringBuilder, locala1);
      m = -1;
      if (locala1.b != -1)
        break label430;
      locala2 = locala1;
      label212: bool = false;
      if (locala2 == null)
        break;
      int n = locala2.b;
      bool = false;
      if (n == -1)
        break;
      switch (locala2.b)
      {
      default:
        label280: bool = true;
        break label102;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
    }
    label292: int k = localStringBuilder.indexOf("#", 1);
    String str4;
    if (k > 0)
    {
      str4 = localStringBuilder.substring(0, k + 1);
      if (str4.equalsIgnoreCase("#qqdeleteall#"))
      {
        localStringBuilder.delete(0, 13);
        m = 0;
      }
    }
    while (true)
    {
      locala1.b = m;
      break;
      if (str4.equalsIgnoreCase("#qqlocate#"))
      {
        localStringBuilder.delete(0, 10);
        m = 2;
      }
      else if (str4.equalsIgnoreCase("#qqlock#"))
      {
        localStringBuilder.delete(0, 8);
        m = 1;
      }
      else
      {
        if (str4.equalsIgnoreCase("#qqpin#"))
        {
          localStringBuilder.delete(0, 7);
          m = 3;
          continue;
          label430: if (m == 3)
          {
            String str3 = this.c.a.a("helper", null);
            if ((str3 != null) && (localStringBuilder.toString().equals(str3)))
            {
              locala2 = null;
              break label212;
            }
            locala1.b = 5;
            locala2 = locala1;
            break label212;
          }
          if (j != 0)
          {
            locala2 = locala1;
            break label212;
          }
          if ((localStringBuilder.toString().equals(this.c.a(true))) || (localStringBuilder.toString().equals(this.c.a(false))))
          {
            locala2 = locala1;
            break label212;
          }
          locala1.b = 4;
          locala2 = locala1;
          break label212;
          if (!locala2.c)
            SMSUtil.sendSMS(locala2.a, this.b.tips4DeletingData(), this.a);
          while (true)
          {
            new Thread(new btr(this, locala2)).start();
            break;
            a(locala2, (short)2, 0.0D, 0.0D);
          }
          Intent localIntent = this.b.getLockPhoneIntent();
          localIntent.setFlags(0x10000000 | localIntent.getFlags());
          this.a.startActivity(localIntent);
          if (!locala2.c)
          {
            SMSUtil.sendSMS(locala2.a, this.b.tips4LockPhoneSuccess(), this.a);
            break label280;
          }
          a(locala2, (short)0, 0.0D, 0.0D);
          break label280;
          int i1 = locala2.b;
          Message localMessage = this.e.obtainMessage(i1);
          localMessage.obj = locala2;
          this.e.sendMessage(localMessage);
          break label280;
          SMSUtil.sendSMS(locala2.a, this.b.tips4GetPasswordSuccess(), this.a);
          break label280;
          SMSUtil.sendSMS(locala2.a, this.b.tips4PasswordError(), this.a);
          break label280;
          SMSUtil.sendSMS(locala2.a, this.b.tips4GetPasswordFailed(), this.a);
          break label280;
        }
        m = -1;
      }
    }
  }

  public final void b()
  {
    a(new btp.a(), (short)5, (short)0, 0.0D, 0.0D);
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.c = new btt();
    this.e = new btq(this);
  }

  final class a
  {
    public int b = -1;
    public boolean c = false;
    public long d = -1L;

    public a()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btp
 * JD-Core Version:    0.6.2
 */