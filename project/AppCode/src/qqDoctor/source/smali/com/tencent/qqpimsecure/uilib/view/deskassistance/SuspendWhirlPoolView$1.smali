.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
