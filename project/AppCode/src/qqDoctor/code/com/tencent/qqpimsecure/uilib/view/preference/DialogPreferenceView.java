package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

public class DialogPreferenceView extends PreferenceView
{
  public DialogPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903217, null, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.DialogPreferenceView
 * JD-Core Version:    0.6.2
 */