package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.powermanager.uilib.BatteryModeItemView;
import dg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BatteryModeSwitchView extends LinearLayout
  implements View.OnClickListener, View.OnLongClickListener
{
  private Context a;
  private LinearLayout b;
  private List<dg> c = new ArrayList();
  private List<BatteryModeItemView> d = new ArrayList();
  private a e;
  private b f;

  public BatteryModeSwitchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    View localView = inflate(paramContext, 2130903043, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -1));
    this.b = ((LinearLayout)localView.findViewById(2131230735));
  }

  public final void a()
  {
    this.b.removeAllViews();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      BatteryModeItemView localBatteryModeItemView = (BatteryModeItemView)localIterator.next();
      this.b.addView(localBatteryModeItemView, localLayoutParams);
    }
  }

  public void onClick(View paramView)
  {
    Iterator localIterator = this.d.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      BatteryModeItemView localBatteryModeItemView = (BatteryModeItemView)localIterator.next();
      i++;
      if (paramView.equals(localBatteryModeItemView))
        this.e.a(((dg)this.c.get(i - 1)).a);
    }
    if (((BatteryModeItemView)paramView).a() == true);
  }

  public boolean onLongClick(View paramView)
  {
    Iterator localIterator = this.d.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      BatteryModeItemView localBatteryModeItemView = (BatteryModeItemView)localIterator.next();
      i++;
      if (paramView.equals(localBatteryModeItemView))
        this.f.b(((dg)this.c.get(i - 1)).a);
    }
    if (((BatteryModeItemView)paramView).a() == true);
    return true;
  }

  public void setClickListener(a parama)
  {
    this.e = parama;
  }

  public void setDataList(List<dg> paramList)
  {
    this.c = paramList;
    this.d.clear();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      dg localdg = (dg)localIterator.next();
      BatteryModeItemView localBatteryModeItemView = new BatteryModeItemView(this.a);
      localBatteryModeItemView.setTitleText(localdg.c);
      localBatteryModeItemView.setSummaryText(localdg.d);
      localBatteryModeItemView.setChecked(localdg.b);
      localBatteryModeItemView.setOnClickListener(this);
      localBatteryModeItemView.setOnLongClickListener(this);
      this.d.add(localBatteryModeItemView);
    }
    ((BatteryModeItemView)this.d.get(-1 + this.d.size())).setUnderLine(false);
  }

  public void setLongClickListener(b paramb)
  {
    this.f = paramb;
  }

  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }

  public static abstract interface b
  {
    public abstract void b(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryModeSwitchView
 * JD-Core Version:    0.6.2
 */