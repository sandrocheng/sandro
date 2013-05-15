package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.avast.android.generic.ad;
import com.avast.android.generic.d;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.TimeButtonRow;
import com.avast.android.generic.ui.widget.WeekDaysRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.filebrowser.h;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.ui.widget.ButtonRow;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class ScannerFragment extends TrackedFragment
  implements LoaderManager.LoaderCallbacks
{
  private static final int a = "file://".length();
  private Button b;
  private com.avast.android.mobilesecurity.t c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private ButtonRow f;
  private CheckBoxRow g;
  private WeekDaysRow h;
  private TimeButtonRow i;
  private c j = new r(this);

  private void c()
  {
    ScannerScanActivity.a(getActivity());
  }

  private void d()
  {
    boolean bool1;
    label55: boolean bool2;
    label92: TimeButtonRow localTimeButtonRow;
    if ((this.c.aO()) || (this.c.aP()))
    {
      bool1 = true;
      if ((!this.c.aO()) || (!this.c.aP()))
        break label207;
      this.f.d(getString(2131493393));
      this.f.setEnabled(bool1);
      this.g.setEnabled(bool1);
      WeekDaysRow localWeekDaysRow = this.h;
      if ((!this.c.aQ()) || (!bool1))
        break label271;
      bool2 = true;
      localWeekDaysRow.setEnabled(bool2);
      localTimeButtonRow = this.i;
      if ((!this.c.aQ()) || (!bool1))
        break label276;
    }
    label271: label276: for (boolean bool3 = true; ; bool3 = false)
    {
      localTimeButtonRow.setEnabled(bool3);
      StringBuilder localStringBuilder = new StringBuilder();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = e();
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131493383, arrayOfObject) + "\n");
      localSpannableStringBuilder.append(getText(2131493385));
      this.e.a(localSpannableStringBuilder);
      return;
      bool1 = false;
      break;
      label207: if (this.c.aO())
      {
        this.f.d(getString(2131493394));
        break label55;
      }
      if (this.c.aP())
      {
        this.f.d(getString(2131493395));
        break label55;
      }
      this.f.d("");
      break label55;
      bool2 = false;
      break label92;
    }
  }

  private String e()
  {
    List localList = this.c.aT();
    if (localList == null);
    StringBuilder localStringBuilder;
    for (String str = getString(2131493384); ; str = localStringBuilder.toString())
    {
      return str;
      localStringBuilder = new StringBuilder();
      if (localList.size() > 1)
        localStringBuilder.append("\n");
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localStringBuilder.append(h.a((String)localIterator.next()).c()).append(",\n");
      if (localStringBuilder.length() >= 2)
        localStringBuilder.delete(-2 + localStringBuilder.length(), localStringBuilder.length());
    }
  }

  public String a()
  {
    return "/ms/scanner";
  }

  public void a(m paramm, Cursor paramCursor)
  {
    int n;
    if (paramm.k() == 10003)
    {
      int k = paramCursor.getCount();
      this.b.setVisibility(0);
      boolean bool = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class)).am();
      if (k <= 0)
        break label121;
      Button localButton1 = this.b;
      if (!bool)
        break label114;
      n = 2130837881;
      localButton1.setBackgroundResource(n);
      Button localButton2 = this.b;
      Resources localResources2 = getResources();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(k);
      localButton2.setText(localResources2.getQuantityString(2131689491, k, arrayOfObject));
    }
    while (true)
    {
      paramm.t();
      return;
      label114: n = 2130837894;
      break;
      label121: this.b.setText(getText(2131493373));
      this.b.setBackgroundResource(2130837884);
      Resources localResources1 = getResources();
      int m = localResources1.getDimensionPixelSize(2131361843);
      this.b.setPadding(m, localResources1.getDimensionPixelSize(2131361844), m, localResources1.getDimensionPixelSize(2131361842));
    }
  }

  public int a_()
  {
    return 2131493354;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getSupportLoaderManager().initLoader(10003, null, this);
    this.j.a(null, true);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Uri localUri;
    if ((paramInt1 == 123) && (paramInt2 == -1) && (paramIntent != null))
    {
      localUri = paramIntent.getData();
      if (localUri == null)
        break label93;
      if (!localUri.equals(Uri.parse("file://ROOT_PATH")))
        break label53;
      this.c.a(null);
    }
    while (true)
    {
      d();
      return;
      label53: com.avast.android.mobilesecurity.t localt = this.c;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = localUri.toString().substring(a);
      localt.a(Arrays.asList(arrayOfString));
      continue;
      label93: ArrayList localArrayList1 = paramIntent.getStringArrayListExtra("result");
      if ((localArrayList1 != null) && (localArrayList1.size() > 0))
      {
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator = localArrayList1.iterator();
        while (localIterator.hasNext())
          localArrayList2.add(((String)localIterator.next()).substring(a));
        this.c.a(localArrayList2);
      }
      else
      {
        this.c.a(null);
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class));
    setHasOptionsMenu(true);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new f(getActivity(), q.c(), null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903137, paramViewGroup, false);
    this.b = ((Button)localView.findViewById(2131165479));
    this.b.setOnClickListener(new s(this));
    this.f = ((ButtonRow)localView.findViewById(2131165524));
    this.f.setOnClickListener(new t(this));
    this.d = ((CheckBoxRow)localView.findViewById(2131165522));
    this.d.a(this.j);
    this.e = ((CheckBoxRow)localView.findViewById(2131165523));
    this.e.a(this.j);
    this.e.setOnLongClickListener(new u(this));
    this.g = ((CheckBoxRow)localView.findViewById(2131165525));
    this.g.a(new v(this));
    this.g.setOnClickListener(new w(this));
    this.h = ((WeekDaysRow)localView.findViewById(2131165422));
    this.h.a(new x(this));
    this.i = ((TimeButtonRow)localView.findViewById(2131165526));
    d();
    return localView;
  }

  public void onLoaderReset(m paramm)
  {
  }

  public void onPause()
  {
    int k = d.b(this.h.c());
    int m = this.i.c();
    AlarmReceiver.a(getActivity(), k, m);
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerFragment
 * JD-Core Version:    0.6.2
 */