package com.avast.android.generic.app.about;

import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.SlideBlock;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;
import com.avast.android.generic.y;

class d extends AsyncTask
{
  d(AboutFragment paramAboutFragment, SlideBlock paramSlideBlock)
  {
  }

  protected CharSequence a(Void[] paramArrayOfVoid)
  {
    if (this.b.isAdded());
    for (Spanned localSpanned = Html.fromHtml(al.a(this.b.getResources(), y.a).toString()); ; localSpanned = null)
      return localSpanned;
  }

  protected void a(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null);
    try
    {
      this.a.setEnabled(true);
      View localView = ((LayoutInflater)this.b.getActivity().getSystemService("layout_inflater")).inflate(v.G, null);
      ((TextView)localView.findViewById(t.M)).setText(paramCharSequence);
      this.a.a(localView);
      label57: return;
    }
    catch (Exception localException)
    {
      break label57;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.d
 * JD-Core Version:    0.6.2
 */