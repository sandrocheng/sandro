.class final Lbvo;
.super Ljava/lang/Object;

# interfaces
.implements Lbui;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbvo$a;,
        Lbvo$b;
    }
.end annotation


# instance fields
.field private a:Lbui;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lbvo;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0}, Lbui;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lbvo;->a:Lbui;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    new-instance v0, Lbvo$b;

    invoke-direct {v0}, Lbvo$b;-><init>()V

    iput-object v0, p0, Lbvo;->a:Lbui;

    :cond_0
    :goto_0
    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0, p1}, Lbui;->a([B)V

    return-void

    :cond_1
    new-instance v0, Lbvo$a;

    invoke-direct {v0}, Lbvo$a;-><init>()V

    iput-object v0, p0, Lbvo;->a:Lbui;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0}, Lbui;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lbvo;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_0

    array-length v0, v5

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v3

    move-object v1, v4

    :goto_2
    array-length v0, v5

    if-lt v2, v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    iput-object v1, v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iput v3, v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget-object v0, p0, Lbvo;->b:Landroid/content/Intent;

    iput-object v0, v4, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    aget-object v0, v5, v2

    if-eqz v0, :cond_4

    aget-object v0, v5, v2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lbvo;->a([B)V

    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0}, Lbui;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0}, Lbui;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_4

    iget-object v0, p0, Lbvo;->a:Lbui;

    invoke-interface {v0}, Lbui;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v5, v4

    goto :goto_0
.end method
