package com.avast.android.mobilesecurity.app.fileshield;

final class l extends n
{
  private final String c;

  public l(FileShieldService paramFileShieldService, String paramString)
  {
    super(paramFileShieldService, o.a);
    if (paramString == null)
      throw new IllegalArgumentException("Parameter can't be null");
    this.c = paramString;
  }

  public String a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.l
 * JD-Core Version:    0.6.2
 */