package org.antivirus.ui.main;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.antivirus.core.Logger;

public final class o extends LinearLayout
{
  public o(Context paramContext, int paramInt)
  {
    super(paramContext);
    if (!(paramContext instanceof Activity))
      Logger.error("The context is no a Context");
    while (true)
    {
      return;
      LinearLayout localLinearLayout = (LinearLayout)((Activity)paramContext).findViewById(paramInt);
      ViewGroup.LayoutParams localLayoutParams = localLinearLayout.getLayoutParams();
      setOrientation(1);
      setLayoutParams(localLayoutParams);
      View localView1 = localLinearLayout.getChildAt(0);
      localLinearLayout.removeViewAt(0);
      addView(localView1);
      ((TextView)localView1).setTextColor(getResources().getColor(2131165246));
      localView1.setClickable(false);
      localView1.setFocusable(false);
      localView1.setFocusableInTouchMode(false);
      View localView2 = localLinearLayout.getChildAt(0);
      localLinearLayout.removeViewAt(0);
      addView(localView2);
      ((TextView)localView2).setTextColor(getResources().getColor(2131165245));
      localView2.setClickable(false);
      localView2.setFocusable(false);
      localView2.setFocusableInTouchMode(false);
      localLinearLayout.removeAllViews();
      setClickable(true);
      setFocusable(true);
      setFocusableInTouchMode(false);
      ViewGroup localViewGroup = (ViewGroup)localLinearLayout.getParent();
      int i = localViewGroup.indexOfChild(localLinearLayout);
      localViewGroup.removeView(localLinearLayout);
      localViewGroup.addView(this, i);
      setId(paramInt);
    }
  }

  public final void a(CharSequence paramCharSequence, int paramInt)
  {
    View localView = findViewById(2131230790);
    if ((localView != null) && ((localView instanceof TextView)))
    {
      ((TextView)localView).setText(paramCharSequence);
      ((TextView)localView).setTextColor(getResources().getColor(paramInt));
    }
  }

  public final CharSequence getLowerText()
  {
    View localView = findViewById(2131230790);
    if ((localView != null) && ((localView instanceof TextView)));
    for (CharSequence localCharSequence = ((TextView)localView).getText(); ; localCharSequence = null)
      return localCharSequence;
  }

  public final float getLowerTextSizeInPx()
  {
    View localView = findViewById(2131230790);
    if ((localView != null) && ((localView instanceof TextView)));
    for (float f = ((TextView)localView).getTextSize(); ; f = -1.0F)
      return f;
  }

  public final CharSequence getUpperText()
  {
    View localView = findViewById(2131230789);
    if ((localView != null) && ((localView instanceof TextView)));
    for (CharSequence localCharSequence = ((TextView)localView).getText(); ; localCharSequence = null)
      return localCharSequence;
  }

  public final void setLowerText(CharSequence paramCharSequence)
  {
    View localView = findViewById(2131230790);
    if ((localView != null) && ((localView instanceof TextView)))
      ((TextView)localView).setText(paramCharSequence);
  }

  public final void setUpperText(CharSequence paramCharSequence)
  {
    View localView = findViewById(2131230789);
    if ((localView != null) && ((localView instanceof TextView)))
      ((TextView)localView).setText(paramCharSequence);
  }

  public final void setUpperTextSize$255e752(float paramFloat)
  {
    View localView = findViewById(2131230789);
    if ((localView != null) && ((localView instanceof TextView)))
      ((TextView)localView).setTextSize(0, paramFloat);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.o
 * JD-Core Version:    0.6.2
 */