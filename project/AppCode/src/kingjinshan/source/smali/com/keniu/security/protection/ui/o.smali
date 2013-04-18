.class final Lcom/keniu/security/protection/ui/o;
.super Ljava/lang/Object;
.source "PreventTheftMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/keniu/security/protection/ui/o;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/keniu/security/protection/ui/o;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/keniu/security/protection/ui/o;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method
