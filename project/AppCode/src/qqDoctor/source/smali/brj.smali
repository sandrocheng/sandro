.class final Lbrj;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbrf;


# direct methods
.method constructor <init>(Lbrf;)V
    .locals 0

    iput-object p1, p0, Lbrj;->a:Lbrf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lbrj;->a:Lbrf;

    invoke-static {v0}, Lbrf;->f(Lbrf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrj;->a:Lbrf;

    invoke-virtual {v0}, Lbrf;->f()Lala;

    move-result-object v0

    iget-object v1, p0, Lbrj;->a:Lbrf;

    invoke-virtual {v1}, Lbrf;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrj;->a:Lbrf;

    invoke-virtual {v0}, Lbrf;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    return-void
.end method
