package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

public class ExpandPreferenceView extends PreferenceView
{
  private boolean mIsExpand = false;

  public ExpandPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903216, null, false);
  }

  public boolean isExpand()
  {
    return this.mIsExpand;
  }

  public void setExpand(boolean paramBoolean)
  {
    this.mIsExpand = paramBoolean;
    if (this.mIsExpand)
    {
      findViewById(2131231261).setVisibility(8);
      findViewById(2131231262).setVisibility(0);
    }
    while (true)
    {
      return;
      findViewById(2131231261).setVisibility(0);
      findViewById(2131231262).setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.ExpandPreferenceView
 * JD-Core Version:    0.6.2
 */