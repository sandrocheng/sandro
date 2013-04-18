package com.keniu.security;

import java.io.File;
import java.io.FilenameFilter;

final class h
  implements FilenameFilter
{
  h(g paramg)
  {
  }

  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith("crash_");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.h
 * JD-Core Version:    0.6.2
 */