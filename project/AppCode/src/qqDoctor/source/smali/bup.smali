.class final Lbup;
.super Lbvf;


# instance fields
.field private synthetic a:Lbuo$a;


# direct methods
.method constructor <init>(Lbuo$a;)V
    .locals 0

    iput-object p1, p0, Lbup;->a:Lbuo$a;

    invoke-direct {p0}, Lbvf;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Landroid/content/BroadcastReceiver;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbup;->a:Lbuo$a;

    invoke-static {v0}, Lbuo$a;->a(Lbuo$a;)Lbuo$c;

    move-result-object v3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/BroadcastReceiver;

    iget-object v4, v3, Lbuo$c;->a:Lbtx;

    invoke-virtual {v4}, Lbtx;->c()I

    move-result v4

    if-ne v4, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbup;->a:Lbuo$a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {v0, p1, v3}, Lbuo$a;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_2
    new-instance v0, Lbvc;

    invoke-direct {v0, v3, p1}, Lbvc;-><init>(Lbuo$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    invoke-virtual {v0}, Lbvc;->start()V

    move v0, v2

    goto :goto_0
.end method
