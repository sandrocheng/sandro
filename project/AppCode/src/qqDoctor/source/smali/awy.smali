.class public abstract Lawy;
.super Lblt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lblt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFooterView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lawy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    const v1, 0x7f080366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lawy;->d:Landroid/view/View;

    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    const v1, 0x7f080368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lawy;->a:Landroid/view/View;

    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    const v1, 0x7f08036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lawy;->b:Landroid/view/View;

    iget-object v0, p0, Lawy;->d:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Lawy;->d:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lblt;->onDestroy()V

    iget-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    iget-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    iget-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    return-void
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lawy;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lawy;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lawy;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lawy;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lawy;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawy;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lawy;->e:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lawy;->f:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lawy;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lawy;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lawy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
