package com.avast.android.generic.app.wizard;

import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.q;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.v;
import com.avast.android.generic.y;
import com.avast.android.generic.z;

public abstract class EulaFragment extends TrackedFragment
{
  private TextView a;
  private TextView b;
  private int c = z.cH;
  private long d;

  protected abstract void c();

  protected abstract void d();

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.H, paramViewGroup, false);
    b(localView);
    if (al.b(getActivity()))
      ((ScrollView)localView).setBackgroundResource(q.e);
    this.a = ((TextView)localView.findViewById(t.E));
    this.b = ((TextView)localView.findViewById(t.aG));
    Spanned localSpanned = Html.fromHtml(al.a(getResources(), y.a).toString());
    this.a.setText(localSpanned);
    com.avast.android.generic.ui.a.a locala = new com.avast.android.generic.ui.a.a(this.a);
    locala.setStartTime(9223372036854775807L);
    locala.setDuration(1500L);
    this.a.setAnimation(locala);
    this.b.setOnClickListener(new a(this, locala));
    ((TextView)localView.findViewById(t.i)).setOnClickListener(new b(this));
    localView.findViewById(t.f).setOnClickListener(new c(this));
    localView.findViewById(t.m).setOnClickListener(new d(this));
    Intent localIntent = new Intent("com.avast.android.generic.action.SHARE_SETTINGS");
    localIntent.putExtra("sourcePackage", getActivity().getPackageName());
    com.avast.android.generic.util.ae.a(localIntent);
    getActivity().sendBroadcast(localIntent);
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(getActivity(), com.avast.android.generic.ae.class);
    CheckBoxRow localCheckBoxRow = (CheckBoxRow)localView.findViewById(t.aM);
    localCheckBoxRow.b(localae.p());
    localCheckBoxRow.a(new e(this, localae));
    return localView;
  }

  public void onResume()
  {
    super.onResume();
    this.d = SystemClock.uptimeMillis();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.EulaFragment
 * JD-Core Version:    0.6.2
 */