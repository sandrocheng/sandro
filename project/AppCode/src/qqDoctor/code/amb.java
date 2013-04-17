import android.content.Context;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class amb extends akw
{
  private bra c;

  public amb(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
    this.c = ((bra)paramBaseListView);
  }

  public final void a()
  {
    super.a();
    List localList = c();
    Iterator localIterator = this.mDataList.iterator();
    long l1 = 0L;
    kw localkw;
    if (localIterator.hasNext())
    {
      localkw = (kw)localIterator.next();
      if (!localList.contains(Integer.valueOf(b(localkw))))
        break label209;
    }
    label209: for (long l2 = l1 + localkw.S(); ; l2 = l1)
    {
      l1 = l2;
      break;
      String str1 = this.mContext.getString(2131429760);
      if (l1 != 0L);
      for (String str2 = str1 + "(" + a.b(l1) + ")"; ; str2 = str1)
      {
        ((OperatingModel)this.c.getOperatingBarDataList().get(0)).setText(str2);
        OperatingModel localOperatingModel = (OperatingModel)this.c.getOperatingBarDataList().get(0);
        if (c().size() > 0);
        for (boolean bool = true; ; bool = false)
        {
          localOperatingModel.setEnable(bool);
          this.c.refreshOperatingBar(localOperatingModel);
          return;
        }
      }
    }
  }

  protected final void a(akw.a parama, kw paramkw)
  {
    parama.f.setVisibility(8);
    parama.l.setVisibility(8);
    parama.h.setVisibility(0);
    parama.c.setImageDrawable(paramkw.getIcon());
    parama.q.setBackgroundResource(2131296331);
    parama.i.setVisibility(4);
    parama.e.setVisibility(8);
    if (paramkw.U() > 0)
    {
      if ((paramkw.S() != 0L) || (!this.mContext.getString(2131429765).equals(paramkw.getAppName())))
        break label351;
      TextView localTextView3 = parama.d;
      String str3 = this.mContext.getString(2131429771);
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(paramkw.U());
      arrayOfObject3[1] = Boolean.valueOf(false);
      localTextView3.setText(String.format(str3, arrayOfObject3));
    }
    label351: for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        TextView localTextView2 = parama.d;
        String str2 = this.mContext.getString(2131429770);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramkw.U());
        arrayOfObject2[1] = a.b(paramkw.S());
        localTextView2.setText(String.format(str2, arrayOfObject2));
      }
      parama.i.setVisibility(0);
      while (true)
      {
        return;
        if (paramkw.U() == 0)
        {
          if (paramkw.S() == 0L)
            parama.d.setText(this.mContext.getString(2131429769));
          while (true)
          {
            parama.i.setVisibility(4);
            break;
            TextView localTextView1 = parama.d;
            String str1 = this.mContext.getString(2131429776);
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = a.b(paramkw.S());
            localTextView1.setText(String.format(str1, arrayOfObject1));
          }
        }
        if (paramkw.U() == -1)
        {
          parama.d.setText(this.mContext.getString(2131429766));
          parama.i.setVisibility(4);
        }
      }
    }
  }

  protected final void a(kw paramkw)
  {
    if (paramkw.f() == -1)
      paramkw.b(1);
  }

  public final void a(boolean paramBoolean)
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
          kw localkw = (kw)localIterator.next();
          int i = b(localkw);
          if ((i != -1) && (localkw.U() > 0))
            localArrayList.add(Integer.valueOf(i));
        }
      }
      finally
      {
      }
      a(localArrayList);
    }
    while (true)
    {
      notifyDataSetChanged();
      a();
      return;
      c().clear();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amb
 * JD-Core Version:    0.6.2
 */