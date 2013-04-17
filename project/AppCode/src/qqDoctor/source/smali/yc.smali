.class final Lyc;
.super Ljava/lang/Object;

# interfaces
.implements Llt;


# instance fields
.field private synthetic a:Lyb;


# direct methods
.method constructor <init>(Lyb;)V
    .locals 0

    iput-object p1, p0, Lyc;->a:Lyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyc;->a:Lyb;

    invoke-static {v0}, Lyb;->b(Lyb;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v0

    iget-object v1, p0, Lyc;->a:Lyb;

    invoke-static {v1}, Lyb;->a(Lyb;)Lyb$a;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
