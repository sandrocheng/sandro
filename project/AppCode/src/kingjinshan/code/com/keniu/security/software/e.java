package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.d.a;
import com.keniu.security.util.ax;
import java.io.File;
import java.util.List;

final class e
  implements DialogInterface.OnClickListener
{
  e(APKManagerActivity paramAPKManagerActivity, a parama)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    long l = APKManagerActivity.i(this.b);
    int i = APKManagerActivity.j(this.b) + APKManagerActivity.k(this.b);
    if (this.a.e == 2)
    {
      APKManagerActivity.l(this.b);
      APKManagerActivity.m(this.b).remove(APKManagerActivity.h(this.b));
    }
    while (true)
    {
      APKManagerActivity.a(this.b, this.a.c());
      new File(this.a.e()).delete();
      TextView localTextView = APKManagerActivity.o(this.b);
      String str1 = this.b.getString(2131428728);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(APKManagerActivity.j(this.b) + APKManagerActivity.k(this.b));
      arrayOfObject1[1] = ax.f(APKManagerActivity.i(this.b));
      localTextView.setText(String.format(str1, arrayOfObject1));
      APKManagerActivity.f(this.b).notifyDataSetChanged();
      APKManagerActivity localAPKManagerActivity = this.b;
      String str2 = this.b.getString(2131428731);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i - APKManagerActivity.j(this.b) - APKManagerActivity.k(this.b));
      arrayOfObject2[1] = ax.f(l - APKManagerActivity.i(this.b));
      Toast.makeText(localAPKManagerActivity, String.format(str2, arrayOfObject2), 0).show();
      this.b.removeDialog(1);
      return;
      APKManagerActivity.n(this.b);
      APKManagerActivity.m(this.b).remove(APKManagerActivity.h(this.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.e
 * JD-Core Version:    0.6.2
 */