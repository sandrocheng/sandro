import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import java.util.Iterator;
import java.util.List;

public final class akh extends BasePinnedListAdapter<kx>
{
  private sl a;
  private ListView b;
  private md c;
  private int d = -1;
  private Drawable e;
  private View.OnClickListener f;
  private View.OnClickListener g;
  private View.OnClickListener h;
  private int i;
  private boolean j;

  public akh(Context paramContext, BasePinnedListView<kx> paramBasePinnedListView, md parammd, List<ListModel<kx>> paramList)
  {
    super(paramContext, paramList);
    this.c = parammd;
    this.b = paramBasePinnedListView.getListView();
    this.a = paramBasePinnedListView.getImageLoaderService();
    this.e = this.mContext.getResources().getDrawable(17301651);
  }

  private int a(kx paramkx)
  {
    byte[] arrayOfByte = paramkx.e;
    Iterator localIterator = this.c.f.iterator();
    int k = 1;
    int m;
    if (localIterator.hasNext())
    {
      m = ((Integer)localIterator.next()).intValue();
      if (arrayOfByte[m] == 0)
        k = 0;
    }
    else
    {
      return k;
    }
    if (arrayOfByte[m] == 2);
    for (int n = 2; ; n = k)
    {
      k = n;
      break;
    }
  }

  public final int a()
  {
    return this.d;
  }

  public final void a(int paramInt)
  {
    this.i = paramInt;
  }

  public final void a(View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, View.OnClickListener paramOnClickListener3)
  {
    this.f = paramOnClickListener1;
    this.g = paramOnClickListener2;
    this.h = paramOnClickListener3;
  }

  public final void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public final void b(int paramInt)
  {
    this.d = paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akh.a locala;
    kx localkx;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903314);
      locala = new akh.a();
      locala.a = ((LinearLayout)paramView.findViewById(2131231583));
      locala.b = ((ImageView)paramView.findViewById(2131230869));
      locala.c = ((TextView)paramView.findViewById(2131231033));
      locala.d = ((TextView)paramView.findViewById(2131231585));
      locala.e = ((ImageView)paramView.findViewById(2131231586));
      locala.f = ((LinearLayout)paramView.findViewById(2131231520));
      locala.g = ((LinearLayout)paramView.findViewById(2131231580));
      locala.h = ((LinearLayout)paramView.findViewById(2131231581));
      locala.i = ((LinearLayout)paramView.findViewById(2131231582));
      paramView.setTag(locala);
      localkx = (kx)this.mDataList.get(paramInt);
      if (localkx.d != null)
        break label431;
      locala.b.setImageDrawable(this.e);
      locala.b.setTag(localkx.b);
      kw localkw = new kw();
      localkw.setPackageName(localkx.b);
      localkw.a(localkx);
      lv locallv = new lv();
      locallv.b = 2;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.getPackageName();
      locallv.a = 0;
      locallv.h = localkw;
      locallv.i = new aki(this);
      this.a.b(locallv);
    }
    while (true)
    {
      locala.c.setText(localkx.c);
      if ((!localkx.g) && (this.i == 0) && (this.j))
        break label447;
      locala.e.setVisibility(8);
      locala.f.setVisibility(8);
      locala.d.setVisibility(8);
      locala.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
      ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
      if (localItemModel.getItemStyle() == 0)
        setLabel(paramView, localItemModel);
      return paramView;
      locala = (akh.a)paramView.getTag();
      break;
      label431: locala.b.setImageDrawable(localkx.d);
    }
    label447: locala.e.setVisibility(0);
    locala.d.setVisibility(0);
    TextView localTextView = locala.d;
    Object localObject;
    switch (a(localkx))
    {
    default:
      localObject = null;
      label507: localTextView.setText((CharSequence)localObject);
      locala.g.setOnClickListener(this.f);
      locala.h.setOnClickListener(this.g);
      locala.i.setOnClickListener(this.h);
      switch (a(localkx))
      {
      default:
        label584: if (paramInt != this.d)
        {
          locala.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
          locala.e.setImageResource(2130837671);
          locala.f.setVisibility(8);
        }
        break;
      case 1:
      case 0:
      case 2:
      }
      break;
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      ((TextView)locala.g.findViewById(2131230748)).setText(2131429074);
      ((TextView)locala.h.findViewById(2131230748)).setText(2131429073);
      ((TextView)locala.i.findViewById(2131230748)).setText(2131429075);
      ((ImageView)locala.g.findViewById(2131230869)).setImageResource(2130837801);
      ((ImageView)locala.h.findViewById(2131230869)).setImageResource(2130837800);
      ((ImageView)locala.i.findViewById(2131230869)).setImageResource(2130837820);
      break;
      localObject = this.mContext.getString(2131428977);
      break label507;
      localObject = this.mContext.getString(2131428976);
      break label507;
      localObject = this.mContext.getString(2131429075);
      break label507;
      locala.g.findViewById(2131230872).setVisibility(0);
      locala.h.findViewById(2131230872).setVisibility(4);
      locala.i.findViewById(2131230872).setVisibility(4);
      locala.d.setTextColor(this.mContext.getResources().getColor(2131296268));
      break label584;
      locala.g.findViewById(2131230872).setVisibility(4);
      locala.h.findViewById(2131230872).setVisibility(0);
      locala.i.findViewById(2131230872).setVisibility(4);
      locala.d.setTextColor(this.mContext.getResources().getColor(2131296403));
      break label584;
      locala.g.findViewById(2131230872).setVisibility(4);
      locala.h.findViewById(2131230872).setVisibility(4);
      locala.i.findViewById(2131230872).setVisibility(0);
      locala.d.setTextColor(this.mContext.getResources().getColor(2131296403));
      break label584;
      locala.a.setBackgroundColor(this.mContext.getResources().getColor(2131296257));
      locala.e.setImageResource(2130838350);
      locala.f.setVisibility(0);
    }
  }

  final class a
  {
    LinearLayout a;
    ImageView b;
    TextView c;
    TextView d;
    ImageView e;
    LinearLayout f;
    LinearLayout g;
    LinearLayout h;
    LinearLayout i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akh
 * JD-Core Version:    0.6.2
 */