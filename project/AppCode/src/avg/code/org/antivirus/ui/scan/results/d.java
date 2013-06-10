package org.antivirus.ui.scan.results;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
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
import java.util.ArrayList;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.widget.a.k;

public final class d extends BaseExpandableListAdapter
{
  EngineSettings a;
  private int b;
  private int c;
  private i d;
  private Object e = null;
  private boolean f;
  private boolean g = true;
  private boolean h = true;
  private boolean i = true;
  private boolean j = true;
  private ScanResultsExpandable k;
  private View l = null;
  private Context m;
  private ArrayList n;
  private ArrayList o;
  private ArrayList p;

  public d(ScanResultsExpandable paramScanResultsExpandable, EngineSettings paramEngineSettings, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    this.k = paramScanResultsExpandable;
    this.a = paramEngineSettings;
    this.m = paramScanResultsExpandable.getBaseContext();
    this.n = paramArrayList1;
    this.o = paramArrayList2;
    this.f = false;
    this.p = new ArrayList();
  }

  private void a(int paramInt)
  {
    Object localObject2;
    if (((ArrayList)this.o.get(paramInt)).size() == 0)
    {
      i locali = i.values()[paramInt];
      String str = Strings.getString(2131296447);
      Object localObject1;
      switch (h.b[locali.ordinal()])
      {
      default:
        Logger.errorBadAgrument();
        localObject2 = null;
        if (localObject2 == null)
          return;
        break;
      case 1:
        localObject1 = new a(str, "");
      case 2:
      case 3:
        while (true)
        {
          ((j)localObject1).f = true;
          localObject2 = localObject1;
          break;
          localObject1 = new q(str);
          continue;
          localObject1 = new b(str);
        }
      }
      if (!(localObject2 instanceof a))
        break label183;
      this.g = true;
    }
    while (true)
    {
      ((ArrayList)this.o.get(paramInt)).add(localObject2);
      ((ArrayList)this.p.get(paramInt)).add(Boolean.valueOf(false));
      notifyDataSetChanged();
      break;
      label183: if ((localObject2 instanceof q))
        this.h = true;
      else
        this.i = true;
    }
  }

  public static void a(ExpandableListView paramExpandableListView)
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

  public static j b(i parami)
  {
    Object localObject;
    switch (h.b[parami.ordinal()])
    {
    default:
      localObject = null;
      Logger.errorBadAgrument();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localObject;
      localObject = new a(Strings.getString(2131296290), "");
      ((j)localObject).f = true;
      continue;
      localObject = new q(Strings.getString(2131296291), r.a);
      ((j)localObject).f = true;
      continue;
      localObject = new b(Strings.getString(2131296268), c.a, "", null);
      ((j)localObject).f = true;
    }
  }

  public final i a()
  {
    return this.d;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    int i1 = ((ArrayList)this.o.get(paramInt1)).size();
    if (paramInt2 >= i1)
      Logger.error("Index problem, Size = " + i1 + " index = " + paramInt2);
    while (true)
    {
      return;
      ((ArrayList)this.o.get(paramInt1)).remove(paramInt2);
      ((ArrayList)this.p.get(paramInt1)).remove(paramInt2);
      a(paramInt1);
    }
  }

  public final void a(i parami)
  {
    this.d = parami;
  }

  public final void a(j paramj)
  {
    if (!this.n.contains(paramj.g))
      this.n.add(paramj.g);
    int i1 = this.n.indexOf(paramj.g);
    if (this.o.size() < i1 + 1)
    {
      this.o.add(new ArrayList());
      this.p.add(new ArrayList());
    }
    ((ArrayList)this.o.get(i1)).add(paramj);
    ((ArrayList)this.p.get(i1)).add(Boolean.valueOf(false));
    if ((paramj instanceof a))
      if (!paramj.f)
        this.g = false;
    while (true)
    {
      notifyDataSetChanged();
      return;
      if ((paramj instanceof q))
      {
        if (!paramj.f)
          this.h = false;
      }
      else if (((paramj instanceof b)) && (!paramj.f))
        this.i = false;
    }
  }

  public final boolean areAllItemsEnabled()
  {
    return true;
  }

  public final Object b()
  {
    return this.e;
  }

  public final void c()
  {
    a(this.b, this.c);
  }

  public final void d()
  {
    i[] arrayOfi = i.values();
    int i1 = arrayOfi.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      int i3 = arrayOfi[i2].ordinal();
      if (this.o.size() > i3)
      {
        ((ArrayList)this.o.get(i3)).clear();
        if (this.p.size() > i3)
          ((ArrayList)this.p.get(i3)).clear();
        a(i3);
      }
    }
  }

  public final boolean e()
  {
    return this.f;
  }

  public final void f()
  {
    this.f = false;
  }

  public final void g()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("firstScan", false);
    localIntent.putExtra("threatFound", this.k.a.a());
    localIntent.putExtra("threatCount", String.valueOf(this.k.a.b()));
    localIntent.putExtra("ScannerClient", org.antivirus.core.scanners.c.a);
    k.a(this.k).a(localIntent.getExtras());
  }

  public final Object getChild(int paramInt1, int paramInt2)
  {
    return ((ArrayList)this.o.get(paramInt1)).get(paramInt2);
  }

  public final long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }

  public final View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    j localj = (j)getChild(paramInt1, paramInt2);
    boolean bool = ((Boolean)((ArrayList)this.p.get(paramInt1)).get(paramInt2)).booleanValue();
    View localView1 = ((LayoutInflater)this.m.getSystemService("layout_inflater")).inflate(2130903086, null);
    View localView2 = localView1.findViewById(2131230936);
    localView2.setVisibility(8);
    TextView localTextView1 = (TextView)localView1.findViewById(2131230935);
    TextView localTextView2 = (TextView)localView1.findViewById(2131230938);
    TextView localTextView3 = (TextView)localView1.findViewById(2131230939);
    ImageView localImageView = (ImageView)localView1.findViewById(2131230937);
    Button localButton1 = (Button)localView1.findViewById(2131230940);
    Button localButton2 = (Button)localView1.findViewById(2131230941);
    CheckBox localCheckBox = (CheckBox)localView1.findViewById(2131230942);
    localCheckBox.setChecked(bool);
    localButton2.setVisibility(8);
    localTextView1.setText(localj.d);
    if (localj.f)
    {
      localButton1.setVisibility(8);
      localButton2.setVisibility(8);
      localCheckBox.setVisibility(8);
      localTextView1.setText(Strings.getString(2131296447));
      localTextView3.setVisibility(8);
      if (localButton1 == null)
        break label659;
      localButton1.setOnClickListener(new e(this, paramInt1, paramInt2, localj, localView1));
      label258: localButton2.setOnClickListener(new f(this, paramInt1, paramInt2));
      localCheckBox.setOnCheckedChangeListener(new g(this, paramInt1, paramInt2, localj));
      if ((localButton1 != null) || (localCheckBox != null))
      {
        if (!(localj instanceof a))
          break label668;
        localButton1.setText(2131296440);
        localCheckBox.setText(2131296445);
      }
    }
    while (true)
    {
      return localView1;
      if ((localj instanceof a))
      {
        localTextView1.setText(Strings.getString(2131296462) + " " + localj.e);
        String str7 = Strings.getString(2131296450);
        localView2.setVisibility(0);
        localTextView2.setText(((a)localj).a);
        localTextView3.setText(str7);
        localImageView.setImageDrawable(((a)localj).b);
        break;
      }
      if (!(localj instanceof b))
        break;
      b localb1 = (b)localj;
      switch (h.a[localb1.a.ordinal()])
      {
      default:
        Logger.errorBadAgrument();
        break;
      case 1:
        String str5 = Strings.getString(2131296463) + " " + localj.e;
        String str6 = Strings.getString(2131296451);
        localTextView1.setText(str5);
        localView2.setVisibility(0);
        localTextView2.setText(localj.d);
        localTextView3.setText(str6);
        localImageView.setVisibility(8);
        break;
      case 2:
        String str1 = localj.d + "\n";
        String str2 = Strings.getString(2131296452) + "\n\n";
        String str3 = Strings.getString(2131296453);
        localTextView1.setText(str1 + str2 + str3);
        break;
        label659: Logger.error("No fix button");
        break label258;
        label668: if ((localj instanceof q))
        {
          localButton1.setText(2131296456);
          String str4 = Strings.getString(2131296292).trim();
          if (localj.d.trim().equalsIgnoreCase(str4))
            localButton1.setVisibility(8);
          localCheckBox.setText(2131296445);
        }
        else if ((localj instanceof b))
        {
          b localb2 = (b)localj;
          if (c.a == localb2.a)
          {
            localButton1.setText(2131296441);
            localCheckBox.setText(2131296445);
          }
          else
          {
            localButton1.setText(2131296442);
            localCheckBox.setVisibility(8);
          }
        }
        break;
      }
    }
  }

  public final int getChildrenCount(int paramInt)
  {
    return ((ArrayList)this.o.get(paramInt)).size();
  }

  public final Object getGroup(int paramInt)
  {
    return this.n.get(paramInt);
  }

  public final int getGroupCount()
  {
    return this.n.size();
  }

  public final long getGroupId(int paramInt)
  {
    return paramInt;
  }

  public final View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    String str1 = (String)getGroup(paramInt);
    int i1 = getChildrenCount(paramInt);
    View localView1 = ((LayoutInflater)this.m.getSystemService("layout_inflater")).inflate(2130903087, null);
    String str2 = Strings.getString(2131296283);
    String str3 = Strings.getString(2131296284);
    String str4 = Strings.getString(2131296285);
    String str5 = Strings.getString(2131296286);
    ImageView localImageView = (ImageView)localView1.findViewById(2131230944);
    TextView localTextView1 = (TextView)localView1.findViewById(2131230945);
    View localView2;
    if ((this.g) && (this.h) && (this.i) && (this.j))
    {
      LinearLayout localLinearLayout = (LinearLayout)paramViewGroup.findViewById(2131230924);
      if (localLinearLayout == null)
      {
        Logger.error("Can't get Header View");
        localView2 = null;
        return localView2;
      }
      TextView localTextView2 = (TextView)localLinearLayout.findViewById(2131230925);
      if (localTextView2 != null)
      {
        localTextView2.setTextColor(paramViewGroup.getContext().getResources().getColor(2131165241));
        localTextView2.setText(Strings.getString(2131296457));
      }
      TextView localTextView3 = (TextView)paramViewGroup.findViewById(2131230926);
      if (localTextView3 != null)
        localTextView3.setVisibility(8);
    }
    String str6 = getGroup(paramInt).toString();
    if (str6.equalsIgnoreCase(str2))
    {
      if (i1 == 0)
        break label451;
      if (!this.g)
        localImageView.setImageResource(2130837723);
    }
    while (true)
    {
      localTextView1.setText(str1);
      localView2 = localView1;
      break;
      localImageView.setImageResource(2130837722);
      continue;
      if (str6.equalsIgnoreCase(str3))
      {
        if (i1 != 0)
        {
          if (!this.h)
          {
            localImageView.setImageResource(2130837723);
            continue;
          }
          localImageView.setImageResource(2130837722);
        }
      }
      else if (str6.equalsIgnoreCase(str4))
      {
        if (i1 != 0)
        {
          if (!this.i)
          {
            localImageView.setImageResource(2130837723);
            continue;
          }
          localImageView.setImageResource(2130837722);
        }
      }
      else if (str6.equalsIgnoreCase(str5))
      {
        if (i1 == 0)
          localImageView.setImageResource(2130837723);
        while (true)
        {
          if (this.j)
            break label451;
          localImageView.setImageResource(2130837723);
          break;
          if (!this.j)
            localImageView.setImageResource(2130837723);
          else
            localImageView.setImageResource(2130837722);
        }
        label451: localImageView.setImageResource(2130837722);
      }
    }
  }

  public final boolean hasStableIds()
  {
    return true;
  }

  public final boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.d
 * JD-Core Version:    0.6.2
 */