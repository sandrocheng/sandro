.class final Lyd;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lyb;


# direct methods
.method constructor <init>(Lyb;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lyd;->a:Lyb;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lyd;->a:Lyb;

    invoke-static {v0}, Lyb;->c(Lyb;)Lki;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lki;->a(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lyd;->a:Lyb;

    invoke-static {v1}, Lyb;->b(Lyb;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v1

    iget-object v2, p0, Lyd;->a:Lyb;

    invoke-static {v2}, Lyb;->a(Lyb;)Lyb$a;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyd;->a:Lyb;

    invoke-static {v1}, Lyb;->c(Lyb;)Lki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    goto :goto_0
.end method
