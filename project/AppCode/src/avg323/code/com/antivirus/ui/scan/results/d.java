package com.antivirus.ui.scan.results;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.core.scanners.ScannerSmsResult;
import com.antivirus.core.scanners.ad;
import com.antivirus.core.scanners.ag;
import com.antivirus.core.scanners.h;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.widget.protection.ProtectionWidgetPlugin;
import com.avg.ui.general.o;
import java.util.ArrayList;
import java.util.List;

public class d extends BaseExpandableListAdapter
{
  com.antivirus.core.b a;
  private int b;
  private int c;
  private i d;
  private Object e = null;
  private boolean f;
  private boolean g = true;
  private boolean h = true;
  private boolean i = true;
  private m j;
  private Context k;
  private ArrayList l;
  private ArrayList m;
  private ArrayList n;

  public d(m paramm, com.antivirus.core.b paramb, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    this.j = paramm;
    this.a = paramb;
    this.k = this.j.h().getBaseContext();
    this.l = paramArrayList1;
    this.m = paramArrayList2;
    this.f = false;
    this.n = new ArrayList();
  }

  private void a(Context paramContext, s params)
  {
    switch (h.c[params.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      AVService.a(this.j.h(), 25000, 8, ProtectionWidgetPlugin.k());
      return;
      Intent localIntent2 = new Intent();
      localIntent2.setAction("android.intent.action.MAIN");
      localIntent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
      localIntent2.setFlags(268435456);
      paramContext.startActivity(localIntent2);
      continue;
      if (Integer.parseInt(Build.VERSION.SDK) >= 14);
      for (Intent localIntent1 = new Intent("android.settings.SECURITY_SETTINGS"); ; localIntent1 = new Intent("android.settings.APPLICATION_SETTINGS"))
      {
        localIntent1.setFlags(268435456);
        paramContext.startActivity(localIntent1);
        break;
      }
      Toast.makeText(paramContext, com.antivirus.m.a(this.k, 2131296482), 1).show();
    }
  }

  private void a(s params)
  {
    int i1 = this.a.j();
    switch (h.c[params.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      AVService.a(this.j.h(), 25000, 8, ProtectionWidgetPlugin.k());
      return;
      this.a.a(i1 | 0x4);
      this.j.a.d.c(false);
      continue;
      this.a.a(i1 | 0x2);
      this.j.a.d.b(false);
      continue;
      this.a.a(i1 | 0x1);
      this.j.a.d.a(false);
    }
  }

  private void a(String paramString)
  {
    ScannerFilesResult localScannerFilesResult = new ScannerFilesResult();
    localScannerFilesResult.c.add(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("ScannerClient", com.antivirus.core.scanners.c.a);
    localBundle.putInt("__SAD", 4);
    localBundle.putParcelable("ScannerResult", localScannerFilesResult);
    AVService.a(this.j.h(), 2000, 4, localBundle);
    this.j.a.f.a(paramString);
    AVService.a(this.j.h(), 25000, 8, ProtectionWidgetPlugin.k());
  }

  private void b(s params)
  {
    int i1 = this.a.j();
    switch (h.c[params.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      AVService.a(this.j.h(), 25000, 8, ProtectionWidgetPlugin.k());
      return;
      this.a.a(i1 & 0xFFFFFFFB);
      this.j.a.d.c(true);
      continue;
      this.a.a(i1 & 0xFFFFFFFD);
      this.j.a.d.b(true);
      continue;
      this.a.a(i1 & 0xFFFFFFFE);
      this.j.a.d.a(true);
    }
  }

  private void b(String paramString)
  {
    ScannerPackagesResult localScannerPackagesResult = new ScannerPackagesResult();
    localScannerPackagesResult.c.add(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("ScannerClient", com.antivirus.core.scanners.c.a);
    localBundle.putInt("__SAD", 1);
    localBundle.putParcelable("ScannerResult", localScannerPackagesResult);
    AVService.a(this.j.h(), 2000, 4, localBundle);
    AVService.a(this.j.h(), 25000, 8, ProtectionWidgetPlugin.k());
  }

  public i a()
  {
    return this.d;
  }

  public void a(int paramInt)
  {
    if (this.m.size() > paramInt)
    {
      ((ArrayList)this.m.get(paramInt)).clear();
      if (this.n.size() > paramInt)
        ((ArrayList)this.n.get(paramInt)).clear();
      b(paramInt);
    }
  }

  public void a(int paramInt1, int paramInt2)
  {
    int i1 = ((ArrayList)this.m.get(paramInt1)).size();
    if (paramInt2 >= i1)
      com.avg.toolkit.f.a.a("Index problem, Size = " + i1 + " index = " + paramInt2);
    while (true)
    {
      return;
      ((ArrayList)this.m.get(paramInt1)).remove(paramInt2);
      ((ArrayList)this.n.get(paramInt1)).remove(paramInt2);
      b(paramInt1);
    }
  }

  public void a(ExpandableListView paramExpandableListView)
  {
    if (paramExpandableListView == null);
    while (true)
    {
      return;
      for (i locali : i.values())
        if (paramExpandableListView.isGroupExpanded(locali.ordinal()))
          paramExpandableListView.collapseGroup(locali.ordinal());
    }
  }

  public void a(i parami)
  {
    this.d = parami;
  }

  public void a(k paramk)
  {
    if (!this.l.contains(paramk.e()))
      this.l.add(paramk.e());
    int i1 = this.l.indexOf(paramk.e());
    if (this.m.size() < i1 + 1)
    {
      this.m.add(new ArrayList());
      this.n.add(new ArrayList());
    }
    ((ArrayList)this.m.get(i1)).add(paramk);
    ((ArrayList)this.n.get(i1)).add(Boolean.valueOf(false));
    if ((paramk instanceof a))
      if (!paramk.d())
        this.g = false;
    while (true)
    {
      notifyDataSetChanged();
      return;
      if ((paramk instanceof r))
      {
        if (!paramk.d())
          this.h = false;
      }
      else if (((paramk instanceof b)) && (!paramk.d()))
        this.i = false;
    }
  }

  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public boolean areAllItemsEnabled()
  {
    return true;
  }

  public k b(i parami)
  {
    Object localObject;
    switch (h.b[parami.ordinal()])
    {
    default:
      localObject = null;
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localObject;
      String str3 = com.antivirus.m.a(this.k, 2131296500);
      localObject = new a(this.k, str3, "");
      ((k)localObject).a(true);
      continue;
      String str2 = com.antivirus.m.a(this.k, 2131296501);
      localObject = new r(this.k, str2, s.a);
      ((k)localObject).a(true);
      continue;
      String str1 = com.antivirus.m.a(this.k, 2131296478);
      localObject = new b(this.k, str1, c.a, "", null);
      ((k)localObject).a(true);
    }
  }

  public Object b()
  {
    return this.e;
  }

  public void b(int paramInt)
  {
    k localk;
    if (((ArrayList)this.m.get(paramInt)).size() == 0)
    {
      localk = c(i.values()[paramInt]);
      if (localk == null)
        return;
      if (!(localk instanceof a))
        break label86;
      this.g = true;
    }
    while (true)
    {
      ((ArrayList)this.m.get(paramInt)).add(localk);
      ((ArrayList)this.n.get(paramInt)).add(Boolean.valueOf(false));
      notifyDataSetChanged();
      break;
      label86: if ((localk instanceof r))
        this.h = true;
      else if ((localk instanceof b))
        this.i = true;
    }
  }

  public k c(i parami)
  {
    String str = com.antivirus.m.a(this.k, 2131296646);
    Object localObject;
    switch (h.b[parami.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
      localObject = null;
      return localObject;
    case 1:
      localObject = new a(this.k, str, "");
    case 2:
    case 3:
    }
    while (true)
    {
      ((k)localObject).a(true);
      break;
      localObject = new r(this.k, str);
      continue;
      localObject = new b(this.k, str);
    }
  }

  public void c()
  {
    a(this.b, this.c);
  }

  public void d()
  {
    i[] arrayOfi = i.values();
    int i1 = arrayOfi.length;
    for (int i2 = 0; i2 < i1; i2++)
      a(arrayOfi[i2].ordinal());
  }

  public boolean e()
  {
    return this.f;
  }

  public void f()
  {
    List localList = com.antivirus.core.b.a.b.a(this.k).c();
    this.j.a.g.b.retainAll(localList);
    ArrayList localArrayList = (ArrayList)this.m.get(-1 + this.m.size());
    b localb = (b)localArrayList.get(-1 + localArrayList.size());
    int i1;
    String str;
    if (!this.j.a.g.b.isEmpty())
    {
      i1 = this.j.a.g.b.size();
      if (1 == i1)
      {
        str = Integer.toString(i1) + " " + com.antivirus.m.a(this.k, 2131296494);
        localb.b(str);
      }
    }
    while (true)
    {
      notifyDataSetChanged();
      ad.a(false);
      return;
      str = Integer.toString(i1) + " " + com.antivirus.m.a(this.k, 2131296495);
      break;
      this.j.a.g.a = true;
      localb.a(true);
      if (this.j.a.f.a)
        this.i = true;
    }
  }

  public Object getChild(int paramInt1, int paramInt2)
  {
    return ((ArrayList)this.m.get(paramInt1)).get(paramInt2);
  }

  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }

  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    k localk = (k)getChild(paramInt1, paramInt2);
    boolean bool = ((Boolean)((ArrayList)this.n.get(paramInt1)).get(paramInt2)).booleanValue();
    View localView1 = ((LayoutInflater)this.k.getSystemService("layout_inflater")).inflate(2130903099, null);
    View localView2 = localView1.findViewById(2131231002);
    localView2.setVisibility(8);
    TextView localTextView1 = (TextView)localView1.findViewById(2131231001);
    TextView localTextView2 = (TextView)localView1.findViewById(2131231004);
    TextView localTextView3 = (TextView)localView1.findViewById(2131231005);
    ImageView localImageView = (ImageView)localView1.findViewById(2131231003);
    Button localButton1 = (Button)localView1.findViewById(2131231006);
    Button localButton2 = (Button)localView1.findViewById(2131231007);
    CheckBox localCheckBox = (CheckBox)localView1.findViewById(2131231008);
    localCheckBox.setChecked(bool);
    localButton2.setVisibility(8);
    localTextView1.setText(localk.f());
    String str8;
    String str9;
    int i1;
    String str10;
    if (localk.d())
    {
      localButton1.setVisibility(8);
      localButton2.setVisibility(8);
      localCheckBox.setVisibility(8);
      String str7 = com.antivirus.m.a(this.k, 2131296492);
      str8 = com.antivirus.m.a(this.k, 2131296320);
      str9 = com.antivirus.m.a(this.k, 2131296493);
      i1 = getChildrenCount(paramInt1);
      str10 = getGroup(paramInt1).toString();
      if (str10.equalsIgnoreCase(str7))
        if (i1 == 0)
        {
          localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
          localTextView3.setVisibility(8);
          label307: if (localButton1 == null)
            break label928;
          localButton1.setOnClickListener(new e(this, paramInt1, paramInt2, localk));
          label329: localButton2.setOnClickListener(new f(this, paramInt1, paramInt2));
          localCheckBox.setOnCheckedChangeListener(new g(this, paramInt1, paramInt2, localk));
          if ((localButton1 != null) || (localCheckBox != null))
          {
            if (!(localk instanceof a))
              break label937;
            localButton1.setText(com.antivirus.m.a(this.j.h(), 2131296637));
            localCheckBox.setText(com.antivirus.m.a(this.j.h(), 2131296643));
          }
        }
    }
    while (true)
    {
      return localView1;
      if (!this.g)
        break;
      localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
      break;
      if (str10.equalsIgnoreCase(str8))
      {
        if (i1 == 0)
        {
          localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
          break;
        }
        if (!this.h)
          break;
        localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
        break;
      }
      if (!str10.equalsIgnoreCase(str9))
        break;
      if (i1 == 0)
      {
        localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
        break;
      }
      if (!this.i)
        break;
      localTextView1.setText(com.antivirus.m.a(this.k, 2131296646));
      break;
      if ((localk instanceof a))
      {
        localTextView1.setText(com.antivirus.m.a(this.k, 2131296664) + " " + localk.c());
        String str6 = com.antivirus.m.a(this.k, 2131296649);
        localView2.setVisibility(0);
        localTextView2.setText(((a)localk).a());
        localTextView3.setText(str6);
        localImageView.setImageDrawable(((a)localk).b());
        break label307;
      }
      if (!(localk instanceof b))
        break label307;
      b localb1 = (b)localk;
      switch (h.a[localb1.b().ordinal()])
      {
      default:
        com.avg.toolkit.f.a.a();
        break;
      case 1:
        String str4 = com.antivirus.m.a(this.k, 2131296665) + " " + localk.c();
        String str5 = com.antivirus.m.a(this.k, 2131296650);
        localTextView1.setText(str4);
        localView2.setVisibility(0);
        localTextView2.setText(localk.f());
        localTextView3.setText(str5);
        localImageView.setVisibility(8);
        break;
      case 2:
        if (localb1.d())
        {
          if (!this.j.a.f.a)
            localTextView1.setText(com.antivirus.m.a(this.k, 2131296772));
          localButton1.setVisibility(8);
          break;
        }
        String str1 = localk.f() + "\n";
        String str2 = com.antivirus.m.a(this.k, 2131296653);
        localTextView1.setText(str1 + str2);
        break;
        label928: com.avg.toolkit.f.a.a("No fix button");
        break label329;
        label937: if ((localk instanceof r))
        {
          localButton1.setText(com.antivirus.m.a(this.j.h(), 2131296657));
          String str3 = com.antivirus.m.a(this.k, 2131296502).trim();
          if (localk.f().trim().equalsIgnoreCase(str3))
            localButton1.setVisibility(8);
          localCheckBox.setText(com.antivirus.m.a(this.j.h(), 2131296643));
        }
        else if ((localk instanceof b))
        {
          b localb2 = (b)localk;
          if (c.a == localb2.b())
          {
            localButton1.setText(com.antivirus.m.a(this.j.h(), 2131296638));
            localCheckBox.setText(com.antivirus.m.a(this.j.h(), 2131296643));
          }
          else
          {
            localButton1.setText(com.antivirus.m.a(this.j.h(), 2131296640));
            localCheckBox.setVisibility(8);
          }
        }
        break;
      }
    }
  }

  public int getChildrenCount(int paramInt)
  {
    return ((ArrayList)this.m.get(paramInt)).size();
  }

  public Object getGroup(int paramInt)
  {
    return this.l.get(paramInt);
  }

  public int getGroupCount()
  {
    return this.l.size();
  }

  public long getGroupId(int paramInt)
  {
    return paramInt;
  }

  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    l locall = (l)getGroup(paramInt);
    int i1 = getChildrenCount(paramInt);
    View localView1 = ((LayoutInflater)this.k.getSystemService("layout_inflater")).inflate(2130903100, null);
    String str1 = com.antivirus.m.a(this.k, 2131296492);
    String str2 = com.antivirus.m.a(this.k, 2131296320);
    String str3 = com.antivirus.m.a(this.k, 2131296493);
    ImageView localImageView = (ImageView)localView1.findViewById(2131231009);
    TextView localTextView1 = (TextView)localView1.findViewById(2131231010);
    View localView2;
    if ((this.g) && (this.h) && (this.i))
    {
      if (o.c());
      try
      {
        ((DualPaneActivity)this.j.h()).a(com.antivirus.ui.tablet.e.b);
        localLinearLayout = (LinearLayout)paramViewGroup.findViewById(2131230990);
        if (localLinearLayout == null)
        {
          com.avg.toolkit.f.a.a("Can't get Header View");
          localView2 = null;
          return localView2;
        }
      }
      catch (Exception localException)
      {
        LinearLayout localLinearLayout;
        while (true)
          com.avg.toolkit.f.a.a(localException.toString());
        TextView localTextView2 = (TextView)localLinearLayout.findViewById(2131230991);
        if (localTextView2 != null)
        {
          localTextView2.setTextColor(paramViewGroup.getContext().getResources().getColor(2131165242));
          localTextView2.setText(com.antivirus.m.a(this.k, 2131296658));
        }
        TextView localTextView3 = (TextView)paramViewGroup.findViewById(2131230992);
        if (localTextView3 != null)
          localTextView3.setVisibility(8);
      }
    }
    String str4 = getGroup(paramInt).toString();
    if (str4.equalsIgnoreCase(str1))
      if (i1 == 0)
        localImageView.setImageResource(2130837768);
    while (true)
    {
      localTextView1.setText(locall.toString());
      localView2 = localView1;
      break;
      if (!this.g)
      {
        localImageView.setImageResource(2130837769);
      }
      else
      {
        localImageView.setImageResource(2130837768);
        continue;
        if (str4.equalsIgnoreCase(str2))
        {
          if (i1 == 0)
            localImageView.setImageResource(2130837768);
          else if (!this.h)
            localImageView.setImageResource(2130837769);
          else
            localImageView.setImageResource(2130837768);
        }
        else if (str4.equalsIgnoreCase(str3))
          if (i1 == 0)
            localImageView.setImageResource(2130837768);
          else if (!this.i)
            localImageView.setImageResource(2130837769);
          else
            localImageView.setImageResource(2130837768);
      }
    }
  }

  public boolean hasStableIds()
  {
    return true;
  }

  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.d
 * JD-Core Version:    0.6.2
 */