package com.keniu.security.protection.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.ijinshan.kinghelper.common.PickListActivity;

final class k
  implements View.OnClickListener
{
  k(PreventTheftGuideECActivity paramPreventTheftGuideECActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, PickListActivity.class);
    localIntent.setType("vnd.android.cursor.dir/contact");
    localIntent.removeExtra("PickListActivity1_action_type");
    localIntent.putExtra("PickListActivity1_action_type", "PickListActivity1_ec_action");
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.k
 * JD-Core Version:    0.6.2
 */