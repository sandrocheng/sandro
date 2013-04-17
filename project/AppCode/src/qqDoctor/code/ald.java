import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

public final class ald extends BaseListAdapter<kw>
{
  private dv<kw> a;
  private sl b;
  private int c = -1;
  private PinnedHeaderListView d;

  public ald(Context paramContext, List<ListModel<kw>> paramList, BaseListView paramBaseListView)
  {
    super(paramContext, paramList);
    this.b = paramBaseListView.getImageLoaderService();
    this.c = 2;
    this.d = ((PinnedHeaderListView)paramBaseListView.getListView());
  }

  public final void a(dv<kw> paramdv)
  {
    this.a = paramdv;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    kw localkw = (kw)this.mDataList.get(paramInt);
    ald.a locala;
    Drawable localDrawable;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903300);
      locala = new ald.a((byte)0);
      locala.a = ((ImageView)paramView.findViewById(2131230869));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      locala.c = ((TextView)paramView.findViewById(2131230871));
      locala.d = ((ButtonView)paramView.findViewById(2131231575));
      paramView.setTag(locala);
      locala.a.setImageDrawable(localkw.getIcon());
      locala.b.setText(localkw.getAppName());
      locala.c.setText(this.mContext.getString(2131427358) + localkw.getVersion());
      locala.d.setText(this.mContext.getString(2131427341));
      locala.d.setOnClickListener(new ale(this, localkw));
      locala.d.setTextSize(15.0F);
      locala.a.setTag(localkw.getPackageName());
      if (localkw.getPackageName() == null)
        break label424;
      localDrawable = localkw.getIcon();
      if ((localDrawable == null) || (!(localDrawable instanceof BitmapDrawable)))
        break label436;
    }
    label424: label436: for (Bitmap localBitmap = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap = null)
    {
      if (((localBitmap == null) || (localBitmap.isRecycled()) || (localkw.getIcon().equals(null))) && (this.b != null))
      {
        locala.a.setImageDrawable(null);
        lv locallv = new lv();
        locallv.b = this.c;
        locallv.g = localkw.getPackageName().hashCode();
        locallv.d = localkw.getPackageName();
        locallv.a = 0;
        locallv.h = localkw;
        locallv.i = new alf(this);
        this.b.b(locallv);
      }
      while (true)
      {
        return paramView;
        locala = (ald.a)paramView.getTag();
        break;
        if (localkw.getIcon() == null)
        {
          localkw.setIcon(null);
        }
        else
        {
          locala.a.setImageDrawable(localkw.getIcon());
          continue;
          locala.a.setImageDrawable(null);
        }
      }
    }
  }

  static final class a
  {
    ImageView a;
    TextView b;
    TextView c;
    ButtonView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ald
 * JD-Core Version:    0.6.2
 */