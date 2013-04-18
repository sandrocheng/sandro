package com.keniu.security.sync.d.e;

import android.os.StatFs;
import java.io.File;

public final class f
{
  public static final long a(File paramFile)
  {
    for (File localFile = paramFile; !localFile.exists(); localFile = localFile.getParentFile());
    StatFs localStatFs = new StatFs(localFile.getAbsolutePath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.e.f
 * JD-Core Version:    0.6.2
 */