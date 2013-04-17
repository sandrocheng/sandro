import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.Iterator;
import java.util.List;

public final class akv extends akw
{
  private abe c = new abe();

  public akv(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 1);
  }

  public final void a()
  {
    BaseListView localBaseListView = (BaseListView)this.b;
    List localList = localBaseListView.getOperatingBarDataList();
    int i = c().size();
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      OperatingModel localOperatingModel = (OperatingModel)localIterator.next();
      if (localOperatingModel.getID() == 2)
      {
        if ((i != 0) && (i == b()))
        {
          localOperatingModel.setCheck(true);
          localOperatingModel.setText(this.mContext.getString(2131427349));
        }
        while (true)
        {
          localBaseListView.refreshOperatingBar(localOperatingModel);
          break;
          localOperatingModel.setCheck(false);
          localOperatingModel.setText(this.mContext.getString(2131427349));
        }
      }
      if (i == 0)
        localOperatingModel.setEnable(false);
      while (true)
      {
        localOperatingModel.setNumber(i);
        break;
        localOperatingModel.setEnable(true);
      }
    }
  }

  public final void a(akw.a parama, kw paramkw)
  {
    parama.f.setVisibility(8);
    parama.l.setVisibility(8);
    parama.h.setVisibility(0);
    parama.i.setVisibility(0);
    if ((paramkw.isApk()) && (paramkw.getPackageName() != null))
      if ((paramkw.n() == 9) || (paramkw.n() == 11) || (paramkw.n() == 12))
      {
        parama.f.setVisibility(0);
        parama.f.setText(kw.a[paramkw.n()]);
        parama.f.setTextColor(this.mContext.getResources().getColor(2131296289));
      }
    while (true)
    {
      return;
      if (paramkw.n() == 1)
      {
        parama.f.setText(this.mContext.getString(2131427359));
        parama.f.setTextColor(this.mContext.getResources().getColor(2131296289));
        parama.f.setVisibility(0);
        continue;
        if ((paramkw.isApk()) && (paramkw.getPackageName() == null))
        {
          parama.f.setVisibility(0);
          parama.c.setImageResource(2130837787);
          parama.f.setText(kw.a[6]);
          parama.f.setTextColor(this.mContext.getResources().getColor(2131296289));
        }
      }
    }
  }

  protected final void a(kw paramkw)
  {
    if (paramkw.f() == -1)
      paramkw.b(1);
  }

  public final int b()
  {
    Iterator localIterator = this.mDataList.iterator();
    int i = 0;
    kw localkw;
    int j;
    if (localIterator.hasNext())
    {
      localkw = (kw)localIterator.next();
      if (localkw.getApkPath() == null)
      {
        j = -1;
        label41: if (j == -1)
          break label72;
      }
    }
    label72: for (int k = i + 1; ; k = i)
    {
      i = k;
      break;
      j = localkw.getApkPath().hashCode();
      break label41;
      return i;
    }
  }

  public final int b(kw paramkw)
  {
    if (paramkw.getApkPath() == null);
    for (int i = -1; ; i = paramkw.getApkPath().hashCode())
      return i;
  }

  public final void b(akw.a parama, kw paramkw)
  {
    parama.b.setText(paramkw.getAppName());
    if (paramkw.f() == 1)
      if ((paramkw.getVersion() == null) || (paramkw.getVersion().equals("null")))
      {
        parama.e.setText("");
        parama.d.setText(a(paramkw.getSize()));
        if (paramkw.n() != -1)
          parama.l.setText(kw.a[paramkw.n()]);
      }
    while (true)
    {
      return;
      parama.e.setText(paramkw.getVersion() + this.mContext.getString(2131428301));
      break;
      parama.e.setText(paramkw.getVersion() + this.mContext.getString(2131428301));
      parama.d.setText(a(paramkw.getSize()));
    }
  }

  public final String c(kw paramkw)
  {
    if (paramkw.n() == -1);
    for (String str = this.c.b(paramkw); ; str = paramkw.j())
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akv
 * JD-Core Version:    0.6.2
 */