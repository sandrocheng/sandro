.class final Lorg/antivirus/core/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf8000

    iput v0, p0, Lorg/antivirus/core/b/a/j;->a:I

    const/16 v0, 0xf

    iput v0, p0, Lorg/antivirus/core/b/a/j;->b:I

    iput-wide p1, p0, Lorg/antivirus/core/b/a/j;->c:J

    return-void
.end method
