.class final Lcom/keniu/security/sync/ui/af;
.super Ljava/lang/Object;
.source "SyncRecordsAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRecordsAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    iget-object v0, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    if-nez p2, :cond_2

    .line 61
    new-instance v0, Lcom/keniu/security/sync/c/d;

    new-instance v1, Lcom/keniu/security/sync/j;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {v1, v2, v5}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;B)V

    iget-object v2, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v3}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v4}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e(Lcom/keniu/security/sync/ui/SyncRecordsAct;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keniu/security/sync/c/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Lcom/keniu/security/sync/k;

    move-result-object v2

    const-string v3, "user_name"

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Lcom/keniu/security/sync/k;

    move-result-object v2

    const-string v3, "pass_word"

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_2
    if-ne p2, v6, :cond_0

    .line 63
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/af;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 64
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 65
    const v1, 0x7f0b08d1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 66
    const v1, 0x7f0b0218

    new-instance v2, Lcom/keniu/security/sync/ui/ag;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/ag;-><init>(Lcom/keniu/security/sync/ui/af;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 73
    const v1, 0x7f0b042e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 74
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_1
.end method
