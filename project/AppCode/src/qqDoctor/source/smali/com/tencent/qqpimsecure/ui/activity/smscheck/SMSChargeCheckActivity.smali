.class public Lcom/tencent/qqpimsecure/ui/activity/smscheck/SMSChargeCheckActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private a:Lbkn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lbkn;

    invoke-direct {v0, p0}, Lbkn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/smscheck/SMSChargeCheckActivity;->a:Lbkn;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/smscheck/SMSChargeCheckActivity;->a:Lbkn;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
