import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.InterceptMMSView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingInsideView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingOutsideView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class awj extends BaseView
{
  private Button a;
  private Button b;
  private Button c;
  private Button d;
  private ImageView e;
  private Bitmap f;
  private DisplayMetrics g;
  private String h;
  private String i = Environment.getExternalStorageDirectory() + "/QQSecureDownload/caixin";
  private String j;
  private SurfaceView k;
  private ProgressBar l;
  private ProgressBar m;
  private awj.b n;
  private LoadingOutsideView o;
  private LoadingInsideView p;
  private InterceptMMSView q;
  private RelativeLayout r;
  private LinearLayout s;
  private RelativeLayout t;
  private boolean u;
  private awj.a v;
  private RelativeLayout w;
  private TextView x;
  private View.OnClickListener y = new awo(this);

  public awj(Context paramContext)
  {
    super(paramContext, 2130903344);
  }

  public final long a(String paramString1, String paramString2, String paramString3)
  {
    long l1 = -1L;
    StringBuilder localStringBuilder = new StringBuilder();
    Matcher localMatcher = Pattern.compile("[A-Za-z0-9.]").matcher(paramString3);
    while (localMatcher.find())
      localStringBuilder.append(localMatcher.group(0));
    File localFile1 = new File(this.i);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(paramString2 + File.separator + localStringBuilder);
    if (!new File(paramString1).exists());
    while (true)
    {
      return l1;
      if (new File(paramString2 + File.separator + localStringBuilder).exists())
        l1 = 1L;
      else if (paramString3 != null)
        if (0L <= 0L)
          try
          {
            localFile2.createNewFile();
            k.a(new File(paramString1), new File(paramString2 + File.separator + localStringBuilder));
            l1 = 100L;
          }
          catch (IOException localIOException)
          {
            localIOException.printStackTrace();
          }
        else
          l1 = 0L;
    }
  }

  public final void onBackClick()
  {
    super.onBackClick();
    if (this.v != null)
      this.v.a();
    if (this.v != null)
      this.v.a();
    if (this.n != null)
      this.n.b();
  }

  public final void onCreate()
  {
    super.onCreate();
    getActivity().requestWindowFeature(1);
    getActivity().getWindow().setFlags(1024, 1024);
    this.g = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(this.g);
    this.a = ((Button)findViewById(2131230763));
    this.e = ((ImageView)findViewById(2131230849));
    this.b = ((Button)findViewById(2131231655));
    this.k = ((SurfaceView)findViewById(2131231657));
    this.a.setOnClickListener(this.y);
    this.b.setOnClickListener(this.y);
    this.l = ((ProgressBar)findViewById(2131231658));
    this.c = ((Button)findViewById(2131231659));
    this.c.setOnClickListener(new awk(this));
    this.d = ((Button)findViewById(2131231660));
    this.d.setOnClickListener(new awl(this));
    this.q = ((InterceptMMSView)findViewById(2131231602));
    this.o = ((LoadingOutsideView)findViewById(2131230971));
    this.p = ((LoadingInsideView)findViewById(2131230972));
    this.r = ((RelativeLayout)findViewById(2131231654));
    this.s = ((LinearLayout)findViewById(2131231653));
    this.t = ((RelativeLayout)findViewById(2131231656));
    this.t.setOnClickListener(new awm(this));
    this.w = ((RelativeLayout)findViewById(2131231652));
    this.w.setOnClickListener(new awn(this));
    this.m = ((ProgressBar)findViewById(2131231661));
    this.m.setVisibility(8);
    this.r.setVisibility(0);
    this.s.setVisibility(0);
    this.n = new awj.b(this.k, this.l);
    this.x = ((TextView)findViewById(2131231276));
    this.x.setVisibility(8);
    this.mHandler.sendEmptyMessageDelayed(109, 2000L);
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.a.setOnClickListener(null);
    this.b.setOnClickListener(null);
    if ((this.f != null) && (!this.f.isRecycled()))
      this.f.recycle();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 107:
    default:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 108:
    case 109:
    }
    while (true)
    {
      return;
      this.mHandler.removeMessages(100);
      refreshListData();
      continue;
      ha.b(this.mContext, this.mContext.getString(2131429865));
      getActivity().finish();
      getActivity().finish();
      continue;
      this.r.setVisibility(4);
      this.s.setVisibility(4);
      continue;
      this.k.setVisibility(8);
      Intent localIntent = getActivity().getIntent();
      if (localIntent != null)
      {
        int i1 = localIntent.getIntExtra("form", 1);
        if ((1 != i1) && (2 == i1))
        {
          adg localadg = (adg)localIntent.getSerializableExtra("SMILComponent");
          this.h = localadg.e();
          this.j = localadg.f();
          if (localadg.b() == 1)
          {
            this.q.setVisibility(8);
            this.t.setVisibility(0);
            this.e.setVisibility(0);
            this.k.setVisibility(8);
            this.f = BitmapFactory.decodeFile(localadg.e());
            this.e.setImageBitmap(this.f);
            this.r.setVisibility(0);
            this.s.setVisibility(0);
          }
          else if (localadg.b() == 3)
          {
            this.q.setVisibility(8);
            this.t.setVisibility(0);
            this.k.setVisibility(0);
            this.e.setVisibility(4);
            this.r.setVisibility(0);
            this.s.setVisibility(0);
            this.l.setVisibility(0);
            this.c.setVisibility(0);
            this.d.setVisibility(0);
            this.n.a(localadg.e());
            this.c.setVisibility(4);
            this.d.setVisibility(4);
          }
          else if (localadg.b() == 2)
          {
            this.r.setVisibility(0);
            this.s.setVisibility(0);
            this.v = new awj.a(this.x);
            this.v.a(localadg.e());
            this.m.setVisibility(0);
            this.x.setVisibility(0);
            this.k.setVisibility(8);
            this.c.setVisibility(4);
            this.d.setVisibility(4);
            continue;
            this.o.setVisibility(0);
            this.p.setVisibility(0);
            this.o.startRotationAnimation();
            this.p.startRotationAnimation();
            this.a.setVisibility(8);
            this.b.setVisibility(8);
            this.l.setVisibility(8);
            this.c.setVisibility(8);
            this.d.setVisibility(8);
            this.q.setVisibility(8);
            this.k.setVisibility(8);
            this.e.setVisibility(8);
            this.r.setVisibility(8);
            this.s.setVisibility(8);
            this.t.setVisibility(8);
            continue;
            this.o.stopRotationAnimation();
            this.p.stopRotationAnimation();
            this.o.setVisibility(8);
            this.p.setVisibility(8);
            this.q.setVisibility(0);
            this.t.setVisibility(8);
            continue;
            this.r.setVisibility(0);
            this.s.setVisibility(0);
            continue;
            this.r.setVisibility(4);
            this.s.setVisibility(4);
          }
        }
      }
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleBar((byte)53);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  public final class a
    implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener
  {
    public MediaPlayer a;
    Handler b = new awq(this);
    private TextView d;
    private Timer e = new Timer();
    private FileInputStream f;
    private TimerTask g = new awp(this);

    public a(TextView arg2)
    {
      Object localObject;
      this.d = localObject;
      try
      {
        this.a = new MediaPlayer();
        this.a.setAudioStreamType(3);
        this.a.setOnBufferingUpdateListener(this);
        this.a.setOnPreparedListener(this);
        this.a.setOnCompletionListener(this);
        label92: this.e.schedule(this.g, 0L, 1000L);
        return;
      }
      catch (Exception localException)
      {
        break label92;
      }
    }

    public final void a()
    {
      this.g.cancel();
      if (this.a != null)
      {
        this.a.stop();
        this.a.release();
        this.a = null;
      }
      if (this.f != null);
      try
      {
        this.f.close();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }

    public final void a(String paramString)
    {
      try
      {
        this.a.reset();
        this.f = new FileInputStream(new File(paramString));
        this.a.setDataSource(this.f.getFD());
        this.a.prepare();
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
          localIllegalStateException.printStackTrace();
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }

    public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
    {
      awj.this.setSecondaryProgress(paramInt);
      int i = awj.this.getMax() * this.a.getCurrentPosition() / this.a.getDuration();
      new StringBuilder().append(i).append("% play").toString();
      new StringBuilder().append(paramInt).append("% buffer").toString();
    }

    public final void onCompletion(MediaPlayer paramMediaPlayer)
    {
      this.a.release();
      this.a = null;
      awj.this.setProgress(100);
      int i = this.a.getDuration() / 1000;
      this.d.setText(i + "/" + i + "s");
    }

    public final void onPrepared(MediaPlayer paramMediaPlayer)
    {
      paramMediaPlayer.start();
    }
  }

  public final class b
    implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, SurfaceHolder.Callback
  {
    public MediaPlayer a;
    Handler b = new aws(this);
    private int c;
    private int d;
    private SurfaceHolder e;
    private ProgressBar f;
    private Timer g = new Timer();
    private FileInputStream h;
    private TimerTask i = new awr(this);

    public b(SurfaceView paramProgressBar, ProgressBar arg3)
    {
      Object localObject;
      this.f = localObject;
      this.e = paramProgressBar.getHolder();
      this.e.addCallback(this);
      this.e.setType(3);
      this.g.schedule(this.i, 0L, 1000L);
    }

    public final void a()
    {
      this.a.pause();
    }

    public final void a(String paramString)
    {
      try
      {
        this.a.reset();
        this.h = new FileInputStream(new File(paramString));
        this.a.setDataSource(this.h.getFD());
        this.a.prepare();
        this.a.prepare();
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
          localIllegalStateException.printStackTrace();
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }

    public final void b()
    {
      this.i.cancel();
      if (this.a != null)
      {
        this.a.stop();
        this.a.release();
        this.a = null;
      }
      if (this.h != null);
      try
      {
        this.h.close();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }

    public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
    {
      this.f.setSecondaryProgress(paramInt);
      int k = this.f.getMax() * this.a.getCurrentPosition() / this.a.getDuration();
      new StringBuilder().append(k).append("% play").toString();
      new StringBuilder().append(paramInt).append("% buffer").toString();
    }

    public final void onCompletion(MediaPlayer paramMediaPlayer)
    {
      this.a.release();
      this.a = null;
      this.f.setProgress(100);
    }

    public final void onPrepared(MediaPlayer paramMediaPlayer)
    {
      this.c = this.a.getVideoWidth();
      this.d = this.a.getVideoHeight();
      if ((this.d != 0) && (this.c != 0))
        paramMediaPlayer.start();
    }

    public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
    {
    }

    public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
    {
      try
      {
        this.a = new MediaPlayer();
        this.a.setDisplay(this.e);
        this.a.setAudioStreamType(3);
        this.a.setOnBufferingUpdateListener(this);
        this.a.setOnPreparedListener(this);
        this.a.setOnCompletionListener(this);
        if (!awj.k(awj.this))
        {
          awj.l(awj.this).sendEmptyMessageDelayed(104, 50L);
          awj.m(awj.this);
        }
        label88: return;
      }
      catch (Exception localException)
      {
        break label88;
      }
    }

    public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awj
 * JD-Core Version:    0.6.2
 */