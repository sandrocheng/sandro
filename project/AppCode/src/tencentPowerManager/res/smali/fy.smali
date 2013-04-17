.class public final Lfy;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Lar;


# direct methods
.method public constructor <init>(Lar;)V
    .locals 0

    iput-object p1, p0, Lfy;->a:Lar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfx;)V
    .locals 3

    iget-object v0, p0, Lfy;->a:Lar;

    iput-object p1, v0, Lar;->d:Lfx;

    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v1, p0, Lfy;->a:Lar;

    iget-object v1, v1, Lar;->d:Lfx;

    iget-object v2, p0, Lfy;->a:Lar;

    invoke-virtual {v2}, Lar;->b()I

    invoke-virtual {v0, v1}, Lar;->a(Lfx;)V

    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lfy;->a:Lar;

    invoke-static {v0}, Lar;->a(Lar;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->d:Lfx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->d:Lfx;

    iget-object v0, v0, Lfx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lfy;->a:Lar;

    iget-object v1, v1, Lar;->b:Landroid/content/Context;

    const v2, 0x7f060081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lfy;->a:Lar;

    iget-object v1, v1, Lar;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lfy;->a:Lar;

    invoke-static {}, Lar;->d()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lfy;->a:Lar;

    invoke-static {v0}, Lar;->b(Lar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfy;->a:Lar;

    iget-object v1, p0, Lfy;->a:Lar;

    iget-object v1, v1, Lar;->d:Lfx;

    iget-object v2, p0, Lfy;->a:Lar;

    iget-object v2, v2, Lar;->g:Lfz;

    invoke-virtual {v0, v1}, Lar;->b(Lfx;)V

    goto :goto_0
.end method
