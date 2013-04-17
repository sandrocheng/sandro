.class public Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Ljava/util/Timer;

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->f:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Laac;

    invoke-direct {v1, p0}, Laac;-><init>(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->g:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c:F

    return p1
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V
    .locals 4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->D(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CPU"

    iget v2, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lvh;->f()J

    move-result-wide v1

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->e:Ljava/lang/String;

    const-string v1, "MEM"

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->d:F

    return p1
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V
    .locals 4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->E(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CPU"

    iget v2, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->d:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lvh;->f()J

    move-result-wide v1

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->f:Ljava/lang/String;

    const-string v1, "MEM"

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dO()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b:Ljava/util/Timer;

    new-instance v1, Laaf;

    invoke-direct {v1, p0}, Laaf;-><init>(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dN()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a:Ljava/util/Timer;

    new-instance v1, Laag;

    invoke-direct {v1, p0}, Laag;-><init>(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
