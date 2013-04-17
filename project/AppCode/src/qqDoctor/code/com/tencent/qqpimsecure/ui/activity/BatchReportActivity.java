package com.tencent.qqpimsecure.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import aty;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class BatchReportActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new aty(this, getIntent().getIntExtra("OPERATE_KEY", 3));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.BatchReportActivity
 * JD-Core Version:    0.6.2
 */