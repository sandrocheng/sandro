import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.market.CategoryActivity;
import com.tencent.qqpimsecure.ui.activity.market.GameCategoryListActivity;
import com.tencent.qqpimsecure.ui.activity.market.RankingActivity;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareCategoryListActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import java.util.List;

public final class ali extends ala
  implements View.OnClickListener
{
  private View b = LayoutInflater.from(this.mContext).inflate(2130903171, null);
  private ImageView c = (ImageView)this.b.findViewById(2131231110);
  private ImageView d = (ImageView)this.b.findViewById(2131231111);
  private ImageView e = (ImageView)this.b.findViewById(2131231112);
  private ImageView f = (ImageView)this.b.findViewById(2131231113);
  private boolean g;

  public ali(bmd parambmd, List<ListModel<kv>> paramList)
  {
    super(parambmd, paramList, 0);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
  }

  protected final boolean a()
  {
    return false;
  }

  public final void b()
  {
    this.g = true;
  }

  public final int getItemViewType(int paramInt)
  {
    if (paramInt == 0);
    for (int i = 0; ; i = 1)
      return i;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    ala.a locala;
    if (i == 1)
      if (paramView == null)
      {
        paramView = createItemView(paramInt, 2130903286);
        locala = new ala.a();
        locala.a = ((TextView)paramView.findViewById(2131231033));
        locala.b = ((ImageView)paramView.findViewById(2131230869));
        locala.c = ((TextView)paramView.findViewById(2131231537));
        locala.d = ((TextView)paramView.findViewById(2131231538));
        locala.g = ((SoftwareUpdateIconView)paramView.findViewById(2131231541));
        locala.f = ((ImageView)paramView.findViewById(2131231540));
        locala.e = ((RatingBar)paramView.findViewById(2131231366));
        locala.h = ((TextView)paramView.findViewById(2131231539));
        paramView.setTag(locala);
        kv localkv = (kv)this.mDataList.get(paramInt);
        locala.g.setTag(localkv);
        locala.g.setOnClickListener(this.a);
        b(locala, localkv);
        c(locala, localkv);
        locala.e.setRating(localkv.d.l());
        if (!this.g)
          break label275;
        locala.h.setVisibility(0);
        locala.h.setText(localkv.d.Q());
        label253: a(locala, localkv);
      }
    while (true)
    {
      return paramView;
      locala = (ala.a)paramView.getTag();
      break;
      label275: locala.h.setVisibility(8);
      break label253;
      if (i == 0)
        paramView = this.b;
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public final void onClick(View paramView)
  {
    int i = paramView.getId();
    int j = 0;
    Intent localIntent = null;
    switch (i)
    {
    default:
    case 2131231110:
    case 2131231111:
    case 2131231112:
    case 2131231113:
    }
    while (true)
    {
      nd.a().a(j);
      this.mContext.startActivity(localIntent);
      return;
      j = 26200;
      localIntent = new Intent(this.mContext, RankingActivity.class);
      continue;
      j = 26047;
      localIntent = new Intent(this.mContext, CategoryActivity.class);
      continue;
      j = 26201;
      localIntent = new Intent(this.mContext, GameCategoryListActivity.class);
      continue;
      j = 26156;
      localIntent = new Intent(this.mContext, SoftwareCategoryListActivity.class);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ali
 * JD-Core Version:    0.6.2
 */