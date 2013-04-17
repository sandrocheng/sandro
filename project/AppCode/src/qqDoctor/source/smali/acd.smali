.class public final Lacd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lacd;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lacd;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    if-nez v3, :cond_1

    new-instance v3, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iget-object v4, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->b:Landroid/content/Context;

    invoke-direct {v3, v0, v4}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;-><init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    :cond_1
    iget-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->setInfo(II)V

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/high16 v1, 0x3f80

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput-object v2, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xf

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v1

    invoke-virtual {v1}, Lzo;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->setVisibility(I)V

    :goto_1
    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->c:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    invoke-static {}, Labv;->a()Labv;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->i:Labv$b;

    invoke-virtual {v1, v0}, Labv;->a(Labv$b;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-virtual {v1, v8}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lacd;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->c:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lacd;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-virtual {v1, v8}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->c:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lacd;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->c:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iput-boolean v5, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    :cond_4
    invoke-static {}, Labv;->a()Labv;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->i:Labv$b;

    invoke-virtual {v1, v0}, Labv;->b(Labv$b;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
