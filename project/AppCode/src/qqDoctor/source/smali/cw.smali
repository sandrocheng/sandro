.class public Lcw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcw;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcw;->a:Lcw;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcw;->d:Z

    iput-boolean v0, p0, Lcw;->d:Z

    iput-object v1, p0, Lcw;->c:Ljava/lang/String;

    iput-object v1, p0, Lcw;->b:Ljava/lang/String;

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v1, Lca$a;->y:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcw;->c:Ljava/lang/String;

    sget-object v1, Lca$a;->z:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde;->d(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lde;->b:Landroid/content/Context;

    invoke-static {v1}, Lde;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "h^J9o`"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, La;->a([B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcw;->b:Ljava/lang/String;

    iget-object v0, p0, Lcw;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcw;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw;->d:Z

    :cond_0
    return-void
.end method

.method public static d()Lcw;
    .locals 2

    sget-object v0, Lcw;->a:Lcw;

    if-nez v0, :cond_1

    const-class v1, Lcw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcw;->a:Lcw;

    if-nez v0, :cond_0

    new-instance v0, Lcw;

    invoke-direct {v0}, Lcw;-><init>()V

    sput-object v0, Lcw;->a:Lcw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcw;->a:Lcw;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcw;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcw;->d:Z

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v1, Lca$a;->y:Lca$a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lca;->a(Lca$a;Ljava/lang/String;)V

    sget-object v1, Lca$a;->z:Lca$a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lca;->a(Lca$a;Ljava/lang/String;)V

    const-string v0, "LoginInformation"

    const-string v1, "clearLoginInformation"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcw;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcw;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcw;->d:Z

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw;->d:Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget-boolean v0, p0, Lcw;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcw;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcw;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcw;->c:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcw;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcw;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcw;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcw;->b:Ljava/lang/String;

    sget-object v2, Lde;->b:Landroid/content/Context;

    invoke-static {v2}, Lde;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "h^J9o`"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, La;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Lde;->a([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v2, Lca$a;->y:Lca$a;

    iget-object v3, p0, Lcw;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lca;->a(Lca$a;Ljava/lang/String;)V

    sget-object v2, Lca$a;->z:Lca$a;

    invoke-interface {v0, v2, v1}, Lca;->a(Lca$a;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
