.class public abstract La/a/i;
.super La/a/b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/a/i;->d()La/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d()La/a/i;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic e()La/a/b;
    .locals 1

    invoke-virtual {p0}, La/a/i;->d()La/a/i;

    move-result-object v0

    return-object v0
.end method
