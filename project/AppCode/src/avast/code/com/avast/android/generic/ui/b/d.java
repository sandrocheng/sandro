package com.avast.android.generic.ui.b;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.avast.android.generic.t;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.util.LinkedList;
import java.util.List;

public abstract class d
{
  private int a;
  private f b;
  private int c;
  private String d;
  private int e = 0;

  public d(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.c = paramInt2;
  }

  public abstract String a();

  public void a(int paramInt)
  {
    this.e = paramInt;
  }

  public void a(String paramString)
  {
    this.d = paramString;
  }

  public abstract boolean a(Context paramContext, Fragment paramFragment);

  public boolean a(Context paramContext, Fragment paramFragment, int paramInt)
  {
    boolean bool;
    if (paramInt == 0)
    {
      bool = a(paramContext, paramFragment);
      return bool;
    }
    if (this.e > 0)
      if (paramInt == 1)
        e(paramContext);
    while (true)
    {
      bool = false;
      break;
      if ((this.d != null) && (paramInt == 2))
      {
        paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.d)));
        continue;
        if ((this.d != null) && (paramInt == 1))
          paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.d)));
      }
    }
  }

  public String b(Context paramContext)
  {
    if (this.b != null);
    for (String str = this.b.a(paramContext); ; str = paramContext.getString(this.a))
      return str;
  }

  public void b(Context paramContext, Fragment paramFragment)
  {
  }

  public boolean b()
  {
    return false;
  }

  public Spanned c(Context paramContext)
  {
    if (this.b != null);
    for (Spanned localSpanned = this.b.b(paramContext); ; localSpanned = Html.fromHtml(paramContext.getString(this.c)))
      return localSpanned;
  }

  public boolean c()
  {
    return false;
  }

  public List d(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramContext.getString(z.d));
    if (this.e > 0)
      localLinkedList.add(paramContext.getString(z.ct));
    if (this.d != null)
      localLinkedList.add(paramContext.getString(z.c));
    return localLinkedList;
  }

  protected void e(Context paramContext)
  {
    if (this.e <= 0);
    while (true)
    {
      return;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(v.B, null);
      ((ImageView)localView.findViewById(t.k)).setImageResource(this.e);
      localBuilder.setView(localView);
      localBuilder.setPositiveButton(paramContext.getString(z.i), new e(this));
      localBuilder.create();
      localBuilder.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.b.d
 * JD-Core Version:    0.6.2
 */