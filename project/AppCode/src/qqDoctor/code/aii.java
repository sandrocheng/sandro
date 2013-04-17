import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
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
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.ArrayList;
import java.util.List;

public final class aii extends BasePinnedListAdapter<mb.a>
{
  private ListView a;
  private BaseView b;
  private Drawable c;
  private sl d;
  private int e = 0;
  private int f = -1;
  private View.OnClickListener g;
  private View.OnClickListener h;
  private List<String> i = new ArrayList();

  public aii(Context paramContext, BasePinnedListView<mb.a> paramBasePinnedListView, List<ListModel<mb.a>> paramList)
  {
    super(paramContext, paramList);
    this.b = paramBasePinnedListView;
    this.a = paramBasePinnedListView.getListView();
    this.c = this.mContext.getResources().getDrawable(17301651);
    this.d = paramBasePinnedListView.getImageLoaderService();
  }

  public final int a()
  {
    return this.e;
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
  }

  public final void a(View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2)
  {
    this.h = paramOnClickListener1;
    this.g = paramOnClickListener2;
  }

  public final void b()
  {
    int j = 1;
    if ((this.f == j) || (this.f == 2));
    boolean bool1;
    for (boolean bool2 = false; ; bool2 = bool1)
    {
      if (bool2)
        bool2 = xi.b();
      if ((this.f == j) || (this.f == 2))
        j = 0;
      if (j != 0)
        bool1 = xi.b();
      if (bool2 != bool1)
        this.b.getHandler().sendEmptyMessage(-1);
      return;
    }
  }

  public final void b(int paramInt)
  {
    this.e = paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aii.a locala1;
    mb.a locala;
    label200: int j;
    label240: int i2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903347);
      aii.a locala2 = new aii.a();
      locala2.a = ((LinearLayout)paramView.findViewById(2131231583));
      locala2.b = ((ImageView)paramView.findViewById(2131231672));
      locala2.c = ((TextView)paramView.findViewById(2131230969));
      locala2.d = ((TextView)paramView.findViewById(2131231674));
      locala2.e = ((TextView)paramView.findViewById(2131231673));
      locala2.f = ((LinearLayout)paramView.findViewById(2131231520));
      locala2.g = ((LinearLayout)paramView.findViewById(2131231580));
      locala2.h = ((LinearLayout)paramView.findViewById(2131231581));
      paramView.setTag(locala2);
      locala1 = locala2;
      locala = (mb.a)this.mDataList.get(paramInt);
      if ((locala.i.b == null) || (locala.i.b.length() <= 0))
        break label756;
      locala1.c.setText(locala.i.b);
      locala1.d.setText(locala.a);
      locala1.e.setText(locala.c);
      if (locala.i.c == 0)
        break label775;
      j = 1;
      if (j != 0)
      {
        if ((0x1 & locala.e) == 0)
          break label781;
        i2 = 1;
        label258: if (i2 != 0);
      }
      else
      {
        if ((this.f != 1) && (this.f != 2))
          break label890;
      }
    }
    label300: label497: label756: label890: for (boolean bool = false; ; bool = true)
    {
      if (bool)
        bool = xi.b();
      int k;
      int n;
      int i1;
      if (!bool)
      {
        k = 1;
        if (k != 0)
          break label826;
        locala1.f.setVisibility(8);
        locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
        locala1.g.setOnClickListener(this.h);
        locala1.h.setOnClickListener(this.g);
        locala1.g.findViewById(2131230872).setVisibility(4);
        locala1.h.findViewById(2131230872).setVisibility(4);
        if (paramInt == this.e)
          break label793;
        locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
        locala1.f.setVisibility(8);
        ((TextView)locala1.g.findViewById(2131230748)).setText(2131430198);
        ((TextView)locala1.h.findViewById(2131230748)).setText(2131430199);
        ((ImageView)locala1.g.findViewById(2131230869)).setImageResource(2130837800);
        ((ImageView)locala1.h.findViewById(2131230869)).setImageResource(2130837801);
        if (locala.i.g != null)
          break label871;
        locala1.b.setImageDrawable(this.c);
        locala1.b.setTag(locala.i.a);
        kw localkw = new kw();
        localkw.setPackageName(locala.i.a);
        localkw.a(locala);
        String str = localkw.getPackageName();
        int m = this.i.size();
        n = 0;
        if (n >= m)
          break label865;
        if (((String)this.i.get(n)).compareTo(str) != 0)
          break label859;
        i1 = 1;
        if (i1 == 0)
        {
          lv locallv = new lv();
          locallv.b = 2;
          locallv.g = localkw.getPackageName().hashCode();
          locallv.d = localkw.getPackageName();
          locallv.a = 0;
          locallv.h = localkw;
          locallv.i = new aij(this);
          this.d.b(locallv);
          this.i.add(localkw.getPackageName());
        }
      }
      while (true)
      {
        ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
        if (localItemModel.getItemStyle() == 0)
          setLabel(paramView, localItemModel);
        return paramView;
        locala1 = (aii.a)paramView.getTag();
        break;
        locala1.c.setText(locala.i.a);
        break label200;
        j = 0;
        break label240;
        i2 = 0;
        break label258;
        k = 0;
        break label300;
        locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296257));
        locala1.f.setVisibility(0);
        break label425;
        locala1.f.setVisibility(8);
        locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
        break label497;
        n++;
        break label586;
        i1 = 0;
        break label618;
        locala1.b.setImageDrawable(locala.i.g);
      }
    }
  }

  final class a
  {
    LinearLayout a;
    ImageView b;
    TextView c;
    TextView d;
    TextView e;
    LinearLayout f;
    LinearLayout g;
    LinearLayout h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aii
 * JD-Core Version:    0.6.2
 */