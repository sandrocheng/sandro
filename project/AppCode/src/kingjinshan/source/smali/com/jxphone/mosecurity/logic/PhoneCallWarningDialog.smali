.class public Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;
.super Landroid/app/Activity;
.source "PhoneCallWarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v3}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    if-ne v0, v3, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const v1, 0x7f0b06fa

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    const v2, 0x7f0b06fb

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Lcom/keniu/security/util/aq;

    invoke-direct {v3, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 37
    invoke-virtual {v3, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 38
    invoke-virtual {v3, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 39
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->a()Lcom/keniu/security/util/aq;

    .line 41
    new-instance v1, Lcom/jxphone/mosecurity/logic/o;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/logic/o;-><init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;)V

    invoke-virtual {v3, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 48
    const v1, 0x7f0b0218

    new-instance v2, Lcom/jxphone/mosecurity/logic/p;

    invoke-direct {v2, p0, v0}, Lcom/jxphone/mosecurity/logic/p;-><init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 66
    const v0, 0x7f0b021a

    new-instance v1, Lcom/jxphone/mosecurity/logic/q;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/logic/q;-><init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 73
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 76
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->finish()V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    return-void
.end method
