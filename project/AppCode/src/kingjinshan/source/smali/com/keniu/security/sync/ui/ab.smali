.class final Lcom/keniu/security/sync/ui/ab;
.super Ljava/lang/Object;
.source "SyncLocalAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncLocalAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncLocalAct;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ab;->a:Lcom/keniu/security/sync/ui/SyncLocalAct;

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
    .line 35
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ab;->a:Lcom/keniu/security/sync/ui/SyncLocalAct;

    invoke-static {v0, p3}, Lcom/keniu/security/sync/ui/SyncLocalAct;->a(Lcom/keniu/security/sync/ui/SyncLocalAct;I)I

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/ab;->a:Lcom/keniu/security/sync/ui/SyncLocalAct;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/ab;->a:Lcom/keniu/security/sync/ui/SyncLocalAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->a(Lcom/keniu/security/sync/ui/SyncLocalAct;)I

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/keniu/security/sync/ui/SyncBackupActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "backup_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/keniu/security/sync/ui/ab;->a:Lcom/keniu/security/sync/ui/SyncLocalAct;

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/ui/SyncLocalAct;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void

    .line 36
    :cond_0
    const-class v2, Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    goto :goto_0
.end method
