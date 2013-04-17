.class final Lcom/tencent/qqpimsecure/service/TMSLiteService$a;
.super Lbzq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/TMSLiteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/TMSLiteService;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-direct {p0}, Lbzq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    invoke-virtual {v0}, Lhh;->d()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lbzo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    :try_start_0
    new-instance v0, Ljp;

    const-string v4, "smslog"

    const-string v5, "mms_pdu"

    const-string v6, "mms_parts"

    invoke-direct {v0, v4, v5, v6}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljp;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    new-instance v5, Lbzo;

    invoke-direct {v5}, Lbzo;-><init>()V

    const-string v6, "ContactName"

    iget-object v7, v0, Lmk;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ContactNumber"

    iget-object v7, v0, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Date"

    iget-wide v7, v0, Lmk;->date:J

    invoke-virtual {v5, v6, v7, v8}, Lbzo;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "Id"

    iget v7, v0, Lmk;->id:I

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "SmsContent"

    iget-object v7, v0, Lmk;->body:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "SmsIsRead"

    iget v0, v0, Lmk;->a:I

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v5, v6, v0}, Lbzo;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_1

    :try_start_1
    new-instance v0, Lhi;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lhi;-><init>(I)V

    invoke-virtual {v0}, Lhi;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    new-instance v5, Lbzo;

    invoke-direct {v5}, Lbzo;-><init>()V

    const-string v6, "ContactName"

    iget-object v7, v0, Lky;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ContactNumber"

    iget-object v7, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Date"

    iget-wide v7, v0, Lky;->date:J

    invoke-virtual {v5, v6, v7, v8}, Lbzo;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "Id"

    iget v7, v0, Lky;->id:I

    invoke-virtual {v5, v6, v7}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "CallIsOnceRing"

    iget v0, v0, Lky;->type:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v5, v6, v0}, Lbzo;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4
.end method

.method public final a(IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljp;->a(I)Lmk;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    iget-object v1, v1, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp;->c(Ljava/util/List;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljp;->b(Lmk;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    invoke-virtual {v0, p2}, Lhi;->a(I)Lky;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_4

    iget-object v1, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhi;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi;->a(Ljava/util/List;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lhi;->c(Lky;)Z

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v2

    sget-object v3, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-eq v2, v3, :cond_0

    new-instance v2, Lzs;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    invoke-direct {v2}, Lzs;-><init>()V

    if-nez p1, :cond_3

    new-instance v0, Ljp;

    const-string v3, "smslog"

    const-string v4, "mms_pdu"

    const-string v5, "mms_parts"

    invoke-direct {v0, v3, v4, v5}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljp;->a(I)Lmk;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lzv;

    invoke-direct {v3, v2, v1, v0, v6}, Lzv;-><init>(Lzs;ZLmk;Ldv;)V

    invoke-virtual {v3}, Lzv;->start()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_2

    new-instance v3, Lhi;

    invoke-direct {v3, v0}, Lhi;-><init>(I)V

    invoke-virtual {v3, p2}, Lhi;->a(I)Lky;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Laaa;

    invoke-direct {v3, v2, v1, v0, v6}, Laaa;-><init>(Lzs;ZLcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ldv;)V

    invoke-virtual {v3}, Laaa;->start()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lhq;

    invoke-direct {v2, v0}, Lhq;-><init>(I)V

    new-instance v3, Lhq;

    invoke-direct {v3, v1}, Lhq;-><init>(I)V

    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Lhq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Llf;

    invoke-direct {v4, p1, p2, v0}, Llf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lhq;->a(Llf;)J

    invoke-static {}, Lf;->c()Lhp;

    move-result-object v2

    new-instance v4, Lhq;

    invoke-direct {v4, v0}, Lhq;-><init>(I)V

    invoke-static {v4}, Lhp;->a(Lhq;)Lhr;

    move-result-object v0

    iput-object v0, v2, Lhp;->c:Lhr;

    invoke-virtual {v3, p2}, Lhq;->a(Ljava/lang/String;)Llf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lhq;->c(Llf;)Z

    invoke-static {}, Lf;->c()Lhp;

    move-result-object v0

    new-instance v2, Lhq;

    invoke-direct {v2, v1}, Lhq;-><init>(I)V

    invoke-static {v2}, Lhp;->a(Lhq;)Lhr;

    move-result-object v2

    iput-object v2, v0, Lhp;->b:Lhr;

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lhq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Llf;

    invoke-direct {v4, p1, p2, v1}, Llf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lhq;->a(Llf;)J

    invoke-static {}, Lf;->c()Lhp;

    move-result-object v3

    new-instance v4, Lhq;

    invoke-direct {v4, v1}, Lhq;-><init>(I)V

    invoke-static {v4}, Lhp;->a(Lhq;)Lhr;

    move-result-object v4

    iput-object v4, v3, Lhp;->b:Lhr;

    invoke-virtual {v2, p2}, Lhq;->a(Ljava/lang/String;)Llf;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lhq;->c(Llf;)Z

    invoke-static {}, Lf;->c()Lhp;

    move-result-object v2

    new-instance v3, Lhq;

    invoke-direct {v3, v0}, Lhq;-><init>(I)V

    invoke-static {v3}, Lhp;->a(Lhq;)Lhr;

    move-result-object v0

    iput-object v0, v2, Lhp;->c:Lhr;

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljp;->b(I)V

    return-void
.end method

.method public final b(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    if-eqz p2, :cond_2

    if-ne p2, v2, :cond_2

    new-instance v0, Lhq;

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    :cond_2
    invoke-virtual {v0, p1}, Lhq;->a(I)Llf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lhq;->c(Llf;)Z

    goto :goto_0
.end method

.method public final b(IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljp;->a(I)Lmk;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    iget-object v1, v1, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljp;->a(Lmk;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    invoke-virtual {v0, p2}, Lhi;->a(I)Lky;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_4

    iget-object v1, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhi;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lhi;->b(Lky;)Z

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    invoke-virtual {v0}, Lhh;->e()I

    move-result v0

    goto :goto_0
.end method

.method public final c(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lbzo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lhq;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    if-ne p1, v3, :cond_1

    new-instance v0, Lhq;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    new-instance v3, Lbzo;

    invoke-direct {v3}, Lbzo;-><init>()V

    const-string v4, "ContactName"

    iget-object v5, v0, Llf;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ContactNumber"

    iget-object v5, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "Id"

    iget v0, v0, Llf;->id:I

    invoke-virtual {v3, v4, v0}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final c(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhh;->b(I)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, p2}, Lhh;->a(I)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhh;->c(I)V

    goto :goto_0
.end method
