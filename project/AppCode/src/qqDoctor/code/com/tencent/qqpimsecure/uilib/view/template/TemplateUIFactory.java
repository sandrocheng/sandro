package com.tencent.qqpimsecure.uilib.view.template;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;

public class TemplateUIFactory
{
  private static TemplateUIFactory mInstance = null;
  private ArrayList<FrameworkTemplateUI> mTemplateUICacheList = new ArrayList();

  public static TemplateUIFactory Instance()
  {
    if (mInstance == null)
      mInstance = new TemplateUIFactory();
    return mInstance;
  }

  public static void freeInstance()
  {
    mInstance.removeAllCacheTemplateUI();
    mInstance = null;
  }

  public FrameworkTemplateUI getTemplateUIInstance(Context paramContext)
  {
    if (this.mTemplateUICacheList.size() > 0);
    for (FrameworkTemplateUI localFrameworkTemplateUI = (FrameworkTemplateUI)this.mTemplateUICacheList.remove(0); ; localFrameworkTemplateUI = new FrameworkTemplateUI(paramContext))
      return localFrameworkTemplateUI;
  }

  public void recycleTemplateUI(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (paramFrameworkTemplateUI == null);
    while (true)
    {
      return;
      ViewParent localViewParent = paramFrameworkTemplateUI.view().getParent();
      if (localViewParent != null)
        ((ViewGroup)localViewParent).removeAllViews();
      paramFrameworkTemplateUI.resetTemplateUI();
      this.mTemplateUICacheList.add(paramFrameworkTemplateUI);
    }
  }

  public void removeAllCacheTemplateUI()
  {
    this.mTemplateUICacheList.clear();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.TemplateUIFactory
 * JD-Core Version:    0.6.2
 */