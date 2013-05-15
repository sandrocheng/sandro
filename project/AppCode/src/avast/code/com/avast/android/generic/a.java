package com.avast.android.generic;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.util.al;

public class a
{
  public static void a(Context paramContext, String paramString)
  {
    a(paramContext, paramString, null, null, null);
  }

  public static void a(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    a(paramContext, paramString, null, null, paramOnClickListener);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener)
  {
    a(paramContext, paramString1, paramString2, paramString3, paramOnClickListener, null);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    a(paramContext, paramString1, paramString2, paramString3, paramOnClickListener1, paramOnClickListener2, true);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, boolean paramBoolean)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(paramContext));
      localBuilder.setMessage(paramString1);
      if (paramString2 != null)
        localBuilder.setPositiveButton(paramString2, paramOnClickListener1);
      while (true)
      {
        if (paramString3 != null)
          localBuilder.setNegativeButton(paramString3, paramOnClickListener2);
        if (!paramBoolean)
          localBuilder.setCancelable(false);
        localBuilder.show();
        break;
        localBuilder.setPositiveButton("OK", paramOnClickListener1);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString, CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(paramContext));
      localBuilder.setTitle(paramString);
      localBuilder.setItems(paramArrayOfCharSequence, paramOnClickListener);
      localBuilder.create().show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.a
 * JD-Core Version:    0.6.2
 */