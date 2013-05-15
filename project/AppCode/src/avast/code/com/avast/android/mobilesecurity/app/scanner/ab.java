package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.avast.android.mobilesecurity.engine.d;
import com.avast.android.mobilesecurity.engine.i;

class ab extends AsyncTask
{
  private Context a;

  private ab(Context paramContext)
  {
    this.a = paramContext;
  }

  protected Void a(ae[] paramArrayOfae)
  {
    ae localae = paramArrayOfae[0];
    if (TextUtils.isEmpty(localae.b))
      i.a(this.a, null, null, localae.c, d.b);
    while (true)
    {
      return null;
      i.a(this.a, null, localae.b, null, d.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ab
 * JD-Core Version:    0.6.2
 */