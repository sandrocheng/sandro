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
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public final class ake extends BaseListAdapter<kw>
{
  private sl a;
  private Drawable b;
  private ListView c;

  public ake(Context paramContext, List<ListModel<kw>> paramList, BaseView paramBaseView, ListView paramListView)
  {
    super(paramContext, paramList);
    this.a = paramBaseView.getImageLoaderService();
    this.b = this.mContext.getResources().getDrawable(17301651);
    this.c = paramListView;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ake.a locala;
    kw localkw;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903336);
      locala = new ake.a();
      locala.a = ((ImageView)paramView.findViewById(2131231571));
      locala.b = ((TextView)paramView.findViewById(2131231572));
      locala.c = ((TextView)paramView.findViewById(2131231637));
      locala.d = ((TextView)paramView.findViewById(2131231638));
      locala.e = ((TextView)paramView.findViewById(2131231573));
      paramView.setTag(locala);
      localkw = (kw)this.mDataList.get(paramInt);
      locala.b.setText(localkw.getAppName());
      locala.c.setText(a.b(localkw.c()));
      locala.d.setText(a.b(localkw.b()));
      locala.e.setText(a.b(localkw.a()));
      locala.a.setTag(localkw.getPackageName());
      if (localkw.getPackageName() == null)
        break label386;
      if (!"com.tencent.qqpimsecure.self".equals(localkw.getPackageName()))
        break label231;
      locala.a.setImageResource(2130838181);
    }
    label386: 
    while (true)
    {
      return paramView;
      locala = (ake.a)paramView.getTag();
      break;
      label231: if (((localkw.getIcon() == null) || (localkw.getIcon().equals(this.b))) && (this.a != null))
      {
        locala.a.setImageDrawable(this.b);
        lv locallv = new lv();
        locallv.b = 2;
        locallv.g = localkw.getPackageName().hashCode();
        locallv.d = localkw.getPackageName();
        locallv.a = 0;
        locallv.h = localkw;
        locallv.i = new akf(this);
        this.a.b(locallv);
      }
      else if (localkw.getIcon() == null)
      {
        localkw.setIcon(this.b);
      }
      else
      {
        locala.a.setImageDrawable(localkw.getIcon());
        continue;
        locala.a.setImageDrawable(this.b);
      }
    }
  }

  public static final class a
  {
    public ImageView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ake
 * JD-Core Version:    0.6.2
 */