package com.tencent.powermanager.uilib;

import a.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SwitchButtonView extends LinearLayout
  implements View.OnClickListener
{
  private Context a = null;
  private int b;
  private ImageView c = null;
  private ImageView d = null;
  private int e;
  private TextView f = null;
  private TextView g = null;
  private String h = null;
  private View.OnClickListener i = null;

  public SwitchButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.SwitchButtonView);
    this.b = localTypedArray.getInteger(0, 2);
    localTypedArray.getResourceId(2, 0);
    this.e = localTypedArray.getResourceId(1, 0);
    this.h = localTypedArray.getString(3);
    this.a = paramContext;
    localTypedArray.recycle();
    setClickable(true);
    setFocusable(true);
    setGravity(17);
    View localView = inflate(this.a, 2130903087, null);
    addView(localView);
    this.c = ((ImageView)localView.findViewById(2131230879));
    this.c.setImageResource(this.e);
    this.d = ((ImageView)localView.findViewById(2131230878));
    this.g = ((TextView)localView.findViewById(2131230881));
    this.f = ((TextView)localView.findViewById(2131230880));
    switch (this.b)
    {
    default:
      setBackgroundResource(2130837855);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      setNameText(this.h);
      return;
      setBackgroundResource(2130837854);
      continue;
      setBackgroundResource(2130837855);
      continue;
      setBackgroundResource(2130837856);
    }
  }

  public void onClick(View paramView)
  {
    if (this.i != null)
      this.i.onClick(paramView);
  }

  public void setIcon(int paramInt)
  {
    if (this.c != null)
      this.c.setImageResource(paramInt);
  }

  public void setIconBg(int paramInt)
  {
    if (this.d != null)
      this.d.setImageResource(paramInt);
  }

  public void setListener(View.OnClickListener paramOnClickListener)
  {
    this.i = paramOnClickListener;
  }

  public void setNameText(String paramString)
  {
    if ((this.f != null) && (this.g != null))
    {
      this.f.setText(paramString);
      this.g.setText(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.SwitchButtonView
 * JD-Core Version:    0.6.2
 */