package com.ijinshan.software.recommand;

import android.os.AsyncTask;
import android.widget.ListView;
import android.widget.RelativeLayout;

final class g extends AsyncTask
{
  private g(HotTopActivity paramHotTopActivity, byte paramByte)
  {
  }

  private Void a()
  {
    HotTopActivity.a(this.a, p.a(HotTopActivity.e(this.a), HotTopActivity.f(this.a)));
    return null;
  }

  private void b()
  {
    if (HotTopActivity.d(this.a) != null)
    {
      HotTopActivity.a(this.a, new e(this.a, this.a, HotTopActivity.d(this.a)));
      HotTopActivity.b(this.a).setAdapter(HotTopActivity.g(this.a));
      HotTopActivity.b(this.a).setOnItemClickListener(new h(this));
      HotTopActivity.c(this.a).setVisibility(8);
    }
    while (true)
    {
      return;
      HotTopActivity.b(this.a).setVisibility(8);
      HotTopActivity.c(this.a).setVisibility(8);
      HotTopActivity.a(this.a).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.g
 * JD-Core Version:    0.6.2
 */