import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.SecureSpaceMMSView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingInsideView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingOutsideView;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class ait extends BaseAdapter
{
  private Context a;
  private SimpleDateFormat b;
  private SimpleDateFormat c;
  private SimpleDateFormat d;
  private List<mk> e;
  private View.OnClickListener f;
  private HashMap<Integer, ArrayList<adg>> g;
  private HashMap<Integer, ArrayList<Bitmap>> h;
  private HashMap<Integer, Bitmap> i;
  private ListView j;
  private SecureSmsDialogueView k;

  public ait(Context paramContext, List<mk> paramList, SecureSmsDialogueView paramSecureSmsDialogueView)
  {
    this.a = paramContext;
    this.e = paramList;
    c();
    this.b = new SimpleDateFormat(this.a.getString(2131427337) + " HH:mm");
    this.c = new SimpleDateFormat(this.a.getString(2131427336) + " HH:mm");
    this.d = new SimpleDateFormat("MM" + this.a.getString(2131428568) + "dd" + this.a.getString(2131428395) + " HH:mm");
    this.k = paramSecureSmsDialogueView;
    this.j = ((ListView)paramSecureSmsDialogueView.getMainView().findViewById(2131231553));
  }

  private void a(ait.a parama, int paramInt1, int paramInt2)
  {
    if ((this.h.get(Integer.valueOf(paramInt2)) == null) || (((ArrayList)this.h.get(Integer.valueOf(paramInt2))).size() == 0))
    {
      ArrayList localArrayList = new ArrayList();
      if (this.i == null)
      {
        this.i = new HashMap();
        Resources localResources = this.a.getResources();
        Bitmap localBitmap1 = BitmapFactory.decodeResource(localResources, 2130838042);
        this.i.put(Integer.valueOf(2), localBitmap1);
        Bitmap localBitmap2 = BitmapFactory.decodeResource(localResources, 2130838355);
        this.i.put(Integer.valueOf(3), localBitmap2);
      }
      int m = 0;
      if (m < ((ArrayList)this.g.get(Integer.valueOf(paramInt2))).size())
      {
        Object localObject;
        switch (((adg)((ArrayList)this.g.get(Integer.valueOf(paramInt2))).get(m)).b())
        {
        default:
          localObject = null;
        case 2:
        case 3:
        }
        while (true)
        {
          if (localObject != null)
            localArrayList.add(localObject);
          m++;
          break;
          localObject = (Bitmap)this.i.get(Integer.valueOf(2));
          continue;
          localObject = (Bitmap)this.i.get(Integer.valueOf(3));
        }
      }
      parama.f.setBitmap(localArrayList);
      parama.f.setTag(Integer.valueOf(paramInt2));
      fo localfo = new fo();
      localfo.g = paramInt2;
      localfo.b = ((ArrayList)this.g.get(Integer.valueOf(paramInt2)));
      localfo.i = new aiu(this, paramInt2, paramInt1);
      SecureSmsDialogueView.a().b(localfo);
    }
    while (true)
    {
      return;
      parama.f.setBitmap((ArrayList)this.h.get(new Integer(paramInt2)));
    }
  }

  private void c()
  {
    for (int m = 1; m < this.e.size(); m++)
      for (int i1 = m; (i1 > 0) && (((mk)this.e.get(i1)).date < ((mk)this.e.get(i1 - 1)).date); i1--)
      {
        mk localmk4 = (mk)this.e.get(i1);
        this.e.set(i1, this.e.get(i1 - 1));
        this.e.set(i1 - 1, localmk4);
      }
    if ((this.e.size() > 0) && (((mk)this.e.get(0)).id == -1))
      return;
    int n = 0;
    long l = 0L;
    label169: mk localmk1;
    if (n < this.e.size())
    {
      localmk1 = (mk)this.e.get(n);
      if (n != 0)
        break label246;
      l = localmk1.date;
      mk localmk3 = new mk();
      localmk3.date = l;
      localmk3.id = -1;
      this.e.add(n, localmk3);
    }
    while (true)
    {
      n++;
      break label169;
      break;
      label246: if (localmk1.date - l > 300000L)
      {
        l = localmk1.date;
        mk localmk2 = new mk();
        localmk2.date = l;
        localmk2.id = -1;
        this.e.add(n, localmk2);
      }
    }
  }

  public final ArrayList<mk> a()
  {
    return (ArrayList)this.e;
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    this.f = paramOnClickListener;
  }

  public final void a(HashMap<Integer, ArrayList<adg>> paramHashMap)
  {
    this.g = paramHashMap;
    if (this.h == null)
      this.h = new HashMap();
    while (true)
    {
      for (int m = 0; m < this.e.size(); m++)
        if (((mk)this.e.get(m)).id > 0)
        {
          ArrayList localArrayList = new ArrayList();
          this.h.put(Integer.valueOf(((mk)this.e.get(m)).id), localArrayList);
        }
      this.h.clear();
    }
  }

  public final void a(List<mk> paramList)
  {
    try
    {
      this.e.clear();
      this.e = paramList;
      c();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final HashMap<Integer, ArrayList<adg>> b()
  {
    return this.g;
  }

  public final int getCount()
  {
    return this.e.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.e.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final int getItemViewType(int paramInt)
  {
    int m;
    if (((mk)this.e.get(paramInt)).type == 2)
      m = 1;
    while (true)
    {
      return m;
      if (((mk)this.e.get(paramInt)).id == -1)
        m = 2;
      else
        m = 0;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String.valueOf(paramInt);
    ait.a locala1;
    label142: TextView localTextView;
    long l1;
    long l2;
    String str;
    if (paramView == null)
      if (getItemViewType(paramInt) == 0)
      {
        paramView = LayoutInflater.from(this.a).inflate(2130903311, null);
        ait.a locala2 = new ait.a();
        locala2.a = ((TextView)paramView.findViewById(2131231556));
        locala2.a.setTextColor(-16777216);
        locala2.e = ((ImageView)paramView.findViewById(2131231601));
        locala2.f = ((SecureSpaceMMSView)paramView.findViewById(2131231602));
        locala2.g = ((LoadingOutsideView)paramView.findViewById(2131230971));
        locala2.h = ((LoadingInsideView)paramView.findViewById(2131230972));
        paramView.setLongClickable(true);
        paramView.setTag(locala2);
        locala1 = locala2;
        if (getItemViewType(paramInt) != 2)
          break label325;
        localTextView = locala1.a;
        l1 = ((mk)this.e.get(paramInt)).date;
        l2 = System.currentTimeMillis();
        if (a.a(l2, l1) != 0)
          break label280;
        str = this.b.format(Long.valueOf(l1));
      }
    while (true)
    {
      localTextView.setText(str);
      return paramView;
      if (getItemViewType(paramInt) == 1)
      {
        paramView = LayoutInflater.from(this.a).inflate(2130903313, null);
        break;
      }
      if (getItemViewType(paramInt) != 2)
        break;
      paramView = LayoutInflater.from(this.a).inflate(2130903312, null);
      break;
      locala1 = (ait.a)paramView.getTag();
      break label142;
      label280: if (a.a(l2, l1) == 1)
        str = this.c.format(Long.valueOf(l1));
      else
        str = this.d.format(Long.valueOf(l1));
    }
    label325: if (getItemViewType(paramInt) == 1)
    {
      locala1.b = ((LinearLayout)paramView.findViewById(2131231603));
      locala1.c = ((ImageView)paramView.findViewById(2131231604));
      locala1.d = ((TextView)paramView.findViewById(2131231605));
      if (paramInt != -1 + this.e.size())
        break label1016;
      switch (((mk)this.e.get(paramInt)).h)
      {
      default:
        locala1.b.setVisibility(8);
      case 2000:
      case 1000:
      case 3000:
      }
    }
    mk localmk;
    while (true)
    {
      localmk = (mk)this.e.get(paramInt);
      if (localmk.mmsData != null)
        break label1029;
      locala1.a.setText(localmk.body);
      if (localmk.mmsData == null)
      {
        locala1.e.setVisibility(8);
        locala1.f.setVisibility(8);
        locala1.g.setVisibility(8);
        locala1.h.setVisibility(8);
        locala1.a.setVisibility(0);
      }
      if ((localmk.mmsData != null) && (localmk.mmsData.mmsNotificationIndHeader != null))
      {
        locala1.e.setVisibility(0);
        locala1.f.setVisibility(8);
        locala1.g.setVisibility(8);
        locala1.h.setVisibility(8);
        locala1.e.setTag(new Integer(paramInt));
        locala1.e.setOnClickListener(this.f);
        if (!localmk.i)
          break label1182;
        locala1.e.setBackgroundDrawable(this.a.getResources().getDrawable(2130838070));
      }
      label662: if ((localmk.mmsData != null) && (localmk.mmsData.mmsContentConfigHeader == null) && (localmk.l))
      {
        locala1.e.setVisibility(8);
        locala1.f.setVisibility(8);
        locala1.g.setVisibility(0);
        locala1.h.setVisibility(0);
        locala1.g.startRotationAnimation();
        locala1.h.startRotationAnimation();
      }
      if ((localmk.mmsData == null) || (localmk.mmsData.mmsContentConfigHeader == null))
        break;
      locala1.g.stopRotationAnimation();
      locala1.h.stopRotationAnimation();
      locala1.g.setVisibility(8);
      locala1.h.setVisibility(8);
      locala1.a.setVisibility(8);
      new StringBuilder().append(this.g).toString();
      locala1.f.setData((ArrayList)this.g.get(new Integer(localmk.id)));
      locala1.f.createChidView();
      locala1.f.addChildView();
      a(locala1, paramInt, localmk.id);
      locala1.e.setVisibility(8);
      locala1.f.setVisibility(0);
      break;
      locala1.b.setVisibility(0);
      locala1.d.setText(2131428580);
      locala1.c.setVisibility(8);
      continue;
      locala1.b.setVisibility(0);
      locala1.d.setText(2131428579);
      locala1.c.setVisibility(8);
      continue;
      locala1.b.setVisibility(0);
      locala1.d.setText(2131428581);
      locala1.c.setImageResource(2130837807);
      locala1.c.setVisibility(0);
      continue;
      label1016: locala1.b.setVisibility(8);
    }
    label1029: Object localObject;
    if ((localmk == null) || (localmk.mmsData == null))
      localObject = null;
    label1045: label1182: label1206: label1210: 
    while (true)
    {
      if (localObject != null)
      {
        locala1.a.setText((CharSequence)localObject);
        break;
        if ((localmk.mmsData.mmsNotificationIndHeader == null) || (localmk.mmsData.mmsNotificationIndHeader.subject == null) || (localmk.mmsData.mmsNotificationIndHeader.subject.equals("")))
          break label1206;
      }
      for (localObject = localmk.mmsData.mmsNotificationIndHeader.subject; ; localObject = null)
      {
        if ((localmk.mmsData.mmsContentConfigHeader == null) || (localmk.mmsData.mmsContentConfigHeader.subject == null) || (localmk.mmsData.mmsContentConfigHeader.subject.equals("")))
          break label1210;
        localObject = localmk.mmsData.mmsContentConfigHeader.subject;
        break label1045;
        break;
        locala1.e.setBackgroundDrawable(this.a.getResources().getDrawable(2130837673));
        break label662;
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 3;
  }

  public static final class a
  {
    public TextView a;
    public LinearLayout b;
    public ImageView c;
    public TextView d;
    public ImageView e;
    public SecureSpaceMMSView f;
    public LoadingOutsideView g;
    public LoadingInsideView h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ait
 * JD-Core Version:    0.6.2
 */