package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.o;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.util.ga.a;
import com.avast.android.generic.util.s;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import com.google.analytics.tracking.android.bo;

public class LanguageSelectorRow extends Row
  implements Handler.Callback
{
  CharSequence[] a;
  CharSequence[] b;
  String c;
  private ImageView m;

  public LanguageSelectorRow(Context paramContext)
  {
    super(paramContext);
  }

  public LanguageSelectorRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.a);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.a, aa.c));
  }

  public LanguageSelectorRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.c));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    paramTypedArray.recycle();
  }

  private void c()
  {
    Object localObject1 = getContext().getText(z.by);
    String str1 = ((ae)ad.a(getContext(), ae.class)).q();
    if (str1.length() > 0)
    {
      Object localObject2 = localObject1;
      for (int i = 0; i < this.a.length; i++)
        if (this.a[i].toString().equals(this.c))
          localObject2 = this.b[i].toString();
      localObject1 = localObject2;
    }
    bo localbo;
    if ((!str1.equals(this.c)) && ((getContext() instanceof FragmentActivity)))
    {
      FragmentActivity localFragmentActivity = (FragmentActivity)getContext();
      Intent localIntent = localFragmentActivity.getIntent();
      localIntent.addFlags(65536);
      localFragmentActivity.finish();
      localFragmentActivity.startActivity(localIntent);
      localbo = a.a();
      if (str1.length() <= 0)
        break label199;
    }
    label199: for (String str2 = str1; ; str2 = "default")
    {
      localbo.a("ms-settings", "changeLanguage", str2, Long.valueOf(0L));
      d(getContext().getString(z.cv, new Object[] { localObject1 }));
      return;
    }
  }

  protected void a()
  {
    inflate(getContext(), v.n, this);
    this.a = getContext().getResources().getTextArray(o.c);
    this.b = getContext().getResources().getTextArray(o.a);
    this.c = ((ae)ad.a(getContext(), ae.class)).q();
    this.m = ((ImageView)findViewById(t.ac));
    a(new h(this));
    c();
    ((s)ad.a(getContext(), s.class)).a(t.am, this);
  }

  public boolean handleMessage(Message paramMessage)
  {
    c();
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.LanguageSelectorRow
 * JD-Core Version:    0.6.2
 */