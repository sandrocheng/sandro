package com.tencent.qqpimsecure.uilib.view.template;

import android.view.View;

public abstract interface TemplateUI
{
  public abstract View getCurrentView();

  public abstract View getViewByTemplateType(int paramInt);

  public abstract void onCreate();

  public abstract void setTemplateType(int paramInt);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.TemplateUI
 * JD-Core Version:    0.6.2
 */