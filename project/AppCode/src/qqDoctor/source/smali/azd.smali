.class final Lazd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Layy;


# direct methods
.method constructor <init>(Layy;)V
    .locals 0

    iput-object p1, p0, Lazd;->a:Layy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lazd;->a:Layy;

    invoke-static {v0}, Layy;->n(Layy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lazd;->a:Layy;

    invoke-virtual {v0}, Layy;->f()Lala;

    move-result-object v0

    iget-object v1, p0, Lazd;->a:Layy;

    invoke-virtual {v1}, Layy;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lazd;->a:Layy;

    invoke-virtual {v0}, Layy;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    return-void
.end method
