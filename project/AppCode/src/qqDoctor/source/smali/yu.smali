.class final Lyu;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private synthetic c:Lho;

.field private synthetic d:Lyr;


# direct methods
.method constructor <init>(Lyr;Ljava/lang/String;Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;Lho;)V
    .locals 0

    iput-object p1, p0, Lyu;->d:Lyr;

    iput-object p2, p0, Lyu;->a:Ljava/lang/String;

    iput-object p3, p0, Lyu;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object p4, p0, Lyu;->c:Lho;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lyu;->d:Lyr;

    iget-object v0, v0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lyu;->d:Lyr;

    iget-object v4, p0, Lyu;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lyu;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyu;->c:Lho;

    invoke-virtual {v0}, Lho;->bE()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lyu;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v4, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lyu;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lyu;->c:Lho;

    invoke-virtual {v5, v3}, Lho;->q(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_8

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lyu;->b:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->reportSIMChangeToServer()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lyu;->c:Lho;

    invoke-virtual {v5}, Lho;->bI()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lyu;->d:Lyr;

    iget-object v5, v5, Lyr;->a:Landroid/content/Context;

    const v6, 0x7f0b07d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lyu;->c:Lho;

    invoke-virtual {v0, v3}, Lho;->r(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lyu;->c:Lho;

    invoke-virtual {v0}, Lho;->bH()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyu;->c:Lho;

    invoke-virtual {v0, v2}, Lho;->C(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "sim_change"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lyu;->d:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lyu;->d:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, v0, Lyr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lyu;->d:Lyr;

    iget-object v4, v4, Lyr;->a:Landroid/content/Context;

    const v5, 0x7f0b07cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lyu;->c:Lho;

    invoke-virtual {v4}, Lho;->bT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lyu;->d:Lyr;

    iget-object v4, v4, Lyr;->a:Landroid/content/Context;

    const v5, 0x7f0b07ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lyu;->d:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    const v4, 0x7f0b07f9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
