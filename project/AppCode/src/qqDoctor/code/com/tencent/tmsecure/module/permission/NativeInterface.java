package com.tencent.tmsecure.module.permission;

public final class NativeInterface
{
  static
  {
    System.loadLibrary("native-1.0.0");
  }

  public static native int dlopenAddr();

  public static native int dlsymAddr();

  public static native void test(String paramString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.NativeInterface
 * JD-Core Version:    0.6.2
 */