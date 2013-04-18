.class final Lcom/keniu/security/sync/ui/ah;
.super Landroid/os/Handler;
.source "SyncRecordsAct.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRecordsAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 86
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->f(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Z

    .line 87
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(I)V

    .line 88
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e(Lcom/keniu/security/sync/ui/SyncRecordsAct;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->h(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->g(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Lcom/keniu/security/sync/ui/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 92
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(I)V

    goto :goto_0

    .line 95
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ah;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
