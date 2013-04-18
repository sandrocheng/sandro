package com.keniu.security.h;

import android.content.pm.ApplicationInfo;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.f.f;
import java.io.File;

public final class a
{
  public static void a(String paramString)
  {
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    String str = f.a(localMoSecurityApplication.getApplicationInfo().dataDir) + "lib/" + System.mapLibraryName(paramString);
    if (new File(str).exists())
      System.load(str);
    while (true)
    {
      return;
      System.loadLibrary(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.h.a
 * JD-Core Version:    0.6.2
 */