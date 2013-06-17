.class public Lcom/antivirus/antitheft/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# static fields
.field private static c:Landroid/os/PowerManager$WakeLock;

.field private static final d:Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/antivirus/core/b;

.field private e:Lcom/antivirus/antitheft/s;

.field private f:Lcom/antivirus/antitheft/ab;

.field private g:Lcom/antivirus/antitheft/k;

.field private h:Lcom/avg/toolkit/UID/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/antivirus/antitheft/a;

    sput-object v0, Lcom/antivirus/antitheft/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/antivirus/core/b;Lcom/avg/toolkit/UID/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/antivirus/antitheft/s;

    invoke-direct {v0}, Lcom/antivirus/antitheft/s;-><init>()V

    iput-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/antivirus/antitheft/a;->b:Lcom/antivirus/core/b;

    iput-object p3, p0, Lcom/antivirus/antitheft/a;->h:Lcom/avg/toolkit/UID/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/antivirus/antitheft/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/antivirus/antitheft/a;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-class v3, Lcom/antivirus/antitheft/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/antivirus/antitheft/a;->c:Landroid/os/PowerManager$WakeLock;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/antivirus/antitheft/a;->c:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x57e40

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/a/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/a/c;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/a/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "804293759086"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/a/c;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/antitheft/s;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/antitheft/a;->c()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const-class v0, Lcom/antivirus/antitheft/e;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/c;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/d;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/i;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/j;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/g;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/antitheft/h;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/antitheft/s;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/antitheft/s;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/antivirus/antitheft/a;->c()V

    new-instance v0, Lcom/antivirus/antitheft/ab;

    invoke-direct {v0}, Lcom/antivirus/antitheft/ab;-><init>()V

    iput-object v0, p0, Lcom/antivirus/antitheft/a;->f:Lcom/antivirus/antitheft/ab;

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->f:Lcom/antivirus/antitheft/ab;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/antivirus/antitheft/a;->b:Lcom/antivirus/core/b;

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/antitheft/ab;->a(Landroid/content/Context;Lcom/antivirus/core/b;)V

    new-instance v0, Lcom/antivirus/antitheft/k;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->b:Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/antitheft/a;->h:Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, v1, v2}, Lcom/antivirus/antitheft/k;-><init>(Lcom/antivirus/core/b;Lcom/avg/toolkit/UID/a;)V

    iput-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x2328

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/antivirus/antitheft/a;->c(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/antivirus/antitheft/a;->a()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "__SAC"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "stopshout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/k;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/antivirus/antitheft/k;->b(Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/antivirus/antitheft/k;->a(Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    iget-object v1, p0, Lcom/antivirus/antitheft/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/antitheft/s;->b(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/antivirus/antitheft/a;->e:Lcom/antivirus/antitheft/s;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/antitheft/a;->f:Lcom/antivirus/antitheft/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->f:Lcom/antivirus/antitheft/ab;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/ab;->a()V

    iput-object v2, p0, Lcom/antivirus/antitheft/a;->f:Lcom/antivirus/antitheft/ab;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/k;->a()V

    iput-object v2, p0, Lcom/antivirus/antitheft/a;->g:Lcom/antivirus/antitheft/k;

    :cond_2
    return-void
.end method
