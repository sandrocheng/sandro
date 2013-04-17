import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import java.util.List;

public final class ajx extends BasePinnedListAdapter<kv>
{
  private ayp a;
  private Drawable b;
  private int c = -1;
  private PinnedHeaderListView d;
  private sl e;
  private View.OnClickListener f = new ajy(this);

  public ajx(BaseView paramBaseView, PinnedHeaderListView paramPinnedHeaderListView, List<ListModel<kv>> paramList)
  {
    super(paramBaseView.getContext(), paramList);
    this.a = ((ayp)paramBaseView);
    this.d = paramPinnedHeaderListView;
    this.b = this.mContext.getResources().getDrawable(2130837521);
    this.c = 0;
    this.e = this.a.getImageLoaderService();
  }

  private String a(kw paramkw)
  {
    String str = "";
    switch (this.c)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return str;
      str = paramkw.getApkPath();
      continue;
      str = paramkw.h();
      continue;
      str = paramkw.getPackageName();
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ajx.a locala1;
    kv localkv;
    kw localkw1;
    label446: kw localkw2;
    TextView localTextView;
    String str2;
    label487: String str3;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903286);
      ajx.a locala2 = new ajx.a();
      locala2.a = ((TextView)paramView.findViewById(2131231033));
      locala2.b = ((ImageView)paramView.findViewById(2131230869));
      locala2.c = ((TextView)paramView.findViewById(2131231537));
      locala2.d = ((TextView)paramView.findViewById(2131231538));
      locala2.g = ((SoftwareUpdateIconView)paramView.findViewById(2131231541));
      locala2.f = ((ImageView)paramView.findViewById(2131231540));
      locala2.e = ((RatingBar)paramView.findViewById(2131231366));
      locala2.h = ((TextView)paramView.findViewById(2131231539));
      paramView.setTag(locala2);
      locala1 = locala2;
      localkv = (kv)this.mDataList.get(paramInt);
      locala1.h.setVisibility(0);
      locala1.h.setText(localkv.d.Q());
      locala1.g.setTag(localkv);
      locala1.g.setOnClickListener(this.f);
      setLabel(paramView, (ItemModel)this.mItemModelList.get(paramInt));
      localkw1 = localkv.d;
      String str1 = a(localkw1);
      if (str1.equals(""))
        str1 = localkw1.getPackageName();
      locala1.b.setTag(str1);
      if (localkw1.getPackageName() != null)
      {
        Drawable localDrawable = localkw1.getIcon();
        if (((localDrawable != null) && (((BitmapDrawable)localDrawable).getBitmap() != null) && (!((BitmapDrawable)localDrawable).getBitmap().isRecycled()) && (!localkw1.getIcon().equals(this.b))) || (this.e == null))
          break label698;
        locala1.b.setImageDrawable(this.b);
        lv locallv = new lv();
        locallv.b = this.c;
        String str4 = a(localkw1);
        if (str4.equals(""))
        {
          str4 = localkw1.getPackageName();
          locallv.b = 2;
        }
        locallv.g = str4.hashCode();
        locallv.d = str4;
        locallv.a = 0;
        locallv.h = localkw1;
        locallv.i = new ajz(this);
        this.e.b(locallv);
      }
      localkw2 = localkv.d;
      locala1.a.setText(localkw2.getAppName());
      if (localkw2.getSize() != 0L)
        break label734;
      localTextView = locala1.c;
      str2 = "";
      localTextView.setText(str2);
      str3 = localkw2.d();
      if ((str3 == null) || (str3.length() <= 0))
        str3 = localkw2.getVersion();
      if (str3 == null)
        str3 = "";
      if (!str3.equals(""))
        break label785;
      locala1.d.setText("");
      label550: locala1.e.setRating(localkv.d.l());
      switch (localkv.d.o())
      {
      case 2:
      case 3:
      case 4:
      default:
        locala1.f.setVisibility(8);
        label626: switch (localkv.mState)
        {
        case -2:
        default:
          locala1.g.setDownloadPreparation();
        case 0:
        case -1:
        case 1:
        case 2:
        case 3:
        case -3:
        case -4:
        }
        break;
      case 1:
      case 7:
      case 6:
      case 5:
      }
    }
    while (true)
    {
      return paramView;
      locala1 = (ajx.a)paramView.getTag();
      break;
      label698: if (localkw1.getIcon() == null)
      {
        localkw1.setIcon(this.b);
        break label446;
      }
      locala1.b.setImageDrawable(localkw1.getIcon());
      break label446;
      label734: localTextView = locala1.c;
      long l = localkw2.getSize();
      if (l == -1L)
      {
        str2 = this.mContext.getResources().getString(2131428368);
        break label487;
      }
      str2 = a.c(l);
      break label487;
      label785: locala1.d.setText(str3 + this.mContext.getString(2131428301));
      break label550;
      locala1.f.setVisibility(0);
      locala1.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837508));
      break label626;
      locala1.f.setVisibility(0);
      locala1.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837509));
      break label626;
      locala1.f.setVisibility(0);
      locala1.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837511));
      break label626;
      locala1.f.setVisibility(0);
      locala1.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837510));
      break label626;
      locala1.g.setDownloading((int)(100.0F * of.c(localkv)));
      continue;
      locala1.g.setDownloadWaiting();
      continue;
      locala1.g.setDownloadPause((int)(100.0F * of.c(localkv)));
      continue;
      locala1.g.setDownloadComplete();
      continue;
      locala1.g.setInstalled();
      continue;
      locala1.g.setUpdatePreparation();
    }
  }

  public static final class a
  {
    public TextView a;
    public ImageView b;
    public TextView c;
    public TextView d;
    public RatingBar e;
    public ImageView f;
    public SoftwareUpdateIconView g;
    public TextView h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajx
 * JD-Core Version:    0.6.2
 */