package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import com.tencent.powermanager.uilib.CpuStatusView;
import java.util.ArrayList;
import java.util.List;

public class CpuStatuGridView extends ScrollView
{
  private LinearLayout a = null;
  private LinearLayout b = null;
  private List<CpuStatusView> c = new ArrayList();

  public CpuStatuGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View localView = inflate(paramContext, 2130903047, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.a = ((LinearLayout)localView.findViewById(2131230750));
    this.b = ((LinearLayout)localView.findViewById(2131230747));
    this.c.add((CpuStatusView)localView.findViewById(2131230745));
    this.c.add((CpuStatusView)localView.findViewById(2131230746));
    this.c.add((CpuStatusView)localView.findViewById(2131230748));
    this.c.add((CpuStatusView)localView.findViewById(2131230749));
  }

  public void setCpuLayout(int paramInt)
  {
    if (paramInt == 1)
      ((CpuStatusView)this.c.get(0)).setVisibility(0);
    if (paramInt == 2)
    {
      ((CpuStatusView)this.c.get(0)).setVisibility(0);
      ((CpuStatusView)this.c.get(1)).setVisibility(0);
    }
    if (paramInt == 3)
    {
      ((CpuStatusView)this.c.get(0)).setVisibility(0);
      ((CpuStatusView)this.c.get(1)).setVisibility(0);
      this.b.setVisibility(0);
      ((CpuStatusView)this.c.get(2)).setVisibility(0);
      this.a.setVisibility(0);
    }
    if (paramInt >= 4)
    {
      ((CpuStatusView)this.c.get(0)).setVisibility(0);
      ((CpuStatusView)this.c.get(1)).setVisibility(0);
      this.b.setVisibility(0);
      ((CpuStatusView)this.c.get(2)).setVisibility(0);
      ((CpuStatusView)this.c.get(3)).setVisibility(0);
      this.a.setVisibility(0);
    }
  }

  public void setCpuStatus(int paramInt, boolean paramBoolean, String paramString)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      ((CpuStatusView)this.c.get(0)).setCpuStatus(paramBoolean, paramString);
      continue;
      ((CpuStatusView)this.c.get(1)).setCpuStatus(paramBoolean, paramString);
      continue;
      ((CpuStatusView)this.c.get(2)).setCpuStatus(paramBoolean, paramString);
      continue;
      ((CpuStatusView)this.c.get(3)).setCpuStatus(paramBoolean, paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.CpuStatuGridView
 * JD-Core Version:    0.6.2
 */