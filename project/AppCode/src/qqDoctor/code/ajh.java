import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public final class ajh extends ajo
{
  private Context f;
  private LayoutInflater g;
  private List<lq> h;
  private GridView i;

  public ajh(Context paramContext, GridView paramGridView, List<lq> paramList)
  {
    super(paramList, true);
    this.f = paramContext;
    this.a = this.f.getResources().getDrawable(2130837753);
    this.b = this.f.getResources().getDrawable(2130837738);
    this.g = LayoutInflater.from(this.f);
    this.h = paramList;
    this.i = paramGridView;
    this.c = 3;
    this.d = 3;
  }

  protected final void a(int paramInt)
  {
    ImageView localImageView = (ImageView)this.i.findViewWithTag(((lq)this.h.get(paramInt)).b());
    if (localImageView != null)
    {
      if (!((lq)this.h.get(paramInt)).c)
        break label59;
      localImageView.setImageDrawable(this.b);
    }
    while (true)
    {
      return;
      label59: localImageView.setImageDrawable(this.a);
    }
  }

  protected final void a(mq parammq, lr paramlr)
  {
    parammq.c = ((lq)paramlr).a;
  }

  protected final void a(mq parammq, boolean paramBoolean)
  {
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)parammq.b;
    ImageView localImageView;
    if ((paramBoolean) && (!this.e))
    {
      localImageView = (ImageView)this.i.findViewWithTag(parammq.a.b());
      if ((localBitmapDrawable == null) || (localImageView == null))
        break label54;
      localImageView.setImageDrawable(localBitmapDrawable);
    }
    while (true)
    {
      return;
      label54: if (localImageView != null)
        localImageView.setImageDrawable(this.b);
    }
  }

  public final int getCount()
  {
    if (this.h == null);
    for (int j = 0; ; j = this.h.size())
      return j;
  }

  public final Object getItem(int paramInt)
  {
    Object localObject = null;
    if (paramInt >= 0)
    {
      int j = this.h.size();
      localObject = null;
      if (paramInt < j)
        localObject = this.h.get(paramInt);
    }
    return localObject;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ajh.a locala;
    lq locallq;
    if (paramView == null)
    {
      paramView = this.g.inflate(2130903293, paramViewGroup, false);
      locala = new ajh.a();
      locala.a = ((ImageView)paramView.findViewById(2131231557));
      locala.b = ((ImageView)paramView.findViewById(2131231560));
      locala.c = ((TextView)paramView.findViewById(2131230754));
      locala.d = ((TextView)paramView.findViewById(2131231561));
      paramView.setTag(locala);
      ViewGroup.LayoutParams localLayoutParams = locala.a.getLayoutParams();
      localLayoutParams.width = lm.e.a;
      localLayoutParams.height = lm.e.b;
      locala.a.setLayoutParams(localLayoutParams);
      locallq = (lq)this.h.get(paramInt);
      int j = locallq.b().lastIndexOf("/");
      String str = locallq.b().substring(j + 1);
      locala.c.setText(str);
      locala.d.setText(Integer.toString(locallq.a()));
      locala.a.setTag(locallq.b());
      if (locallq.b != 1)
        break label276;
      locala.b.setImageResource(2130837749);
      label229: BitmapDrawable localBitmapDrawable = locallq.e;
      if ((localBitmapDrawable == null) || (localBitmapDrawable.getBitmap().isRecycled()))
        break label289;
      locala.a.setImageDrawable(localBitmapDrawable);
    }
    while (true)
    {
      return paramView;
      locala = (ajh.a)paramView.getTag();
      break;
      label276: locala.b.setImageResource(2130837750);
      break label229;
      label289: if (locallq.c)
        locala.a.setImageDrawable(this.b);
      else
        locala.a.setImageDrawable(this.a);
    }
  }

  final class a
  {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajh
 * JD-Core Version:    0.6.2
 */