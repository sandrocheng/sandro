.class public Lmp;
.super Ljava/lang/Object;


# instance fields
.field public g:I

.field public h:Ljava/lang/Object;

.field public i:Labu$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lmp;

    iget v0, p0, Lmp;->g:I

    iget v1, p1, Lmp;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
