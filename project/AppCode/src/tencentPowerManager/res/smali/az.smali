.class final Laz;
.super Lfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi",
        "<",
        "Lbd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lay;


# direct methods
.method constructor <init>(Lay;)V
    .locals 0

    iput-object p1, p0, Laz;->a:Lay;

    invoke-direct {p0}, Lfi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lfh;)V
    .locals 3

    check-cast p1, Lbd;

    iget-object v0, p1, Lbd;->a:Lbe;

    iget-object v1, p0, Laz;->a:Lay;

    iget-object v1, v1, Lay;->e:Lbe;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laz;->a:Lay;

    iget-object v0, v0, Lay;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Laz;->a:Lay;

    new-instance v1, Lba;

    iget-object v2, p0, Laz;->a:Lay;

    iget-object v2, v2, Lay;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lba;-><init>(Laz;Landroid/os/Looper;)V

    iput-object v1, v0, Lay;->f:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Laz;->a:Lay;

    iget-object v0, v0, Lay;->f:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
