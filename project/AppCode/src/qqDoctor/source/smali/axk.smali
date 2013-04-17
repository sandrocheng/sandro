.class final Laxk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxk;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-static {v0}, Laxj;->a(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-static {v0}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-virtual {v0}, Laxj;->f()Lala;

    move-result-object v0

    iget-object v1, p0, Laxk;->a:Laxj;

    invoke-virtual {v1}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-virtual {v0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    iget-object v0, p0, Laxk;->a:Laxj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxj;->setReloadData(Z)V

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-static {v0}, Laxj;->c(Laxj;)Z

    iget-object v0, p0, Laxk;->a:Laxj;

    invoke-static {v0}, Laxj;->d(Laxj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method
