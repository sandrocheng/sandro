.class final Lcom/keniu/security/protection/ui/b;
.super Ljava/lang/Object;
.source "PreventTheftCommandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/keniu/security/protection/ui/b;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/b;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 35
    iget-object v1, p0, Lcom/keniu/security/protection/ui/b;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    const v2, 0x7f0b07c2

    invoke-virtual {v1, v2}, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 36
    iget-object v1, p0, Lcom/keniu/security/protection/ui/b;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    const v2, 0x7f0b07f1

    invoke-virtual {v1, v2}, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 37
    iget-object v1, p0, Lcom/keniu/security/protection/ui/b;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    const v2, 0x7f0b03ca

    invoke-virtual {v1, v2}, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 39
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 40
    return-void
.end method
