.class public Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "PreventTheftFirstVisitActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    const v0, 0x7f030077

    const v1, 0x7f0b0795

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 24
    if-nez p1, :cond_0

    .line 26
    const-string v0, "pt"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :cond_0
    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    new-instance v1, Lcom/keniu/security/protection/ui/g;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/g;-><init>(Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->d(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;->finish()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 55
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
