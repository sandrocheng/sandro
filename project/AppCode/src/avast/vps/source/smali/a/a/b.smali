.class public abstract La/a/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(La/a/d;)La/a/b;
.end method

.method public final a(Ljava/io/InputStream;)La/a/b;
    .locals 2

    invoke-static {p1}, La/a/d;->a(Ljava/io/InputStream;)La/a/d;

    move-result-object v0

    invoke-static {}, La/a/g;->a()La/a/g;

    invoke-virtual {p0, v0}, La/a/b;->a(La/a/d;)La/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/a/d;->a(I)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/a/b;->e()La/a/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()La/a/b;
.end method
