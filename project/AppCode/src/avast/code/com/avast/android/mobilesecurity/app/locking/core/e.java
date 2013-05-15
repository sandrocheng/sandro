package com.avast.android.mobilesecurity.app.locking.core;

import android.content.Context;
import android.os.AsyncTask;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.m;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class e extends AsyncTask
{
  private final Pattern a = Pattern.compile("open\\s*log.*/dev/log/main.*[Nn]o\\s*such\\s*(file|directory)");
  private Context b;

  public e(Context paramContext)
  {
    this.b = paramContext;
  }

  protected Void a(InputStream[] paramArrayOfInputStream)
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramArrayOfInputStream[0]));
      String str;
      do
      {
        str = localBufferedReader.readLine();
        if ((str == null) || (isCancelled()))
          break;
        m.c(str);
      }
      while ((!str.contains("/dev/log/main")) || (!this.a.matcher(str).find()));
      ((ae)ad.a(this.b, ae.class)).a(false);
      m.c("setting logcat as not available");
      label89: return null;
    }
    catch (IOException localIOException)
    {
      break label89;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.e
 * JD-Core Version:    0.6.2
 */