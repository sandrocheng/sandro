import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import java.util.List;

public final class alu extends ala
{
  private View.OnClickListener b;
  private View.OnClickListener c;
  private View.OnClickListener d;
  private bmd e;

  public alu(bmd parambmd, List<ListModel<kv>> paramList)
  {
    super(parambmd, paramList, 2);
    this.e = parambmd;
  }

  protected final void a(ala.a parama, kv paramkv)
  {
    super.a(parama, paramkv);
    parama.c.setText(this.mContext.getString(2131427357) + paramkv.d.d() + "(" + paramkv.d.D() + ")");
    parama.d.setVisibility(8);
    parama.h.setText(this.mContext.getString(2131427358) + paramkv.d.getVersion() + "(" + paramkv.d.getVersionCode() + ")");
    LinearLayout localLinearLayout1 = parama.m;
    ((TextView)localLinearLayout1.findViewById(2131230748)).setText(2131427772);
    ((ImageView)localLinearLayout1.findViewById(2131230869)).setImageResource(2130837927);
    parama.m.setTag(parama.g);
    parama.m.setOnClickListener(this.b);
    LinearLayout localLinearLayout2 = parama.n;
    ((TextView)localLinearLayout2.findViewById(2131230748)).setText(2131427773);
    ((ImageView)localLinearLayout2.findViewById(2131230869)).setImageResource(2130837926);
    parama.n.setOnClickListener(this.c);
    LinearLayout localLinearLayout3 = parama.o;
    ((TextView)localLinearLayout3.findViewById(2131230748)).setText(2131427774);
    ((ImageView)localLinearLayout3.findViewById(2131230869)).setImageResource(2130837928);
    parama.o.setOnClickListener(this.d);
    if (paramkv.e)
    {
      parama.i.setVisibility(8);
      parama.j.setVisibility(8);
      parama.m.setVisibility(8);
      parama.n.setVisibility(8);
      parama.o.setVisibility(8);
      parama.s.setVisibility(8);
      parama.t.setVisibility(8);
      parama.p.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
      parama.q.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
      parama.r.setVisibility(8);
      parama.g.setVisibility(0);
    }
    while (true)
    {
      return;
      parama.i.setVisibility(0);
      parama.j.setVisibility(0);
      parama.m.setVisibility(0);
      parama.n.setVisibility(0);
      parama.o.setVisibility(0);
      parama.s.setVisibility(0);
      parama.t.setVisibility(0);
      parama.p.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837924));
      parama.q.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837924));
      parama.r.setVisibility(0);
      parama.g.setVisibility(8);
      parama.k.setText(this.mContext.getString(2131428302) + this.e.a(paramkv.d.getSize()));
      parama.l.setText(paramkv.d.Q());
    }
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    this.b = paramOnClickListener;
  }

  public final void b(View.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }

  public final void c(View.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alu
 * JD-Core Version:    0.6.2
 */