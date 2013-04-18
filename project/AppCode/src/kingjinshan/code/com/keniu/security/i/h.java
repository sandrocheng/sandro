package com.keniu.security.i;

import java.io.File;
import java.io.FileFilter;

final class h
  implements FileFilter
{
  h(f paramf)
  {
  }

  public final boolean accept(File paramFile)
  {
    if (paramFile.isDirectory())
      paramFile.listFiles(new i(this));
    if (paramFile.getName().toLowerCase().endsWith(".apk"))
      this.a.d.e.a(this.a.d, 8, paramFile.getPath());
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.h
 * JD-Core Version:    0.6.2
 */