import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

public class ala extends aju<kv>
{
  protected View.OnClickListener a = new alb(this);
  private SoftwareManager b;
  private Drawable c;
  private int d = -1;
  private bmd e;
  private PinnedHeaderListView f;
  private sl g;
  private boolean h;

  public ala(bmd parambmd, List<ListModel<kv>> paramList, int paramInt)
  {
    super(parambmd.getContext(), paramList);
    this.e = parambmd;
    this.f = parambmd.getListView();
    this.d = paramInt;
    this.c = this.mContext.getResources().getDrawable(2130837521);
    this.b = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.g = parambmd.getImageLoaderService();
  }

  private String a(kw paramkw)
  {
    String str = "";
    switch (this.d)
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

  protected void a(ala.a parama, kv paramkv)
  {
    switch (paramkv.d.o())
    {
    case 2:
    case 3:
    case 4:
    default:
      if (a())
      {
        parama.f.setVisibility(8);
        switch (paramkv.mState)
        {
        case -2:
        default:
          parama.g.setDownloadPreparation();
        case 0:
        case -1:
        case 1:
        case 2:
        case 3:
        case -3:
        case -4:
        }
      }
      break;
    case 1:
    case 7:
    case 6:
    case 5:
    }
    while (true)
    {
      return;
      parama.f.setVisibility(0);
      parama.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837508));
      break;
      parama.f.setVisibility(0);
      parama.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837509));
      break;
      parama.f.setVisibility(0);
      parama.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837511));
      break;
      parama.f.setVisibility(0);
      parama.f.setImageDrawable(this.mContext.getResources().getDrawable(2130837510));
      break;
      parama.f.setVisibility(4);
      break;
      parama.g.setDownloading((int)(100.0F * of.c(paramkv)));
      continue;
      parama.g.setDownloadWaiting();
      continue;
      parama.g.setDownloadPause((int)(100.0F * of.c(paramkv)));
      continue;
      parama.g.setDownloadComplete();
      continue;
      parama.g.setInstalled();
      continue;
      parama.g.setUpdatePreparation();
    }
  }

  protected boolean a()
  {
    return true;
  }

  public void b()
  {
    this.h = true;
  }

  protected final void b(ala.a parama, kv paramkv)
  {
    kw localkw = paramkv.d;
    String str1 = a(localkw);
    if (str1.equals(""))
      str1 = localkw.getPackageName();
    parama.b.setTag(str1);
    if (localkw.getPackageName() != null)
    {
      Drawable localDrawable = localkw.getIcon();
      if (((localDrawable != null) && (((BitmapDrawable)localDrawable).getBitmap() != null) && (!((BitmapDrawable)localDrawable).getBitmap().isRecycled()) && (!localkw.getIcon().equals(this.c))) || (this.g == null))
        break label212;
      parama.b.setImageDrawable(this.c);
      lv locallv = new lv();
      locallv.b = this.d;
      String str2 = a(localkw);
      if (str2.equals(""))
      {
        str2 = localkw.getPackageName();
        locallv.b = 2;
      }
      locallv.g = str2.hashCode();
      locallv.d = str2;
      locallv.a = 0;
      locallv.h = localkw;
      locallv.i = new alc(this);
      this.g.b(locallv);
    }
    while (true)
    {
      return;
      label212: if (localkw.getIcon() == null)
        localkw.setIcon(this.c);
      else
        parama.b.setImageDrawable(localkw.getIcon());
    }
  }

  public final void c(ala.a parama, kv paramkv)
  {
    kw localkw = paramkv.d;
    parama.a.setText(localkw.getAppName());
    String str;
    if (localkw.getSize() == 0L)
    {
      parama.c.setText("");
      str = localkw.d();
      if ((str == null) || (str.length() <= 0))
        str = localkw.getVersion();
      if (str == null)
        str = "";
      if (!str.equals(""))
        break label109;
      parama.d.setText("");
    }
    while (true)
    {
      return;
      parama.c.setText(this.e.a(localkw.getSize()));
      break;
      label109: parama.d.setText(str + this.mContext.getString(2131428301));
    }
  }

  public Object getItem(int paramInt)
  {
    return super.getItem(paramInt);
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ala.a locala1;
    kv localkv;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903288);
      ala.a locala2 = new ala.a();
      locala2.a = ((TextView)paramView.findViewById(2131231033));
      locala2.b = ((ImageView)paramView.findViewById(2131230869));
      locala2.c = ((TextView)paramView.findViewById(2131231537));
      locala2.d = ((TextView)paramView.findViewById(2131231538));
      locala2.g = ((SoftwareUpdateIconView)paramView.findViewById(2131231541));
      locala2.f = ((ImageView)paramView.findViewById(2131231540));
      locala2.h = ((TextView)paramView.findViewById(2131231543));
      locala2.i = ((LinearLayout)paramView.findViewById(2131231546));
      locala2.j = ((LinearLayout)paramView.findViewById(2131231549));
      locala2.k = ((TextView)paramView.findViewById(2131231143));
      locala2.l = ((TextView)paramView.findViewById(2131231547));
      locala2.m = ((LinearLayout)paramView.findViewById(2131231550));
      locala2.n = ((LinearLayout)paramView.findViewById(2131231551));
      locala2.o = ((LinearLayout)paramView.findViewById(2131231552));
      locala2.p = ((LinearLayout)paramView.findViewById(2131231542));
      locala2.q = ((LinearLayout)paramView.findViewById(2131231041));
      locala2.s = paramView.findViewById(2131231545);
      locala2.t = paramView.findViewById(2131231548);
      locala2.r = ((ImageView)paramView.findViewById(2131231544));
      paramView.setTag(locala2);
      locala1 = locala2;
      localkv = (kv)this.mDataList.get(paramInt);
      if (!this.h)
        break label436;
      locala1.h.setVisibility(0);
      locala1.h.setText(localkv.d.Q());
    }
    while (true)
    {
      locala1.g.setTag(localkv);
      locala1.g.setOnClickListener(this.a);
      setLabel(paramView, (ItemModel)this.mItemModelList.get(paramInt));
      b(locala1, localkv);
      c(locala1, localkv);
      a(locala1, localkv);
      return paramView;
      locala1 = (ala.a)paramView.getTag();
      break;
      label436: locala1.h.setVisibility(8);
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
    public LinearLayout i;
    public LinearLayout j;
    public TextView k;
    public TextView l;
    public LinearLayout m;
    public LinearLayout n;
    public LinearLayout o;
    public LinearLayout p;
    public LinearLayout q;
    public ImageView r;
    public View s;
    public View t;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ala
 * JD-Core Version:    0.6.2
 */