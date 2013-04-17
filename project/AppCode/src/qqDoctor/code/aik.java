import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.ArrayList;
import java.util.List;

public final class aik extends BasePinnedListAdapter<mb>
{
  private ListView a;
  private BaseView b;
  private Drawable c;
  private sl d;
  private ja e;
  private int f = -1;
  private List<String> g = new ArrayList();

  public aik(Context paramContext, BasePinnedListView<mb> paramBasePinnedListView, List<ListModel<mb>> paramList)
  {
    super(paramContext, paramList);
    this.b = paramBasePinnedListView;
    this.a = paramBasePinnedListView.getListView();
    this.c = this.mContext.getResources().getDrawable(17301651);
    this.d = paramBasePinnedListView.getImageLoaderService();
    this.e = new ja();
  }

  public final void a()
  {
    int i = 1;
    if ((this.f == i) || (this.f == 2));
    boolean bool1;
    for (boolean bool2 = false; ; bool2 = bool1)
    {
      if (bool2)
        bool2 = xi.b();
      if ((this.f == i) || (this.f == 2))
        i = 0;
      if (i != 0)
        bool1 = xi.b();
      if (bool2 != bool1)
        this.b.getHandler().sendEmptyMessage(-1);
      return;
    }
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    mb localmb = (mb)this.mDataList.get(paramInt);
    View localView3;
    aik.a locala1;
    if (paramView == null)
    {
      localView3 = createItemView(paramInt, 2130903348);
      aik.a locala2 = new aik.a();
      locala2.a = ((ImageView)localView3.findViewById(2131231672));
      locala2.b = ((TextView)localView3.findViewById(2131230969));
      locala2.c = ((CheckBoxView)localView3.findViewById(2131231675));
      locala2.c.setTag(Integer.valueOf(paramInt));
      locala2.c.setBackGroundRes(2130837583);
      localView3.setTag(locala2);
      locala1 = locala2;
    }
    View localView2;
    for (View localView1 = localView3; locala1 == null; localView1 = paramView)
    {
      localView2 = localView1;
      return localView2;
      locala1 = (aik.a)paramView.getTag();
    }
    locala1.c.setTag(localmb);
    label189: int i;
    if ((localmb.b != null) && (localmb.b.length() > 0))
    {
      locala1.b.setText(localmb.b);
      if (localmb.c != 2)
        break label528;
      i = 1;
      label201: if (i == 0)
        break label534;
      locala1.c.setChecked(false);
      label215: if ((this.f != 1) && (this.f != 2))
        break label595;
    }
    label283: label567: label573: label579: label595: for (boolean bool = false; ; bool = true)
    {
      if (bool)
        bool = xi.b();
      int k;
      label363: int m;
      if (bool)
      {
        locala1.c.setVisibility(0);
        locala1.c.setEnabled(true);
        locala1.c.setClickListener(new ail(this));
        if (localmb.g != null)
          break label579;
        locala1.a.setImageDrawable(this.c);
        locala1.a.setTag(localmb.a);
        kw localkw = new kw();
        localkw.setPackageName(localmb.a);
        localkw.a(localmb);
        String str = localkw.getPackageName();
        int j = this.g.size();
        k = 0;
        if (k >= j)
          break label573;
        if (((String)this.g.get(k)).compareTo(str) != 0)
          break label567;
        m = 1;
        if (m == 0)
        {
          lv locallv = new lv();
          locallv.b = 2;
          locallv.g = localkw.getPackageName().hashCode();
          locallv.d = localkw.getPackageName();
          locallv.a = 0;
          locallv.h = localkw;
          locallv.i = new aim(this);
          this.d.b(locallv);
        }
      }
      while (true)
      {
        ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
        if (localItemModel.getItemStyle() == 0)
          setLabel(localView1, localItemModel);
        localView2 = localView1;
        break;
        locala1.b.setText(localmb.a);
        break label189;
        i = 0;
        break label201;
        locala1.c.setChecked(true);
        break label215;
        locala1.c.setVisibility(4);
        locala1.c.setEnabled(false);
        break label283;
        k++;
        break label363;
        m = 0;
        break label395;
        locala1.a.setImageDrawable(localmb.g);
      }
    }
  }

  final class a
  {
    ImageView a;
    TextView b;
    CheckBoxView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aik
 * JD-Core Version:    0.6.2
 */