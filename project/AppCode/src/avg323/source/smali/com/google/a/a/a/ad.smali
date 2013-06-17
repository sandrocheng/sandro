.class Lcom/google/a/a/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:J

.field final synthetic c:Lcom/google/a/a/a/ac;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/ac;Ljava/util/Map;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iput-object p2, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/a/a/a/ad;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v2}, Lcom/google/a/a/a/ac;->a(Lcom/google/a/a/a/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v0}, Lcom/google/a/a/a/ac;->b(Lcom/google/a/a/a/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iget-object v1, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ac;->a(Lcom/google/a/a/a/ac;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v0}, Lcom/google/a/a/a/ac;->c(Lcom/google/a/a/a/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    const-string v1, "campaign"

    iget-object v2, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v2}, Lcom/google/a/a/a/ac;->c(Lcom/google/a/a/a/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/a/a/a/ac;->a(Lcom/google/a/a/a/ac;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iget-object v1, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ac;->b(Lcom/google/a/a/a/ac;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iget-object v1, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ac;->c(Lcom/google/a/a/a/ac;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iget-object v1, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ac;->d(Lcom/google/a/a/a/ac;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v0}, Lcom/google/a/a/a/ac;->d(Lcom/google/a/a/a/ac;)Lcom/google/a/a/a/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ao;->a(Lcom/google/a/a/a/ar;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v0}, Lcom/google/a/a/a/ac;->f(Lcom/google/a/a/a/ac;)Lcom/google/a/a/a/bc;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/a/a/a/ad;->b:J

    iget-object v4, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    iget-object v5, p0, Lcom/google/a/a/a/ad;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/google/a/a/a/ac;->e(Lcom/google/a/a/a/ac;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ac;

    invoke-static {v5}, Lcom/google/a/a/a/ac;->e(Lcom/google/a/a/a/ac;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/a/a/a/bc;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
