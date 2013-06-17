package com.avg.ui.general.fragments;

import android.content.Context;
import android.view.View;
import android.widget.TabHost.TabContentFactory;

class f
  implements TabHost.TabContentFactory
{
  private final Context a;

  public f(Context paramContext)
  {
    this.a = paramContext;
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this.a);
    localView.setMinimumWidth(0);
    localView.setMinimumHeight(0);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.f
 * JD-Core Version:    0.6.2
 */