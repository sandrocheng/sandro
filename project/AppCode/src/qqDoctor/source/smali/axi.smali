.class final Laxi;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laxe;


# direct methods
.method constructor <init>(Laxe;)V
    .locals 0

    iput-object p1, p0, Laxi;->a:Laxe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Laxi;->a:Laxe;

    invoke-static {v0}, Laxe;->k(Laxe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxi;->a:Laxe;

    invoke-virtual {v0}, Laxe;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Laxi;->a:Laxe;

    invoke-virtual {v1}, Laxe;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Laxi;->a:Laxe;

    invoke-virtual {v0}, Laxe;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    return-void
.end method
