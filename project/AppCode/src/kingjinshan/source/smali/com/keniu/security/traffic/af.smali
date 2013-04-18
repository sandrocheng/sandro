.class public final Lcom/keniu/security/traffic/af;
.super Landroid/app/Dialog;
.source "TrafficFireWallGuidePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/widget/Button;

.field private c:Lcom/keniu/security/traffic/ag;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/af;->b:Landroid/widget/Button;

    .line 25
    iput-object p1, p0, Lcom/keniu/security/traffic/af;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keniu/security/traffic/ag;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const v0, 0x7f0a001e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/af;->b:Landroid/widget/Button;

    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/af;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/keniu/security/traffic/af;->c:Lcom/keniu/security/traffic/ag;

    .line 33
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/af;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/keniu/security/traffic/af;->c:Lcom/keniu/security/traffic/ag;

    invoke-interface {v0}, Lcom/keniu/security/traffic/ag;->a()V

    .line 52
    invoke-static {}, Lcom/keniu/security/traffic/q;->f()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0800bb
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/af;->setContentView(I)V

    .line 40
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/af;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/af;->b:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/keniu/security/traffic/af;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
