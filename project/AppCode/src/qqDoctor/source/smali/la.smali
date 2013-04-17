.class public final Lla;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lla;->a:I

    iput v1, p0, Lla;->e:I

    const-string v0, ""

    iput-object v0, p0, Lla;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lla;->g:Ljava/lang/String;

    iput v1, p0, Lla;->h:I

    iput v1, p0, Lla;->i:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lla;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lla;->a:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lla;->j:J

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lla;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lla;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lla;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lla;->e:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lla;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lla;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lla;->h:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lla;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lla;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lla;->i:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lla;->g:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lla;->e:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lla;->k:I

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lla;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lla;->l:I

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lla;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lla;->h:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lla;->i:I

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lla;->j:J

    return-wide v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lla;->k:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lla;->l:I

    return v0
.end method
