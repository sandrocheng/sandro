.class final Lazf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Laze;


# direct methods
.method constructor <init>(Laze;)V
    .locals 0

    iput-object p1, p0, Lazf;->a:Laze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Lazf;->a:Laze;

    invoke-static {v0}, Laze;->a(Laze;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lazf;->a:Laze;

    invoke-virtual {v0}, Laze;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lazf;->a:Laze;

    invoke-virtual {v1}, Laze;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lazf;->a:Laze;

    invoke-virtual {v0}, Laze;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lazf;->a:Laze;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laze;->setReloadData(Z)V

    iget-object v0, p0, Lazf;->a:Laze;

    invoke-static {v0}, Laze;->b(Laze;)Z

    iget-object v0, p0, Lazf;->a:Laze;

    invoke-static {v0}, Laze;->c(Laze;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method
