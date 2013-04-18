package com.hoi.antivirus;

public class AntiVirusFunc
{
  static
  {
    com.keniu.security.h.a.a("syscore");
  }

  private a a(String paramString, int paramInt)
  {
    return a.a(avEngineCheckFilePrivate(paramString, paramInt));
  }

  private static void a()
  {
    new AntiVirusFunc().calchash("/sdcard/test.apk");
  }

  private native String calchash(String paramString);

  public final String a(String paramString)
  {
    try
    {
      str = calchash(paramString);
      if (str == null)
        str = "";
      return str;
    }
    catch (Exception localException)
    {
      while (true)
        String str = "";
    }
  }

  public native Object avEngineCheckFile(String paramString, int paramInt);

  public native byte[] avEngineCheckFilePrivate(String paramString, int paramInt);

  public native int avEngineClose(int paramInt);

  public native int avEngineLoad(String paramString1, String paramString2, int paramInt);

  public native String calchashCk(String paramString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.antivirus.AntiVirusFunc
 * JD-Core Version:    0.6.2
 */