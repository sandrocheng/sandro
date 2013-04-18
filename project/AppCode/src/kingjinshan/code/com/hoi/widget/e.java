package com.hoi.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

public final class e extends AlertDialog
  implements DialogInterface.OnClickListener, c
{
  private static final String a = "binary";
  private static final String b = "binary_type";
  private final c c;
  private final BinaryPicker d;
  private int e;
  private int f;

  private e(Context paramContext, c paramc, int paramInt1, int paramInt2, String paramString, int paramInt3, int paramInt4, int paramInt5, int paramInt6, String[] paramArrayOfString)
  {
    super(paramContext);
    this.c = paramc;
    this.e = paramInt1;
    this.f = paramInt2;
    setTitle(paramString);
    setButton(paramContext.getText(2131428265), this);
    setButton2(paramContext.getText(2131428266), null);
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903078, null);
    setView(localView);
    this.d = ((BinaryPicker)localView.findViewById(2131230951));
    this.d.a(paramInt3, paramInt4, paramInt5, paramInt6, paramArrayOfString);
    this.d.a(this.e, this.f, this);
  }

  private void a(int paramInt1, int paramInt2)
  {
    this.e = paramInt1;
    this.f = paramInt2;
    this.d.a(this.e, this.f);
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String[] paramArrayOfString)
  {
    this.d.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfString);
  }

  public final void a()
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.c != null)
    {
      this.d.clearFocus();
      this.d.a();
      this.d.b();
    }
  }

  public final void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i = paramBundle.getInt("binary");
    int j = paramBundle.getInt("binary_type");
    this.d.a(i, j, this);
  }

  public final Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("binary", this.d.a());
    localBundle.putInt("binary_type", this.d.b());
    return localBundle;
  }

  public final void show()
  {
    super.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.e
 * JD-Core Version:    0.6.2
 */