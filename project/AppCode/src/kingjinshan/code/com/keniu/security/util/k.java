package com.keniu.security.util;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class k
{
  private static Dialog a(Context paramContext, int paramInt1, String paramString, int paramInt2, int paramInt3, w paramw, DialogInterface.OnKeyListener paramOnKeyListener)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(paramInt1);
    localaq.b(paramString);
    localaq.a(false);
    localaq.a(paramInt2, new m(paramw));
    localaq.b(paramInt3, new n(paramw));
    localaq.a(paramOnKeyListener);
    return localaq.c();
  }

  private static Dialog a(Context paramContext, w paramw)
  {
    String str = paramContext.getString(2131427944);
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(2131427943);
    localaq.b(str);
    localaq.a(false);
    localaq.a(2131427945, new m(paramw));
    localaq.b(2131427947, new n(paramw));
    localaq.a(null);
    return localaq.c();
  }

  public static ap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, w paramw)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(Html.fromHtml(ad.a(paramContext.getString(paramInt1), ae.b)));
    localaq.a(false);
    ap localap = localaq.c();
    localap.a(paramContext.getString(paramInt2), new p(paramw));
    localap.b(paramContext.getString(paramInt3), new q(paramw));
    localap.setOnKeyListener(new r());
    return localap;
  }

  public static ap a(Context paramContext, z paramz)
  {
    return a(paramContext, paramContext.getString(2131428465), paramz);
  }

  public static ap a(Context paramContext, String paramString, z paramz)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(2131428460);
    localaq.b(Html.fromHtml(paramString));
    localaq.a(false);
    localaq.a(2131427864, new s(paramz));
    return localaq.c();
  }

  public static aq a(Context paramContext, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(2131427865);
    localaq.b(paramInt);
    localaq.b(2131428995, null);
    localaq.a(2131428994, paramOnClickListener);
    return localaq;
  }

  private static void a(Context paramContext)
  {
    a(paramContext, new t(paramContext)).show();
  }

  public static void a(Context paramContext, int paramInt1, int paramInt2, w paramw)
  {
    a(paramContext, paramContext.getString(paramInt1), paramInt2, paramw);
  }

  private static void a(Context paramContext, int paramInt1, Spanned paramSpanned, int paramInt2, int paramInt3, w paramw)
  {
    ap localap = a(paramContext, paramInt1, paramInt2, paramInt3, paramw);
    localap.a(paramSpanned);
    localap.show();
  }

  private static void a(Context paramContext, int paramInt1, String paramString, int paramInt2, int paramInt3, x paramx)
  {
    Spanned localSpanned = Html.fromHtml(paramString);
    ap localap = a(paramContext, paramInt1, paramInt2, paramInt3, new v(paramx));
    View localView = LayoutInflater.from(paramContext).inflate(2130903126, null);
    TextView localTextView = (TextView)localView.findViewById(2131230855);
    localTextView.setText(localSpanned);
    localTextView.setTextSize(20.0F);
    localap.a(localView);
    localap.show();
  }

  public static void a(Context paramContext, Spanned paramSpanned, x paramx)
  {
    ap localap = a(paramContext, 2131428461, 2131427880, 2131427881, new v(paramx));
    View localView = LayoutInflater.from(paramContext).inflate(2130903126, null);
    TextView localTextView = (TextView)localView.findViewById(2131230855);
    localTextView.setText(paramSpanned);
    localTextView.setTextSize(20.0F);
    localap.a(localView);
    localap.show();
  }

  public static void a(Context paramContext, x paramx)
  {
    Spanned localSpanned = Html.fromHtml(paramContext.getString(2131428464));
    ap localap = a(paramContext, 2131428461, 2131427880, 2131427881, new v(paramx));
    View localView = LayoutInflater.from(paramContext).inflate(2130903126, null);
    TextView localTextView = (TextView)localView.findViewById(2131230855);
    localTextView.setText(localSpanned);
    localTextView.setTextSize(20.0F);
    localap.a(localView);
    localap.show();
  }

  public static void a(Context paramContext, String paramString, int paramInt, w paramw)
  {
    Spanned localSpanned = Html.fromHtml(paramString);
    ap localap = a(paramContext, 2131428461, paramInt, 2131427866, paramw);
    localap.a(localSpanned);
    localap.show();
  }

  private static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = com.ijinshan.kpref.t.b(paramContext).edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  private static void b(Context paramContext)
  {
    a(paramContext, new u(paramContext)).show();
  }

  private static void b(Context paramContext, int paramInt1, int paramInt2, w paramw)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(paramInt1);
    localaq.b(paramInt2);
    localaq.a(false);
    ap localap = localaq.c();
    localap.a(paramContext.getString(2131427864), new l(paramw));
    localap.b(paramContext.getString(2131427866), new o(paramw));
    localap.show();
  }

  private static boolean b(Context paramContext, String paramString, boolean paramBoolean)
  {
    return com.ijinshan.kpref.t.b(paramContext).getBoolean(paramString, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.k
 * JD-Core Version:    0.6.2
 */