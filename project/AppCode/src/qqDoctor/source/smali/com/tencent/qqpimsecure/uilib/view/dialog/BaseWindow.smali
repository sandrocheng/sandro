.class public Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseWindow"


# instance fields
.field private cancelLisnetner:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;

.field private mBackGroundView:Landroid/view/View;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWithBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mIsShowing:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method protected createView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->unShow()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUnShowed()V
    .locals 0

    return-void
.end method

.method public setBackGroup(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    sget-object v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWithBackground:Z

    return-void
.end method

.method public setBackGroup(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    sget-object v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWithBackground:Z

    return-void
.end method

.method public setOnCancelLisnetner(Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->cancelLisnetner:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mIsShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->createView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->setView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    sget-object v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mIsShowing:Z

    goto :goto_0
.end method

.method public unShow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mContentView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWithBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mBackGroundView:Landroid/view/View;

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->mIsShowing:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->cancelLisnetner:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->cancelLisnetner:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;->onCancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->onUnShowed()V

    return-void
.end method
