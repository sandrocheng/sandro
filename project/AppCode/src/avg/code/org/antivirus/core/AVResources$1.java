package org.antivirus.core;

import android.content.res.Resources.NotFoundException;
import java.io.InputStream;
import java.util.concurrent.Callable;

final class AVResources$1
  implements Callable
{
  AVResources$1(ClassLoader paramClassLoader, String paramString1, String paramString2)
  {
  }

  public final InputStream call()
  {
    InputStream localInputStream = this.a.getResourceAsStream(this.b);
    if (localInputStream == null)
      throw new Resources.NotFoundException(this.c);
    return localInputStream;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.AVResources.1
 * JD-Core Version:    0.6.2
 */