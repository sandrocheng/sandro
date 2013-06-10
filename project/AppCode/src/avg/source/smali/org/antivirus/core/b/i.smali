.class public final Lorg/antivirus/core/b/i;
.super Ljava/lang/Exception;


# instance fields
.field public a:Z

.field b:Ljava/lang/Exception;

.field final synthetic c:Lorg/antivirus/core/b/h;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/b/h;Ljava/lang/Exception;Z)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/b/i;->c:Lorg/antivirus/core/b/h;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/b/i;->b:Ljava/lang/Exception;

    iput-object p2, p0, Lorg/antivirus/core/b/i;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lorg/antivirus/core/b/i;->a:Z

    return-void
.end method

.method public constructor <init>(Lorg/antivirus/core/b/h;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/b/i;->c:Lorg/antivirus/core/b/h;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/b/i;->b:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/core/b/i;->a:Z

    return-void
.end method
