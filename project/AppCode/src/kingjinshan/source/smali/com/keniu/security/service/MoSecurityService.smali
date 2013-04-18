.class public final Lcom/keniu/security/service/MoSecurityService;
.super Landroid/app/Service;
.source "MoSecurityService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final b:J = 0x240c8400L

.field private static final c:J = 0x9a7ec800L

.field private static final d:J = 0x6ddd00L

.field private static final f:Ljava/lang/String; = "MoSecurity.MoSecurityService"


# instance fields
.field private a:Lcom/keniu/security/traffic/db;

.field private final e:J

.field private g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

.field private h:Lcom/jxphone/mosecurity/listener/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    iput-object v2, p0, Lcom/keniu/security/service/MoSecurityService;->a:Lcom/keniu/security/traffic/db;

    .line 90
    sget-wide v0, Lcom/keniu/security/e;->a:J

    iput-wide v0, p0, Lcom/keniu/security/service/MoSecurityService;->e:J

    .line 94
    iput-object v2, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    .line 95
    iput-object v2, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    return-void
.end method

.method static synthetic a()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "date < ?"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "date < ?"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    const-wide/32 v5, 0x240c8400

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v7, [Ljava/lang/String;

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v5}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->at()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/keniu/security/a;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Lcom/keniu/security/service/s;

    invoke-direct {v1, v0}, Lcom/keniu/security/service/s;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mosecurity_recommend_examine"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/keniu/security/a;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Lcom/keniu/security/service/r;

    invoke-direct {v1, v0}, Lcom/keniu/security/service/r;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mosecurity_notify_open_pref"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    const-wide/32 v3, 0xa4cb800

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v5

    .line 232
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    if-eqz v0, :cond_0

    .line 241
    new-array v1, v3, [Ljava/lang/Object;

    .line 242
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 244
    const v3, 0x7f0b06f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    .line 245
    aput-object v2, v1, v5

    .line 248
    :try_start_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 237
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 251
    const-string v1, "MoSecurityService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    :catch_2
    move-exception v0

    .line 255
    const-string v1, "MoSecurityService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 262
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 263
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->g(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/e;->a()V

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/a;->ax()V

    .line 269
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/jxphone/mosecurity/listener/b;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/listener/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    .line 273
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 275
    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 276
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 279
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 282
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 287
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/x;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/core/x;-><init>()V

    .line 289
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/a;

    invoke-direct {v2}, Lcom/ijinshan/kinghelper/firewall/core/a;-><init>()V

    .line 290
    new-instance v3, Lcom/ijinshan/kinghelper/firewall/core/q;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/core/q;-><init>()V

    .line 292
    sget v4, Lcom/keniu/security/monitor/a;->r:I

    const v5, 0x3fffffff

    invoke-virtual {v0, v4, v3, v5}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 294
    sget v3, Lcom/keniu/security/monitor/a;->r:I

    const v4, 0x4fffffff

    invoke-virtual {v0, v3, v1, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 296
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v1, v2, v6}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 300
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 306
    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 313
    :try_start_0
    const-string v1, "application/vnd.wap.sic"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 314
    const-string v1, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/jxphone/mosecurity/listener/f;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/jxphone/mosecurity/listener/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 323
    return-void

    .line 316
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sms_send_action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "sms_delivered_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v2, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    new-instance v0, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    return-void
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/keniu/security/f/a;->a()Lcom/keniu/security/f/a;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/keniu/security/f/a;->b()V

    .line 340
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    .line 351
    :cond_0
    invoke-static {}, Lcom/keniu/security/service/d;->a()V

    .line 361
    return-void
.end method

.method private m()V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    .line 365
    invoke-static {}, Lcom/keniu/security/protection/p;->a()V

    .line 366
    invoke-static {}, Lcom/keniu/security/protection/q;->a()V

    .line 367
    return-void
.end method

.method private n()V
    .locals 7

    .prologue
    const v6, 0x4fffffff

    const/4 v5, 0x2

    .line 370
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 372
    const v2, 0x7f0b03c1

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 374
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v5, :cond_2

    .line 376
    :cond_0
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-nez v2, :cond_1

    .line 377
    new-instance v2, Lcom/keniu/security/traffic/r;

    invoke-direct {v2}, Lcom/keniu/security/traffic/r;-><init>()V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    .line 378
    :cond_1
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v2

    .line 380
    sget v3, Lcom/keniu/security/monitor/a;->p:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 382
    sget v3, Lcom/keniu/security/monitor/a;->o:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 385
    sget v3, Lcom/keniu/security/monitor/a;->p:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4, v6}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 388
    sget v3, Lcom/keniu/security/monitor/a;->o:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4, v6}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 393
    :cond_2
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v5, :cond_6

    .line 396
    :cond_3
    :try_start_0
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-nez v2, :cond_4

    .line 397
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "thread_save_traffic"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 399
    :cond_4
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-nez v2, :cond_5

    .line 404
    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    .line 407
    :cond_5
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    :cond_6
    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->d(Landroid/content/Context;)V

    .line 414
    iget-boolean v1, v1, Lcom/keniu/security/traffic/y;->a:Z

    if-eqz v1, :cond_7

    .line 415
    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;)V

    .line 419
    :goto_1
    return-void

    .line 417
    :cond_7
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 422
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 423
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 425
    return-void
.end method

.method private static p()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/keniu/security/i/o;->a()Lcom/keniu/security/i/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/i/o;->a(Landroid/content/Context;)V

    .line 434
    return-void
.end method

.method private static r()V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/keniu/security/i/o;->a()Lcom/keniu/security/i/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/i/o;->b()V

    .line 438
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    .line 445
    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    .line 448
    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->a:Lcom/keniu/security/traffic/db;

    const/4 v1, 0x1

    const-wide/32 v2, 0x6ddd00

    new-instance v4, Lcom/keniu/security/service/a;

    invoke-direct {v4, p0}, Lcom/keniu/security/service/a;-><init>(Lcom/keniu/security/service/MoSecurityService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 456
    return-void
.end method

.method private static u()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 462
    new-instance v2, Ljava/lang/String;

    const-string v3, "date < ?"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 463
    new-instance v3, Ljava/lang/String;

    const-string v4, "date < ?"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 464
    new-array v4, v7, [Ljava/lang/String;

    const-wide/32 v5, 0x240c8400

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 466
    new-array v5, v7, [Ljava/lang/String;

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 469
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->r()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 472
    :pswitch_0
    invoke-static {v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-static {v2, v5}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 11

    .prologue
    const v10, 0x7fffffff

    const v9, 0x4fffffff

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    const-string v0, "MoSecurity.MoSecurityService"

    const-string v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/g;->a(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->g(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/e;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/a;->ax()V

    .line 110
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/protection/p;->a()V

    invoke-static {}, Lcom/keniu/security/protection/q;->a()V

    .line 111
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lcom/jxphone/mosecurity/listener/b;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/listener/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 113
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/x;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/core/x;-><init>()V

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/a;

    invoke-direct {v2}, Lcom/ijinshan/kinghelper/firewall/core/a;-><init>()V

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/core/q;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/core/q;-><init>()V

    sget v4, Lcom/keniu/security/monitor/a;->r:I

    const v5, 0x3fffffff

    invoke-virtual {v0, v4, v3, v5}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    sget v3, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v3, v1, v9}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v1, v2, v10}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_0
    const-string v1, "application/vnd.wap.sic"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v1, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    new-instance v2, Lcom/jxphone/mosecurity/listener/f;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/jxphone/mosecurity/listener/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sms_send_action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "sms_delivered_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/listener/SmsStatusReceiver;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/service/MoSecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/keniu/security/service/d;->a()V

    .line 116
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    const v2, 0x7f0b03c1

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eq v2, v6, :cond_2

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v8, :cond_4

    :cond_2
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-nez v2, :cond_3

    new-instance v2, Lcom/keniu/security/traffic/r;

    invoke-direct {v2}, Lcom/keniu/security/traffic/r;-><init>()V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    :cond_3
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v2

    sget v3, Lcom/keniu/security/monitor/a;->p:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    sget v3, Lcom/keniu/security/monitor/a;->o:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    sget v3, Lcom/keniu/security/monitor/a;->p:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4, v9}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    sget v3, Lcom/keniu/security/monitor/a;->o:I

    sget-object v4, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v2, v3, v4, v9}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    :cond_4
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v8, :cond_8

    :cond_5
    :try_start_1
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "thread_save_traffic"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    :cond_6
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-nez v2, :cond_7

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    :cond_7
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->d(Landroid/content/Context;)V

    iget-boolean v1, v1, Lcom/keniu/security/traffic/y;->a:Z

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;)V

    .line 118
    :goto_2
    invoke-static {}, Lcom/keniu/security/f/a;->a()Lcom/keniu/security/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/a;->b()V

    .line 119
    invoke-static {}, Lcom/keniu/security/i/o;->a()Lcom/keniu/security/i/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/i/o;->a(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/a;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/keniu/security/service/s;

    invoke-direct {v1, v0}, Lcom/keniu/security/service/s;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mosecurity_recommend_examine"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/a;->t()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/keniu/security/service/r;

    invoke-direct {v1, v0}, Lcom/keniu/security/service/r;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mosecurity_notify_open_pref"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v3, 0xa4cb800

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_a
    const-string v0, "com.ijinshan.mguard_preferences"

    invoke-virtual {p0, v0, v7}, Lcom/keniu/security/service/MoSecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    const/4 v1, 0x0

    .line 138
    :try_start_2
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.ijinshan.duba"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 143
    :goto_3
    if-nez v1, :cond_b

    .line 145
    invoke-static {}, Lcom/keniu/security/f/c;->a()Lcom/keniu/security/f/c;

    .line 154
    :cond_b
    const-string v1, "isSceenLockClear"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    invoke-static {}, Lcom/keniu/security/process/s;->a()Lcom/keniu/security/process/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/process/s;->b()V

    .line 159
    :cond_c
    new-instance v0, Lcom/keniu/security/traffic/db;

    invoke-direct {v0}, Lcom/keniu/security/traffic/db;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->a:Lcom/keniu/security/traffic/db;

    .line 160
    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->a:Lcom/keniu/security/traffic/db;

    const-wide/32 v1, 0x6ddd00

    new-instance v3, Lcom/keniu/security/service/a;

    invoke-direct {v3, p0}, Lcom/keniu/security/service/a;-><init>(Lcom/keniu/security/service/MoSecurityService;)V

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 165
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->at()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_d
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 167
    new-array v0, v8, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v6

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_e

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v3, 0x7f0b06f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    aput-object v2, v1, v6

    :try_start_4
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    .line 168
    :cond_e
    :goto_5
    invoke-static {}, Lcom/keniu/security/service/i;->a()Lcom/keniu/security/service/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/i;->a(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcom/keniu/security/service/i;->a()Lcom/keniu/security/service/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/service/i;->b()V

    .line 170
    invoke-static {}, Lcom/keniu/security/monitor/d;->a()Lcom/keniu/security/monitor/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/monitor/d;->a(Landroid/content/Context;)V

    .line 171
    invoke-static {}, Lcom/keniu/security/monitor/d;->a()Lcom/keniu/security/monitor/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/monitor/d;->b()V

    .line 177
    return-void

    .line 113
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    goto/16 :goto_2

    .line 167
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "MoSecurityService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v1, "MoSecurityService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_1
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/keniu/security/service/MoSecurityService;->h:Lcom/jxphone/mosecurity/listener/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 217
    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/keniu/security/service/MoSecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/MoSecurityService;->g:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    .line 218
    :cond_0
    invoke-static {}, Lcom/keniu/security/service/i;->a()Lcom/keniu/security/service/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/service/i;->c()V

    .line 220
    invoke-static {}, Lcom/keniu/security/i/o;->a()Lcom/keniu/security/i/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/i/o;->b()V

    .line 222
    invoke-static {}, Lcom/keniu/security/monitor/d;->a()Lcom/keniu/security/monitor/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/monitor/d;->c()V

    .line 224
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 489
    const-string v0, "kn_traffis_xuanfuchuang_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/keniu/security/service/MoSecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 494
    const-string v2, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lcom/keniu/security/a;->at()Z

    move-result v2

    .line 497
    if-eqz v2, :cond_2

    .line 499
    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/keniu/security/traffic/y;->t:J

    .line 502
    const v3, 0x7f0b03c2

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 505
    :cond_0
    const-string v2, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    :cond_1
    return-void

    .line 510
    :cond_2
    const-string v2, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
