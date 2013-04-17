package com.tencent.qqpimsecure.uilib.common;

import android.content.Context;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Animation;
import java.lang.reflect.Method;

public class AnimationUtil
{
  public static Animation getExpandedAnimation(Context paramContext, View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      Class localClass = paramView.getClass();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("onMeasure", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(View.MeasureSpec.makeMeasureSpec(0, 0));
      arrayOfObject[1] = Integer.valueOf(View.MeasureSpec.makeMeasureSpec(((View)paramView.getParent()).getMeasuredWidth(), -2147483648));
      localMethod.invoke(paramView, arrayOfObject);
      label97: paramView.getLayoutParams().height = paramInt2;
      paramView.setVisibility(0);
      AnimationUtil.2 local2 = new AnimationUtil.2(paramBoolean, paramInt2, paramInt3, paramView, paramContext);
      local2.setDuration(500L);
      return local2;
    }
    catch (Exception localException)
    {
      break label97;
    }
  }

  public static Animation getExpandedAnimation(Context paramContext, View paramView1, View paramView2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      Class localClass = paramView2.getClass();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("onMeasure", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(View.MeasureSpec.makeMeasureSpec(0, 0));
      arrayOfObject[1] = Integer.valueOf(View.MeasureSpec.makeMeasureSpec(((View)paramView2.getParent()).getMeasuredWidth(), -2147483648));
      localMethod.invoke(paramView2, arrayOfObject);
      label97: paramView2.getLayoutParams().height = paramInt1;
      paramView2.setVisibility(0);
      AnimationUtil.1 local1 = new AnimationUtil.1(paramBoolean, paramInt1, paramInt2, paramView2, paramView1, paramContext);
      local1.setDuration(100L);
      return local1;
    }
    catch (Exception localException)
    {
      break label97;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.common.AnimationUtil
 * JD-Core Version:    0.6.2
 */