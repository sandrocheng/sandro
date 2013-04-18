.class public final Lorg/achartengine/renderer/a;
.super Ljava/lang/Object;
.source "BasicStroke.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/achartengine/renderer/a; = null

.field public static final b:Lorg/achartengine/renderer/a; = null

.field public static final c:Lorg/achartengine/renderer/a; = null

.field private static final d:J = -0x64c458a0f8c2123aL


# instance fields
.field private e:Landroid/graphics/Paint$Cap;

.field private f:Landroid/graphics/Paint$Join;

.field private g:F

.field private h:[F

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 32
    new-instance v0, Lorg/achartengine/renderer/a;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x4080

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/achartengine/renderer/a;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[F)V

    sput-object v0, Lorg/achartengine/renderer/a;->a:Lorg/achartengine/renderer/a;

    .line 34
    new-instance v0, Lorg/achartengine/renderer/a;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x4120

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/achartengine/renderer/a;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[F)V

    sput-object v0, Lorg/achartengine/renderer/a;->b:Lorg/achartengine/renderer/a;

    .line 37
    new-instance v0, Lorg/achartengine/renderer/a;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x40a0

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/achartengine/renderer/a;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[F)V

    sput-object v0, Lorg/achartengine/renderer/a;->c:Lorg/achartengine/renderer/a;

    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method private constructor <init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/achartengine/renderer/a;->e:Landroid/graphics/Paint$Cap;

    .line 61
    iput-object p2, p0, Lorg/achartengine/renderer/a;->f:Landroid/graphics/Paint$Join;

    .line 62
    iput p3, p0, Lorg/achartengine/renderer/a;->g:F

    .line 63
    iput-object p4, p0, Lorg/achartengine/renderer/a;->h:[F

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/achartengine/renderer/a;->e:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public final b()Landroid/graphics/Paint$Join;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/achartengine/renderer/a;->f:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/achartengine/renderer/a;->g:F

    return v0
.end method

.method public final d()[F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/achartengine/renderer/a;->h:[F

    return-object v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/achartengine/renderer/a;->i:F

    return v0
.end method
