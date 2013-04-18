package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.keniu.security.d.a;
import java.io.File;

final class f
  implements DialogInterface.OnClickListener
{
  f(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.removeDialog(1);
    a locala = (a)APKManagerActivity.a(this.a).getAdapter().getItem(APKManagerActivity.h(this.a));
    if (!locala.k())
    {
      Uri localUri = Uri.fromFile(new File(locala.e()));
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setDataAndType(localUri, "application/vnd.android.package-archive");
      this.a.startActivityForResult(localIntent, 0);
    }
    this.a.removeDialog(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.f
 * JD-Core Version:    0.6.2
 */