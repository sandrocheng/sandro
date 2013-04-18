package com.jxphone.mosecurity.logic;

import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import com.keniu.security.b.o;
import com.keniu.security.b.r;
import com.keniu.security.main.MainActivity;
import com.keniu.security.util.af;
import com.keniu.security.util.av;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class i
  implements com.jxphone.mosecurity.logic.a.g
{
  private static final LinkedHashSet a = new LinkedHashSet(4);
  private static final LinkedList b = new LinkedList();
  private static long c;
  private static volatile int d = -1;
  private final boolean e;
  private WindowManager f = null;
  private WindowManager.LayoutParams g = null;
  private TextView h = null;
  private boolean i = false;
  private Handler j = new Handler();
  private TelephonyManager k;
  private Context l;
  private AudioManager m;
  private int n = -1;
  private int o = -1;
  private int p = -1;
  private String q;
  private int r;
  private int s;
  private float t;
  private float u;
  private float v;
  private float w;
  private Runnable x = new k(this);

  public i(Context paramContext)
  {
    this(paramContext, false);
  }

  public i(Context paramContext, boolean paramBoolean)
  {
    this.l = paramContext;
    this.e = paramBoolean;
    this.m = ((AudioManager)paramContext.getSystemService("audio"));
    this.k = ((TelephonyManager)paramContext.getSystemService("phone"));
  }

  private int a(com.jxphone.mosecurity.c.j paramj, com.jxphone.mosecurity.c.b paramb)
  {
    String str = paramj.j();
    com.keniu.security.a locala = com.keniu.security.a.a(this.l);
    int i1;
    switch (paramj.f())
    {
    default:
      i1 = 0;
    case 3:
    case 1:
    case 2:
    }
    while (true)
    {
      return i1;
      if (paramb == null)
      {
        if ((locala.ac() == 0) && (com.keniu.security.b.e.e(this.l).a(str) == null))
        {
          c = System.currentTimeMillis();
          paramj.a(com.jxphone.mosecurity.c.c.d);
          a(null, paramj, Math.max(com.keniu.security.e.a, com.keniu.security.a.a()));
          i1 = 2;
        }
        else
        {
          i1 = 0;
        }
      }
      else
        switch (m.a[paramb.e().ordinal()])
        {
        default:
          i1 = 0;
          break;
        case 1:
          paramj.a(paramb.e());
          a(paramb, paramj, paramb.f());
          switch (locala.l())
          {
          default:
          case 0:
          case 1:
          case 2:
          }
          while (true)
          {
            if (locala.q())
              b(this.l);
            i1 = 1;
            break;
            a(0, 3);
            continue;
            a(1, 3);
            continue;
            a(0, 3);
            a(this.l);
          }
        case 2:
          switch (locala.ac())
          {
          default:
            a(0, 3);
            paramj.a(com.jxphone.mosecurity.c.c.c);
            a(paramb, paramj, paramb.f());
            a(this.l);
            i1 = 1;
          case 2:
          }
          break;
        case 3:
          Log.i("white-list", "match ".concat(str));
          i1 = 0;
          continue;
          if ((paramb != null) && (paramb.e().equals(com.jxphone.mosecurity.c.c.b)))
          {
            paramj.a(com.jxphone.mosecurity.c.c.b);
            a(paramb, paramj, paramb.f());
            i1 = 2;
          }
          else
          {
            i1 = 0;
            continue;
            if (paramb == null)
            {
              i1 = 0;
            }
            else if ((paramb.e().equals(com.jxphone.mosecurity.c.c.b)) || (paramb.e().equals(com.jxphone.mosecurity.c.c.c)))
            {
              paramj.a(paramb.e());
              a(paramb, paramj, paramb.f());
              i1 = 2;
            }
            else
            {
              i1 = 0;
            }
          }
          break;
        }
    }
  }

  private void a(float paramFloat1, float paramFloat2)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    WindowManager.LayoutParams localLayoutParams1 = this.g;
    localLayoutParams1.x += (int)paramFloat1;
    WindowManager.LayoutParams localLayoutParams2 = this.g;
    localLayoutParams2.y += (int)paramFloat2;
    this.r += (int)paramFloat1;
    this.s += (int)paramFloat2;
    if (this.h == null);
    while (true)
    {
      return;
      this.f.updateViewLayout(this.h, this.g);
      int i1 = this.f.getDefaultDisplay().getWidth() - this.h.getWidth() + localDisplayMetrics.widthPixels / 2 - (int)(90.0F * localDisplayMetrics.density);
      int i2 = this.f.getDefaultDisplay().getHeight() - this.h.getHeight() - (int)(200.0F * localDisplayMetrics.density) - 47;
      if (this.r < 0)
        this.r = 0;
      while (true)
      {
        if (this.s >= 0)
          break label212;
        this.s = 0;
        break;
        if (this.r > i1)
          this.r = i1;
      }
      label212: if (this.s > i2)
        this.s = i2;
    }
  }

  private void a(Context paramContext)
  {
    a();
    af.a(paramContext);
  }

  private static void a(TextView paramTextView, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837520);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837519);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837516);
      continue;
      paramTextView.setTextColor(-16777216);
      paramTextView.setBackgroundResource(2130837517);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837518);
    }
  }

  private static void a(com.jxphone.mosecurity.c.b paramb, com.jxphone.mosecurity.c.j paramj, long paramLong)
  {
    synchronized (b)
    {
      b.add(new n(paramj, paramb, Math.max(com.keniu.security.e.a, paramLong)));
      return;
    }
  }

  private static void a(com.jxphone.mosecurity.c.j paramj, long paramLong)
  {
    switch (paramj.f())
    {
    default:
    case 1:
    case 3:
    case 2:
    }
    while (true)
    {
      return;
      paramj.c(paramLong - paramj.c() - paramj.h());
      continue;
      paramj.b(paramLong - paramj.c());
      continue;
      paramj.c(paramLong - paramj.c());
    }
  }

  private void a(com.jxphone.mosecurity.c.j paramj, com.jxphone.mosecurity.c.b paramb, Display paramDisplay)
  {
    com.keniu.security.a locala = com.keniu.security.a.a(this.l);
    Object localObject;
    String str1;
    boolean bool;
    if (((paramj.f() == 2) || (paramb == null) || (!paramb.e().equals(com.jxphone.mosecurity.c.c.c))) && (locala.ag()))
    {
      com.ijinshan.kinghelper.firewall.a.e.a(this.l);
      localObject = paramj.e().b();
      str1 = com.ijinshan.kinghelper.firewall.a.e.d((String)localObject);
      bool = ((KeyguardManager)this.l.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
      if (!TextUtils.isEmpty(str1))
        break label594;
    }
    label594: for (String str2 = paramj.e().a(this.l, null); ; str2 = str1)
    {
      if ((str2 == null) || (this.l.getString(2131429015).equals(str2)));
      while (true)
      {
        if (this.f == null)
          this.f = ((WindowManager)this.l.getSystemService("window"));
        if (this.g == null)
          this.g = new WindowManager.LayoutParams();
        if (this.h == null)
          this.h = ((TextView)LayoutInflater.from(this.l).inflate(2130903131, null));
        e();
        try
        {
          this.h.setText((CharSequence)localObject);
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          paramDisplay.getMetrics(localDisplayMetrics);
          this.g.type = 2003;
          if (bool)
            this.g.type = 2006;
          this.g.format = 1;
          this.g.flags = 8;
          this.g.gravity = 49;
          this.g.width = -2;
          this.g.height = -2;
          this.r = locala.a(localDisplayMetrics);
          this.s = locala.b(localDisplayMetrics);
          this.g.y = locala.b(localDisplayMetrics);
          this.g.x = (this.r - localDisplayMetrics.widthPixels / 2 + (int)(90.0F * localDisplayMetrics.density));
          localTextView = this.h;
          switch (locala.am())
          {
          default:
          case 0:
            while (true)
            {
              this.f.addView(this.h, this.g);
              if (!locala.ah())
                this.h.setOnTouchListener(new j(this, locala));
              this.i = true;
              int i1 = locala.an();
              this.j.postDelayed(this.x, i1 * 1000);
              d(paramj.f());
              return;
              localTextView.setTextColor(-1);
              localTextView.setBackgroundResource(2130837520);
            }
          case 1:
          case 2:
          case 3:
          case 4:
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            TextView localTextView;
            localException.printStackTrace();
            continue;
            localTextView.setTextColor(-1);
            localTextView.setBackgroundResource(2130837519);
            continue;
            localTextView.setTextColor(-1);
            localTextView.setBackgroundResource(2130837516);
            continue;
            localTextView.setTextColor(-16777216);
            localTextView.setBackgroundResource(2130837517);
            continue;
            localTextView.setTextColor(-1);
            localTextView.setBackgroundResource(2130837518);
          }
        }
        localObject = str2;
      }
    }
  }

  private static void a(com.jxphone.mosecurity.c.j paramj, com.keniu.security.e.d paramd)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      ((com.keniu.security.e.c)localIterator.next()).a(paramj, paramd);
  }

  private void a(com.keniu.security.a parama)
  {
    this.h.setOnTouchListener(new j(this, parama));
  }

  private void a(com.keniu.security.a parama, com.jxphone.mosecurity.c.j paramj, Display paramDisplay)
  {
    if (!parama.ag())
      return;
    com.ijinshan.kinghelper.firewall.a.e.a(this.l);
    Object localObject = paramj.e().b();
    String str1 = com.ijinshan.kinghelper.firewall.a.e.d((String)localObject);
    boolean bool = ((KeyguardManager)this.l.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    if (TextUtils.isEmpty(str1));
    for (String str2 = paramj.e().a(this.l, null); ; str2 = str1)
    {
      if ((str2 == null) || (this.l.getString(2131429015).equals(str2)));
      while (true)
      {
        if (this.f == null)
          this.f = ((WindowManager)this.l.getSystemService("window"));
        if (this.g == null)
          this.g = new WindowManager.LayoutParams();
        if (this.h == null)
          this.h = ((TextView)LayoutInflater.from(this.l).inflate(2130903131, null));
        e();
        while (true)
        {
          TextView localTextView;
          try
          {
            this.h.setText((CharSequence)localObject);
            DisplayMetrics localDisplayMetrics = new DisplayMetrics();
            paramDisplay.getMetrics(localDisplayMetrics);
            this.g.type = 2003;
            if (bool)
              this.g.type = 2006;
            this.g.format = 1;
            this.g.flags = 8;
            this.g.gravity = 49;
            this.g.width = -2;
            this.g.height = -2;
            this.r = parama.a(localDisplayMetrics);
            this.s = parama.b(localDisplayMetrics);
            this.g.y = parama.b(localDisplayMetrics);
            this.g.x = (this.r - localDisplayMetrics.widthPixels / 2 + (int)(90.0F * localDisplayMetrics.density));
            localTextView = this.h;
            switch (parama.am())
            {
            default:
              this.f.addView(this.h, this.g);
              if (!parama.ah())
                this.h.setOnTouchListener(new j(this, parama));
              this.i = true;
              int i1 = parama.an();
              this.j.postDelayed(this.x, i1 * 1000);
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
          break;
          localTextView.setTextColor(-1);
          localTextView.setBackgroundResource(2130837520);
          continue;
          localTextView.setTextColor(-1);
          localTextView.setBackgroundResource(2130837519);
          continue;
          localTextView.setTextColor(-1);
          localTextView.setBackgroundResource(2130837516);
          continue;
          localTextView.setTextColor(-16777216);
          localTextView.setBackgroundResource(2130837517);
          continue;
          localTextView.setTextColor(-1);
          localTextView.setBackgroundResource(2130837518);
        }
        localObject = str2;
      }
    }
  }

  private void a(String paramString)
  {
    if (!com.keniu.security.a.a(this.l).aH());
    while (true)
    {
      return;
      com.jxphone.a.a.a locala = com.jxphone.a.a.a.a(this.l, com.keniu.security.e.X);
      String[][] arrayOfString; = new String[5][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "uuid";
      arrayOfString1[1] = av.a(this.l);
      arrayOfString;[1] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "dt";
      arrayOfString2[1] = com.keniu.security.util.i.c(System.currentTimeMillis());
      arrayOfString;[2] = arrayOfString2;
      arrayOfString;[3] = { "actionname", paramString };
      arrayOfString;[4] = { "type", "1" };
      locala.a(arrayOfString;);
    }
  }

  private boolean a(n paramn)
  {
    boolean bool = b(paramn);
    af.a();
    return bool;
  }

  private static void b(Context paramContext)
  {
    com.keniu.security.a locala = com.keniu.security.a.a(paramContext);
    String str = locala.aB();
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(locala.aC(), str, System.currentTimeMillis());
    localNotification.flags = 16;
    localNotification.setLatestEventInfo(paramContext, str, null, PendingIntent.getActivity(paramContext, 1, new Intent(paramContext, MainActivity.class), 268435456));
    localNotificationManager.notify(2131428939, localNotification);
    com.jxphone.mosecurity.activity.friend.FriendTabActivity.a = 1;
  }

  private boolean b(n paramn)
  {
    o localo = com.keniu.security.b.e.c(this.l);
    int i1 = 1;
    while (true)
    {
      long l1;
      if (i1 <= 5)
        l1 = i1 * 200;
      try
      {
        Thread.sleep(l1);
        label28: if (localo.a(n.a(paramn).d(), n.c(paramn)));
        for (boolean bool = true; ; bool = false)
        {
          return bool;
          i1++;
          break;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        break label28;
      }
    }
  }

  private static void c(Context paramContext)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(2131428939);
  }

  private void d(int paramInt)
  {
    if (d == paramInt);
    while (true)
    {
      return;
      int i1 = com.keniu.security.a.a(this.l).an();
      d = paramInt;
      if (this.i)
        if (paramInt == -1)
          e();
        else if ((paramInt == 0) && (i1 > 0))
          this.j.postDelayed(new l(this), i1 * 1000);
    }
  }

  private void e()
  {
    if (this.i)
    {
      this.i = false;
      d = -1;
    }
    try
    {
      this.f.removeView(this.h);
      this.h = null;
      this.j.removeCallbacks(this.x);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private boolean e(com.jxphone.mosecurity.c.j paramj)
  {
    int i1 = (int)com.keniu.security.b.e.a(this.l, this.e).a(paramj);
    if (i1 != -1)
    {
      paramj.a(i1);
      a(paramj, com.keniu.security.e.d.a);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int a(String paramString, int paramInt, Display paramDisplay)
  {
    if ((paramString == null) || (paramString.length() == 0));
    for (int i1 = 0; ; i1 = 0)
    {
      return i1;
      this.q = paramString;
      if (Pattern.compile("^\\+?\\d+$").matcher(paramString).find())
        break;
    }
    com.jxphone.mosecurity.c.j localj = new com.jxphone.mosecurity.c.j(paramString);
    localj.c(paramInt);
    localj.a(System.currentTimeMillis());
    com.jxphone.mosecurity.c.b localb = h.c(this.l, this.e).a(paramString);
    String str1 = localj.j();
    com.keniu.security.a locala1 = com.keniu.security.a.a(this.l);
    label136: int i2;
    label139: com.keniu.security.a locala2;
    Object localObject;
    String str2;
    boolean bool;
    switch (localj.f())
    {
    default:
      i2 = 0;
      locala2 = com.keniu.security.a.a(this.l);
      if (((localj.f() == 2) || (localb == null) || (!localb.e().equals(com.jxphone.mosecurity.c.c.c))) && (locala2.ag()))
      {
        com.ijinshan.kinghelper.firewall.a.e.a(this.l);
        localObject = localj.e().b();
        str2 = com.ijinshan.kinghelper.firewall.a.e.d((String)localObject);
        bool = ((KeyguardManager)this.l.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        if (!TextUtils.isEmpty(str2))
          break label1170;
      }
      break;
    case 3:
    case 1:
    case 2:
    }
    label1170: for (String str3 = localj.e().a(this.l, null); ; str3 = str2)
    {
      if ((str3 == null) || (this.l.getString(2131429015).equals(str3)));
      while (true)
      {
        while (true)
        {
          if (this.f == null)
            this.f = ((WindowManager)this.l.getSystemService("window"));
          if (this.g == null)
            this.g = new WindowManager.LayoutParams();
          if (this.h == null)
            this.h = ((TextView)LayoutInflater.from(this.l).inflate(2130903131, null));
          e();
          try
          {
            this.h.setText((CharSequence)localObject);
            DisplayMetrics localDisplayMetrics = new DisplayMetrics();
            paramDisplay.getMetrics(localDisplayMetrics);
            this.g.type = 2003;
            if (bool)
              this.g.type = 2006;
            this.g.format = 1;
            this.g.flags = 8;
            this.g.gravity = 49;
            this.g.width = -2;
            this.g.height = -2;
            this.r = locala2.a(localDisplayMetrics);
            this.s = locala2.b(localDisplayMetrics);
            this.g.y = locala2.b(localDisplayMetrics);
            this.g.x = (this.r - localDisplayMetrics.widthPixels / 2 + (int)(90.0F * localDisplayMetrics.density));
            localTextView = this.h;
            switch (locala2.am())
            {
            default:
            case 0:
              while (true)
              {
                this.f.addView(this.h, this.g);
                if (!locala2.ah())
                  this.h.setOnTouchListener(new j(this, locala2));
                this.i = true;
                int i3 = locala2.an();
                this.j.postDelayed(this.x, i3 * 1000);
                d(localj.f());
                i1 = i2;
                break;
                if (localb == null)
                {
                  if ((locala1.ac() == 0) && (com.keniu.security.b.e.e(this.l).a(str1) == null))
                  {
                    c = System.currentTimeMillis();
                    localj.a(com.jxphone.mosecurity.c.c.d);
                    a(null, localj, Math.max(com.keniu.security.e.a, com.keniu.security.a.a()));
                    i2 = 2;
                    break label139;
                  }
                  i2 = 0;
                  break label139;
                }
                switch (m.a[localb.e().ordinal()])
                {
                default:
                  i2 = 0;
                  break;
                case 1:
                  localj.a(localb.e());
                  a(localb, localj, localb.f());
                  switch (locala1.l())
                  {
                  default:
                  case 0:
                  case 1:
                  case 2:
                  }
                  while (true)
                  {
                    if (locala1.q())
                      b(this.l);
                    i2 = 1;
                    break;
                    a(0, 3);
                    continue;
                    a(1, 3);
                    continue;
                    a(0, 3);
                    a(this.l);
                  }
                case 2:
                  switch (locala1.ac())
                  {
                  default:
                    a(0, 3);
                    localj.a(com.jxphone.mosecurity.c.c.c);
                    a(localb, localj, localb.f());
                    a(this.l);
                    i2 = 1;
                  case 2:
                  }
                  break;
                case 3:
                  Log.i("white-list", "match ".concat(str1));
                  break label136;
                  if ((localb != null) && (localb.e().equals(com.jxphone.mosecurity.c.c.b)))
                  {
                    localj.a(com.jxphone.mosecurity.c.c.b);
                    a(localb, localj, localb.f());
                    i2 = 2;
                    break;
                  }
                  i2 = 0;
                  break;
                  if (localb == null)
                    break label136;
                  if ((localb.e().equals(com.jxphone.mosecurity.c.c.b)) || (localb.e().equals(com.jxphone.mosecurity.c.c.c)))
                  {
                    localj.a(localb.e());
                    a(localb, localj, localb.f());
                    i2 = 2;
                    break;
                  }
                  i2 = 0;
                  break;
                  localTextView.setTextColor(-1);
                  localTextView.setBackgroundResource(2130837520);
                }
              }
            case 1:
            case 2:
            case 3:
            case 4:
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              TextView localTextView;
              localException.printStackTrace();
              continue;
              localTextView.setTextColor(-1);
              localTextView.setBackgroundResource(2130837519);
              continue;
              localTextView.setTextColor(-1);
              localTextView.setBackgroundResource(2130837516);
              continue;
              localTextView.setTextColor(-16777216);
              localTextView.setBackgroundResource(2130837517);
              continue;
              localTextView.setTextColor(-1);
              localTextView.setBackgroundResource(2130837518);
            }
          }
        }
        localObject = str3;
      }
    }
  }

  public final int a(com.jxphone.mosecurity.c.c[] paramArrayOfc)
  {
    int i1 = com.keniu.security.b.e.a(this.l, this.e).b(paramArrayOfc);
    if (i1 != -1)
      a(null, com.keniu.security.e.d.b);
    return i1;
  }

  public final void a()
  {
    d(0);
    long l1 = System.currentTimeMillis();
    synchronized (b)
    {
      if (!b.isEmpty())
      {
        com.jxphone.mosecurity.c.j localj = n.a((n)b.getLast());
        if (localj.f() == 3)
        {
          localj.c(1);
          localj.b(l1 - localj.c());
        }
        ((NotificationManager)this.l.getSystemService("notification")).cancel(2131428939);
      }
    }
  }

  public final void a(int paramInt)
  {
    if (this.m == null)
      this.m = ((AudioManager)this.l.getSystemService("audio"));
    if (this.m == null);
    while (true)
    {
      return;
      if ((this.n != -1) && (paramInt >= this.n))
      {
        if ((paramInt != 1) && (paramInt != 2))
          this.m.setRingerMode(this.o);
        this.n = -1;
        this.o = -1;
        this.p = -1;
      }
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (this.m == null)
      this.m = ((AudioManager)this.l.getSystemService("audio"));
    if (this.m == null);
    while (true)
    {
      return;
      if (this.o == -1)
      {
        this.o = this.m.getRingerMode();
        this.p = this.m.getStreamVolume(2);
      }
      if (paramInt2 >= this.n)
      {
        if ((paramInt2 != 1) && (paramInt2 != 2))
          this.m.setRingerMode(paramInt1);
        this.n = paramInt2;
      }
    }
  }

  public final void a(com.keniu.security.e.c paramc)
  {
    a.add(paramc);
  }

  public final boolean a(com.jxphone.mosecurity.c.j paramj)
  {
    boolean bool = com.keniu.security.b.e.a(this.l, this.e).b(paramj);
    if (bool)
      a(paramj, com.keniu.security.e.d.b);
    return bool;
  }

  public final com.jxphone.mosecurity.c.j[] a(com.jxphone.mosecurity.c.b paramb)
  {
    return com.keniu.security.b.e.a(this.l, this.e).b(paramb.c(), paramb.e());
  }

  public final com.jxphone.mosecurity.c.j[] a(com.jxphone.mosecurity.c.c paramc)
  {
    return com.keniu.security.b.e.a(this.l, this.e).a(paramc);
  }

  public final com.jxphone.mosecurity.c.j[] a(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    return com.keniu.security.b.e.a(this.l, this.e).a(paramString, paramc);
  }

  public final int b(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    int i1 = com.keniu.security.b.e.a(this.l, this.e).c(paramString, paramc);
    if (i1 != -1)
    {
      com.jxphone.mosecurity.c.j localj = new com.jxphone.mosecurity.c.j(paramString);
      localj.a(paramc);
      a(localj, com.keniu.security.e.d.b);
    }
    return i1;
  }

  public final com.jxphone.mosecurity.c.j b(int paramInt)
  {
    return com.keniu.security.b.e.a(this.l, this.e).a(paramInt);
  }

  public final void b()
  {
    d(-1);
    a(3);
    com.keniu.security.a locala = com.keniu.security.a.a(this.l);
    long l1;
    if (b.size() != 0)
      l1 = System.currentTimeMillis();
    while (true)
    {
      n localn;
      com.jxphone.mosecurity.c.j localj;
      synchronized (b)
      {
        localn = (n)b.poll();
        if (localn == null)
          break label310;
        localj = n.a(localn);
        switch (localj.f())
        {
        default:
          if (localj.f() == 2)
            break label293;
          switch (m.a[localj.g().ordinal()])
          {
          case 1:
            e(localj);
            Log.e("PhoneCallLogicImpl", "handleIdle>>call.getType()=" + localj.f() + ",cm.isFriendNotice()=" + locala.q());
            if ((localj.f() == 3) && (locala.q()))
            {
              Context localContext = this.l;
              n.b(localn);
              b(localContext);
            }
            b(localn);
            af.a();
          }
          break;
        case 1:
        case 3:
        case 2:
        }
      }
      localj.c(l1 - localj.c() - localj.h());
      continue;
      localj.b(l1 - localj.c());
      continue;
      localj.c(l1 - localj.c());
      continue;
      label293: e(localj);
      b(localn);
      continue;
      label310: this.q = "";
      return;
    }
  }

  public final void b(com.keniu.security.e.c paramc)
  {
    a.remove(paramc);
  }

  public final boolean b(com.jxphone.mosecurity.c.j paramj)
  {
    if (com.keniu.security.b.e.a(this.l, this.e).b(paramj.a()) > 0)
    {
      a(paramj, com.keniu.security.e.d.b);
      com.keniu.security.b.b localb = com.keniu.security.b.e.d(this.l);
      com.jxphone.mosecurity.c.b localb1 = localb.a(paramj.d(), false);
      if (localb1 != null)
      {
        localb1.b(System.currentTimeMillis());
        localb.b(localb1);
      }
    }
    for (boolean bool = com.keniu.security.b.e.c(this.l).a(paramj); ; bool = false)
      return bool;
  }

  public final int c(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    int i1 = com.keniu.security.b.e.a(this.l, this.e).d(paramString, paramc);
    if (i1 != -1)
      a(new com.jxphone.mosecurity.c.j(paramString), com.keniu.security.e.d.b);
    return i1;
  }

  public final boolean c()
  {
    return false;
  }

  public final boolean c(int paramInt)
  {
    if (com.keniu.security.b.e.a(this.l, this.e).b(paramInt) > 0);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
      {
        com.jxphone.mosecurity.c.j localj = new com.jxphone.mosecurity.c.j(null);
        localj.a(paramInt);
        a(localj, com.keniu.security.e.d.b);
      }
      return bool;
    }
  }

  public final boolean c(com.jxphone.mosecurity.c.j paramj)
  {
    if (com.keniu.security.b.e.a(this.l, this.e).b(paramj.a()) > 0)
    {
      a(paramj, com.keniu.security.e.d.b);
      com.jxphone.mosecurity.d.f.a = paramj.d();
    }
    for (boolean bool = com.keniu.security.b.e.c(this.l).a(paramj); ; bool = false)
      return bool;
  }

  public final boolean d(com.jxphone.mosecurity.c.j paramj)
  {
    return com.keniu.security.b.e.a(this.l, this.e).a(paramj.a(), paramj.g());
  }

  public final boolean d(String paramString, com.jxphone.mosecurity.c.c paramc)
  {
    if (com.keniu.security.b.e.a(this.l, this.e).e(com.ijinshan.kinghelper.a.i.b(paramString), paramc) > 0);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        a(null, com.keniu.security.e.d.b);
      return false;
    }
  }

  public final com.jxphone.mosecurity.c.j[] d()
  {
    com.keniu.security.b.g localg = com.keniu.security.b.e.a(this.l, this.e);
    com.jxphone.mosecurity.c.c[] arrayOfc = new com.jxphone.mosecurity.c.c[2];
    arrayOfc[0] = com.jxphone.mosecurity.c.c.c;
    arrayOfc[1] = com.jxphone.mosecurity.c.c.d;
    return localg.a(arrayOfc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.i
 * JD-Core Version:    0.6.2
 */