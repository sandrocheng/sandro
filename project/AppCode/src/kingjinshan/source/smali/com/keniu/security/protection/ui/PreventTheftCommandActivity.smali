.class public Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "PreventTheftCommandActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/keniu/security/protection/ui/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/b;-><init>(Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->a:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/keniu/security/protection/ui/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/c;-><init>(Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const v0, 0x7f030074

    const v1, 0x7f0b0767

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 22
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->c:Landroid/widget/Button;

    .line 23
    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->d:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
