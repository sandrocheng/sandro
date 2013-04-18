package com.keniu.security.sync.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.HashMap;
import java.util.List;

final class ac
  implements AdapterView.OnItemClickListener
{
  ac(SyncMainActivity paramSyncMainActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((ad)((HashMap)SyncMainActivity.a(this.a).get(paramInt)).get("VMAP_ITEM_CLASS")).a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ac
 * JD-Core Version:    0.6.2
 */