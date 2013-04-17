package com.tencent.qqpimsecure.ui.activity;

import amp;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class BatchOperateActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new amp(this, getIntent().getIntExtra("OPERATE_KEY", -1));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.BatchOperateActivity
 * JD-Core Version:    0.6.2
 */