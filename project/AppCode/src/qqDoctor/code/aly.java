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

public final class aly extends akw
{
  private bqs c;

  public aly(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
    this.c = ((bqs)paramBaseListView);
  }

  public final void a()
  {
    super.a();
    List localList1 = c();
    Iterator localIterator = this.mDataList.iterator();
    long l1 = 0L;
    kw localkw;
    if (localIterator.hasNext())
    {
      localkw = (kw)localIterator.next();
      if (!localList1.contains(Integer.valueOf(b(localkw))))
        break label231;
    }
    label231: for (long l2 = l1 + localkw.S(); ; l2 = l1)
    {
      l1 = l2;
      break;
      String str1 = this.mContext.getString(2131429760);
      if (l1 != 0L);
      for (String str2 = str1 + "(" + a.b(l1) + ")"; ; str2 = str1)
      {
        ((OperatingModel)this.c.getOperatingBarDataList().get(0)).setText(str2);
        List localList2 = this.c.getOperatingBarDataList();
        if (localList2 == null)
          return;
        OperatingModel localOperatingModel = (OperatingModel)localList2.get(0);
        if ((c().size() > 0) && (!this.c.a()));
        for (boolean bool = true; ; bool = false)
        {
          localOperatingModel.setEnable(bool);
          this.c.refreshOperatingBar(localOperatingModel);
          break;
        }
      }
    }
  }

  protected final void a(akw.a parama, kw paramkw)
  {
    parama.f.setVisibility(8);
    parama.l.setVisibility(8);
    parama.h.setVisibility(0);
    parama.i.setVisibility(0);
    parama.e.setText(" ");
    if (paramkw.n() == 1)
    {
      parama.d.setText(this.mContext.getString(2131429781) + a.b(paramkw.S()));
      parama.c.setImageDrawable(this.mContext.getResources().getDrawable(2130837598));
    }
    while (true)
    {
      parama.b.setText(paramkw.getAppName());
      return;
      parama.d.setText(this.mContext.getString(2131429782) + a.b(paramkw.S()));
    }
  }

  protected final void a(kw paramkw)
  {
    if (paramkw.f() == -1)
      paramkw.b(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aly
 * JD-Core Version:    0.6.2
 */