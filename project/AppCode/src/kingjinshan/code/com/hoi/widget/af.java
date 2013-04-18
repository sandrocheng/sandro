package com.hoi.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

public final class af extends AlertDialog
  implements DialogInterface.OnClickListener, ad
{
  private static final String a = "period";
  private static final String b = "period_type";
  private final String[] c;
  private final ad d;
  private final PeriodPicker e;
  private int f;
  private int g;

  private af(Context paramContext, ad paramad, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.d = paramad;
    this.f = paramInt1;
    this.g = paramInt2;
    this.c = paramContext.getResources().getStringArray(2131165187);
    c(this.f, this.g);
    setButton(paramContext.getText(2131428265), this);
    setButton2(paramContext.getText(2131428266), null);
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903250, null);
    setView(localView);
    this.e = ((PeriodPicker)localView.findViewById(2131231505));
    this.e.a(this.f, this.g, this);
  }

  private void b(int paramInt1, int paramInt2)
  {
    this.f = paramInt1;
    this.g = paramInt2;
    this.e.a(this.f, this.g);
  }

  private void c(int paramInt1, int paramInt2)
  {
    setTitle(paramInt1 + this.c[(paramInt2 - 1)]);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, paramInt2);
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.d != null)
    {
      this.e.clearFocus();
      ad localad = this.d;
      localad.a(this.e.a(), this.e.b());
    }
  }

  public final void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i = paramBundle.getInt("period");
    int j = paramBundle.getInt("period_type");
    this.e.a(i, j, this);
    c(i, j);
  }

  public final Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("period", this.e.a());
    localBundle.putInt("period_type", this.e.b());
    return localBundle;
  }

  public final void show()
  {
    super.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.af
 * JD-Core Version:    0.6.2
 */