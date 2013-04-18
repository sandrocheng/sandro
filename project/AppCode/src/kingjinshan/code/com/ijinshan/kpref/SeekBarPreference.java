package com.ijinshan.kpref;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;

public class SeekBarPreference extends DialogPreference
{
  private static final String o = "SeekBarPreference";
  private Drawable p;

  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(17367133);
    g();
    h();
    this.p = f();
    e();
  }

  private static SeekBar c(View paramView)
  {
    return (SeekBar)paramView.findViewById(16908784);
  }

  protected void b(View paramView)
  {
    super.b(paramView);
    ImageView localImageView = (ImageView)paramView.findViewById(16908294);
    if (this.p != null)
      localImageView.setImageDrawable(this.p);
    while (true)
    {
      return;
      localImageView.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.SeekBarPreference
 * JD-Core Version:    0.6.2
 */