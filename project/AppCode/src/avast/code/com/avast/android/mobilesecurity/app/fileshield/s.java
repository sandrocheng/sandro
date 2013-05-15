package com.avast.android.mobilesecurity.app.fileshield;

final class s extends n
{
  private final String c;
  private final String d;

  public s(FileShieldService paramFileShieldService, String paramString1, String paramString2)
  {
    super(paramFileShieldService, o.c);
    if ((paramString1 == null) || (paramString2 == null))
      throw new IllegalArgumentException("Parameter(s) can't be null");
    this.c = paramString1;
    this.d = paramString2;
  }

  public String a()
  {
    return this.c;
  }

  public String c()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.s
 * JD-Core Version:    0.6.2
 */