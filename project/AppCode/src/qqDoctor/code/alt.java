import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import java.util.List;

public final class alt extends akw
{
  private boolean c = false;

  public alt(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
  }

  protected final void a(akw.a parama, kw paramkw)
  {
    parama.f.setVisibility(8);
    parama.e.setVisibility(8);
    if (paramkw.n() == 2)
    {
      long l2;
      String str2;
      if ((paramkw.isSystemApp()) && (!this.c))
      {
        parama.j.setVisibility(8);
        TextView localTextView2 = parama.d;
        l2 = (int)paramkw.getSize();
        if (l2 != -1L)
          break label141;
        str2 = "0K";
        label76: localTextView2.setText(str2);
        parama.d.setTextColor(this.mContext.getResources().getColor(2131296288));
        switch (paramkw.v())
        {
        default:
        case 3:
        case 4:
        }
      }
      while (true)
      {
        return;
        parama.j.setBackgroundResource(2130837883);
        break;
        label141: str2 = a.c(l2);
        break label76;
        parama.f.setVisibility(0);
        parama.f.setText(kw.b[paramkw.v()]);
        parama.f.setTextColor(this.mContext.getResources().getColor(2131296289));
      }
    }
    parama.j.setBackgroundResource(2130837883);
    TextView localTextView1 = parama.d;
    long l1 = (int)paramkw.getSize();
    if (l1 == -1L);
    for (String str1 = "0K"; ; str1 = a.c(l1))
    {
      localTextView1.setText(str1);
      parama.d.setTextColor(this.mContext.getResources().getColor(2131296288));
      break;
    }
  }

  public final void b(View paramView)
  {
    kw localkw = (kw)paramView.getTag();
    bod localbod = (bod)this.b;
    switch (localkw.n())
    {
    default:
    case 2:
    }
    while (true)
    {
      return;
      if (localkw.isSystemApp())
      {
        localbod.a(localkw, 2000004);
      }
      else
      {
        nd.a().a(26083);
        localbod.a(localkw);
      }
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alt
 * JD-Core Version:    0.6.2
 */