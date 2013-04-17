import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class akc extends BaseListAdapter<mn>
{
  private int a;
  private Drawable b;
  private ListView c;
  private boolean d = true;
  private boolean e;
  private sl f;

  public akc(Context paramContext, List<ListModel<mn>> paramList, bax parambax, ListView paramListView, boolean paramBoolean)
  {
    super(paramContext, paramList);
    this.e = paramBoolean;
    this.f = parambax.getImageLoaderService();
    this.a = 17301651;
    this.b = this.mContext.getResources().getDrawable(this.a);
    this.c = paramListView;
  }

  public final mn a(int paramInt)
  {
    return (mn)this.mDataList.get(paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final List<mn> getDataList()
  {
    return super.getDataList();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akc.a locala1;
    mn localmn;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903297);
      akc.a locala2 = new akc.a();
      locala2.a = ((ImageView)paramView.findViewById(2131231571));
      locala2.b = ((TextView)paramView.findViewById(2131231572));
      locala2.c = ((TextView)paramView.findViewById(2131231573));
      locala2.d = ((CheckBoxView)paramView.findViewById(2131231574));
      locala2.d.setBackGroundRes(2130837583);
      paramView.setTag(locala2);
      locala1 = locala2;
      locala1.d.setFocusable(false);
      locala1.d.setClickable(false);
      localmn = (mn)this.mDataList.get(paramInt);
      locala1.b.setText(localmn.c);
      if (!this.e)
        break label379;
      locala1.c.setVisibility(0);
      locala1.c.setText(a.b(localmn.e));
      label175: locala1.a.setTag(localmn.d);
      if (localmn.d == null)
        break label428;
      if ((localmn.b != null) && (!localmn.b.equals(this.b)))
        break label392;
      locala1.a.setImageDrawable(this.b);
      kw localkw = new kw();
      localkw.setPackageName(((mn)this.mDataList.get(paramInt)).d);
      lv locallv = new lv();
      locallv.b = 2;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.getPackageName();
      locallv.a = 0;
      locallv.h = localkw;
      locallv.i = new akd(this, paramInt);
      this.f.b(locallv);
      label336: if (!this.d)
        break label443;
      locala1.d.setVisibility(0);
      locala1.d.setChecked(localmn.f);
    }
    while (true)
    {
      return paramView;
      locala1 = (akc.a)paramView.getTag();
      break;
      label379: locala1.c.setVisibility(8);
      break label175;
      label392: if (localmn.b == null)
      {
        localmn.b = this.b;
        break label336;
      }
      locala1.a.setImageDrawable(localmn.b);
      break label336;
      label428: locala1.a.setImageDrawable(this.b);
      break label336;
      label443: locala1.d.setVisibility(8);
    }
  }

  public static final class a
  {
    public ImageView a;
    public TextView b;
    public TextView c;
    public CheckBoxView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akc
 * JD-Core Version:    0.6.2
 */