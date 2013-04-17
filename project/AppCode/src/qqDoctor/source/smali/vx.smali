.class final Lvx;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lvw;


# direct methods
.method constructor <init>(Lvw;)V
    .locals 0

    iput-object p1, p0, Lvx;->a:Lvw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvx;->a:Lvw;

    iget-object v0, v0, Lvw;->b:Lvk;

    iget-object v1, p0, Lvx;->a:Lvw;

    iget-object v1, v1, Lvw;->a:Llf;

    invoke-static {v0, v1}, Lvk;->a(Lvk;Llf;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lvx;->a:Lvw;

    iget-object v1, v1, Lvw;->a:Llf;

    invoke-virtual {v0, v1}, Lhq;->a(Llf;)J

    move-result-wide v0

    iget-object v2, p0, Lvx;->a:Lvw;

    iget-object v2, v2, Lvw;->b:Lvk;

    iget-object v2, v2, Lvk;->h:Ljava/util/List;

    iget-object v3, p0, Lvx;->a:Lvw;

    iget-object v3, v3, Lvw;->a:Llf;

    iget-object v3, v3, Llf;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvx;->a:Lvw;

    iget-object v0, v0, Lvw;->b:Lvk;

    iget-object v1, v0, Lvk;->g:Ldv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lwa;

    invoke-direct {v2, v0}, Lwa;-><init>(Lvk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lvx;->a:Lvw;

    iget-object v0, v0, Lvw;->b:Lvk;

    iget-object v1, p0, Lvx;->a:Lvw;

    iget-object v1, v1, Lvw;->a:Llf;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvk;->a(Lvk;Llf;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lvx;->a:Lvw;

    iget-object v0, v0, Lvw;->b:Lvk;

    iget-object v1, p0, Lvx;->a:Lvw;

    iget-object v1, v1, Lvw;->a:Llf;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvk;->a(Lvk;Llf;Z)V

    goto :goto_0
.end method
