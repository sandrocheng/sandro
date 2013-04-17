.class public final Ll;
.super Ln;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ln;-><init>()V

    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ll;->a:Ljava/lang/Integer;

    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ll;->b:Ljava/lang/Integer;

    return-void
.end method
