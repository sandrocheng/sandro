.class public Lcom/keniu/security/util/ap;
.super Landroid/app/Dialog;
.source "MyAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lcom/keniu/security/util/MyAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const v0, 0x7f0a001a

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    new-instance v0, Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {p0}, Lcom/keniu/security/util/ap;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/keniu/security/util/MyAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const v0, 0x7f0a001a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/keniu/security/util/ap;->setCancelable(Z)V

    .line 56
    invoke-virtual {p0, p3}, Lcom/keniu/security/util/ap;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 57
    new-instance v0, Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {p0}, Lcom/keniu/security/util/ap;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/keniu/security/util/MyAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    .line 58
    return-void
.end method

.method private a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0}, Lcom/keniu/security/util/MyAlertController;->b()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/util/ap;)Lcom/keniu/security/util/MyAlertController;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;IIII)V

    .line 126
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 171
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/MyAlertController;->a(Z)V

    .line 241
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method private b(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, -0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method private c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    return-void
.end method

.method private c(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, -0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 189
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/keniu/security/util/MyAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 162
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/MyAlertController;->b(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/MyAlertController;->b(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    return-void
.end method

.method public final c()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0}, Lcom/keniu/security/util/MyAlertController;->c()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 246
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0}, Lcom/keniu/security/util/MyAlertController;->a()V

    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p2}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p2}, Lcom/keniu/security/util/MyAlertController;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/keniu/security/util/ap;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/MyAlertController;->a(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
