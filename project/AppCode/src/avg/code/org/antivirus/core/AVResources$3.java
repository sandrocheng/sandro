package org.antivirus.core;

import android.content.Context;
import android.content.res.Resources;
import java.io.InputStream;
import java.util.concurrent.Callable;

final class AVResources$3
  implements Callable
{
  AVResources$3(Context paramContext, int paramInt)
  {
  }

  public final InputStream call()
  {
    return this.a.getApplicationContext().getResources().openRawResource(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.AVResources.3
 * JD-Core Version:    0.6.2
 */