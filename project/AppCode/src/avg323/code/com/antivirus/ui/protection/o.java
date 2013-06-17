package com.antivirus.ui.protection;

import java.io.File;
import java.io.FileFilter;

class o
  implements FileFilter
{
  o(n paramn)
  {
  }

  public boolean accept(File paramFile)
  {
    if ((paramFile.getAbsolutePath().startsWith("/sys")) || (paramFile.getAbsolutePath().startsWith("/dev")) || (paramFile.getAbsolutePath().startsWith("/etc")) || (paramFile.getAbsolutePath().startsWith("/proc")) || (paramFile.getAbsolutePath().equals("/d")));
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.o
 * JD-Core Version:    0.6.2
 */