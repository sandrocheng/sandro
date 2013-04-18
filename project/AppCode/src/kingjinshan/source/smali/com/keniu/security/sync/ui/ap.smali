.class final Lcom/keniu/security/sync/ui/ap;
.super Ljava/lang/Object;
.source "SyncRestoreHistoryAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-static {v0, p3}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;I)I

    .line 44
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/ap;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    const-class v3, Lcom/keniu/security/sync/ui/LoginAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
