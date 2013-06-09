package org.antivirus.wipe;

import android.net.Uri;

final class p
  implements Runnable
{
  public final void run()
  {
    int i = 0;
    ai localai = WipeByApp.c;
    String[] arrayOfString = { "content://call_log/calls" };
    int j = arrayOfString.length;
    while (i < j)
    {
      localai.a(Uri.parse(arrayOfString[i]));
      i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.p
 * JD-Core Version:    0.6.2
 */