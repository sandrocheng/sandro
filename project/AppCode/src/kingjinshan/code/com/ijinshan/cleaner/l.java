package com.ijinshan.cleaner;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.ijinshan.cleaner.a.a;
import java.util.List;

final class l
  implements AdapterView.OnItemClickListener
{
  l(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CacheCleanerActivity localCacheCleanerActivity = this.a;
    localCacheCleanerActivity.a(((a)CacheCleanerActivity.e(this.a).get(paramInt)).b());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.l
 * JD-Core Version:    0.6.2
 */