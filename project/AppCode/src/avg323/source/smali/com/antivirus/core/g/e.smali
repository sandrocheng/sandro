.class public Lcom/antivirus/core/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# instance fields
.field a:Ljava/lang/Class;

.field b:Landroid/content/Context;

.field c:Landroid/os/Handler;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Lcom/antivirus/core/g/b;

.field private final m:I

.field private n:Lcom/antivirus/core/g/f;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/antivirus/core/g/a;

.field private r:Lcom/antivirus/core/c/b;

.field private s:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/lang/Class;Landroid/os/Handler;Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://lvb.avg.com/api.aspx"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->d:Ljava/lang/String;

    const-string v0, "Thl&2!uHi?mI"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->e:Ljava/lang/String;

    const-string v0, "b1559c0f42c744528a5a41609dbeda52"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->f:Ljava/lang/String;

    const-string v0, "335378936"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->g:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->h:Ljava/lang/String;

    const-string v0, "103"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->i:Ljava/lang/String;

    const-string v0, "81"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->j:Ljava/lang/String;

    const-string v0, "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103"

    iput-object v0, p0, Lcom/antivirus/core/g/e;->k:Ljava/lang/String;

    iput v1, p0, Lcom/antivirus/core/g/e;->m:I

    iput-object v2, p0, Lcom/antivirus/core/g/e;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/antivirus/core/g/e;->p:Ljava/lang/String;

    new-instance v0, Lcom/antivirus/core/g/a;

    invoke-direct {v0, v1}, Lcom/antivirus/core/g/a;-><init>(I)V

    iput-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    iput-object p4, p0, Lcom/antivirus/core/g/e;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/antivirus/core/g/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/antivirus/core/g/e;->s:Ljava/util/concurrent/Callable;

    new-instance v0, Lcom/antivirus/core/g/b;

    const-string v1, "http://lvb.avg.com/api.aspx"

    invoke-direct {v0, v1}, Lcom/antivirus/core/g/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "ver"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "pv"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "il"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "adv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "icv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "iv"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "p"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "idp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "lt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "pt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "st"

    const-string v2, "CloudClientTest"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "phdv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "lsurldv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "dv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "uid"

    const-string v2, "b1559c0f42c744528a5a41609dbeda52"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "l"

    const-string v2, "cs-CZ"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "tz"

    const-string v2, "+0100"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "os"

    const-string v2, "Google(R)+Android(R)+AVG+Mobilation+LinkScanner,+0.0.0001+Service+Pack+0+Build+00001"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "sp"

    const-string v2, "2+0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "p1"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "p2"

    const-string v2, "81"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "sid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "rt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "vs"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "m"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "mid"

    const-string v2, "b1559c0f42c744528a5a41609dbeda52"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "did"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "rc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "ts"

    const-string v2, "335378936"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v1, "cx"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/g/e;->a()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/g/e;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/g/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/g/e;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/antivirus/core/g/e;->p:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/core/g/e;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1c00

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "md5sum"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "Can\'t register url observer - context is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/core/c/b;

    iget-object v1, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/antivirus/core/g/e;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/antivirus/core/c/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    iget-object v1, v1, Lcom/antivirus/core/c/b;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    iget-object v1, v1, Lcom/antivirus/core/c/b;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/antivirus/core/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->v()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/core/g/e;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xbb8

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
    invoke-virtual {p0, p1}, Lcom/antivirus/core/g/e;->e(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/antivirus/core/g/e;->c(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/antivirus/core/g/e;->d(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/g/e;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/core/g/e;->c()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/antivirus/core/g/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/g/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/g/e;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    iput-object p1, p0, Lcom/antivirus/core/g/e;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_5

    const-string v4, "."

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/antivirus/core/g/e;->n:Lcom/antivirus/core/g/f;

    if-nez v3, :cond_6

    new-instance v3, Lcom/antivirus/core/g/f;

    invoke-direct {v3}, Lcom/antivirus/core/g/f;-><init>()V

    iput-object v3, p0, Lcom/antivirus/core/g/e;->n:Lcom/antivirus/core/g/f;

    :cond_6
    iget-object v3, p0, Lcom/antivirus/core/g/e;->n:Lcom/antivirus/core/g/f;

    iget-object v4, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/antivirus/core/g/e;->s:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4, v0, v5}, Lcom/antivirus/core/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v0, "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/antivirus/core/g/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    invoke-virtual {v0}, Lcom/antivirus/core/g/b;->c()V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v4, "url0"

    invoke-virtual {v0, v4, p1}, Lcom/antivirus/core/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    const-string v4, "v"

    invoke-virtual {v0, v4, v3}, Lcom/antivirus/core/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    sget-object v4, Lcom/antivirus/core/g/d;->b:Lcom/antivirus/core/g/d;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/g/b;->a(Lcom/antivirus/core/g/d;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    invoke-virtual {v0}, Lcom/antivirus/core/g/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/antivirus/core/g/e;->l:Lcom/antivirus/core/g/b;

    invoke-virtual {v4}, Lcom/antivirus/core/g/b;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "<action>1</action>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "<catID>1</catID>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/antivirus/core/g/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/antivirus/core/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/antivirus/core/g/e;->q:Lcom/antivirus/core/g/a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/antivirus/core/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/g/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    invoke-virtual {v0}, Lcom/antivirus/core/c/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/g/e;->r:Lcom/antivirus/core/c/b;

    :cond_0
    return-void
.end method

.method c(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/core/g/e;->b(Ljava/lang/String;)Z

    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/core/g/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "isUrlAntiPhishingEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/core/g/e;->b(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/core/g/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/g/e;->c:Landroid/os/Handler;

    return-void
.end method
