.class final Lorg/antivirus/core/a/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/core/a/v;

.field public b:Z

.field public c:I

.field public d:Lorg/antivirus/core/a/q;

.field final synthetic e:Lorg/antivirus/core/a/n;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/a/n;Lorg/antivirus/core/a/v;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/antivirus/core/a/o;->e:Lorg/antivirus/core/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    iput-boolean v0, p0, Lorg/antivirus/core/a/o;->b:Z

    iput v0, p0, Lorg/antivirus/core/a/o;->c:I

    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    iput-object v0, p0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    return-void
.end method
