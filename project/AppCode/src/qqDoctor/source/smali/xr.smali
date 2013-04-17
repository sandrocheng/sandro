.class final Lxr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lxn;


# direct methods
.method constructor <init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lxr;->b:Lxn;

    iput-object p2, p0, Lxr;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v2, p0, Lxr;->b:Lxn;

    iget-object v0, v2, Lxn;->a:Landroid/content/Context;

    iget-object v1, v2, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b018d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lxo;

    invoke-direct {v0, v2, v3}, Lxo;-><init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    iput-object v0, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, v2, Lxn;->a:Landroid/content/Context;

    iget-object v1, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.tencent.qqpim.pickproff"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, v2, Lxn;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.tencent.qqpim.pickproff"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, v2, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lxn;->b:Lho;

    invoke-virtual {v0}, Lho;->bE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v2, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, v2, Lxn;->b:Lho;

    invoke-virtual {v1}, Lho;->bF()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v2, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v5, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v2, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lxn;->b:Lho;

    invoke-virtual {v7}, Lho;->bT()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lxn;->a:Landroid/content/Context;

    iget-object v1, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, v2, Lxn;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lxr;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
