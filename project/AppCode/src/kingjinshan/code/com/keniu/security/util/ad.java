package com.keniu.security.util;

public final class ad
{
  private static String a(CharSequence paramCharSequence)
  {
    return String.format("<b>%s</b>", new Object[] { paramCharSequence });
  }

  public static String a(CharSequence paramCharSequence, ae paramae)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramae.i;
    arrayOfObject[1] = paramCharSequence;
    return String.format("<font color=\"%s\">%s</font>", arrayOfObject);
  }

  private static String a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return String.format("%s<br/>%s", new Object[] { paramCharSequence1, paramCharSequence2 });
  }

  private static String b(CharSequence paramCharSequence)
  {
    return String.format("<i>%s</i>", new Object[] { paramCharSequence });
  }

  private static String c(CharSequence paramCharSequence)
  {
    return String.format("<u>%s</u>", new Object[] { paramCharSequence });
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ad
 * JD-Core Version:    0.6.2
 */