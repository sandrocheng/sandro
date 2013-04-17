package com.tencent.powermanager.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import cq;
import java.util.ArrayList;
import java.util.List;
import r;
import s.a;

public class GuideActivity extends Activity
  implements View.OnClickListener
{
  private List<View> a = null;
  private ViewPager b = null;
  private a c = null;
  private int[] d = { 2130903075 };
  private String e = "<font color=\"#ffffff\"><a href='http://fwd.3g.qq.com:8080/forward.jsp?bid=908'>%s</a></font>";
  private Button f;
  private ViewPager.OnPageChangeListener g = new cq();

  public void onClick(View paramView)
  {
    if (paramView == this.f)
    {
      startActivity(new Intent(this, QQPowerManagerActivity.class));
      finish();
      s.a.d().B();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903074);
    this.c = new a((byte)0);
    this.b = ((ViewPager)findViewById(2131230843));
    this.b.setAdapter(this.c);
    this.b.setOnPageChangeListener(this.g);
    this.a = new ArrayList();
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    for (int k : this.d)
      this.a.add(localLayoutInflater.inflate(k, null));
    this.f = ((Button)((View)this.a.get(0)).findViewById(2131230844));
    String str1 = this.e;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = getString(2131099799);
    this.e = String.format(str1, arrayOfObject1);
    String str2 = getString(2131099811);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = "<br>";
    arrayOfObject2[1] = this.e;
    Html.fromHtml(String.format(str2, arrayOfObject2));
    this.f.setOnClickListener(this);
  }

  protected void onResume()
  {
    super.onResume();
    if (!s.a.d().A())
    {
      startActivity(new Intent(this, QQPowerManagerActivity.class));
      finish();
    }
  }

  final class a extends PagerAdapter
  {
    private a()
    {
    }

    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
    {
      paramViewGroup.removeView((View)GuideActivity.a(GuideActivity.this).get(paramInt));
    }

    public final int getCount()
    {
      if (GuideActivity.a(GuideActivity.this) != null);
      for (int i = GuideActivity.a(GuideActivity.this).size(); ; i = 0)
        return i;
    }

    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
    {
      paramViewGroup.addView((View)GuideActivity.a(GuideActivity.this).get(paramInt), 0);
      return GuideActivity.a(GuideActivity.this).get(paramInt);
    }

    public final boolean isViewFromObject(View paramView, Object paramObject)
    {
      if (paramView == paramObject);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.ui.GuideActivity
 * JD-Core Version:    0.6.2
 */