package com.keniu.security.sync.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.keniu.security.sync.HistoryRecord;
import java.util.List;

final class ai extends BaseAdapter
{
  private LayoutInflater b;

  public ai(SyncRecordsAct paramSyncRecordsAct, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  private HistoryRecord a(int paramInt)
  {
    return (HistoryRecord)SyncRecordsAct.a(this.a).get(paramInt);
  }

  public final int getCount()
  {
    return SyncRecordsAct.a(this.a).size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    aj localaj1;
    if (paramView == null)
    {
      localView = this.b.inflate(2130903182, null);
      aj localaj2 = new aj(this);
      localaj2.a = ((TextView)localView.findViewById(2131230854));
      localaj2.b = ((TextView)localView.findViewById(2131231323));
      localaj2.c = ((TextView)localView.findViewById(2131231322));
      localView.setTag(localaj2);
      localaj1 = localaj2;
    }
    String str1;
    String str2;
    while (true)
    {
      localaj1.a.setText(a(paramInt).a());
      str1 = a(paramInt).b();
      if (!str1.equals(""))
        break;
      str2 = "";
      localaj1.b.setText(str2);
      localaj1.c.setText(a(paramInt).c());
      return localView;
      localaj1 = (aj)paramView.getTag();
      localView = paramView;
    }
    SyncRecordsAct localSyncRecordsAct = this.a;
    if ("contact".equals(SyncRecordsAct.d(this.a)));
    for (int i = 2131429586; ; i = 2131429587)
    {
      str2 = localSyncRecordsAct.getString(i, new Object[] { str1 });
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ai
 * JD-Core Version:    0.6.2
 */