.class final Lawx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:I

.field private synthetic c:Laww;


# direct methods
.method constructor <init>(Laww;Lmk;I)V
    .locals 0

    iput-object p1, p0, Lawx;->c:Laww;

    iput-object p2, p0, Lawx;->a:Lmk;

    iput p3, p0, Lawx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lawx;->c:Laww;

    iget-object v0, v0, Laww;->a:Lawt;

    invoke-virtual {v0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final onRetry()V
    .locals 4

    iget-object v0, p0, Lawx;->c:Laww;

    iget-object v0, v0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->o(Lawt;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lawx;->c:Laww;

    iget-object v1, v1, Laww;->a:Lawt;

    invoke-static {v1}, Lawt;->n(Lawt;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lawx;->c:Laww;

    iget-object v0, v0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->p(Lawt;)Lug;

    move-result-object v0

    new-instance v1, Lml;

    iget-object v2, p0, Lawx;->a:Lmk;

    iget v3, p0, Lawx;->b:I

    invoke-direct {v1, v2, v3}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v0, v1}, Lug;->a(Lml;)V

    return-void
.end method
