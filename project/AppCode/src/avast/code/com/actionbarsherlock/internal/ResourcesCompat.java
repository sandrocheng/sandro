package com.actionbarsherlock.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.integer;

public final class ResourcesCompat
{
  public static boolean getResources_getBoolean(Context paramContext, int paramInt)
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 13)
      bool = paramContext.getResources().getBoolean(paramInt);
    while (true)
    {
      return bool;
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      float f1 = localDisplayMetrics.widthPixels / localDisplayMetrics.density;
      float f2 = localDisplayMetrics.heightPixels / localDisplayMetrics.density;
      if (f1 < f2)
        f2 = f1;
      if (paramInt == R.bool.abs__action_bar_embed_tabs)
      {
        if (f1 >= 480.0F)
          bool = true;
        else
          bool = false;
      }
      else if (paramInt == R.bool.abs__split_action_bar_is_narrow)
      {
        if (f1 >= 480.0F)
          bool = false;
        else
          bool = true;
      }
      else if (paramInt == R.bool.abs__action_bar_expanded_action_views_exclusive)
      {
        if (f2 >= 600.0F)
          bool = false;
        else
          bool = true;
      }
      else
      {
        if (paramInt != R.bool.abs__config_allowActionMenuItemTextWithIcon)
          break;
        if (f1 >= 480.0F)
          bool = true;
        else
          bool = false;
      }
    }
    throw new IllegalArgumentException("Unknown boolean resource ID " + paramInt);
  }

  public static int getResources_getInteger(Context paramContext, int paramInt)
  {
    int i;
    if (Build.VERSION.SDK_INT >= 13)
      i = paramContext.getResources().getInteger(paramInt);
    while (true)
    {
      return i;
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      float f = localDisplayMetrics.widthPixels / localDisplayMetrics.density;
      if (paramInt != R.integer.abs__max_action_buttons)
        break;
      if (f >= 600.0F)
        i = 5;
      else if (f >= 500.0F)
        i = 4;
      else if (f >= 360.0F)
        i = 3;
      else
        i = 2;
    }
    throw new IllegalArgumentException("Unknown integer resource ID " + paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ResourcesCompat
 * JD-Core Version:    0.6.2
 */