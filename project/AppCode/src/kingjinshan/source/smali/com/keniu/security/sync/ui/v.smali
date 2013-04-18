.class final Lcom/keniu/security/sync/ui/v;
.super Landroid/os/Handler;
.source "SyncBackupActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncBackupActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0b0895

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 208
    :sswitch_0
    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v2, v0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    invoke-static {v1, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Lcom/keniu/security/sync/ui/SyncBackupActivity;I)I

    .line 209
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g(Lcom/keniu/security/sync/ui/SyncBackupActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/os/Handler;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/os/Handler;)V

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v2, v0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v4

    invoke-static {v1, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;I)I

    .line 214
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/os/Handler;)V

    goto :goto_0

    .line 217
    :sswitch_2
    iget-object v1, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, v1, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    .line 218
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b()V

    .line 219
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a()V

    goto :goto_0

    .line 223
    :sswitch_3
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const v1, 0x7f0b0860

    invoke-static {v0, v2, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 226
    :sswitch_4
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const v1, 0x7f0b08c4

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 230
    :sswitch_5
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0, v2, v2}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 233
    :sswitch_6
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const-string v1, "synco"

    const-string v2, "11"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const v1, 0x7f0b08bf

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 237
    :sswitch_7
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Lcom/keniu/security/sync/ui/SyncBackupActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 240
    :sswitch_8
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    iget-object v1, v0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    const/4 v2, 0x2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 241
    iget-object v0, p0, Lcom/keniu/security/sync/ui/v;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a()V

    goto/16 :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        -0xf -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_7
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0x15 -> :sswitch_8
        0x7b -> :sswitch_6
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method
