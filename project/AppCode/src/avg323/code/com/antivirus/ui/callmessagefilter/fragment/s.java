package com.antivirus.ui.callmessagefilter.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.antivirus.ui.a.a.a;

public class s extends a
{
  ListAdapter Y;
  ListView Z;
  private final Handler a = new Handler();
  View aa;
  View ab;
  View ac;
  CharSequence ad;
  boolean ae;
  private final Runnable b = new t(this);
  private final AdapterView.OnItemClickListener c = new u(this);

  private void a()
  {
    if (this.Z != null)
      return;
    View localView1 = q();
    if (localView1 == null)
      throw new IllegalStateException("Content view not yet created");
    if ((localView1 instanceof ListView))
    {
      this.Z = ((ListView)localView1);
      label42: this.ae = true;
      this.Z.setOnItemClickListener(this.c);
      if (this.Y == null)
        break label224;
      ListAdapter localListAdapter = this.Y;
      this.Y = null;
      a(localListAdapter);
    }
    while (true)
    {
      this.a.post(this.b);
      break;
      this.aa = localView1.findViewById(16908292);
      this.aa.setVisibility(8);
      this.ab = localView1.findViewById(2131230936);
      this.ac = localView1.findViewById(2131230938);
      View localView2 = localView1.findViewById(16908298);
      if (!(localView2 instanceof ListView))
      {
        if (localView2 == null)
          throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
      }
      this.Z = ((ListView)localView2);
      if ((this.ad == null) || (this.aa == null))
        break label42;
      ((TextView)this.aa).setText(this.ad);
      this.Z.setEmptyView(this.aa);
      break label42;
      label224: if (this.ab != null)
        a(false, false);
    }
  }

  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    a();
    if (this.ab == null)
      throw new IllegalStateException("Can't be used with a custom content view");
    if (this.ae == paramBoolean1)
      return;
    this.ae = paramBoolean1;
    if (paramBoolean1)
    {
      if (paramBoolean2)
      {
        this.ab.startAnimation(AnimationUtils.loadAnimation(h(), 17432577));
        this.ac.startAnimation(AnimationUtils.loadAnimation(h(), 17432576));
      }
      while (true)
      {
        this.ab.setVisibility(8);
        this.ac.setVisibility(0);
        break;
        this.ab.clearAnimation();
        this.ac.clearAnimation();
      }
    }
    if (paramBoolean2)
    {
      this.ab.startAnimation(AnimationUtils.loadAnimation(h(), 17432576));
      this.ac.startAnimation(AnimationUtils.loadAnimation(h(), 17432577));
    }
    while (true)
    {
      this.ab.setVisibility(0);
      this.ac.setVisibility(8);
      break;
      this.ab.clearAnimation();
      this.ac.clearAnimation();
    }
  }

  public ListView N()
  {
    a();
    return this.Z;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903082, paramViewGroup, false);
  }

  public void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    a();
  }

  public void a(ListAdapter paramListAdapter)
  {
    if (this.Y != null);
    for (int i = 1; ; i = 0)
    {
      this.Y = paramListAdapter;
      if (this.Z != null)
      {
        this.Z.setAdapter(paramListAdapter);
        if ((!this.ae) && (i == 0))
        {
          IBinder localIBinder = q().getWindowToken();
          boolean bool = false;
          if (localIBinder != null)
            bool = true;
          a(true, bool);
        }
      }
      return;
    }
  }

  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
  }

  public void a(CharSequence paramCharSequence)
  {
    a();
    if (this.aa == null)
      throw new IllegalStateException("Can't be used with a custom content view");
    ((TextView)this.aa).setText(paramCharSequence);
    if (this.ad == null)
      this.Z.setEmptyView(this.aa);
    this.ad = paramCharSequence;
  }

  public void a(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }

  public void e()
  {
    this.a.removeCallbacks(this.b);
    this.Z = null;
    this.ae = false;
    this.ac = null;
    this.ab = null;
    this.aa = null;
    super.e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.s
 * JD-Core Version:    0.6.2
 */