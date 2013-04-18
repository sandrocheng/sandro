package com.ijinshan.software.recommand;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.LinkedList;

final class h
  implements AdapterView.OnItemClickListener
{
  h(g paramg)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (((((q)HotTopActivity.d(this.a.a).get(paramInt)).c == null) || (((q)HotTopActivity.d(this.a.a).get(paramInt)).d == null)) && (((q)HotTopActivity.d(this.a.a).get(paramInt)).e == null))
      if (((q)HotTopActivity.d(this.a.a).get(paramInt)).f != null)
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse(((q)HotTopActivity.d(this.a.a).get(paramInt)).f));
        this.a.a.startActivity(localIntent2);
      }
    while (true)
    {
      return;
      Intent localIntent1 = new Intent(this.a.a, FileDownloadService.class);
      localIntent1.putExtra("appName", ((q)HotTopActivity.d(this.a.a).get(paramInt)).b);
      localIntent1.putExtra("downURL", ((q)HotTopActivity.d(this.a.a).get(paramInt)).f);
      localIntent1.putExtra("versionCode", Integer.parseInt(((q)HotTopActivity.d(this.a.a).get(paramInt)).d));
      localIntent1.putExtra("size", Integer.parseInt(((q)HotTopActivity.d(this.a.a).get(paramInt)).e));
      this.a.a.startService(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.h
 * JD-Core Version:    0.6.2
 */