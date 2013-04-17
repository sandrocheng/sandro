.class public Lcom/tencent/tmsecure/module/netsetting/FirewallManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final FEATURE_CAN_NOT_USE:I = 0x0

.field public static final FEATURE_CAN_USE:I = 0x1

.field public static final FEATURE_CAN_VIP:I = 0x2


# instance fields
.field private a:Lbwf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v1, v1, Lbwf;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " get-enable"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFeature()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget v1, v0, Lbwf;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cat /proc/net/ip_tables_names"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cat /proc/net/ip_tables_matches"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "cat /proc/net/ip_tables_targets"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    :cond_0
    iput v5, v0, Lbwf;->a:I

    :cond_1
    :goto_0
    iget v0, v0, Lbwf;->a:I

    return v0

    :cond_2
    const-string v4, "filter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "owner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput v5, v0, Lbwf;->a:I

    goto :goto_0

    :cond_4
    const-string v1, "MARK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/netfilter/nfnetlink_queue"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    iput v1, v0, Lbwf;->a:I

    goto :goto_0

    :cond_5
    iput v6, v0, Lbwf;->a:I

    goto :goto_0
.end method

.method public getRules(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v0, v0, Lbwf;->b:Ljava/lang/String;

    invoke-static {v0, p1}, La;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v3, v2, Lbwf;->b:Ljava/lang/String;

    invoke-static {v3}, La;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " init-chain"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    if-eqz v1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v3}, Lbwf;->a(Ljava/util/List;)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/Rule;

    iget v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->type:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    const-string v6, "ACCEPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    const-string v6, "ACCEPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tencent/tmsecure/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    const-string v6, "ACCEPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInited()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v0, v0, Lbwf;->b:Ljava/lang/String;

    invoke-static {v0}, La;->m(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbwf;

    invoke-direct {v0}, Lbwf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    invoke-virtual {v0, p1}, Lbwf;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 4

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    iget-object v0, v0, Lbwf;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " set-enable "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public setRule(Lcom/tencent/tmsecure/module/netsetting/Rule;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lbwf;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Lbwf;

    invoke-virtual {v0, p1}, Lbwf;->a(Ljava/util/List;)V

    goto :goto_0
.end method
