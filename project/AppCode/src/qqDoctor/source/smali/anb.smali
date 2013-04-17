.class final Lanb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lams;


# direct methods
.method constructor <init>(Lams;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lanb;->b:Lams;

    iput-object p2, p0, Lanb;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v2, p0, Lanb;->b:Lams;

    invoke-static {v2, v0}, Lams;->a(Lams;Lmk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lanb;->b:Lams;

    invoke-static {v0}, Lams;->w(Lams;)Ljm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljm;->c(I)V

    iget-object v0, p0, Lanb;->b:Lams;

    invoke-static {v0}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lanb;->b:Lams;

    invoke-static {v1}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lanb;->b:Lams;

    invoke-static {v0}, Lams;->A(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
