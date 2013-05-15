package com.avast.android.mobilesecurity.ui;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import java.lang.reflect.Field;

public class m
{
  public static void a(Context paramContext, ViewPager paramViewPager)
  {
    a(paramViewPager, 2.0F);
    paramViewPager.c(paramContext.getResources().getDimensionPixelSize(2131361820));
  }

  public static void a(ViewPager paramViewPager, float paramFloat)
  {
    try
    {
      Field localField = paramViewPager.getClass().getDeclaredField("mTouchSlop");
      localField.setAccessible(true);
      localField.set(paramViewPager, Integer.valueOf((int)(paramFloat * ((Integer)localField.get(paramViewPager)).intValue())));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
      {
        com.avast.android.generic.util.m.a("ViewPagerUtils", "Can't multiply touch slop value.", localNoSuchFieldException);
        localNoSuchFieldException.printStackTrace();
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        com.avast.android.generic.util.m.a("ViewPagerUtils", "Can't multiply touch slop value.", localIllegalArgumentException);
        localIllegalArgumentException.printStackTrace();
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
      {
        com.avast.android.generic.util.m.a("ViewPagerUtils", "Can't multiply touch slop value.", localIllegalAccessException);
        localIllegalAccessException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.m
 * JD-Core Version:    0.6.2
 */