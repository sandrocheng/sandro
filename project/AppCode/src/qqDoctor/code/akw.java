import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class akw extends aju<kw>
{
  protected SoftwareManager a;
  BaseView b;
  private Drawable c;
  private int d = -1;
  private ListView e;
  private List<Integer> f = new ArrayList();
  private sl g;

  public akw(BaseView paramBaseView, ListView paramListView, List<ListModel<kw>> paramList, int paramInt)
  {
    super(paramBaseView.getContext(), paramList);
    this.b = paramBaseView;
    this.e = paramListView;
    this.d = paramInt;
    this.c = this.mContext.getResources().getDrawable(2130837521);
    this.a = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.g = paramBaseView.getImageLoaderService();
  }

  public static String a(long paramLong)
  {
    if (paramLong == -1L);
    for (String str = "0K"; ; str = a.c(paramLong))
      return str;
  }

  private String d(kw paramkw)
  {
    String str = "";
    switch (this.d)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return str;
      str = paramkw.getApkPath();
      continue;
      str = paramkw.h();
      continue;
      str = paramkw.getPackageName();
    }
  }

  public void a()
  {
  }

  protected abstract void a(akw.a parama, kw paramkw);

  public final void a(View paramView)
  {
    while (true)
    {
      int i;
      try
      {
        i = b((kw)paramView.getTag());
        if (i == -1)
          return;
        if (((CheckBoxView)paramView).getChecked())
        {
          if (!this.f.contains(Integer.valueOf(i)))
            this.f.add(Integer.valueOf(i));
          a();
          continue;
        }
      }
      finally
      {
      }
      this.f.remove(new Integer(i));
    }
  }

  public final void a(Integer paramInteger)
  {
    try
    {
      this.f.remove(paramInteger);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(List<Integer> paramList)
  {
    try
    {
      this.f = paramList;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void a(kw paramkw)
  {
    if (paramkw.f() == -1)
      paramkw.b(0);
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ArrayList localArrayList;
      try
      {
        localArrayList = new ArrayList();
        Iterator localIterator = this.mDataList.iterator();
        while (localIterator.hasNext())
        {
          int i = b((kw)localIterator.next());
          if (i != -1)
            localArrayList.add(Integer.valueOf(i));
        }
      }
      finally
      {
      }
      this.f = localArrayList;
    }
    while (true)
    {
      notifyDataSetChanged();
      a();
      return;
      this.f.clear();
    }
  }

  public int b(kw paramkw)
  {
    return paramkw.getPackageName().hashCode();
  }

  public void b(akw.a parama, kw paramkw)
  {
    parama.b.setText(paramkw.getAppName());
    if (paramkw.f() == 1)
    {
      parama.e.setText(paramkw.getVersion() + this.mContext.getString(2131428301));
      parama.d.setText(a(paramkw.getSize()));
      if (paramkw.n() != -1)
        parama.l.setText(kw.a[paramkw.n()]);
    }
    while (true)
    {
      return;
      parama.e.setText(paramkw.getVersion() + this.mContext.getString(2131428301));
      parama.d.setText(a(paramkw.getSize()));
    }
  }

  public void b(View paramView)
  {
  }

  public String c(kw paramkw)
  {
    if (paramkw.n() == -1);
    try
    {
      if (this.d == 0)
      {
        if (!this.a.isPackageInstalled(paramkw.getPackageName()))
          paramkw.e(1);
        while (true)
        {
          return paramkw.j();
          PackageInfo localPackageInfo = gx.a(this.mContext, paramkw.getPackageName());
          if (paramkw.getVersionCode() <= localPackageInfo.versionCode)
            break;
          paramkw.e(3);
          paramkw.d(1);
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        paramkw.e(0);
        continue;
        paramkw.e(2);
        continue;
        if (!this.a.isPackageInstalled(paramkw.getPackageName()))
          paramkw.e(1);
        else if (paramkw.i() == 1)
          paramkw.e(3);
        else
          paramkw.e(2);
      }
    }
  }

  public final List<Integer> c()
  {
    try
    {
      List localList = this.f;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void c(akw.a parama, kw paramkw)
  {
    parama.k.setVisibility(0);
    parama.d.setVisibility(0);
    parama.e.setVisibility(0);
    parama.j.setVisibility(8);
    int i = b(paramkw);
    if (i == -1);
    while (true)
    {
      return;
      parama.i.setClickListener(null);
      parama.i.setChecked(this.f.contains(Integer.valueOf(i)));
      parama.i.setTag(paramkw);
      parama.i.setClickListener(new aky(this));
    }
  }

  public final List<kw> d()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      synchronized (this.mDataList)
      {
        Iterator localIterator1 = this.f.iterator();
        Integer localInteger;
        kw localkw;
        do
        {
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext())
              break;
            localInteger = (Integer)localIterator1.next();
            localIterator2 = this.mDataList.iterator();
          }
          localkw = (kw)localIterator2.next();
        }
        while (localInteger.intValue() != b(localkw));
        localArrayList.add(localkw);
      }
    }
    finally
    {
    }
    return localArrayList;
  }

  public final List<String> e()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      synchronized (this.mDataList)
      {
        Iterator localIterator1 = this.f.iterator();
        Integer localInteger;
        kw localkw;
        do
        {
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext())
              break;
            localInteger = (Integer)localIterator1.next();
            localIterator2 = this.mDataList.iterator();
          }
          localkw = (kw)localIterator2.next();
        }
        while ((localInteger.intValue() != b(localkw)) || (localkw.getPackageName() == null));
        localArrayList.add(localkw.getPackageName());
      }
    }
    finally
    {
    }
    return localArrayList;
  }

  public final List<String> f()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      synchronized (this.mDataList)
      {
        Iterator localIterator1 = this.f.iterator();
        Integer localInteger;
        kw localkw;
        do
        {
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext())
              break;
            localInteger = (Integer)localIterator1.next();
            localIterator2 = this.mDataList.iterator();
          }
          localkw = (kw)localIterator2.next();
        }
        while ((localInteger.intValue() != b(localkw)) || (localkw.getPackageName() == null));
        localArrayList.add(localkw.getApkPath());
      }
    }
    finally
    {
    }
    return localArrayList;
  }

  public final BaseView g()
  {
    return this.b;
  }

  public List<kw> getDataList()
  {
    return super.getDataList();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akw.a locala1;
    kw localkw;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903328);
      akw.a locala2 = new akw.a();
      locala2.a = paramView.findViewById(2131231041);
      locala2.b = ((TextView)paramView.findViewById(2131231033));
      locala2.c = ((ImageView)paramView.findViewById(2131230869));
      locala2.n = ((ImageView)paramView.findViewById(2131230905));
      locala2.d = ((TextView)paramView.findViewById(2131231537));
      locala2.e = ((TextView)paramView.findViewById(2131231538));
      locala2.g = ((TextView)paramView.findViewById(2131231543));
      locala2.f = ((TextView)paramView.findViewById(2131231623));
      locala2.h = ((LinearLayout)paramView.findViewById(2131231625));
      locala2.k = ((LinearLayout)paramView.findViewById(2131231626));
      locala2.j = ((Button)paramView.findViewById(2131231257));
      locala2.i = ((CheckBoxView)paramView.findViewById(2131231052));
      locala2.l = ((TextView)paramView.findViewById(2131231627));
      locala2.m = ((RatingBar)paramView.findViewById(2131231628));
      locala2.o = ((RatingBar)paramView.findViewById(2131231624));
      locala2.p = ((ImageView)paramView.findViewById(2131231622));
      locala2.q = ((LinearLayout)paramView.findViewById(2131231621));
      paramView.setTag(locala2);
      locala1 = locala2;
      localkw = (kw)this.mDataList.get(paramInt);
      c(localkw);
      a(localkw);
      if (localkw.f() != 1)
        break label632;
      c(locala1, localkw);
      label329: ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
      if (localItemModel.getItemStyle() == 0)
        setLabel(paramView, localItemModel);
      if (localkw.f() != 0)
        break label754;
    }
    label748: label754: for (Button localButton = locala1.j; ; localButton = null)
    {
      if (localButton != null)
      {
        localButton.setTag(localkw);
        localButton.setOnClickListener(new akx(this));
      }
      locala1.c.setTag(d(localkw));
      locala1.p.setTag(locala1.c);
      Drawable localDrawable;
      if (localkw.getPackageName() != null)
      {
        localDrawable = localkw.getIcon();
        if ((localDrawable == null) || (!(localDrawable instanceof BitmapDrawable)))
          break label748;
      }
      for (Bitmap localBitmap = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap = null)
      {
        if (((localBitmap == null) || (localBitmap.isRecycled()) || (localkw.getIcon().equals(this.c))) && (this.g != null))
        {
          locala1.c.setImageDrawable(this.c);
          locala1.p.setImageDrawable(this.c);
          lv locallv = new lv();
          locallv.b = this.d;
          locallv.g = d(localkw).hashCode();
          locallv.d = d(localkw);
          locallv.a = 0;
          locallv.h = localkw;
          locallv.i = new akz(this);
          this.g.b(locallv);
        }
        while (true)
        {
          b(locala1, localkw);
          a(locala1, localkw);
          return paramView;
          locala1 = (akw.a)paramView.getTag();
          break;
          label632: locala1.k.setVisibility(8);
          locala1.d.setVisibility(0);
          locala1.e.setVisibility(0);
          locala1.j.setVisibility(0);
          break label329;
          if (localkw.getIcon() == null)
          {
            localkw.setIcon(this.c);
          }
          else
          {
            locala1.c.setImageDrawable(localkw.getIcon());
            locala1.p.setImageDrawable(localkw.getIcon());
            continue;
            locala1.c.setImageDrawable(this.c);
            locala1.p.setImageDrawable(this.c);
          }
        }
      }
    }
  }

  public static final class a
  {
    public View a;
    public TextView b;
    public ImageView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public TextView g;
    public LinearLayout h;
    public CheckBoxView i;
    public Button j;
    public LinearLayout k;
    public TextView l;
    public RatingBar m;
    public ImageView n;
    public RatingBar o;
    public ImageView p;
    public LinearLayout q;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akw
 * JD-Core Version:    0.6.2
 */