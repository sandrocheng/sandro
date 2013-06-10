.class final Lorg/antivirus/core/AVResources$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/ClassLoader;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/AVResources$1;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/antivirus/core/AVResources$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/antivirus/core/AVResources$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/AVResources$1;->a:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lorg/antivirus/core/AVResources$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    iget-object v1, p0, Lorg/antivirus/core/AVResources$1;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/antivirus/core/AVResources$1;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
