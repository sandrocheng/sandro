package com.avast.android.mobilesecurity.app.firewall;

import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;
import java.util.Iterator;
import java.util.List;

class r
  implements com.avast.android.mobilesecurity.app.firewall.a.a
{
  r(FirewallFragment paramFirewallFragment)
  {
  }

  public void a()
  {
    ((android.support.v4.e.a)this.a.getListAdapter()).notifyDataSetChanged();
    boolean bool = FirewallFragment.a(this.a).X();
    Iterator localIterator = FirewallFragment.b(this.a).iterator();
    while (localIterator.hasNext())
      ((ConnectionTypeButtons)localIterator.next()).setEnabled(bool);
    FirewallFragment.c(this.a).setEnabled(bool);
    FirewallFragment.d(this.a).setEnabled(bool);
    u localu = u.a(this.a.getActivity());
    y localy;
    if (bool)
    {
      localy = y.p;
      if (!FirewallFragment.a(this.a).aJ())
        break label150;
    }
    label150: for (long l = 1L; ; l = 0L)
    {
      localu.a(localy, null, null, null, null, Long.valueOf(l), null);
      return;
      localy = y.q;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.r
 * JD-Core Version:    0.6.2
 */