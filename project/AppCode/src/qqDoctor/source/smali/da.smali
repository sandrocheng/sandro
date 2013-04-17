.class public final Lda;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lda;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lda;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lda;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lda;->d:Z

    return-void
.end method

.method public static a()LQQPIM/ReqHeader;
    .locals 3

    new-instance v1, LQQPIM/ReqHeader;

    invoke-direct {v1}, LQQPIM/ReqHeader;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setPlatformid(B)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    invoke-interface {v0}, Lca;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setLc(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->h:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->i:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->j:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setVersion(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setMobileno(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)LQQPIM/ReqHeader;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, LQQPIM/ReqHeader;

    invoke-direct {v1}, LQQPIM/ReqHeader;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setPlatformid(B)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    invoke-interface {v0}, Lca;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setLc(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->h:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->i:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->j:Lca$a;

    invoke-interface {v0, v2}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setVersion(Ljava/lang/String;)V

    const-string v0, ","

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setMobileno(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lda;->d:Z

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lda;->d:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lda;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lda;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lda;->a:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lda;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lda;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lda;->b:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lda;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lda;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lda;->c:Ljava/lang/String;

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lda;->d:Z

    return v0
.end method
