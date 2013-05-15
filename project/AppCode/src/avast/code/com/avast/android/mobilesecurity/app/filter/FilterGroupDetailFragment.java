package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avast.android.generic.d.a;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.widget.TimeButtonRow;
import com.avast.android.generic.ui.widget.WeekDaysRow;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.x;
import com.avast.android.mobilesecurity.app.filter.core.d;
import com.avast.android.mobilesecurity.ui.widget.SmsCallButtons;

public class FilterGroupDetailFragment extends TrackedFragment
  implements LoaderManager.LoaderCallbacks
{
  private x a;
  private Uri b;
  private long c;
  private EditText d;
  private WeekDaysRow e;
  private TimeButtonRow f;
  private TimeButtonRow g;
  private SmsCallButtons h;
  private SmsCallButtons i;
  private LinearLayout j;
  private TextView k;
  private TextView l;

  private void a(Cursor paramCursor)
  {
    this.d.setText(paramCursor.getString(paramCursor.getColumnIndex("name")));
    a locala = new a(this.a, paramCursor, this.b);
    this.e.a(locala);
    this.f.a(locala);
    this.g.a(locala);
    this.h.a(locala);
    this.i.a(locala);
    this.d.addTextChangedListener(new k(this, locala));
    this.j.setOnClickListener(new l(this));
  }

  public String a()
  {
    return "/ms/filter/group";
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    if (paramm.k() == 1)
      if ((paramCursor != null) && (paramCursor.moveToFirst()))
        a(paramCursor);
    while (true)
    {
      return;
      if ((paramm.k() == 2) && (paramCursor != null))
      {
        this.k.setText("(" + paramCursor.getCount() + ")");
        StringBuilder localStringBuilder = new StringBuilder();
        int m = paramCursor.getColumnIndex("lookupKey");
        int n = paramCursor.getColumnIndex("type");
        while ((paramCursor.moveToNext()) && (paramCursor.getPosition() < 5))
        {
          int i1 = paramCursor.getInt(n);
          if (i1 == 0)
          {
            String str = paramCursor.getString(m);
            localStringBuilder.append(d.a(getActivity(), str));
          }
          if (i1 == 10)
            localStringBuilder.append(paramCursor.getString(paramCursor.getColumnIndex("phone")));
          if (i1 == 21)
            localStringBuilder.append(getString(2131493543));
          if (i1 == 22)
            localStringBuilder.append(getString(2131493542));
          localStringBuilder.append(", ");
        }
        if (localStringBuilder.length() > 2)
        {
          localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
          localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        }
        this.l.setText(localStringBuilder.toString());
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = new x(getActivity().getContentResolver(), null);
    this.b = BaseActivity.a(getArguments()).getData();
    if (this.b == null)
      j();
    while (true)
    {
      return;
      this.c = Long.parseLong(this.b.getLastPathSegment());
      getLoaderManager().initLoader(1, null, this);
      getLoaderManager().initLoader(2, null, this);
    }
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    f localf;
    if (paramInt == 1)
      localf = new f(getActivity(), this.b, null, null, null, null);
    while (true)
    {
      return localf;
      if (paramInt == 2)
        localf = new f(getActivity(), com.avast.android.mobilesecurity.i.a(this.c), null, null, null, null);
      else
        localf = null;
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903120, paramViewGroup, false);
    com.avast.android.generic.util.m.c("FilterGroupDetail.onCreateView()");
    this.d = ((EditText)localViewGroup.findViewById(2131165483));
    this.h = ((SmsCallButtons)localViewGroup.findViewById(2131165484));
    this.h.requestFocus();
    this.i = ((SmsCallButtons)localViewGroup.findViewById(2131165485));
    this.i.a(false);
    this.e = ((WeekDaysRow)localViewGroup.findViewById(2131165422));
    this.f = ((TimeButtonRow)localViewGroup.findViewById(2131165420));
    this.g = ((TimeButtonRow)localViewGroup.findViewById(2131165421));
    this.j = ((LinearLayout)localViewGroup.findViewById(2131165486));
    this.k = ((TextView)localViewGroup.findViewById(2131165638));
    this.l = ((TextView)localViewGroup.findViewById(2131165639));
    this.k.setText("");
    this.l.setText("");
    localViewGroup.findViewById(2131165479).setOnClickListener(new i(this));
    this.h.a(new j(this));
    if ((al.b()) && (LGWarningDialog.a(getActivity())))
      this.h.a(true, false);
    return localViewGroup;
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
  }

  public void onPause()
  {
    super.onPause();
    com.avast.android.generic.util.m.c("FilterGroupDetail.onPause()");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterGroupDetailFragment
 * JD-Core Version:    0.6.2
 */