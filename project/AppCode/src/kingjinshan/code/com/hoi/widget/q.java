package com.hoi.widget;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.keniu.security.util.ap;

public final class q extends ap
{
  public int a = 0;
  private TextView b;
  private ProgressBar c;
  private TextView d;
  private TextView e;
  private int f;

  private q(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.f = paramInt;
  }

  private q(Context paramContext, int paramInt, byte paramByte)
  {
    super(paramContext, paramInt);
  }

  public static q a(Context paramContext, int paramInt)
  {
    q localq = new q(paramContext, paramInt);
    localq.setCancelable(false);
    return localq;
  }

  private void d(int paramInt)
  {
    this.c.setMax(paramInt);
    this.a = paramInt;
  }

  public final void a(int paramInt)
  {
    this.c.setMax(paramInt);
    this.a = paramInt;
  }

  public final void a(String paramString)
  {
    this.e.setText(paramString);
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.e.setVisibility(0);
    while (true)
    {
      return;
      this.e.setVisibility(4);
    }
  }

  public final void b(int paramInt)
  {
    this.c.setProgress(paramInt);
    this.d.setText(paramInt * 100 / this.a + "%");
  }

  public final void b(String paramString)
  {
    this.b.setText(paramString);
  }

  public final void c(int paramInt)
  {
    this.c.setProgress(paramInt);
    this.d.setText(paramInt * 100 / this.a + "%");
  }

  protected final void onCreate(Bundle paramBundle)
  {
    Context localContext = getContext();
    View localView = LayoutInflater.from(localContext).inflate(2130903235, null);
    this.c = ((ProgressBar)localView.findViewById(2131231467));
    this.b = ((TextView)localView.findViewById(2131231466));
    this.d = ((TextView)localView.findViewById(2131231468));
    this.e = ((TextView)localView.findViewById(2131231469));
    this.c.setProgress(0);
    this.d.setText("0%");
    super.setTitle(localContext.getString(this.f));
    a(localView);
    super.onCreate(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.q
 * JD-Core Version:    0.6.2
 */