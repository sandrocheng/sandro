.class public Lorg/achartengine/renderer/c;
.super Ljava/lang/Object;
.source "SimpleSeriesRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x4559b4afa5a982ddL


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:F

.field private f:Landroid/graphics/Paint$Align;

.field private g:F

.field private h:Lorg/achartengine/renderer/a;

.field private i:Z

.field private j:D

.field private k:I

.field private l:D

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, -0xffff01

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lorg/achartengine/renderer/c;->b:I

    .line 34
    iput v0, p0, Lorg/achartengine/renderer/c;->c:I

    .line 39
    const/high16 v0, 0x4120

    iput v0, p0, Lorg/achartengine/renderer/c;->e:F

    .line 41
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/c;->f:Landroid/graphics/Paint$Align;

    .line 43
    const/high16 v0, 0x40a0

    iput v0, p0, Lorg/achartengine/renderer/c;->g:F

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/renderer/c;->i:Z

    return-void
.end method

.method private a(DI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-wide p1, p0, Lorg/achartengine/renderer/c;->j:D

    .line 214
    iput p3, p0, Lorg/achartengine/renderer/c;->k:I

    .line 215
    return-void
.end method

.method private a(Lorg/achartengine/renderer/a;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lorg/achartengine/renderer/c;->h:Lorg/achartengine/renderer/a;

    .line 173
    return-void
.end method

.method private b(DI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-wide p1, p0, Lorg/achartengine/renderer/c;->l:D

    .line 240
    iput p3, p0, Lorg/achartengine/renderer/c;->m:I

    .line 241
    return-void
.end method

.method private b(F)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput p1, p0, Lorg/achartengine/renderer/c;->g:F

    .line 155
    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/achartengine/renderer/c;->i:Z

    .line 189
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/achartengine/renderer/c;->b:I

    return v0
.end method

.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lorg/achartengine/renderer/c;->e:F

    .line 118
    return-void
.end method

.method public final a(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lorg/achartengine/renderer/c;->f:Landroid/graphics/Paint$Align;

    .line 137
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/achartengine/renderer/c;->d:Z

    .line 99
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 72
    const v0, -0xa069df

    iput v0, p0, Lorg/achartengine/renderer/c;->b:I

    .line 73
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/achartengine/renderer/c;->c:I

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lorg/achartengine/renderer/c;->c:I

    .line 81
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/achartengine/renderer/c;->d:Z

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/achartengine/renderer/c;->e:F

    return v0
.end method

.method public final g()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/achartengine/renderer/c;->f:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/achartengine/renderer/c;->g:F

    return v0
.end method

.method public final i()Lorg/achartengine/renderer/a;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/achartengine/renderer/c;->h:Lorg/achartengine/renderer/a;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lorg/achartengine/renderer/c;->i:Z

    return v0
.end method

.method public final k()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/achartengine/renderer/c;->j:D

    return-wide v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/achartengine/renderer/c;->k:I

    return v0
.end method

.method public final m()D
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/achartengine/renderer/c;->l:D

    return-wide v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/achartengine/renderer/c;->m:I

    return v0
.end method
