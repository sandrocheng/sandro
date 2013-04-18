package android.a;

import android.content.Intent;
import android.telephony.SmsMessage;

public final class x
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final String e = "android.provider.Telephony.SMS_RECEIVED";
  public static final String f = "android.intent.action.DATA_SMS_RECEIVED";
  public static final String g = "android.provider.Telephony.WAP_PUSH_RECEIVED";
  public static final String h = "android.provider.Telephony.SIM_FULL";
  public static final String i = "android.provider.Telephony.SMS_REJECTED";

  private static SmsMessage[] a(Intent paramIntent)
  {
    int j = 0;
    Object[] arrayOfObject = (Object[])paramIntent.getSerializableExtra("pdus");
    byte[][] arrayOfByte1 = new byte[arrayOfObject.length][];
    for (int k = 0; k < arrayOfObject.length; k++)
      arrayOfByte1[k] = ((byte[])arrayOfObject[k]);
    byte[][] arrayOfByte2 = new byte[arrayOfByte1.length][];
    int m = arrayOfByte2.length;
    SmsMessage[] arrayOfSmsMessage = new SmsMessage[m];
    while (j < m)
    {
      arrayOfByte2[j] = arrayOfByte1[j];
      arrayOfSmsMessage[j] = SmsMessage.createFromPdu(arrayOfByte2[j]);
      j++;
    }
    return arrayOfSmsMessage;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.x
 * JD-Core Version:    0.6.2
 */