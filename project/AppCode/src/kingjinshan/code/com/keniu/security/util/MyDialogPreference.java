package com.keniu.security.util;

import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import com.keniu.security.traffic.dd;

public class MyDialogPreference extends CustomDialogPreference
{
  public MyDialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    super.onClick(paramDialogInterface, paramInt);
    if ((-1 == paramInt) && (A().equals("traffic_clear_data")))
    {
      dd.g = true;
      dd.c(D());
      dd.a(D(), null);
      com.keniu.security.traffic.TrafficSoftListActivity2.a = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.MyDialogPreference
 * JD-Core Version:    0.6.2
 */