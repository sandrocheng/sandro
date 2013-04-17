import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class alz extends akw
{
  private BaseListView<kw> c = null;
  private bqv d;
  private List<Integer> e = new ArrayList();

  public alz(bqv parambqv, List<ListModel<kw>> paramList)
  {
    super(parambqv, parambqv.getListView(), paramList, 2);
    this.a = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.c = parambqv;
    this.d = parambqv;
  }

  public final void a()
  {
    super.a();
    OperatingModel localOperatingModel = (OperatingModel)this.c.getOperatingBarDataList().get(0);
    localOperatingModel.setNumber(c().size());
    int i = c().size();
    boolean bool = false;
    if (i > 0)
      bool = true;
    localOperatingModel.setEnable(bool);
    this.c.refreshOperatingBar(localOperatingModel);
  }

  public final void a(akw.a parama, kw paramkw)
  {
    parama.d.setVisibility(0);
    parama.d.setText(a.c(paramkw.G()));
    parama.n.setVisibility(4);
    if (new hg().a.equals(paramkw.getPackageName()))
    {
      parama.i.setVisibility(8);
      parama.e.setTextColor(this.mContext.getResources().getColor(2131296357));
      if (!paramkw.x())
        break label200;
      parama.e.setVisibility(8);
    }
    while (true)
    {
      while (true)
      {
        parama.d.setWidth((int)(0.5F + 120.0F * this.mContext.getResources().getDisplayMetrics().density));
        parama.b.setWidth((int)(0.5F + 142.0F * this.mContext.getResources().getDisplayMetrics().density));
        return;
        this.e = c();
        synchronized (this.e)
        {
          parama.i.setChecked(this.e.contains(Integer.valueOf(b(paramkw))));
        }
      }
      label200: parama.e.setVisibility(0);
      parama.e.setText(2131428232);
    }
  }

  public final String c(kw paramkw)
  {
    return null;
  }

  public final void c(akw.a parama, kw paramkw)
  {
    parama.k.setVisibility(0);
    parama.i.setVisibility(0);
    parama.j.setVisibility(8);
    parama.i.setClickListener(null);
    parama.i.setTag(paramkw);
    parama.i.setClickListener(new ama(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alz
 * JD-Core Version:    0.6.2
 */