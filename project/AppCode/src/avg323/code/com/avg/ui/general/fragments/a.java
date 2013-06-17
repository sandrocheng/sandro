package com.avg.ui.general.fragments;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;
import com.avg.ui.general.d;
import com.avg.ui.general.h;

public abstract class a extends Fragment
{
  protected com.avg.ui.general.a.a ag = null;

  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.ag = ((com.avg.ui.general.a.a)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new ClassCastException(paramActivity.toString() + " must implement BaseToolFragmentActivity");
  }

  protected void a(String paramString, View paramView, int paramInt)
  {
    View localView = paramView.findViewById(paramInt);
    localView.setVisibility(0);
    ((TextView)localView.findViewById(d.fragment_title_text)).setText(paramString);
  }

  protected void a(String paramString1, String paramString2, View paramView, int paramInt)
  {
    View localView = paramView.findViewById(paramInt);
    localView.setVisibility(0);
    TextView localTextView1 = (TextView)localView.findViewById(d.fragment_title_text);
    localTextView1.setTextAppearance(this.ag.getApplicationContext(), h.FragmentTitle2);
    localTextView1.setText(paramString1);
    TextView localTextView2 = (TextView)localView.findViewById(d.fragment_sub_title_text);
    localTextView2.setVisibility(0);
    localTextView2.setText(paramString2);
    if ((paramString2 != null) && (!"".equals(paramString2)))
      localTextView2.setOnClickListener(new b(this));
    localView.findViewById(d.title_separator).setVisibility(0);
  }

  public void t()
  {
    super.t();
    this.ag = null;
    System.gc();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.a
 * JD-Core Version:    0.6.2
 */