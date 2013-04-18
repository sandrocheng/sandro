.class public final Lcom/keniu/security/traffic/dd;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field public static volatile a:J = 0x0L

.field public static volatile b:Z = false

.field public static final c:I = 0x1

.field public static final d:I = -0x1

.field public static final e:I = 0x0

.field public static final f:Ljava/lang/String; = "traffic_warn_type"

.field public static volatile g:Z = false

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:J = 0x0L

.field private static l:J = 0x0L

.field private static final m:I = 0x1

.field private static n:Z

.field private static o:Z

.field private static volatile p:Landroid/os/Handler;

.field private static q:Landroid/os/HandlerThread;

.field private static r:Lcom/keniu/security/traffic/dl;

.field private static s:Lcom/keniu/security/traffic/de;

.field private static t:Lcom/keniu/security/traffic/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 34
    sput-wide v3, Lcom/keniu/security/traffic/dd;->a:J

    .line 35
    sput-boolean v2, Lcom/keniu/security/traffic/dd;->b:Z

    .line 782
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/keniu/security/traffic/dd;->h:J

    .line 783
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/keniu/security/traffic/dd;->i:J

    .line 784
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/keniu/security/traffic/dd;->j:J

    .line 786
    sput-wide v3, Lcom/keniu/security/traffic/dd;->k:J

    .line 789
    sget-wide v0, Lcom/keniu/security/traffic/dd;->h:J

    sput-wide v0, Lcom/keniu/security/traffic/dd;->l:J

    .line 791
    sput-boolean v2, Lcom/keniu/security/traffic/dd;->n:Z

    .line 792
    sput-boolean v2, Lcom/keniu/security/traffic/dd;->o:Z

    .line 802
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/dd;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/keniu/security/traffic/dd;->l:J

    return-wide v0
.end method

.method static synthetic a(J)J
    .locals 2
    .parameter

    .prologue
    .line 32
    sget-wide v0, Lcom/keniu/security/traffic/dd;->k:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/keniu/security/traffic/dd;->k:J

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/keniu/security/traffic/dd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/traffic/dd;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 59
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/keniu/security/traffic/dd;->n:Z

    .line 60
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/dd;->g:Z

    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/dd;->b:Z

    .line 63
    sget-object v1, Lcom/keniu/security/traffic/dd;->t:Lcom/keniu/security/traffic/dd;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Lcom/keniu/security/traffic/dd;

    invoke-direct {v1}, Lcom/keniu/security/traffic/dd;-><init>()V

    sput-object v1, Lcom/keniu/security/traffic/dd;->t:Lcom/keniu/security/traffic/dd;

    .line 70
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 71
    sget v2, Lcom/keniu/security/monitor/a;->n:I

    sget-object v3, Lcom/keniu/security/traffic/dd;->t:Lcom/keniu/security/traffic/dd;

    const v4, 0x4fffffff

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 74
    sget v2, Lcom/keniu/security/monitor/a;->o:I

    sget-object v3, Lcom/keniu/security/traffic/dd;->t:Lcom/keniu/security/traffic/dd;

    const v4, 0x4fffffff

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 77
    sget v2, Lcom/keniu/security/monitor/a;->p:I

    sget-object v3, Lcom/keniu/security/traffic/dd;->t:Lcom/keniu/security/traffic/dd;

    const v4, 0x4fffffff

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 85
    :cond_2
    new-instance v1, Lcom/keniu/security/traffic/dj;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/traffic/dj;-><init>(Landroid/content/Context;Z)V

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 91
    sget-object v1, Lcom/keniu/security/traffic/dd;->r:Lcom/keniu/security/traffic/dl;

    if-nez v1, :cond_0

    .line 96
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->b(Landroid/content/Context;)V

    .line 98
    new-instance v1, Lcom/keniu/security/traffic/dl;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keniu/security/traffic/dd;->r:Lcom/keniu/security/traffic/dl;

    .line 99
    sget-object v1, Lcom/keniu/security/traffic/dd;->r:Lcom/keniu/security/traffic/dl;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/keniu/security/traffic/dd;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/dd;->s:Lcom/keniu/security/traffic/de;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/keniu/security/traffic/dd;->p:Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/dd;->s:Lcom/keniu/security/traffic/de;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/dd;->s:Lcom/keniu/security/traffic/de;

    .line 154
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_1
    const-wide/16 v0, 0x0

    .line 159
    if-nez p1, :cond_3

    .line 160
    const-wide/32 v0, 0x5265c00

    .line 165
    :cond_2
    :goto_1
    new-instance v2, Lcom/keniu/security/traffic/de;

    invoke-direct {v2, p0, v0, v1}, Lcom/keniu/security/traffic/de;-><init>(Landroid/content/Context;J)V

    sput-object v2, Lcom/keniu/security/traffic/dd;->s:Lcom/keniu/security/traffic/de;

    .line 168
    sget-object v2, Lcom/keniu/security/traffic/dd;->s:Lcom/keniu/security/traffic/de;

    invoke-static {p0, v2, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 162
    const-wide/32 v0, 0xf731400

    goto :goto_1

    .line 163
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 164
    const-wide/32 v0, 0x240c8400

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JJJZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Lcom/keniu/security/traffic/di;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/keniu/security/traffic/di;-><init>(Landroid/content/Context;JJJZ)V

    const-wide/16 p1, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/keniu/security/traffic/dk;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/traffic/dk;-><init>(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 143
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/keniu/security/traffic/y;JJLcom/ijinshan/kinghelper/firewall/core/b;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-boolean v0, p1, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 250
    const v1, 0x7f0801dc

    const-string v2, "\u5c1a\u672a\u5f00\u542f\u6d41\u91cf\u76d1\u63a7"

    sget-object v3, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 290
    :goto_0
    iget-wide v1, p1, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-boolean v1, p1, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v1, :cond_5

    .line 294
    :cond_0
    const/4 v1, 0x1

    .line 295
    const/4 v2, 0x0

    move v7, v2

    move v2, v1

    move v1, v7

    .line 300
    :goto_1
    const v3, 0x7f0801db

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 303
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 304
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 305
    const v2, 0x7f020208

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 306
    const/16 v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 309
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->c()I

    move-result v2

    .line 310
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v3

    .line 312
    if-eqz p6, :cond_8

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->z()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 315
    const p1, 0x7f0801dd

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    const p1, 0x7f0801de

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 318
    const p1, 0x7f0801de

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 320
    const p1, 0x7f0801dd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 323
    iget-object p1, p6, Lcom/ijinshan/kinghelper/firewall/core/b;->a:Ljava/lang/String;

    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 324
    iget p1, p6, Lcom/ijinshan/kinghelper/firewall/core/b;->b:I

    if-nez p1, :cond_6

    .line 326
    const p1, 0x7f020206

    iput p1, v1, Landroid/app/Notification;->icon:I

    .line 328
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const/high16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    const/4 p2, 0x2

    const/high16 p3, 0x1000

    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 342
    iput-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 505
    :goto_2
    :try_start_0
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 507
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_3
    return-void

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 257
    const v1, 0x7f0801dc

    const-string v2, "\u672a\u8bbe\u7f6e\u5957\u9910\u989d\u5ea6"

    sget-object v3, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_2
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 264
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 267
    const v1, 0x7f0801dc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eca\u65e5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u8d85"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long v3, p2, v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    :cond_3
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v0, p2

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 273
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030070

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 275
    const v1, 0x7f0801dc

    const v2, 0x7f0b0337

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v5, p2

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :cond_4
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 284
    const v1, 0x7f0801dc

    const v2, 0x7f0b0337

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v5, p2

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 297
    :cond_5
    const/16 v1, 0x3e8

    .line 298
    const-wide/high16 v2, 0x3ff0

    long-to-double v4, p2

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/keniu/security/traffic/y;->d:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_1

    .line 345
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->b()I

    move-result p2

    .line 349
    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    .line 350
    const p2, 0x7f020206

    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 351
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    :goto_4
    const/high16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const/4 p2, 0x2

    const/high16 p3, 0x1000

    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 373
    iput-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 357
    :cond_7
    const p2, 0x7f020207

    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 358
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 378
    :cond_8
    sget-boolean p6, Lcom/keniu/security/traffic/dd;->b:Z

    if-eqz p6, :cond_9

    .line 379
    const/4 p6, 0x0

    sput-boolean p6, Lcom/keniu/security/traffic/dd;->b:Z

    .line 380
    const p6, 0x7f0b032f

    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 384
    :cond_9
    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->z()Z

    move-result p6

    if-nez p6, :cond_f

    .line 387
    :cond_b
    const p6, 0x7f0801dd

    const/16 v2, 0x8

    invoke-virtual {v0, p6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 388
    const p6, 0x7f0801de

    const/16 v2, 0x8

    invoke-virtual {v0, p6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 390
    new-instance p6, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/main/MainActivity;

    invoke-direct {p6, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {p6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const/high16 v2, 0x1000

    invoke-virtual {p6, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    const/4 v2, 0x2

    const/high16 v3, 0x1000

    invoke-static {p0, v2, p6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 400
    iput-object p6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 402
    iget-boolean p6, p1, Lcom/keniu/security/traffic/y;->a:Z

    if-nez p6, :cond_c

    .line 403
    const p1, 0x7f0801dc

    const-string p2, "\u672a\u5f00\u542f\u6d41\u91cf\u76d1\u63a7"

    sget-object p3, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {p2, p3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 407
    :cond_c
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result p6

    if-nez p6, :cond_d

    .line 408
    const p1, 0x7f0801dc

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4eca\u65e5\u5df2\u7528"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\u672a\u8bbe\u7f6e\u5957\u9910\u989d\u5ea6"

    sget-object p4, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {p3, p4}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 415
    :cond_d
    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->d:J

    cmp-long p6, p2, v2

    if-lez p6, :cond_e

    .line 417
    const p6, 0x7f0801dc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eca\u65e5\u5df2\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ","

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\u672c\u6708\u8d85\u51fa"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long p1, p2, v2

    invoke-static {p1, p2}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 427
    :cond_e
    const p6, 0x7f0801dc

    const v2, 0x7f0b0338

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4, p5}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v3, v4

    const/4 p4, 0x1

    iget-wide v4, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long p1, v4, p2

    invoke-static {p1, p2}, Lcom/keniu/security/util/ax;->d(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 436
    :cond_f
    const p1, 0x7f0801de

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 438
    const p1, 0x7f0801dd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    const p1, 0x7f0801dd

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 442
    const p1, 0x7f0801de

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 444
    if-nez v3, :cond_10

    .line 445
    const p1, 0x7f020206

    iput p1, v1, Landroid/app/Notification;->icon:I

    .line 448
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const/high16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    const/4 p2, 0x2

    const/high16 p3, 0x1000

    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 463
    iput-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 467
    :cond_10
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->b()I

    move-result p2

    .line 471
    const/4 p3, 0x2

    if-ne p2, p3, :cond_11

    .line 472
    const p2, 0x7f020206

    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 473
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    :goto_5
    const/high16 p2, 0x1000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    const/4 p2, 0x2

    const/high16 p3, 0x1000

    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 497
    iput-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 480
    :cond_11
    const p2, 0x7f020207

    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 481
    const-string p2, "FirewallLogTabActivity_current_tab"

    const-string p3, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string p2, "FirewallLogTabActivity_LOG_FromNotify"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 511
    :catch_0
    move-exception p0

    goto/16 :goto_3
.end method

.method private static a(Landroid/content/Context;Lcom/keniu/security/traffic/y;Ljava/util/Date;JJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 515
    invoke-static {p0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-boolean v0, p1, Lcom/keniu/security/traffic/y;->c:Z

    if-eqz v0, :cond_0

    .line 522
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->f:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 523
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/keniu/security/traffic/y;->f:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 524
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 532
    :cond_2
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 534
    const v0, 0x7f0b034a

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    move v0, v5

    .line 562
    :goto_1
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/keniu/security/traffic/y;->f:J

    .line 564
    const v0, 0x7f0b03d0

    invoke-virtual {p1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 538
    :cond_3
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v0, p3

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 541
    const v0, 0x7f0b034b

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v2, p3

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    .line 549
    :cond_4
    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->h:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lcom/keniu/security/traffic/y;->h:J

    cmp-long v0, p5, v0

    if-ltz v0, :cond_5

    .line 551
    const v0, 0x7f0b0351

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v4

    .line 559
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 121
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/Runnable;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const-class v0, Lcom/keniu/security/traffic/dd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/traffic/dd;->o:Z

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/dd;->o:Z

    .line 128
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "traffic_update_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/keniu/security/traffic/dd;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/keniu/security/traffic/dd;->q:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/keniu/security/traffic/dd;->p:Landroid/os/Handler;

    new-instance v2, Lcom/keniu/security/traffic/dh;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/dh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_0
    sget-object v1, Lcom/keniu/security/traffic/dd;->p:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/traffic/TrafficWarningDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    const-string v1, "title1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    if-nez p2, :cond_0

    .line 573
    const-string v1, "traffic_warn_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v10

    iget-boolean v0, v10, Lcom/keniu/security/traffic/y;->a:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v2}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    invoke-virtual {v10, v2}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v6

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;Ljava/util/Date;JZ)Z

    const p1, 0xf4240

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0, p1, v8, v9}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_7

    iget-wide v3, p1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v5, p1, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v3, v5

    move-wide v7, v3

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x0

    iget-wide v5, v1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v0, v1, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v0, v5

    add-long/2addr v0, v3

    move-wide v5, v0

    :goto_1
    sput-wide v5, Lcom/keniu/security/traffic/dd;->a:J

    iget-boolean p1, v10, Lcom/keniu/security/traffic/y;->b:Z

    if-eqz p1, :cond_0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;JJLcom/ijinshan/kinghelper/firewall/core/b;)V

    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, v10, Lcom/keniu/security/traffic/y;->c:Z

    if-eqz p1, :cond_2

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/Date;

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v0

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_3

    const v0, 0x7f0b034a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v7, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long v4, v5, v7

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    const p1, 0x7f0b03d0

    invoke-virtual {v10, p0, p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    :cond_2
    return-void

    :cond_3
    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->g:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v0, v5

    iget-wide v3, v10, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_4

    const v0, 0x7f0b034b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v7, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long v4, v7, v5

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->h:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->h:J

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5

    const v0, 0x7f0b0351

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v10, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    move-wide v5, v3

    goto/16 :goto_1

    :cond_7
    move-wide v7, v3

    goto/16 :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/keniu/security/traffic/dd;->k:J

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    sget-boolean v0, Lcom/keniu/security/traffic/dd;->n:Z

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    sput-boolean v1, Lcom/keniu/security/traffic/dd;->n:Z

    .line 115
    new-instance v0, Lcom/keniu/security/traffic/dj;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/traffic/dj;-><init>(Landroid/content/Context;Z)V

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/keniu/security/traffic/dg;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/traffic/dg;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 174
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    .line 32
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-boolean v0, v1, Lcom/keniu/security/traffic/y;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v2

    const v3, 0xf4240

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    if-eqz v2, :cond_3

    iget-wide v5, v2, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v2, v2, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v2, v5

    add-long/2addr v2, v7

    :goto_0
    if-eqz v4, :cond_2

    iget-wide v5, v4, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/ac;->c:J

    add-long v4, v5, v7

    :goto_1
    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;JJLcom/ijinshan/kinghelper/firewall/core/b;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    :cond_2
    move-wide v4, v7

    goto :goto_1

    :cond_3
    move-wide v2, v7

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v10

    .line 187
    iget-boolean v0, v10, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 197
    invoke-virtual {v10, v2}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 198
    invoke-virtual {v10, v2}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v6

    move-object v1, p0

    move v5, p1

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;Ljava/util/Date;JZ)Z

    .line 208
    const p1, 0xf4240

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0, p1, v8, v9}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object p1

    .line 210
    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v1

    .line 213
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 214
    const-wide/16 v3, 0x0

    .line 217
    if-eqz p1, :cond_8

    .line 218
    iget-wide v3, p1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v5, p1, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v3, v5

    move-wide v7, v3

    .line 221
    :goto_1
    const-wide/16 v3, 0x0

    .line 222
    if-eqz v1, :cond_7

    .line 223
    const-wide/16 v3, 0x0

    iget-wide v5, v1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v0, v1, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v0, v5

    add-long/2addr v0, v3

    move-wide v5, v0

    .line 226
    :goto_2
    sput-wide v5, Lcom/keniu/security/traffic/dd;->a:J

    .line 231
    iget-boolean p1, v10, Lcom/keniu/security/traffic/y;->b:Z

    if-eqz p1, :cond_2

    .line 232
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;JJLcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 238
    :cond_2
    invoke-static {p0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v10, Lcom/keniu/security/traffic/y;->c:Z

    if-eqz p1, :cond_0

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/Date;

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v0

    if-eq p1, v0, :cond_0

    :cond_3
    const/4 p1, 0x1

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_4

    const v0, 0x7f0b034a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v7, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long v4, v5, v7

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_3
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/keniu/security/traffic/y;->f:J

    const p1, 0x7f0b03d0

    invoke-virtual {v10, p0, p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->g:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long/2addr v0, v5

    iget-wide v3, v10, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_5

    const v0, 0x7f0b034b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v7, v10, Lcom/keniu/security/traffic/y;->d:J

    sub-long v4, v7, v5

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->h:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    iget-wide v0, v10, Lcom/keniu/security/traffic/y;->h:J

    cmp-long v0, v7, v0

    if-ltz v0, :cond_6

    const v0, 0x7f0b0351

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v10, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    move-wide v5, v3

    goto/16 :goto_2

    :cond_8
    move-wide v7, v3

    goto/16 :goto_1
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/keniu/security/traffic/dd;->j:J

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/keniu/security/traffic/df;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/df;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 137
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    .line 583
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 584
    iget-boolean v0, v1, Lcom/keniu/security/traffic/y;->b:Z

    if-eqz v0, :cond_1

    .line 585
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 586
    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v2

    .line 587
    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v4

    .line 589
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v6}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 619
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v2

    .line 597
    const v3, 0xf4240

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    .line 600
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 604
    if-eqz v2, :cond_3

    .line 605
    iget-wide v5, v2, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v2, v2, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v2, v5

    add-long/2addr v2, v7

    .line 609
    :goto_1
    if-eqz v4, :cond_2

    .line 610
    iget-wide v5, v4, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/ac;->c:J

    add-long v4, v5, v7

    :goto_2
    move-object v0, p0

    move-object v6, p1

    .line 613
    invoke-static/range {v0 .. v6}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;JJLcom/ijinshan/kinghelper/firewall/core/b;)V

    goto :goto_0

    .line 615
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 617
    invoke-virtual {p0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_2
    move-wide v4, v7

    goto :goto_2

    :cond_3
    move-wide v2, v7

    goto :goto_1
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/keniu/security/traffic/dd;->k:J

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 805
    new-instance v0, Lcom/keniu/security/traffic/dm;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/dm;-><init>(Landroid/content/Context;)V

    const-wide/32 v1, 0xa4cb800

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 808
    return-void
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/keniu/security/traffic/dd;->n:Z

    return v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->d(Landroid/content/Context;)V

    .line 579
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 773
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "traffic_update_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 774
    sput-object v0, Lcom/keniu/security/traffic/dd;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 776
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/dd;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 779
    sput-object v0, Lcom/keniu/security/traffic/dd;->p:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/traffic/dh;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    sget v0, Lcom/keniu/security/monitor/a;->n:I

    if-ne p1, v0, :cond_1

    .line 40
    check-cast p2, Landroid/content/Context;

    check-cast p3, Landroid/content/Intent;

    invoke-static {p2, p3}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_1
    sget v0, Lcom/keniu/security/monitor/a;->o:I

    if-ne p1, v0, :cond_2

    .line 43
    sget-wide v0, Lcom/keniu/security/traffic/dd;->h:J

    sput-wide v0, Lcom/keniu/security/traffic/dd;->l:J

    goto :goto_0

    .line 44
    :cond_2
    sget v0, Lcom/keniu/security/monitor/a;->p:I

    if-ne p1, v0, :cond_0

    .line 45
    sget-wide v0, Lcom/keniu/security/traffic/dd;->i:J

    sput-wide v0, Lcom/keniu/security/traffic/dd;->l:J

    goto :goto_0
.end method
