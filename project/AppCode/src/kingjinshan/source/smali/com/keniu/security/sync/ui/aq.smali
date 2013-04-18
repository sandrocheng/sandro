.class final Lcom/keniu/security/sync/ui/aq;
.super Landroid/os/Handler;
.source "SyncRestoreHistoryAct.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/keniu/security/sync/ui/aq;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 108
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/aq;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 111
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/aq;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    const v1, 0x7f0b0860

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/aq;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    const v1, 0x7f0b08c8

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 117
    :sswitch_3
    iget-object v0, p0, Lcom/keniu/security/sync/ui/aq;->a:Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x7 -> :sswitch_3
    .end sparse-switch
.end method
