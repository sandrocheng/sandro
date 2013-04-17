.class final Lbuj$b;
.super Lcom/tencent/tmsecure/module/aresengine/DataMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;-><init>()V

    iput-object p1, p0, Lbuj$b;->a:Landroid/content/Context;

    new-instance v0, Lbum;

    invoke-direct {v0, p0}, Lbum;-><init>(Lbuj$b;)V

    iput-object v0, p0, Lbuj$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lbuj$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lbuj$b;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/DualSimCallUtil;->registerDaulSimCallStateReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lbuj$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lbuj$b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
