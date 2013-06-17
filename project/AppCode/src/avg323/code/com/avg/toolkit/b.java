package com.avg.toolkit;

import android.content.res.Resources.NotFoundException;
import java.io.InputStream;
import java.util.concurrent.Callable;

final class b
  implements Callable
{
  b(ClassLoader paramClassLoader, String paramString1, String paramString2)
  {
  }

  public InputStream a()
  {
    InputStream localInputStream = this.a.getResourceAsStream(this.b);
    if (localInputStream == null)
      throw new Resources.NotFoundException(this.c);
    return localInputStream;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b
 * JD-Core Version:    0.6.2
 */