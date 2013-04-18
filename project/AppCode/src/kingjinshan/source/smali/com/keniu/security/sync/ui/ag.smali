.class final Lcom/keniu/security/sync/ui/ag;
.super Ljava/lang/Object;
.source "SyncRecordsAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/af;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/af;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/keniu/security/sync/c/c;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    iget-object v1, v1, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v1, v1, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    iget-object v2, v2, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    iget-object v3, v3, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v3}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    iget-object v4, v4, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v4}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e(Lcom/keniu/security/sync/ui/SyncRecordsAct;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keniu/security/sync/c/c;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/sync/ui/ag;->a:Lcom/keniu/security/sync/ui/af;

    iget-object v3, v3, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v3}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
