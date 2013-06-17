package com.avg.ui.general.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import com.avg.ui.general.d;
import com.avg.ui.general.e;
import com.avg.ui.general.h;

public abstract class i extends a
  implements TabHost.OnTabChangeListener
{
  protected FragmentTabHost a;

  private TabHost.TabSpec a(String paramString)
  {
    TabHost.TabSpec localTabSpec = this.a.newTabSpec(paramString);
    View localView = LayoutInflater.from(h()).inflate(e.tab_indicator, null);
    TextView localTextView = (TextView)localView.findViewById(d.title);
    localTextView.setTextAppearance(h(), h.TextAppearanceTabWidget);
    localTextView.setText(paramString);
    localTabSpec.setIndicator(localView);
    return localTabSpec;
  }

  private void a()
  {
    this.a.a(h(), k(), d.realtabcontent);
    a(G());
  }

  private void a(j[] paramArrayOfj)
  {
    int i = paramArrayOfj.length;
    for (int j = 0; j < i; j++)
    {
      j localj = paramArrayOfj[j];
      this.a.a(a(localj.a()), localj.b(), localj.c());
    }
  }

  protected abstract int F();

  protected abstract j[] G();

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(F(), null);
    this.a = ((FragmentTabHost)localView.findViewById(16908306));
    this.a.setOnTabChangedListener(this);
    a();
    return localView;
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    c(true);
    this.a.setCurrentTab(0);
  }

  public void e()
  {
    super.e();
    this.a = null;
  }

  public void onTabChanged(String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.i
 * JD-Core Version:    0.6.2
 */