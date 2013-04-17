.class public Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchTouchEvent(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
