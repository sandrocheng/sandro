.class public final Lorg/antivirus/ui/performance/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/antivirus/ui/performance/b;->a:I

    iput-boolean v0, p0, Lorg/antivirus/ui/performance/b;->b:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/performance/b;->c:Z

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/antivirus/ui/performance/b;->a:I

    iput-boolean p3, p0, Lorg/antivirus/ui/performance/b;->b:Z

    iput-boolean p2, p0, Lorg/antivirus/ui/performance/b;->c:Z

    return-void
.end method
