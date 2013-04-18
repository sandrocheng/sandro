.class final Lcom/keniu/security/protection/ui/p;
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
    .line 244
    iput-object p1, p0, Lcom/keniu/security/protection/ui/p;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/keniu/security/protection/ui/p;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0b077a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/keniu/security/protection/ui/p;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/keniu/security/protection/ui/p;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method
