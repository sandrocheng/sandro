.class final Lbz;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lbo;->a(D)V

    return-void

    :cond_0
    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v0

    goto :goto_0
.end method
