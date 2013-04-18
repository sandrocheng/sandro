package com.jxphone.mosecurity.d;

import java.io.File;
import java.io.FilenameFilter;

final class q
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.matches(".+\\.(jpg|JPG|jpeg|JPEG|3gp|3GP)$");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.q
 * JD-Core Version:    0.6.2
 */