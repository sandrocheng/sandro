.class final Lbnx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbnx;->c:Lbnt;

    iput-object p2, p0, Lbnx;->a:Lkw;

    iput-object p3, p0, Lbnx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbnx;->c:Lbnt;

    invoke-virtual {v0}, Lbnt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lbnx;->a:Lkw;

    invoke-static {v0, v1}, Lfy;->b(Landroid/app/Activity;Lkw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnx;->c:Lbnt;

    invoke-static {v0}, Lbnt;->a(Lbnt;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbnx;->a:Lkw;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnx;->c:Lbnt;

    invoke-virtual {v0}, Lbnt;->a()Lalr;

    move-result-object v0

    invoke-virtual {v0}, Lalr;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbnx;->c:Lbnt;

    invoke-virtual {v1}, Lbnt;->a()Lalr;

    move-result-object v1

    iget-object v2, p0, Lbnx;->a:Lkw;

    invoke-virtual {v1, v2}, Lalr;->b(Lkw;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbnx;->c:Lbnt;

    invoke-virtual {v1}, Lbnt;->a()Lalr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lalr;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbnx;->c:Lbnt;

    invoke-static {v0}, Lbnt;->e(Lbnt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lbnx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
