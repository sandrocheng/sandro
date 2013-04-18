package com.keniu.security.i;

import java.io.File;
import java.io.FileFilter;

final class i
  implements FileFilter
{
  i(h paramh)
  {
  }

  public final boolean accept(File paramFile)
  {
    if ((!paramFile.isDirectory()) && (paramFile.getName().toLowerCase().endsWith(".apk")))
      this.a.a.d.e.a(this.a.a.d, 8, paramFile.getPath());
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.i
 * JD-Core Version:    0.6.2
 */