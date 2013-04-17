.class public final Lafh;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)V
    .locals 0

    iput-object p1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I

    move-result v0

    iget-object v1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    iget-object v1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    iget-object v2, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->c(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)LQQPIM/CloudInfo;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudInfo;LQQPIM/CloudCmd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)LQQPIM/CloudInfoRes;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)LQQPIM/CloudInfoRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqr;->a(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lafh;->a:Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
