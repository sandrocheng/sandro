.class public final Lcp;
.super Ljava/lang/Object;


# instance fields
.field public a:[Ljava/lang/StringBuilder;

.field public b:[B

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcp;->b:[B

    iput-boolean v2, p0, Lcp;->c:Z

    iget-object v0, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method
