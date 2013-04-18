package com.keniu.security.util;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;

public class ap extends Dialog
  implements DialogInterface
{
  private MyAlertController a;

  protected ap(Context paramContext)
  {
    this(paramContext, 2131361818);
  }

  protected ap(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    this.a = new MyAlertController(paramContext, this, getWindow());
  }

  private ap(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, 2131361818);
    setCancelable(paramBoolean);
    setOnCancelListener(paramOnCancelListener);
    this.a = new MyAlertController(paramContext, this, getWindow());
  }

  private ListView a()
  {
    return this.a.b();
  }

  private void a(int paramInt, CharSequence paramCharSequence, Message paramMessage)
  {
    this.a.a(paramInt, paramCharSequence, null, paramMessage);
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  private void a(CharSequence paramCharSequence, Message paramMessage)
  {
    a(-1, paramCharSequence, paramMessage);
  }

  private void a(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  private void b(View paramView)
  {
    this.a.a(paramView);
  }

  private void b(CharSequence paramCharSequence, Message paramMessage)
  {
    a(-2, paramCharSequence, paramMessage);
  }

  private void c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a(-3, paramCharSequence, paramOnClickListener);
  }

  private void c(CharSequence paramCharSequence, Message paramMessage)
  {
    a(-3, paramCharSequence, paramMessage);
  }

  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.a(paramInt, paramCharSequence, paramOnClickListener, null);
  }

  public final void a(View paramView)
  {
    this.a.b(paramView);
  }

  public void a(CharSequence paramCharSequence)
  {
    this.a.b(paramCharSequence);
  }

  public final void a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a(-1, paramCharSequence, paramOnClickListener);
  }

  public final void b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a(-2, paramCharSequence, paramOnClickListener);
  }

  public final Button c()
  {
    return this.a.c();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a.a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.a(paramKeyEvent));
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.b(paramKeyEvent));
    for (boolean bool = true; ; bool = super.onKeyUp(paramInt, paramKeyEvent))
      return bool;
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    this.a.a(paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ap
 * JD-Core Version:    0.6.2
 */