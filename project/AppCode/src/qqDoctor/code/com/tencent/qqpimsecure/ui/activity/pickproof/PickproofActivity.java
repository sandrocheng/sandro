package com.tencent.qqpimsecure.ui.activity.pickproof;

import android.content.Intent;
import bew;
import bfq;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PickproofActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    if (getIntent().getBooleanExtra("BIND_QQ", false));
    for (Object localObject = new bew(this); ; localObject = new bfq(this))
      return localObject;
  }

  public void onBackPressed()
  {
    Intent localIntent = new Intent(this, MainActivity.class);
    localIntent.setFlags(67108864);
    startActivity(localIntent);
    finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofActivity
 * JD-Core Version:    0.6.2
 */