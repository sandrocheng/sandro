import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.InterceptMMSView;
import com.tencent.qqpimsecure.uilib.view.InterceptMMSView.BitmapThumbnailWH;
import com.tencent.qqpimsecure.uilib.view.MMSThumbnailDefaultView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingInsideView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingOutsideView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import java.util.ArrayList;
import java.util.HashSet;

public final class awt extends BaseView
{
  private LoadingOutsideView a;
  private LoadingInsideView b;
  private ug c;
  private InterceptMMSView d;
  private ArrayList<adg> e;
  private int f;
  private ArrayList<View> g;
  private TextView h;
  private ImageView i;
  private BroadcastReceiver j = new awv(this);
  private BroadcastReceiver k = new aww(this);

  public awt(Context paramContext)
  {
    super(paramContext, 2130903345);
  }

  private void a()
  {
    this.a.stopRotationAnimation();
    this.b.stopRotationAnimation();
    this.a.setVisibility(8);
    this.b.setVisibility(8);
  }

  private static boolean b(mk parammk)
  {
    boolean bool1 = false;
    if (parammk != null)
    {
      MmsData localMmsData = parammk.mmsData;
      bool1 = false;
      if (localMmsData != null)
      {
        MmsNotificationIndHeader localMmsNotificationIndHeader = parammk.mmsData.mmsNotificationIndHeader;
        bool1 = false;
        if (localMmsNotificationIndHeader != null)
        {
          boolean bool2 = 1000L * parammk.mmsData.mmsNotificationIndHeader.expiry < System.currentTimeMillis();
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  private void c(mk parammk)
  {
    fn localfn = new fn();
    localfn.a = parammk.mmsData;
    localfn.a();
    this.e = localfn.b;
    this.d.setData(this.e);
    this.d.createChidView();
    this.g = this.d.addChildView();
    ArrayList localArrayList1 = this.d.getBitmap(this.e, this.g);
    ArrayList localArrayList2 = this.g;
    if ((localArrayList2 == null) || (localArrayList2.size() == 0) || (localArrayList1 == null) || (localArrayList1.size() == 0))
    {
      this.d.setVisibility(0);
      return;
    }
    int m = 0;
    int n = 0;
    label118: adg localadg;
    Bitmap localBitmap;
    if (m < localArrayList2.size())
    {
      localadg = (adg)((View)localArrayList2.get(m)).getTag();
      new StringBuilder("adapter ").append(localadg.e()).toString();
      if (localadg.b() != 0)
      {
        if (localadg.b() != 3)
          break label405;
        Drawable localDrawable2 = this.mContext.getResources().getDrawable(2130838355);
        localBitmap = null;
        if (localDrawable2 != null)
        {
          localBitmap = ((BitmapDrawable)localDrawable2).getBitmap();
          if (((Bitmap)localArrayList1.get(n)).getRowBytes() == localBitmap.getRowBytes())
            break label317;
          ((MMSThumbnailDefaultView)localArrayList2.get(m)).setThumbnailmDefaultImageVisible(true);
        }
      }
    }
    while (true)
    {
      MMSThumbnailDefaultView localMMSThumbnailDefaultView = (MMSThumbnailDefaultView)localArrayList2.get(m);
      int i1 = n + 1;
      localMMSThumbnailDefaultView.setThumbnailImageDrawable(new BitmapDrawable((Bitmap)localArrayList1.get(n)));
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
        localBitmap.recycle();
      n = i1;
      m++;
      break label118;
      break;
      label317: DisplayMetrics localDisplayMetrics2 = new DisplayMetrics();
      ((Activity)this.mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics2);
      ViewGroup.LayoutParams localLayoutParams3 = ((MMSThumbnailDefaultView)localArrayList2.get(m)).getLayoutParams();
      localLayoutParams3.width = -1;
      localLayoutParams3.height = -1;
      ((MMSThumbnailDefaultView)localArrayList2.get(m)).setLayoutParams(localLayoutParams3);
      ((MMSThumbnailDefaultView)localArrayList2.get(m)).setViewAttr(true);
      continue;
      label405: if (localadg.b() == 2)
      {
        Drawable localDrawable1 = this.mContext.getResources().getDrawable(2130838042);
        localBitmap = null;
        if (localDrawable1 != null)
        {
          localBitmap = ((BitmapDrawable)localDrawable1).getBitmap();
          if (((Bitmap)localArrayList1.get(n)).getRowBytes() != localBitmap.getRowBytes())
          {
            ((MMSThumbnailDefaultView)localArrayList2.get(m)).setThumbnailmDefaultImageVisible(true);
          }
          else
          {
            DisplayMetrics localDisplayMetrics1 = new DisplayMetrics();
            ((Activity)this.mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics1);
            ViewGroup.LayoutParams localLayoutParams2 = ((MMSThumbnailDefaultView)localArrayList2.get(m)).getLayoutParams();
            localLayoutParams2.width = -1;
            localLayoutParams2.height = -1;
            ((MMSThumbnailDefaultView)localArrayList2.get(m)).setLayoutParams(localLayoutParams2);
            ((MMSThumbnailDefaultView)localArrayList2.get(m)).setViewAttr(true);
          }
        }
      }
      else
      {
        InterceptMMSView.BitmapThumbnailWH localBitmapThumbnailWH = this.d.getThumbnailWH(localadg.e());
        ViewGroup.LayoutParams localLayoutParams1 = ((MMSThumbnailDefaultView)localArrayList2.get(m)).getLayoutParams();
        localLayoutParams1.width = localBitmapThumbnailWH.width;
        localLayoutParams1.height = localBitmapThumbnailWH.height;
        ((MMSThumbnailDefaultView)localArrayList2.get(m)).setLayoutParams(localLayoutParams1);
        localBitmap = null;
      }
    }
  }

  public final void onBackClick()
  {
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ((InterceptMMSView)findViewById(2131231602));
    this.a = ((LoadingOutsideView)findViewById(2131230971));
    this.b = ((LoadingInsideView)findViewById(2131230972));
    this.h = ((TextView)findViewById(2131231050));
    this.i = ((ImageView)findViewById(2131231662));
    if (ug.g == null)
      ug.g = new ug();
    this.c = ug.g;
    Intent localIntent = getActivity().getIntent();
    mk localmk;
    if (localIntent != null)
    {
      localmk = (mk)localIntent.getSerializableExtra("smslog");
      this.f = localmk.id;
      if ((localmk.mmsData.mmsNotificationIndHeader != null) && (localmk.mmsData.mmsNotificationIndHeader.subject != null) && (!localmk.mmsData.mmsNotificationIndHeader.subject.equals("")))
        this.h.setText(this.mContext.getText(2131427346) + localmk.mmsData.mmsNotificationIndHeader.subject);
      if ((localmk.mmsData.mmsContentConfigHeader != null) && (localmk.mmsData.mmsContentConfigHeader.subject != null) && (!localmk.mmsData.mmsContentConfigHeader.subject.equals("")))
        this.h.setText(this.mContext.getText(2131427346) + localmk.mmsData.mmsContentConfigHeader.subject);
      localmk.i = b(localmk);
      if (!localmk.i)
        break label355;
      this.i.setVisibility(0);
      this.i.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130838070));
      a();
      this.d.setVisibility(8);
    }
    while (true)
    {
      return;
      label355: if ((localmk.mmsData.mmsNotificationIndHeader != null) && (localmk.mmsData.mmsNotificationIndHeader.subject != null))
      {
        this.i.setVisibility(0);
        this.i.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837673));
        this.i.setOnClickListener(new awu(this, localmk));
      }
      HashSet localHashSet = this.c.d;
      int m = 0;
      if (localHashSet != null)
      {
        boolean bool1 = localHashSet.isEmpty();
        m = 0;
        if (!bool1)
          break label476;
      }
      while (true)
      {
        if (m == 0)
          break label507;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(105));
        break;
        label476: boolean bool2 = localHashSet.contains(new Integer(localmk.id));
        m = 0;
        if (bool2)
          m = 1;
      }
      label507: if ((localmk.mmsData != null) && (localmk.mmsData.mmsNotificationIndHeader != null))
      {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(105));
        this.c.a(new ml(localmk, localmk.id));
      }
      if ((localmk.mmsData != null) && (localmk.mmsData.mmsContentConfigHeader != null))
      {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(106));
        c(localmk);
      }
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    getActivity().unregisterReceiver(this.j);
    getActivity().unregisterReceiver(this.k);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 105:
    case 106:
    }
    while (true)
    {
      return;
      this.a.setVisibility(0);
      this.b.setVisibility(0);
      this.a.startRotationAnimation();
      this.b.startRotationAnimation();
      this.d.setVisibility(8);
      continue;
      a();
      this.d.setVisibility(0);
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(107), 1500L);
    getActivity().registerReceiver(this.j, new IntentFilter("com.tencent.qqpimsecure.service.ACTION_NOTIFY_INTERCEPT_MMSPATR_DOWNLOAD_SUCCESS"));
    getActivity().registerReceiver(this.k, new IntentFilter("com.tencent.qqpimsecure.service.ACTION_NOTIFY_INTERCEPT_MMSPATR_DOWNLOAD_FAILURE"));
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131427512));
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awt
 * JD-Core Version:    0.6.2
 */