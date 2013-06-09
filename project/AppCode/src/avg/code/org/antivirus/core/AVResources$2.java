package org.antivirus.core;

import android.content.Context;
import android.content.res.Resources;
import java.io.InputStream;
import java.util.concurrent.Callable;

final class AVResources$2
  implements Callable
{
  AVResources$2(Context paramContext, int paramInt)
  {
  }

  public final InputStream call()
  {
    return this.a.getApplicationContext().getResources().openRawResource(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.AVResources.2
 * JD-Core Version:    0.6.2
 */