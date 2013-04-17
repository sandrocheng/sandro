.class public Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;
    }
.end annotation


# instance fields
.field private mCheckSuccessTime:J

.field private mColorEggConfigManager:Lqt;

.field private mColorEggView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIsPassCheck:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindow_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lqt;->a(Landroid/content/Context;)Lqt;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mCheckSuccessTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mCheckSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJLjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showToast(IJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Lqt;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;Llx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showLotteryColorEgg(Llx;)V

    return-void
.end method

.method private showCurveColorEgg()V
    .locals 14

    const-wide/high16 v2, 0x4049

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int v5, v4, v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-wide/high16 v0, 0x3fe0

    int-to-double v6, v4

    const-wide/high16 v8, 0x4049

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4049

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    :goto_0
    sub-double/2addr v2, v0

    const-wide v10, 0x4040aaaaaaaaaaabL

    cmpg-double v10, v2, v10

    if-gez v10, :cond_0

    const-wide v0, 0x400a666666666666L

    :cond_0
    int-to-double v10, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v6

    sub-double/2addr v11, v8

    double-to-int v11, v11

    iget-object v12, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Landroid/os/Message;->what:I

    iput v10, v12, Landroid/os/Message;->arg1:I

    iput v11, v12, Landroid/os/Message;->arg2:I

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    if-lt v10, v5, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput v10, v0, Landroid/os/Message;->arg1:I

    iput v11, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-wide/16 v0, 0xc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0x1e

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_3
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method private showLotteryColorEgg(Llx;)V
    .locals 2

    iget-object v0, p1, Llx;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p1, Llx;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, p1, Llx;->f:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showStraightColorEgg()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showCurveColorEgg()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showTransverseColorEgg()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showNormalColorEgg(IJZ)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;

    rem-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Lqt;->a(I)Lma;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_4

    :cond_0
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showStraightColorEgg()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    rem-int/lit8 v0, p1, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showCurveColorEgg()V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_1

    iget-object v1, v0, Lma;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    rem-int/lit8 v1, p1, 0xa

    iget-object v2, v0, Lma;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, v0, Lma;->d:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget v1, v0, Lma;->f:I

    packed-switch v1, :pswitch_data_0

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v1, v0, Lma;->h:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->dt()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)V

    iput p1, v1, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iput-wide p2, v1, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xc

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v0, Lma;->g:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showStraightColorEgg()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showCurveColorEgg()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showTransverseColorEgg()V

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lma;->g:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showStraightColorEgg()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    mul-int/2addr v2, v4

    int-to-float v2, v2

    const v4, 0x3dcccccd

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v1, v3

    const v3, 0x3f266666

    mul-float/2addr v1, v3

    float-to-int v3, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    iput v5, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_1

    if-nez v0, :cond_0

    if-lt v1, v4, :cond_0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x6

    iput v6, v5, Landroid/os/Message;->what:I

    sub-int v6, v3, v4

    int-to-float v6, v6

    const/high16 v7, 0x4120

    div-float/2addr v6, v7

    const/high16 v7, 0x41f0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->what:I

    iput v2, v5, Landroid/os/Message;->arg1:I

    iput v1, v5, Landroid/os/Message;->arg2:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0xa

    const-wide/16 v5, 0x1e

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v0, 0xc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return-void

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private showToast(IJLjava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketToast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-wide v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mFireRocketTime:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    sput-boolean v6, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketToast:Z

    :cond_0
    const-string v1, "0"

    const-string v0, "M"

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    invoke-static {p2, p3}, La;->b(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0b092a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    if-eq p5, v7, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0934

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    rem-int/lit8 v2, p1, 0xa

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    if-eq p5, v7, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0933

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0938

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0931

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showTransverseColorEgg()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    div-int/lit8 v1, v1, 0x3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    mul-int/2addr v1, v4

    int-to-float v1, v1

    const v4, 0x3dcccccd

    mul-float/2addr v1, v4

    float-to-int v4, v1

    int-to-double v1, v2

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v1, v5

    double-to-int v2, v1

    int-to-float v1, v3

    const v3, 0x3f266666

    mul-float/2addr v1, v3

    float-to-int v3, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    iput v5, v1, Landroid/os/Message;->arg1:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_1

    if-nez v0, :cond_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x6

    iput v6, v5, Landroid/os/Message;->what:I

    sub-int v6, v3, v2

    int-to-float v6, v6

    const/high16 v7, 0x4120

    div-float/2addr v6, v7

    const/high16 v7, 0x41f0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->what:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    iput v4, v5, Landroid/os/Message;->arg2:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0xa

    const-wide/16 v5, 0x1e

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v0, 0xc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return-void

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isPassCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mIsPassCheck:Z

    return v0
.end method

.method public setPassCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mIsPassCheck:Z

    return-void
.end method

.method public startCheckLottery()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;-><init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startColorEggAnimation(IJZ)V
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;-><init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;ZIJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method
