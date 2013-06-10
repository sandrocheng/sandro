package org.antivirus.wipe;

import android.net.Uri;

final class q
  implements Runnable
{
  public final void run()
  {
    int i = 0;
    ai localai = WipeByApp.c;
    String[] arrayOfString = { "content://sms", "content://sms/inbox", "content://sms/sent", "content://mms/inbox", "content://mms", "content://mms-sms", "content://mms/address", "content://mms/part", "content://mms/sent", "content://mms/outbox" };
    int j = arrayOfString.length;
    while (i < j)
    {
      localai.a(Uri.parse(arrayOfString[i]));
      i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.q
 * JD-Core Version:    0.6.2
 */