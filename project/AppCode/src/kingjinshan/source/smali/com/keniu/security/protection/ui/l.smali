.class final Lcom/keniu/security/protection/ui/l;
.super Ljava/lang/Object;
.source "PreventTheftMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/keniu/security/protection/ui/l;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/keniu/security/protection/ui/l;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
