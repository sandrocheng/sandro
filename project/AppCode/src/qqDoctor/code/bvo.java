import android.content.Intent;
import android.os.Bundle;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

final class bvo
  implements bui
{
  private bui a;
  private Intent b;

  public bvo(Intent paramIntent)
  {
    this.b = new Intent(paramIntent);
  }

  public final String a()
  {
    return this.a.a();
  }

  public final void a(byte[] paramArrayOfByte)
  {
    if (this.a == null)
      if (SDKUtil.getSDKVersion() <= 3)
        break label36;
    label36: for (this.a = new bvo.b(); ; this.a = new bvo.a())
    {
      this.a.a(paramArrayOfByte);
      return;
    }
  }

  public final String b()
  {
    return this.a.b();
  }

  public final SmsEntity c()
  {
    Bundle localBundle = this.b.getExtras();
    if (localBundle != null);
    for (Object[] arrayOfObject = (Object[])localBundle.get("pdus"); ; arrayOfObject = null)
    {
      SmsEntity localSmsEntity = null;
      if (arrayOfObject != null)
      {
        int i = arrayOfObject.length;
        localSmsEntity = null;
        if (i != 0);
      }
      else
      {
        return localSmsEntity;
      }
      StringBuffer localStringBuffer = new StringBuffer();
      int j = 0;
      Object localObject1 = null;
      if (j >= arrayOfObject.length);
      do
      {
        localSmsEntity = null;
        if (localObject1 == null)
          break;
        localSmsEntity = new SmsEntity();
        localSmsEntity.phonenum = localObject1;
        localSmsEntity.body = localStringBuffer.toString();
        localSmsEntity.type = 1;
        localSmsEntity.protocolType = 0;
        localSmsEntity.raw = this.b;
        break;
        if (arrayOfObject[j] == null)
          break label185;
        a((byte[])arrayOfObject[j]);
      }
      while (this.a.a() == null);
      localStringBuffer.append(this.a.a());
      if (localObject1 == null);
      label185: for (Object localObject2 = this.a.b(); ; localObject2 = localObject1)
      {
        j++;
        localObject1 = localObject2;
        break;
      }
    }
  }

  static final class a
    implements bui
  {
    private android.telephony.gsm.SmsMessage a;

    public final String a()
    {
      if (this.a != null);
      for (String str = this.a.getMessageBody(); ; str = null)
        return str;
    }

    public final void a(byte[] paramArrayOfByte)
    {
      try
      {
        this.a = android.telephony.gsm.SmsMessage.createFromPdu(paramArrayOfByte);
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          this.a = null;
      }
    }

    public final String b()
    {
      if (this.a != null);
      for (String str = this.a.getOriginatingAddress(); ; str = null)
        return str;
    }

    public final SmsEntity c()
    {
      return null;
    }
  }

  static final class b
    implements bui
  {
    private static Method b;
    private static Constructor<android.telephony.SmsMessage> c;
    private android.telephony.SmsMessage a;

    public final String a()
    {
      if (this.a != null);
      for (String str = this.a.getMessageBody(); ; str = null)
        return str;
    }

    public final void a(byte[] paramArrayOfByte)
    {
      try
      {
        this.a = android.telephony.SmsMessage.createFromPdu(paramArrayOfByte);
        this.a.getMessageBody();
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          try
          {
            if ((b == null) || (c == null))
            {
              Method localMethod = Class.forName("com.android.internal.telephony.gsm.SmsMessage").getMethod("createFromPdu", new Class[] { [B.class });
              b = localMethod;
              localMethod.setAccessible(true);
              Constructor localConstructor1 = android.telephony.SmsMessage.class.getDeclaredConstructor(new Class[] { Class.forName("com.android.internal.telephony.SmsMessageBase") });
              c = localConstructor1;
              localConstructor1.setAccessible(true);
            }
            Constructor localConstructor2 = c;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = b.invoke(null, new Object[] { paramArrayOfByte });
            this.a = ((android.telephony.SmsMessage)localConstructor2.newInstance(arrayOfObject));
            this.a.getMessageBody();
          }
          catch (Exception localException)
          {
            this.a = null;
          }
      }
    }

    public final String b()
    {
      if (this.a != null);
      for (String str = this.a.getOriginatingAddress(); ; str = null)
        return str;
    }

    public final SmsEntity c()
    {
      return null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvo
 * JD-Core Version:    0.6.2
 */