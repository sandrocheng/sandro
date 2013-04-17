.class public final Lhh;
.super Ljava/lang/Object;


# static fields
.field private static a:Lhh;


# instance fields
.field private b:Lho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lhh;->a:Lhh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lhh;->b:Lho;

    invoke-static {}, Ljo;->a()Ljo;

    return-void
.end method

.method public static a()Lhh;
    .locals 1

    sget-object v0, Lhh;->a:Lhh;

    if-nez v0, :cond_0

    new-instance v0, Lhh;

    invoke-direct {v0}, Lhh;-><init>()V

    sput-object v0, Lhh;->a:Lhh;

    :cond_0
    sget-object v0, Lhh;->a:Lhh;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->i(I)V

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->a(Z)V

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->a(Z)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->R()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->a(I)V

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->b(I)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->z()Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->b()I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->q(I)V

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->c()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->r()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->f()Z

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lhh;->b:Lho;

    invoke-virtual {v0}, Lho;->av()I

    move-result v0

    return v0
.end method
