.class public final Lcom/b/a/go;
.super Ljava/lang/Object;
.source "WireFormat.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field static final g:I = 0x3

.field static final h:I = 0x7

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:I = 0x3

.field static final l:I

.field static final m:I

.field static final n:I

.field static final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0xb

    sput v0, Lcom/b/a/go;->l:I

    .line 157
    const/16 v0, 0xc

    sput v0, Lcom/b/a/go;->m:I

    .line 159
    const/16 v0, 0x10

    sput v0, Lcom/b/a/go;->n:I

    .line 161
    const/16 v0, 0x1a

    sput v0, Lcom/b/a/go;->o:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
