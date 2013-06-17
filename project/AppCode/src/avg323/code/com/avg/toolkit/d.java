package com.avg.toolkit;

import android.content.Context;
import android.content.res.Resources;
import java.io.InputStream;
import java.util.concurrent.Callable;

final class d
  implements Callable
{
  d(Context paramContext, int paramInt)
  {
  }

  public InputStream a()
  {
    return this.a.getApplicationContext().getResources().openRawResource(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.d
 * JD-Core Version:    0.6.2
 */