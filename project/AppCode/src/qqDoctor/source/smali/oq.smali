.class final Loq;
.super Ljava/lang/Object;

# interfaces
.implements Llt;


# instance fields
.field private synthetic a:Lop;


# direct methods
.method constructor <init>(Lop;)V
    .locals 0

    iput-object p1, p0, Loq;->a:Lop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 3

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v0, v0, Ljo;->a:Landroid/content/SharedPreferences;

    const-string v1, "isopen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Loq;->a:Lop;

    invoke-static {v0}, Lop;->a(Lop;)Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->isChartSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v0

    sget-object v1, Lzq;->a:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v1

    const-string v2, "nocharge_body_smslog"

    invoke-virtual {v1, v2}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lzq;->a:Ljava/util/List;

    :cond_0
    sget-object v1, Lzq;->b:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v1

    const-string v2, "nocharge_phonenum_smslog"

    invoke-virtual {v1, v2}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lzq;->b:Ljava/util/List;

    :cond_1
    invoke-static {p1}, Lzq;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Loq;->a:Lop;

    invoke-static {v0}, Lop;->b(Lop;)Lov;

    move-result-object v0

    invoke-virtual {v0}, Lov;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
