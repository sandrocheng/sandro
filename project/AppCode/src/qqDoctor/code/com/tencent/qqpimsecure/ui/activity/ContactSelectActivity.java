package com.tencent.qqpimsecure.ui.activity;

import android.content.Intent;
import ani;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class ContactSelectActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    Intent localIntent = getIntent();
    int i = localIntent.getIntExtra("type", -1);
    int j = localIntent.getIntExtra("from", -1);
    if ((i != -1) && (j != -1))
      this.a = new ani(this, i, j);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.ContactSelectActivity
 * JD-Core Version:    0.6.2
 */