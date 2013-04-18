.class final Lcom/keniu/security/sync/ui/d;
.super Ljava/lang/Object;
.source "DialogAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/DialogAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/DialogAct;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/keniu/security/sync/ui/d;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/keniu/security/sync/ui/d;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/ui/DialogAct;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/sync/ui/d;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->finish()V

    .line 102
    return-void
.end method
