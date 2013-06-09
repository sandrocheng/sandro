.class public final Lorg/antivirus/core/d/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Lorg/antivirus/core/d/b;

.field public j:Lorg/antivirus/core/d/a;

.field private final k:I

.field private l:Lorg/antivirus/core/d/f;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lorg/antivirus/core/observers/SiteContentObserver;

.field private p:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://lvb.avg.com/api.aspx"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->a:Ljava/lang/String;

    const-string v0, "Thl&2!uHi?mI"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->b:Ljava/lang/String;

    const-string v0, "b1559c0f42c744528a5a41609dbeda52"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->c:Ljava/lang/String;

    const-string v0, "335378936"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->d:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->e:Ljava/lang/String;

    const-string v0, "103"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->f:Ljava/lang/String;

    const-string v0, "81"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->g:Ljava/lang/String;

    const-string v0, "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103"

    iput-object v0, p0, Lorg/antivirus/core/d/e;->h:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lorg/antivirus/core/d/e;->k:I

    iput-object v1, p0, Lorg/antivirus/core/d/e;->m:Ljava/lang/String;

    iput-object v1, p0, Lorg/antivirus/core/d/e;->n:Ljava/lang/String;

    new-instance v0, Lorg/antivirus/core/d/a;

    invoke-direct {v0}, Lorg/antivirus/core/d/a;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    iput-object p1, p0, Lorg/antivirus/core/d/e;->p:Ljava/util/concurrent/Callable;

    new-instance v0, Lorg/antivirus/core/d/b;

    const-string v1, "http://lvb.avg.com/api.aspx"

    invoke-direct {v0, v1}, Lorg/antivirus/core/d/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "ver"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "pv"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "il"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "adv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "icv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "iv"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "p"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "idp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "lt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "pt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "st"

    const-string v2, "CloudClientTest"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "phdv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "lsurldv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "dv"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "uid"

    const-string v2, "b1559c0f42c744528a5a41609dbeda52"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "l"

    const-string v2, "cs-CZ"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "tz"

    const-string v2, "+0100"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "os"

    const-string v2, "Google(R)+Android(R)+AVG+Mobilation+LinkScanner,+0.0.0001+Service+Pack+0+Build+00001"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "sp"

    const-string v2, "2+0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "p1"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "p2"

    const-string v2, "81"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "sid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "rt"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "vs"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "m"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "mid"

    const-string v2, "b1559c0f42c744528a5a41609dbeda52"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "did"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "rc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "ts"

    const-string v2, "335378936"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "cx"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
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

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/d/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/d/e;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lorg/antivirus/core/d/e;->n:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1c00

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "md5sum"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 12

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/antivirus/core/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p2, v2

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/d/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/d/e;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v2

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/antivirus/core/d/e;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p2, v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p2, v2

    goto :goto_0

    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1b

    const-string v3, "."

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_1b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/antivirus/core/d/e;->l:Lorg/antivirus/core/d/f;

    if-nez v0, :cond_4

    new-instance v0, Lorg/antivirus/core/d/f;

    invoke-direct {v0}, Lorg/antivirus/core/d/f;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/d/e;->l:Lorg/antivirus/core/d/f;

    :cond_4
    iget-object v0, p0, Lorg/antivirus/core/d/e;->l:Lorg/antivirus/core/d/f;

    if-eqz v0, :cond_c

    iget-object v6, p0, Lorg/antivirus/core/d/e;->l:Lorg/antivirus/core/d/f;

    iget-object v0, p0, Lorg/antivirus/core/d/e;->p:Ljava/util/concurrent/Callable;

    iget-object v3, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_5

    const-string v3, "white"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    :cond_5
    iget-object v3, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_1a

    iget-object v3, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_8

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const-string v7, "/shared_prefs"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "white.xml"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const/16 v3, 0x200

    :try_start_2
    new-array v7, v3, [B

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_2
    if-eq v3, v10, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :cond_7
    :goto_3
    const-string v0, "white"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    :cond_8
    iget-object v0, v6, Lorg/antivirus/core/d/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_c

    move-object p2, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_5
    :try_start_4
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v4, :cond_9

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_6
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_7
    if-eqz v2, :cond_a

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    :goto_8
    if-eqz v4, :cond_b

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_b
    :goto_9
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_c
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_d
    const-string v0, "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, v3, p3}, Lorg/antivirus/core/d/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_e
    :goto_a
    move-object p2, v2

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    iget-object v0, v0, Lorg/antivirus/core/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "url0"

    invoke-virtual {v0, v1, p2}, Lorg/antivirus/core/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    const-string v1, "v"

    invoke-virtual {v0, v1, v3}, Lorg/antivirus/core/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v4, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    sget-object v0, Lorg/antivirus/core/d/d;->b:Lorg/antivirus/core/d/d;

    sget-object v1, Lorg/antivirus/core/d/c;->a:[I

    invoke-virtual {v0}, Lorg/antivirus/core/d/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_b
    iget-object v0, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    iget-object v0, v0, Lorg/antivirus/core/d/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/core/d/e;->i:Lorg/antivirus/core/d/b;

    iget-boolean v1, v1, Lorg/antivirus/core/d/b;->e:Z

    if-eqz v1, :cond_19

    const-string v1, "<action>1</action>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "<catID>1</catID>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_10
    invoke-direct {p0, p1, v3, p3}, Lorg/antivirus/core/d/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/antivirus/core/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_a

    :pswitch_0
    :try_start_a
    const-string v0, ""

    iget-object v1, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_12
    iget-object v0, v4, Lorg/antivirus/core/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v4, Lorg/antivirus/core/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_14
    move-object v0, v1

    :cond_15
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/antivirus/core/d/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lorg/antivirus/core/d/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    iget-object v0, v4, Lorg/antivirus/core/d/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/antivirus/core/d/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_b

    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, v4, Lorg/antivirus/core/d/b;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lorg/antivirus/core/d/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_17
    iget-object v0, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    iget-object v5, v4, Lorg/antivirus/core/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v5, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    const-string v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, v4, Lorg/antivirus/core/d/b;->a:Ljava/util/ArrayList;

    iget-object v5, v4, Lorg/antivirus/core/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_18
    iget-object v0, v4, Lorg/antivirus/core/d/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/antivirus/core/d/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto/16 :goto_b

    :cond_19
    iget-object v0, p0, Lorg/antivirus/core/d/e;->j:Lorg/antivirus/core/d/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/antivirus/core/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_a

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_7

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v4

    move-object v4, v3

    goto/16 :goto_7

    :catch_6
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    move-object v3, v2

    goto/16 :goto_5

    :catch_7
    move-exception v3

    move-object v11, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v11

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move-object v3, v4

    move-object v4, v2

    goto/16 :goto_5

    :cond_1a
    move v0, v5

    goto/16 :goto_4

    :cond_1b
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    invoke-virtual {v0}, Lorg/antivirus/core/observers/SiteContentObserver;->discnnectContext()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/observers/SiteContentObserver;

    invoke-direct {v0, p1, p2}, Lorg/antivirus/core/observers/SiteContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    iget-object v1, v1, Lorg/antivirus/core/observers/SiteContentObserver;->HistUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    iget-object v1, v1, Lorg/antivirus/core/observers/SiteContentObserver;->UrlUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/antivirus/core/d/e;->o:Lorg/antivirus/core/observers/SiteContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
