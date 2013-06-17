package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class e extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int a = 0;
  int b = 0;
  boolean c = true;
  boolean d = true;
  int e = -1;
  Dialog f;
  boolean g;
  boolean h;
  boolean i;

  public int a()
  {
    return this.b;
  }

  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    if (!this.i)
      this.h = false;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.G == 0);
    for (boolean bool = true; ; bool = false)
    {
      this.d = bool;
      if (paramBundle != null)
      {
        this.a = paramBundle.getInt("android:style", 0);
        this.b = paramBundle.getInt("android:theme", 0);
        this.c = paramBundle.getBoolean("android:cancelable", true);
        this.d = paramBundle.getBoolean("android:showsDialog", this.d);
        this.e = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }

  public void a(o paramo, String paramString)
  {
    this.h = false;
    this.i = true;
    z localz = paramo.a();
    localz.a(this, paramString);
    localz.a();
  }

  void a(boolean paramBoolean)
  {
    if (this.h);
    while (true)
    {
      return;
      this.h = true;
      this.i = false;
      if (this.f != null)
      {
        this.f.dismiss();
        this.f = null;
      }
      this.g = true;
      if (this.e >= 0)
      {
        j().a(this.e, 1);
        this.e = -1;
      }
      else
      {
        z localz = j().a();
        localz.a(this);
        if (paramBoolean)
          localz.b();
        else
          localz.a();
      }
    }
  }

  public LayoutInflater b(Bundle paramBundle)
  {
    LayoutInflater localLayoutInflater;
    if (!this.d)
      localLayoutInflater = super.b(paramBundle);
    while (true)
    {
      return localLayoutInflater;
      this.f = c(paramBundle);
      switch (this.a)
      {
      default:
      case 3:
      case 1:
      case 2:
      }
      while (true)
      {
        if (this.f == null)
          break label106;
        localLayoutInflater = (LayoutInflater)this.f.getContext().getSystemService("layout_inflater");
        break;
        this.f.getWindow().addFlags(24);
        this.f.requestWindowFeature(1);
      }
      label106: localLayoutInflater = (LayoutInflater)this.C.getSystemService("layout_inflater");
    }
  }

  public void b()
  {
    super.b();
    if ((!this.i) && (!this.h))
      this.h = true;
  }

  public Dialog c(Bundle paramBundle)
  {
    return new Dialog(h(), a());
  }

  public void c()
  {
    super.c();
    if (this.f != null)
    {
      this.g = false;
      this.f.show();
    }
  }

  public void d()
  {
    super.d();
    if (this.f != null)
      this.f.hide();
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    if (!this.d);
    while (true)
    {
      return;
      View localView = q();
      if (localView != null)
      {
        if (localView.getParent() != null)
          throw new IllegalStateException("DialogFragment can not be attached to a container view");
        this.f.setContentView(localView);
      }
      this.f.setOwnerActivity(h());
      this.f.setCancelable(this.c);
      this.f.setOnCancelListener(this);
      this.f.setOnDismissListener(this);
      if (paramBundle != null)
      {
        Bundle localBundle = paramBundle.getBundle("android:savedDialogState");
        if (localBundle != null)
          this.f.onRestoreInstanceState(localBundle);
      }
    }
  }

  public void e()
  {
    super.e();
    if (this.f != null)
    {
      this.g = true;
      this.f.dismiss();
      this.f = null;
    }
  }

  public void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    if (this.f != null)
    {
      Bundle localBundle = this.f.onSaveInstanceState();
      if (localBundle != null)
        paramBundle.putBundle("android:savedDialogState", localBundle);
    }
    if (this.a != 0)
      paramBundle.putInt("android:style", this.a);
    if (this.b != 0)
      paramBundle.putInt("android:theme", this.b);
    if (!this.c)
      paramBundle.putBoolean("android:cancelable", this.c);
    if (!this.d)
      paramBundle.putBoolean("android:showsDialog", this.d);
    if (this.e != -1)
      paramBundle.putInt("android:backStackId", this.e);
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.g)
      a(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.e
 * JD-Core Version:    0.6.2
 */