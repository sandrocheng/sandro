import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class akk extends BaseListAdapter<kx>
{
  private sl a;
  private Drawable b;
  private ListView c;
  private int d;
  private boolean e;

  public akk(Context paramContext, BaseListView<kx> paramBaseListView, List<ListModel<kx>> paramList)
  {
    super(paramContext, paramList);
    this.c = paramBaseListView.getListView();
    this.a = paramBaseListView.getImageLoaderService();
    this.b = this.mContext.getResources().getDrawable(17301651);
  }

  public static int a(kx paramkx)
  {
    int i = 0;
    byte[] arrayOfByte = paramkx.a();
    int j = arrayOfByte.length;
    for (int k = 0; k < j; k++)
      if (arrayOfByte[k] != -1)
        i++;
    return i;
  }

  public final void a()
  {
    this.d = 0;
  }

  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akk.a locala;
    kx localkx;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903340);
      locala = new akk.a();
      locala.a = ((ImageView)paramView.findViewById(2131230869));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      locala.c = ((TextView)paramView.findViewById(2131231585));
      locala.d = ((CheckBoxView)paramView.findViewById(2131231258));
      locala.d.setBackGroundRes(2130837584);
      paramView.setTag(locala);
      localkx = (kx)this.mDataList.get(paramInt);
      if (localkx.d != null)
        break label364;
      locala.a.setImageDrawable(this.b);
      locala.a.setTag(localkx.b);
      kw localkw = new kw();
      localkw.setPackageName(localkx.b);
      localkw.a(localkx);
      lv locallv = new lv();
      locallv.b = 2;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.getPackageName();
      locallv.a = 0;
      locallv.h = localkw;
      locallv.i = new akm(this);
      this.a.b(locallv);
      label242: locala.b.setText(localkx.c);
      TextView localTextView = locala.c;
      String str = this.mContext.getString(2131429097);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(a(localkx));
      localTextView.setText(String.format(str, arrayOfObject));
      if (this.e)
        break label380;
      locala.d.setVisibility(8);
    }
    while (true)
    {
      ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
      if (localItemModel.getItemStyle() == 0)
        setLabel(paramView, localItemModel);
      return paramView;
      locala = (akk.a)paramView.getTag();
      break;
      label364: locala.a.setImageDrawable(localkx.d);
      break label242;
      label380: locala.d.setVisibility(0);
      locala.d.setChecked(localkx.g);
      locala.d.setTag(Integer.valueOf(paramInt));
      locala.d.setClickListener(new akl(this));
    }
  }

  final class a
  {
    ImageView a;
    TextView b;
    TextView c;
    CheckBoxView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akk
 * JD-Core Version:    0.6.2
 */