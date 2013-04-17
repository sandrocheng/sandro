import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public final class akp extends BasePinnedListAdapter<mf>
{
  boolean a;
  private Drawable b;
  private sl c;
  private Context d;
  private ListView e;
  private BaseView f;
  private String g;
  private ji h;
  private boolean i = true;

  public akp(Context paramContext, BasePinnedListView<mf> paramBasePinnedListView, List<ListModel<mf>> paramList, boolean paramBoolean)
  {
    super(paramContext, paramList);
    this.d = paramContext;
    this.b = this.d.getResources().getDrawable(17301651);
    this.f = paramBasePinnedListView;
    this.e = paramBasePinnedListView.getListView();
    this.c = paramBasePinnedListView.getImageLoaderService();
    this.a = paramBoolean;
    this.h = new ji();
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akp.a locala2;
    akp.a locala1;
    label105: mf localmf;
    label253: boolean bool;
    int m;
    label328: int k;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903353);
      locala2 = new akp.a();
      if (((ItemModel)this.mItemModelList.get(paramInt)).getItemStyle() == 0)
      {
        locala2.d = paramView.findViewById(2131231589);
        locala2.a = ((ImageView)paramView.findViewById(2131231672));
        locala2.b = ((TextView)paramView.findViewById(2131230969));
        locala2.c = ((Button)paramView.findViewById(2131231679));
        paramView.setTag(locala2);
        locala1 = locala2;
        localmf = (mf)this.mDataList.get(paramInt);
        if (localmf.c != null)
          break label485;
        locala1.a.setImageDrawable(this.b);
        locala1.a.setTag(localmf.a);
        kw localkw = new kw();
        localkw.setPackageName(localmf.a);
        localkw.a(localmf);
        lv locallv = new lv();
        locallv.b = 2;
        locallv.g = localkw.getPackageName().hashCode();
        locallv.d = localkw.getPackageName();
        locallv.a = 0;
        locallv.h = localkw;
        locallv.i = new akt(this);
        this.c.b(locallv);
        ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
        if (localItemModel.getItemStyle() == 0)
          setLabel(paramView, localItemModel);
        locala1.b.setText(localmf.b);
        bool = ho.a().co();
        if (!this.a)
          break label509;
        Button localButton2 = locala1.c;
        if (!bool)
          break label501;
        m = 2130837886;
        localButton2.setBackgroundResource(m);
        locala1.c.setTag(localmf);
        locala1.c.setOnClickListener(new akq(this));
        if ((this.g == null) || (this.g.hashCode() != localmf.a.hashCode()))
          break label552;
        locala1.d.setVisibility(4);
        View localView = locala1.d;
        if (!this.a)
          break label544;
        k = -gw.a;
        label415: TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, k, 0.0F, 0.0F);
        localTranslateAnimation.setDuration(200L);
        localTranslateAnimation.setAnimationListener(new aks(this, localView, localmf));
        localView.startAnimation(localTranslateAnimation);
      }
    }
    while (true)
    {
      return paramView;
      locala2.d = paramView;
      break;
      locala1 = (akp.a)paramView.getTag();
      break label105;
      label485: locala1.a.setImageDrawable(localmf.c);
      break label253;
      label501: m = 2130837888;
      break label328;
      label509: Button localButton1 = locala1.c;
      if (bool);
      for (int j = 2130837875; ; j = 2130837877)
      {
        localButton1.setBackgroundResource(j);
        break;
      }
      label544: k = gw.a;
      break label415;
      label552: locala1.d.setVisibility(0);
    }
  }

  final class a
  {
    ImageView a;
    TextView b;
    Button c;
    View d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akp
 * JD-Core Version:    0.6.2
 */