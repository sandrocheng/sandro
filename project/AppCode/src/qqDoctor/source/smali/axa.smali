.class final Laxa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Lawz;


# direct methods
.method constructor <init>(Lawz;)V
    .locals 0

    iput-object p1, p0, Laxa;->a:Lawz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-static {v0}, Lawz;->a(Lawz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-virtual {v0}, Lawz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Laxa;->a:Lawz;

    invoke-static {v1}, Lawz;->b(Lawz;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-virtual {v0}, Lawz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-static {v0}, Lawz;->c(Lawz;)V

    iget-object v0, p0, Laxa;->a:Lawz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lawz;->a(Lawz;Z)Z

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-static {v0}, Lawz;->d(Lawz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-static {v0}, Lawz;->e(Lawz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laxa;->a:Lawz;

    invoke-static {v0}, Lawz;->f(Lawz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method
