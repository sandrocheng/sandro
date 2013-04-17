.class final Lakr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lmf;

.field private synthetic b:Lakp;


# direct methods
.method constructor <init>(Lakp;Lmf;)V
    .locals 0

    iput-object p1, p0, Lakr;->b:Lakp;

    iput-object p2, p0, Lakr;->a:Lmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lakr;->a:Lmf;

    iget-object v0, v0, Lmf;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lakr;->b:Lakp;

    iget-boolean v1, v1, Lakp;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lsv;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lakr;->b:Lakp;

    invoke-static {v1}, Lakp;->b(Lakp;)Lji;

    move-result-object v1

    iget-object v1, v1, Lji;->a:Lhs;

    const-string v2, "tb_privacy_lock"

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66ef

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :goto_0
    iget-object v0, p0, Lakr;->b:Lakp;

    iget-object v0, p0, Lakr;->a:Lmf;

    invoke-static {v0}, Lakp;->a(Lmf;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lsv;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lsv;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lakr;->b:Lakp;

    invoke-static {v0}, Lakp;->b(Lakp;)Lji;

    move-result-object v0

    iget-object v1, p0, Lakr;->a:Lmf;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "pkg_name"

    iget-object v4, v1, Lmf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "app_name"

    iget-object v4, v1, Lmf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reserverd_1"

    iget-object v4, v1, Lmf;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reserverd_2"

    iget-object v4, v1, Lmf;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reserverd_3"

    iget-object v1, v1, Lmf;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lji;->a:Lhs;

    const-string v3, "tb_privacy_lock"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Lji;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    :cond_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66ee

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lakr;->b:Lakp;

    invoke-static {v0}, Lakp;->c(Lakp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsv;->a(Landroid/content/Context;)Lsv;

    move-result-object v0

    invoke-virtual {v0}, Lsv;->b()V

    goto :goto_0
.end method
