package org.antivirus.wipe;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import org.antivirus.core.Logger;

final class o
  implements Runnable
{
  public final void run()
  {
    ai localai = WipeByApp.c;
    try
    {
      localContentResolver = localai.a.getContentResolver();
      int i = Integer.parseInt(Build.VERSION.SDK);
      if (i > 11)
        try
        {
          localContentResolver.delete(Uri.parse("content://com.android.browser/bookmarks"), null, null);
          return;
        }
        catch (Exception localException2)
        {
          while (true)
            Logger.log(localException2);
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        ContentResolver localContentResolver;
        Logger.log(localException1);
        continue;
        localContentResolver.delete(Uri.parse("content://browser/bookmarks"), "bookmark=?", new String[] { "1" });
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.o
 * JD-Core Version:    0.6.2
 */