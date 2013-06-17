package com.antivirus.ui.a.a;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.antivirus.core.b;

public abstract class a extends com.avg.ui.general.fragments.a
{
  protected b af;

  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    this.af = new b(paramActivity);
  }

  protected void a(View paramView)
  {
    if (paramView.getBackground() != null)
      paramView.getBackground().setCallback(null);
    if ((paramView instanceof ViewGroup))
      for (int i = 0; i < ((ViewGroup)paramView).getChildCount(); i++)
        a(((ViewGroup)paramView).getChildAt(i));
    try
    {
      ((ViewGroup)paramView).removeAllViews();
      label60: return;
    }
    catch (Exception localException)
    {
      break label60;
    }
  }

  protected void a(String paramString, View paramView)
  {
    a(paramString, paramView, 2131230802);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.a.a.a
 * JD-Core Version:    0.6.2
 */