package com.avast.android.generic.util;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.avast.android.generic.r;

public class w
{
  @TargetApi(11)
  public static int a(Context paramContext)
  {
    int i = com.avast.android.generic.v.x;
    if ((Build.VERSION.SDK_INT >= 14) && (Build.VERSION.SDK_INT <= 15));
    while (true)
    {
      try
      {
        Notification localNotification = new Notification.Builder(paramContext).setContentText("").setContentTitle("").getNotification();
        localLinearLayout = new LinearLayout(paramContext);
        ViewGroup localViewGroup = (ViewGroup)((ViewGroup)localNotification.contentView.apply(paramContext, localLinearLayout)).getChildAt(1);
        if (((localViewGroup instanceof LinearLayout)) && (localViewGroup.getPaddingLeft() == paramContext.getResources().getDimensionPixelSize(r.c)))
        {
          int k = com.avast.android.generic.v.y;
          j = k;
        }
      }
      catch (Exception localException1)
      {
        try
        {
          LinearLayout localLinearLayout;
          localLinearLayout.removeAllViews();
          return j;
          localException1 = localException1;
          j = i;
          continue;
        }
        catch (Exception localException2)
        {
          continue;
        }
        j = i;
        continue;
      }
      int j = i;
    }
  }

  public static void a(Context paramContext, RemoteViews paramRemoteViews, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    v localv = new v();
    try
    {
      Notification localNotification = new Notification();
      localNotification.setLatestEventInfo(paramContext, "SOME_SAMPLE_TEXT", "SOME_SAMPLE_TEXT2", null);
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      a((ViewGroup)localNotification.contentView.apply(paramContext, localLinearLayout), paramContext, localv);
      localLinearLayout.removeAllViews();
      if ((localv.b > -1.0F) || ((!paramBoolean) && (localv.d > -1.0F)))
      {
        int i = paramArrayOfInt1.length;
        for (int j = 0; ; j++)
        {
          if (j >= i)
            break label176;
          int i4 = paramArrayOfInt1[j];
          if (!paramBoolean)
            break;
          f = localv.b;
          paramRemoteViews.setFloat(i4, "setTextSize", f);
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localv.a = Integer.valueOf(17170435);
        localv.c = Integer.valueOf(17170435);
        continue;
        float f = localv.c.intValue();
      }
      label176: if ((localv.d > -1.0F) && (paramBoolean))
      {
        int i2 = paramArrayOfInt2.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramRemoteViews.setFloat(paramArrayOfInt2[i3], "setTextSize", localv.d);
      }
      if (localv.a == null)
        localv.a = Integer.valueOf(17170435);
      if ((localv.c == null) && (paramBoolean))
        localv.c = Integer.valueOf(17170435);
      int k = paramArrayOfInt1.length;
      for (int m = 0; m < k; m++)
        paramRemoteViews.setTextColor(paramArrayOfInt1[m], localv.a.intValue());
      if (paramBoolean)
      {
        int n = paramArrayOfInt2.length;
        for (int i1 = 0; i1 < n; i1++)
          paramRemoteViews.setTextColor(paramArrayOfInt2[i1], localv.c.intValue());
      }
    }
  }

  private static void a(ViewGroup paramViewGroup, Context paramContext, v paramv)
  {
    int i = paramViewGroup.getChildCount();
    int j = 0;
    if (j < i)
    {
      TextView localTextView;
      String str;
      if ((paramViewGroup.getChildAt(j) instanceof TextView))
      {
        localTextView = (TextView)paramViewGroup.getChildAt(j);
        str = localTextView.getText().toString();
        if ("SOME_SAMPLE_TEXT".equals(str))
        {
          paramv.a = Integer.valueOf(localTextView.getTextColors().getDefaultColor());
          paramv.b = localTextView.getTextSize();
          DisplayMetrics localDisplayMetrics2 = new DisplayMetrics();
          ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics2);
          paramv.b /= localDisplayMetrics2.scaledDensity;
        }
      }
      while (true)
      {
        j++;
        break;
        if ("SOME_SAMPLE_TEXT2".equals(str))
        {
          paramv.c = Integer.valueOf(localTextView.getTextColors().getDefaultColor());
          paramv.d = localTextView.getTextSize();
          DisplayMetrics localDisplayMetrics1 = new DisplayMetrics();
          ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics1);
          paramv.d /= localDisplayMetrics1.scaledDensity;
          continue;
          if ((paramViewGroup.getChildAt(j) instanceof ViewGroup))
            a((ViewGroup)paramViewGroup.getChildAt(j), paramContext, paramv);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.w
 * JD-Core Version:    0.6.2
 */