import android.content.Intent;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.Arrays;
import java.util.List;

final class bve
{
  private bui a;

  public final void a(Intent paramIntent)
  {
    label135: label215: 
    while (true)
    {
      String str1;
      String str2;
      String[] arrayOfString1;
      try
      {
        str1 = paramIntent.getAction();
        str2 = paramIntent.getType();
        if (str1 == null)
          return;
        arrayOfString1 = new String[] { "android.provider.Telephony.SMS_RECEIVED", "android.provider.Telephony.SMS_RECEIVED2", "android.provider.Telephony.GSM_SMS_RECEIVED" };
        if (arrayOfString1.length > 1)
        {
          bool1 = Arrays.asList(arrayOfString1).contains(str1);
          if (!bool1)
            break label99;
          this.a = new bvo(paramIntent);
          continue;
        }
      }
      finally
      {
      }
      boolean bool1 = arrayOfString1[0].equals(str1);
      continue;
      label99: if (str2 != null)
      {
        String[] arrayOfString2 = { "android.provider.Telephony.WAP_PUSH_RECEIVED" };
        boolean bool2;
        String[] arrayOfString3;
        if (arrayOfString2.length > 1)
        {
          bool2 = Arrays.asList(arrayOfString2).contains(str1);
          if (!bool2)
            break label295;
          arrayOfString3 = new String[] { "application/vnd.wap.sic", "application/vnd.wap.slc", "application/vnd.wap.coc" };
          if (arrayOfString3.length <= 1)
            break label215;
        }
        for (boolean bool3 = Arrays.asList(arrayOfString3).contains(str2); ; bool3 = arrayOfString3[0].equals(str2))
        {
          if (!bool3)
            break label229;
          this.a = new bwc(paramIntent);
          break;
          bool2 = arrayOfString2[0].equals(str1);
          break label135;
        }
        label229: String[] arrayOfString4 = { "application/vnd.wap.mms-message" };
        if (arrayOfString4.length > 1);
        for (boolean bool4 = Arrays.asList(arrayOfString4).contains(str2); ; bool4 = arrayOfString4[0].equals(str2))
        {
          if (!bool4)
            break label293;
          this.a = new bvd(paramIntent);
          break;
        }
      }
      else
      {
        this.a = null;
      }
    }
  }

  public final boolean a()
  {
    try
    {
      bui localbui = this.a;
      if (localbui != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final SmsEntity b()
  {
    try
    {
      bui localbui = this.a;
      SmsEntity localSmsEntity = null;
      if (localbui != null)
      {
        localSmsEntity = this.a.c();
        this.a = null;
      }
      return localSmsEntity;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bve
 * JD-Core Version:    0.6.2
 */