package com.jxphone.mosecurity.activity.friend;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ijinshan.kpref.PreferenceCategory;

class MyPreferenceCategory extends PreferenceCategory
{
  public MyPreferenceCategory(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = super.a(paramViewGroup);
    if ((localView instanceof TextView))
    {
      TextView localTextView = (TextView)localView;
      localTextView.setTextColor(-1);
      localTextView.setBackgroundColor(-16574932);
    }
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.MyPreferenceCategory
 * JD-Core Version:    0.6.2
 */