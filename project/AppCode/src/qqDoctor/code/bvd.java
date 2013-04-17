import android.content.Intent;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;
import com.google.android.mms.pdu.PduParser;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bvd
  implements bui
{
  private Intent a;
  private GenericPdu b;

  public bvd(Intent paramIntent)
  {
    this.a = new Intent(paramIntent);
  }

  public final String a()
  {
    return "";
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.b = new PduParser(paramArrayOfByte).parse();
  }

  public final String b()
  {
    GenericPdu localGenericPdu = this.b;
    String str = null;
    EncodedStringValue localEncodedStringValue;
    if (localGenericPdu != null)
    {
      localEncodedStringValue = this.b.getFrom();
      str = null;
      if (localEncodedStringValue != null)
        break label27;
    }
    while (true)
    {
      return str;
      label27: str = localEncodedStringValue.getString();
    }
  }

  public final SmsEntity c()
  {
    this.b = new PduParser(this.a.getByteArrayExtra("data")).parse();
    GenericPdu localGenericPdu1 = this.b;
    Object localObject = null;
    SmsEntity localSmsEntity;
    String str;
    EncodedStringValue localEncodedStringValue;
    if (localGenericPdu1 != null)
    {
      boolean bool = this.b instanceof NotificationInd;
      localObject = null;
      if (bool)
      {
        localSmsEntity = new SmsEntity();
        localSmsEntity.date = System.currentTimeMillis();
        localSmsEntity.body = "";
        GenericPdu localGenericPdu2 = this.b;
        str = null;
        if (localGenericPdu2 != null)
        {
          localEncodedStringValue = this.b.getFrom();
          str = null;
          if (localEncodedStringValue != null)
            break label169;
        }
      }
    }
    while (true)
    {
      localSmsEntity.phonenum = str;
      localSmsEntity.protocolType = 1;
      localSmsEntity.raw = this.a;
      localSmsEntity.read = 0;
      localSmsEntity.type = 1;
      localSmsEntity.mmsData = new MmsData();
      localSmsEntity.mmsData.a((NotificationInd)this.b);
      localObject = localSmsEntity;
      return localObject;
      label169: str = localEncodedStringValue.getString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvd
 * JD-Core Version:    0.6.2
 */