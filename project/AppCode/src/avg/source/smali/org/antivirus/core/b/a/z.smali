.class public final Lorg/antivirus/core/b/a/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/antivirus/core/b/a/x;

.field public c:Lorg/antivirus/core/b/a/w;

.field public d:Lorg/antivirus/core/b/a/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/antivirus/core/b/a/z;->a:Ljava/lang/String;

    new-instance v0, Lorg/antivirus/core/b/a/x;

    invoke-direct {v0}, Lorg/antivirus/core/b/a/x;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    return-void
.end method
