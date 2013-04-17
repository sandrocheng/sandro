.class final Lwt;
.super Ljava/lang/Object;

# interfaces
.implements Llt;


# instance fields
.field private synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    iput-object p1, p0, Lwt;->a:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "kfc"

    const-string v3, "check"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    const-string v3, "+86"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p0, Lwt;->a:Lwr;

    invoke-static {v2}, Lwr;->b(Lwr;)Ljd;

    move-result-object v2

    invoke-virtual {v2}, Ljd;->A()I

    move-result v2

    invoke-static {}, Lwr;->n()Z

    iget-object v3, p0, Lwt;->a:Lwr;

    invoke-static {v3}, Lwr;->c(Lwr;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lwt;->a:Lwr;

    invoke-static {v5}, Lwr;->d(Lwr;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_2

    iget-object v1, p0, Lwt;->a:Lwr;

    invoke-static {v1}, Lwr;->e(Lwr;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p0, Lwt;->a:Lwr;

    invoke-static {v2}, Lwr;->e(Lwr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send by user: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lwt;->a:Lwr;

    invoke-static {v3}, Lwr;->e(Lwr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lwt;->a:Lwr;

    invoke-static {v3}, Lwr;->f(Lwr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lwt;->a:Lwr;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v1, v2}, Lwr;->a(Lwr;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lwt;->a:Lwr;

    invoke-static {v1}, Lwr;->g(Lwr;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lwt;->a:Lwr;

    invoke-static {v2, p1}, Lwr;->a(Lwr;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "kfc"

    const-string v2, "sms was blocked by AresEngine"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwt;->a:Lwr;

    invoke-static {v0}, Lwr;->h(Lwr;)I

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lwt;->a:Lwr;

    invoke-static {v0}, Lwr;->i(Lwr;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lwt;->a:Lwr;

    invoke-static {v0}, Lwr;->j(Lwr;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-lez v0, :cond_4

    iget-object v2, p0, Lwt;->a:Lwr;

    invoke-static {v2}, Lwr;->b(Lwr;)Ljd;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljd;->l(I)V

    :cond_4
    iget-object v0, p0, Lwt;->a:Lwr;

    invoke-static {v0, v7}, Lwr;->a(Lwr;I)I

    iget-object v0, p0, Lwt;->a:Lwr;

    invoke-static {v0}, Lwr;->k(Lwr;)Lwr$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lwr$b;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-object v3, p0, Lwt;->a:Lwr;

    invoke-static {v3}, Lwr;->l(Lwr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lwt;->a:Lwr;

    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2, v3}, Lwr;->b(Lwr;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lwt;->a:Lwr;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v2, v0}, Lwr;->c(Lwr;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lwt;->a:Lwr;

    iget-object v2, p0, Lwt;->a:Lwr;

    invoke-static {v2}, Lwr;->m(Lwr;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwt;->a:Lwr;

    invoke-static {v3}, Lwr;->l(Lwr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lwr;->a(Lwr;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "kfc"

    const-string v2, "repeated sms, AresEngine\'s bug xxxxxxx"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
