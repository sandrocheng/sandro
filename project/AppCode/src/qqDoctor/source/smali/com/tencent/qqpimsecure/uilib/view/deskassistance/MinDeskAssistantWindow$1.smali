.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketAnimation:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-wide v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mFireRocketTime:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    sput-boolean v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketAnimation:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isShown()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUfoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mSataliteDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUfoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isFlying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAlive(Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setIsReadyToShow(Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    check-cast v1, Lld;

    iget-object v2, v1, Lld;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    check-cast v1, Lld;

    iget-object v1, v1, Lld;->c:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iget-wide v4, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    invoke-static {v2, v1, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->showDialog(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    iget v2, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iget-wide v3, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    check-cast v1, Lma;

    iget-object v1, v1, Lma;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    check-cast v0, Lma;

    iget-object v0, v0, Lma;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->showDialog(IJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;)V

    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$802(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    check-cast v1, Llx;

    iget v2, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iget-wide v3, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$800()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->showDialog(Llx;IJLcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v3, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setHasAddToWindow(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method
