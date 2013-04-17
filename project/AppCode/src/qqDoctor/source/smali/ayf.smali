.class final Layf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Laye;


# direct methods
.method constructor <init>(Laye;)V
    .locals 0

    iput-object p1, p0, Layf;->a:Laye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Layf;->a:Laye;

    invoke-static {v0}, Laye;->a(Laye;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Layf;->a:Laye;

    invoke-virtual {v0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Layf;->a:Laye;

    invoke-static {v1}, Laye;->b(Laye;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Layf;->a:Laye;

    invoke-virtual {v0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Layf;->a:Laye;

    invoke-static {v0}, Laye;->c(Laye;)V

    iget-object v0, p0, Layf;->a:Laye;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laye;->a(Laye;Z)Z

    iget-object v0, p0, Layf;->a:Laye;

    invoke-static {v0}, Laye;->d(Laye;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layf;->a:Laye;

    invoke-static {v0}, Laye;->e(Laye;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layf;->a:Laye;

    invoke-static {v0}, Laye;->f(Laye;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method
