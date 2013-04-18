package com.keniu.security.a;

public final class i
  implements CharSequence
{
  private String a;

  public i(String paramString)
  {
    if (paramString == null);
    for (String str = ""; ; str = paramString)
    {
      this.a = str;
      return;
    }
  }

  public final char charAt(int paramInt)
  {
    return this.a.charAt(paramInt);
  }

  public final int length()
  {
    return this.a.length();
  }

  public final CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return new i(this.a.substring(paramInt1, paramInt2));
  }

  public final String toString()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.i
 * JD-Core Version:    0.6.2
 */