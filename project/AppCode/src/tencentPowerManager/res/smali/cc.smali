.class public final Lcc;
.super Lcom/tencent/tmsecure/common/BaseService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Lcd;

    invoke-direct {v0, p0}, Lcd;-><init>(Lcc;)V

    iput-object v0, p0, Lcc;->c:Landroid/os/Handler;

    new-instance v0, Lcf;

    invoke-direct {v0, p0}, Lcf;-><init>(Lcc;)V

    iput-object v0, p0, Lcc;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcc;)V
    .locals 12

    const/16 v11, 0xc

    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v3

    const-string v2, "channel"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "111111"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Lz;->g()J

    move-result-wide v5

    invoke-virtual {v3}, Lz;->f()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v10}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v5, v9}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v5, v11}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v6, v10}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v6, v9}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v6, v11}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-nez v5, :cond_4

    move v5, v0

    :goto_2
    if-nez v5, :cond_5

    move v5, v0

    :goto_3
    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lce;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lce;-><init>(Lcc;ZLz;ZZ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v1

    goto :goto_3
.end method

.method static synthetic a(Lcc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcc;->b:Z

    return p1
.end method

.method static synthetic b(Lcc;)Z
    .locals 1

    iget-boolean v0, p0, Lcc;->b:Z

    return v0
.end method

.method static synthetic c(Lcc;)V
    .locals 0

    invoke-virtual {p0}, Lcc;->stopSelf()V

    return-void
.end method

.method static synthetic d(Lcc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcc;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Lcc;->a:Landroid/content/Context;

    iget-object v0, p0, Lcc;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "powermanager_action_report"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestory()V
    .locals 2

    iget-object v0, p0, Lcc;->a:Landroid/content/Context;

    iget-object v1, p0, Lcc;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    return-void
.end method
