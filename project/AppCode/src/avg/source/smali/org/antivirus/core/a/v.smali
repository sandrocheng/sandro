.class public abstract Lorg/antivirus/core/a/v;
.super Ljava/lang/Object;


# instance fields
.field public f:[Ljava/lang/Object;

.field public g:Ljava/util/HashMap;

.field protected h:Lorg/antivirus/core/b/a;

.field protected i:Lorg/antivirus/core/EngineSettings;

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/a/v;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/antivirus/core/a/v;->g:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/antivirus/core/a/v;->h:Lorg/antivirus/core/b/a;

    iput-object v0, p0, Lorg/antivirus/core/a/v;->i:Lorg/antivirus/core/EngineSettings;

    iput-object v0, p0, Lorg/antivirus/core/a/v;->j:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Lorg/antivirus/core/EngineSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/a/v;->i:Lorg/antivirus/core/EngineSettings;

    return-void
.end method

.method public final a(Lorg/antivirus/core/b/a;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/a/v;->h:Lorg/antivirus/core/b/a;

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Message;)Z
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/Object;)Z
.end method

.method public abstract b()Lorg/antivirus/core/a/q;
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/a/v;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/antivirus/core/a/v;->g:Ljava/util/HashMap;

    return-void
.end method
