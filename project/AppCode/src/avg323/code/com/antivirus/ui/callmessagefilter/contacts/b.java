package com.antivirus.ui.callmessagefilter.contacts;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.ui.callmessagefilter.a;
import java.util.ArrayList;
import java.util.List;

public class b extends a
{
  private Filter e;
  private int f = -1;

  public b(Context paramContext, List paramList)
  {
    super(paramContext, 2131230860, paramList);
    this.a = paramList;
  }

  protected List a(String paramString)
  {
    return new ArrayList(0);
  }

  public void a(int paramInt, g paramg)
  {
    if (this.a == null)
      this.a = new ArrayList();
    this.a.add(paramInt, paramg);
  }

  protected void a(View paramView, g paramg)
  {
    ((TextView)paramView.findViewById(2131230861)).setText(paramg.f());
  }

  public void a(g paramg)
  {
    if (this.a == null)
      this.a = new ArrayList();
    this.a.add(paramg);
  }

  public Filter b()
  {
    if (this.e == null)
      this.e = new e(this);
    return this.e;
  }

  public void b(String paramString)
  {
    getFilter().filter(paramString);
  }

  public void c(String paramString)
  {
    b().filter(paramString);
  }

  public Filter getFilter()
  {
    if (this.d == null)
      this.d = new d(this);
    return this.d;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(getContext()).inflate(2130903062, paramViewGroup, false);
    g localg = (g)a(paramInt);
    TextView localTextView = (TextView)paramView.findViewById(2131230860);
    ImageView localImageView1 = (ImageView)paramView.findViewById(2131230859);
    localTextView.setText(localg.a());
    ImageView localImageView2 = (ImageView)paramView.findViewById(2131230863);
    ImageView localImageView3;
    switch (c.a[localg.j().ordinal()])
    {
    default:
      localImageView2.setVisibility(8);
      localImageView3 = (ImageView)paramView.findViewById(2131230862);
      switch (c.b[localg.i().ordinal()])
      {
      default:
        localImageView3.setVisibility(8);
        label171: Bitmap localBitmap = localg.c();
        if (localBitmap != null)
          localImageView1.setImageBitmap(localBitmap);
        break;
      case 1:
      case 2:
      }
      break;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      a(paramView, localg);
      return paramView;
      localImageView2.setVisibility(0);
      localImageView2.setImageResource(localg.j().a());
      break;
      localImageView3.setVisibility(0);
      localImageView3.setImageResource(localg.i().a());
      break label171;
      localImageView1.setImageResource(2130837704);
      if (localg.h())
      {
        String str = localg.g();
        localg.a(false);
        a(str, localg, localImageView1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.b
 * JD-Core Version:    0.6.2
 */