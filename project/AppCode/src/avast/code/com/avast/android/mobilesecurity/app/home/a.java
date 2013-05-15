package com.avast.android.mobilesecurity.app.home;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.app.advisor.AdvisorAppsFragment;
import com.avast.android.mobilesecurity.app.advisor.AdvisorGroupsFragment;
import com.avast.android.mobilesecurity.app.filter.FilterContactsFragment;
import com.avast.android.mobilesecurity.app.filter.FilterGroupDetailFragment;
import com.avast.android.mobilesecurity.app.filter.FilterGroupsFragment;
import com.avast.android.mobilesecurity.app.filter.FilterLogsFragment;
import com.avast.android.mobilesecurity.app.firewall.CustomRuleDetailFragment;
import com.avast.android.mobilesecurity.app.firewall.CustomRulesFragment;
import com.avast.android.mobilesecurity.app.firewall.FirewallFragment;
import com.avast.android.mobilesecurity.app.firewall.FirewallLogsFragment;
import com.avast.android.mobilesecurity.app.firewall.FirewallSettingsFragment;
import com.avast.android.mobilesecurity.app.manager.AppDetailFragment;
import com.avast.android.mobilesecurity.app.manager.ManagerAppFragment;
import com.avast.android.mobilesecurity.app.scanner.ScannerFragment;
import com.avast.android.mobilesecurity.app.scanner.ScannerLogFragment;
import com.avast.android.mobilesecurity.app.scanner.ScannerScanFragment;
import com.avast.android.mobilesecurity.app.settings.SettingsFragment;
import com.avast.android.mobilesecurity.app.shieldcontrol.ShieldControlFragment;
import com.avast.android.mobilesecurity.app.trafficinfo.TrafficinfoFragment;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

class a extends BaseAdapter
{
  private List a = new ArrayList();
  private Context b;

  public a(Activity paramActivity)
  {
    this.b = paramActivity;
    LinkedList localLinkedList1 = new LinkedList();
    localLinkedList1.add(ScannerFragment.class);
    localLinkedList1.add(ScannerScanFragment.class);
    localLinkedList1.add(ScannerLogFragment.class);
    this.a.add(new b(2131493354, 2130837784, localLinkedList1));
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList2.add(AdvisorGroupsFragment.class);
    localLinkedList2.add(AdvisorAppsFragment.class);
    this.a.add(new b(2131493355, 2130837775, localLinkedList2));
    LinkedList localLinkedList3 = new LinkedList();
    localLinkedList3.add(ManagerAppFragment.class);
    localLinkedList3.add(AppDetailFragment.class);
    this.a.add(new b(2131493357, 2130837754, localLinkedList3));
    LinkedList localLinkedList4 = new LinkedList();
    localLinkedList4.add(ShieldControlFragment.class);
    this.a.add(new b(2131493361, 2130837780, localLinkedList4));
    if (u.a(paramActivity, true))
    {
      LinkedList localLinkedList5 = new LinkedList();
      localLinkedList5.add(FilterGroupsFragment.class);
      localLinkedList5.add(FilterGroupDetailFragment.class);
      localLinkedList5.add(FilterLogsFragment.class);
      localLinkedList5.add(FilterContactsFragment.class);
      this.a.add(new b(2131493359, 2130837771, localLinkedList5));
    }
    LinkedList localLinkedList6 = new LinkedList();
    localLinkedList6.add(FirewallFragment.class);
    localLinkedList6.add(FirewallSettingsFragment.class);
    localLinkedList6.add(FirewallLogsFragment.class);
    localLinkedList6.add(CustomRulesFragment.class);
    localLinkedList6.add(CustomRuleDetailFragment.class);
    this.a.add(new b(2131493360, 2130837772, localLinkedList6));
    LinkedList localLinkedList7 = new LinkedList();
    localLinkedList7.add(TrafficinfoFragment.class);
    this.a.add(new b(2131493362, 2130837783, localLinkedList7));
    LinkedList localLinkedList8 = new LinkedList();
    this.a.add(new b(2131493464, 2130837752, localLinkedList8));
    LinkedList localLinkedList9 = new LinkedList();
    localLinkedList9.add(SettingsFragment.class);
    this.a.add(new b(2131493364, 2130837777, localLinkedList9));
  }

  public int getCount()
  {
    return this.a.size();
  }

  public Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return b.a((b)this.a.get(paramInt));
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(this.b).inflate(2130903163, paramViewGroup, false);
    ((ImageView)paramView.findViewById(2131165273)).setImageDrawable(this.b.getResources().getDrawable(b.b((b)this.a.get(paramInt))));
    ((TextView)paramView.findViewById(2131165504)).setText(this.b.getResources().getText(b.a((b)this.a.get(paramInt))));
    return paramView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.a
 * JD-Core Version:    0.6.2
 */