package com.hoi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class SpinnerButton extends Spinner
{
  protected View.OnClickListener a;
  private ArrayAdapter b;

  private SpinnerButton(Context paramContext)
  {
    super(paramContext);
  }

  public SpinnerButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SpinnerButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final String a()
  {
    return (String)this.b.getItem(0);
  }

  public final void a(String paramString)
  {
    this.b = new ArrayAdapter(getContext(), 17367048);
    this.b.setDropDownViewResource(17367049);
    this.b.clear();
    this.b.add(paramString);
    setAdapter(this.b);
    setSelection(0);
  }

  public boolean performClick()
  {
    sendAccessibilityEvent(1);
    if (this.a != null)
    {
      playSoundEffect(0);
      this.a.onClick(this);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.a = paramOnClickListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.SpinnerButton
 * JD-Core Version:    0.6.2
 */