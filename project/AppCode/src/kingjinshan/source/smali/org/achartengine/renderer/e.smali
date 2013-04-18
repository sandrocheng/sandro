.class public final Lorg/achartengine/renderer/e;
.super Lorg/achartengine/renderer/c;
.source "XYSeriesRenderer.java"


# static fields
.field private static final a:J = 0x71b36a2c22a07b83L


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lorg/achartengine/a/d;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Lorg/achartengine/renderer/c;-><init>()V

    .line 31
    iput-boolean v2, p0, Lorg/achartengine/renderer/e;->b:Z

    .line 33
    iput-boolean v2, p0, Lorg/achartengine/renderer/e;->c:Z

    .line 35
    const/16 v0, 0x7d

    const/16 v1, 0xc8

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/achartengine/renderer/e;->d:I

    .line 37
    sget-object v0, Lorg/achartengine/a/d;->f:Lorg/achartengine/a/d;

    iput-object v0, p0, Lorg/achartengine/renderer/e;->e:Lorg/achartengine/a/d;

    .line 39
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/achartengine/renderer/e;->f:F

    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lorg/achartengine/renderer/e;->d:I

    .line 97
    return-void
.end method

.method private a(Lorg/achartengine/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lorg/achartengine/renderer/e;->e:Lorg/achartengine/a/d;

    .line 116
    return-void
.end method

.method private b(F)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lorg/achartengine/renderer/e;->f:F

    .line 135
    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/achartengine/renderer/e;->c:Z

    .line 59
    return-void
.end method

.method private c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/achartengine/renderer/e;->b:Z

    .line 78
    return-void
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/achartengine/renderer/e;->c:Z

    return v0
.end method

.method private r()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/achartengine/renderer/e;->d:I

    return v0
.end method

.method private s()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/achartengine/renderer/e;->f:F

    return v0
.end method


# virtual methods
.method public final o()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/achartengine/renderer/e;->b:Z

    return v0
.end method

.method public final p()Lorg/achartengine/a/d;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/achartengine/renderer/e;->e:Lorg/achartengine/a/d;

    return-object v0
.end method
