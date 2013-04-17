.class final Laxg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;


# instance fields
.field private synthetic a:Laxe;


# direct methods
.method constructor <init>(Laxe;)V
    .locals 0

    iput-object p1, p0, Laxg;->a:Laxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    iget-object v0, p0, Laxg;->a:Laxe;

    invoke-static {v0}, Laxe;->d(Laxe;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
