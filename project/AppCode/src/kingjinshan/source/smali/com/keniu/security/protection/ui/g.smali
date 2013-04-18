.class final Lcom/keniu/security/protection/ui/g;
.super Ljava/lang/Object;
.source "PreventTheftFirstVisitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/protection/ui/g;->a:Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/keniu/security/protection/ui/g;->a:Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;->finish()V

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/keniu/security/protection/ui/g;->a:Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/keniu/security/protection/ui/g;->a:Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
