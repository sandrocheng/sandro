.class public final Lorg/antivirus/core/a/ac;
.super Ljava/lang/Exception;


# instance fields
.field public a:Z

.field b:Ljava/lang/Exception;

.field final synthetic c:Lorg/antivirus/core/a/ab;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/a/ac;->c:Lorg/antivirus/core/a/ab;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/a/ac;->b:Ljava/lang/Exception;

    iput-object p2, p0, Lorg/antivirus/core/a/ac;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lorg/antivirus/core/a/ac;->a:Z

    return-void
.end method

.method public constructor <init>(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/a/ac;->c:Lorg/antivirus/core/a/ab;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/a/ac;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lorg/antivirus/core/a/ac;->a:Z

    return-void
.end method
