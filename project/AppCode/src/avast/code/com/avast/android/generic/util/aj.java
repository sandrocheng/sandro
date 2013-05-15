package com.avast.android.generic.util;

import android.content.Context;
import java.util.Date;

public class aj
{
  public static String a(Context paramContext, int paramInt)
  {
    int i = paramInt / 60;
    int j = paramInt % 60;
    return android.text.format.DateFormat.getTimeFormat(paramContext).format(new Date(0, 0, 0, i, j));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.aj
 * JD-Core Version:    0.6.2
 */