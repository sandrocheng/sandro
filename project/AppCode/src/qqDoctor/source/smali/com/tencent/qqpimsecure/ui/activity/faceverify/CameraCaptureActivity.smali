.class public Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# instance fields
.field private a:Larn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Larn;

    invoke-direct {v0, p0}, Larn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;->a:Larn;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;->a:Larn;

    return-object v0
.end method

.method public isNeedActivityWrapper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;->a:Larn;

    invoke-virtual {v0}, Larn;->a()V

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
