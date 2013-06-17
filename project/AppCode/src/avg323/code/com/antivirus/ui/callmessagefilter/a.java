package com.antivirus.ui.callmessagefilter;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public abstract class a extends ArrayAdapter
{
  protected List a;
  protected List b;
  protected final Object c = new Object();
  protected Filter d;

  public a(Context paramContext, int paramInt, List paramList)
  {
    super(paramContext, paramInt, paramList);
  }

  public d a(int paramInt)
  {
    return (d)this.a.get(paramInt);
  }

  public List a()
  {
    return this.a;
  }

  protected abstract List a(String paramString);

  public void a(int paramInt, d paramd)
  {
    if (this.a == null)
      this.a = new ArrayList();
    if (!this.a.contains(paramd))
      this.a.add(paramInt, paramd);
  }

  protected abstract void a(View paramView, d paramd);

  public void a(d paramd)
  {
    if (this.a == null)
      this.a = new ArrayList();
    if (!this.a.contains(paramd))
      this.a.add(paramd);
  }

  public void a(d paramd, int paramInt)
  {
    if (this.b == null)
      this.b = new ArrayList();
    if (this.b.contains(paramd));
    while (true)
    {
      return;
      if (paramInt >= 0)
        this.b.add(paramInt, paramd);
      else
        this.b.add(paramd);
    }
  }

  protected void a(String paramString, d paramd, ImageView paramImageView)
  {
    new b(this, paramd, paramImageView).execute(new String[] { paramString });
  }

  public void a(x[] paramArrayOfx)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfx.length;
    for (int j = 0; j < i; j++)
    {
      localStringBuilder.append(paramArrayOfx[j].toString());
      localStringBuilder.append(";");
    }
    String str = localStringBuilder.substring(0, localStringBuilder.lastIndexOf(";"));
    getFilter().filter(str);
  }

  public int getCount()
  {
    return this.a.size();
  }

  public Filter getFilter()
  {
    if (this.d == null)
      this.d = new c(this);
    return this.d;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(getContext()).inflate(2130903064, paramViewGroup, false);
    d locald = a(paramInt);
    ImageView localImageView1 = (ImageView)paramView.findViewById(2131230859);
    TextView localTextView1 = (TextView)paramView.findViewById(2131230867);
    TextView localTextView2 = (TextView)paramView.findViewById(2131230868);
    ImageView localImageView2 = (ImageView)paramView.findViewById(2131230869);
    localTextView1.setText(locald.a());
    localTextView2.setText(locald.b());
    localImageView2.setImageResource(locald.d().a());
    Bitmap localBitmap = locald.c();
    if (localBitmap != null)
      localImageView1.setImageBitmap(localBitmap);
    while (true)
    {
      a(paramView, locald);
      return paramView;
      localImageView1.setImageResource(2130837704);
      if (locald.h())
      {
        String str = locald.g();
        locald.a(false);
        a(str, locald, localImageView1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.a
 * JD-Core Version:    0.6.2
 */