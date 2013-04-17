.class final Ljq;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljp;


# direct methods
.method constructor <init>(Ljp;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ljq;->b:Ljp;

    iput-object p2, p0, Ljq;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Ljq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-virtual {v0}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v3, p0, Ljq;->b:Ljp;

    invoke-static {v3}, Ljp;->a(Ljp;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lmk;->setBody(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgu;->a(Lmk;Z)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v3, p0, Ljq;->b:Ljp;

    invoke-static {v3}, Ljp;->c(Ljp;)Lhs;

    move-result-object v3

    iget-object v4, p0, Ljq;->b:Ljp;

    invoke-static {v4}, Ljp;->b(Ljp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v1}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-ltz v1, :cond_0

    iget v1, v0, Lmk;->protocolType:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    long-to-int v1, v3

    iget-object v3, p0, Ljq;->b:Ljp;

    invoke-static {v3, v0, v1}, Ljp;->a(Ljp;Lmk;I)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-gez v0, :cond_0

    iget-object v0, p0, Ljq;->b:Ljp;

    invoke-static {v0}, Ljp;->c(Ljp;)Lhs;

    move-result-object v0

    iget-object v3, p0, Ljq;->b:Ljp;

    invoke-static {v3}, Ljp;->b(Ljp;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method
