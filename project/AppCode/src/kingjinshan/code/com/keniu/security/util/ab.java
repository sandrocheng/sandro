package com.keniu.security.util;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public final class ab
{
  static final int a = -1;

  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  private static long b()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  private static long c()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount();
  }

  private static long d()
  {
    StatFs localStatFs;
    if (a())
      localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    for (long l = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks(); ; l = -1L)
      return l;
  }

  private static long e()
  {
    StatFs localStatFs;
    if (a())
      localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    for (long l = localStatFs.getBlockSize() * localStatFs.getBlockCount(); ; l = -1L)
      return l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ab
 * JD-Core Version:    0.6.2
 */