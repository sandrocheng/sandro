package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.keniu.security.e;
import com.keniu.security.util.aq;

final class bf
  implements AdapterView.OnItemClickListener
{
  bf(PeopleCallLogActivity paramPeopleCallLogActivity)
  {
  }

  private void a(int paramInt)
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131428859);
    localaq.b(2131428995, null);
    localaq.a(2131428994, new bg(this, paramInt));
    localaq.d();
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (e.b())
      a(paramInt);
    while (true)
    {
      return;
      new aq(this.a, (byte)0).a(this.a.getString(2131427914)).d(2131165210, new bh(this, paramInt)).d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bf
 * JD-Core Version:    0.6.2
 */