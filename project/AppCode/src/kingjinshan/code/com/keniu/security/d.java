package com.keniu.security;

import android.content.Context;
import com.keniu.security.f.f;
import java.io.File;

public final class d
{
  static String[] a = { "-shm", "-wal", "-journal" };

  static void a(Context paramContext)
  {
    String str1 = f.c();
    for (int i = 0; i < a.length; i++)
    {
      File localFile1 = new File(str1 + a[i]);
      if (localFile1.exists())
        localFile1.delete();
    }
    String str2 = paramContext.getDatabasePath("mosecurity_traffic.db").getAbsolutePath();
    for (int j = 0; j < a.length; j++)
    {
      File localFile2 = new File(str2 + a[j]);
      if (localFile2.exists())
        localFile2.delete();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.d
 * JD-Core Version:    0.6.2
 */