package com.avast.android.mobilesecurity.ui.widget;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;

@TargetApi(11)
public class m extends AlertDialog
  implements DialogInterface.OnClickListener, NumberPicker.OnValueChangeListener
{
  private NumberPicker a;
  private final n b;

  public m(Context paramContext, int paramInt1, n paramn, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    super(paramContext, paramInt1);
    this.b = paramn;
    Context localContext = getContext();
    setButton(-1, localContext.getText(2131493337), this);
    setIcon(0);
    View localView = ((LayoutInflater)localContext.getSystemService("layout_inflater")).inflate(2130903181, null);
    setView(localView);
    this.a = ((NumberPicker)localView.findViewById(2131165624));
    this.a.setMinValue(paramInt3);
    this.a.setMaxValue(paramInt4);
    this.a.setValue(paramInt2);
    this.a.setOnValueChangedListener(this);
    setTitle(paramString);
  }

  public m(Context paramContext, n paramn, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    this(paramContext, 0, paramn, paramInt1, paramInt2, paramInt3, paramString);
  }

  private void a()
  {
    if (this.b != null)
    {
      this.a.clearFocus();
      this.b.a(this.a, this.a.getValue());
    }
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a();
  }

  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i = paramBundle.getInt("value");
    this.a.setValue(i);
  }

  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("value", this.a.getValue());
    return localBundle;
  }

  protected void onStop()
  {
    a();
    super.onStop();
  }

  public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.m
 * JD-Core Version:    0.6.2
 */