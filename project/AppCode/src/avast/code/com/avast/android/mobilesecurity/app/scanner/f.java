package com.avast.android.mobilesecurity.app.scanner;

import android.content.ContentResolver;
import android.content.Context;
import android.os.AsyncTask;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.d;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.t;
import java.io.File;

public class f extends AsyncTask
{
  private Context a;
  private t b;

  public f(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((t)ad.a(this.a, t.class));
  }

  protected Void a(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        String str = paramArrayOfString[j];
        try
        {
          File localFile = new File(str);
          if ((localFile.delete()) || (!localFile.exists()))
          {
            this.b.c(-1 + this.b.as());
            this.a.getContentResolver().delete(q.a(), "name = ?", new String[] { str });
            i.a(this.a, null, null, str, d.c);
          }
          j++;
        }
        catch (SecurityException localSecurityException)
        {
          while (true)
            m.b("Cannot delete file [" + str + "] because of " + localSecurityException.getMessage(), localSecurityException);
        }
      }
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.f
 * JD-Core Version:    0.6.2
 */