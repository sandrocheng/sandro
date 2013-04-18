.class public final enum Lorg/achartengine/a/d;
.super Ljava/lang/Enum;
.source "PointStyle.java"


# static fields
.field public static final enum a:Lorg/achartengine/a/d;

.field public static final enum b:Lorg/achartengine/a/d;

.field public static final enum c:Lorg/achartengine/a/d;

.field public static final enum d:Lorg/achartengine/a/d;

.field public static final enum e:Lorg/achartengine/a/d;

.field public static final enum f:Lorg/achartengine/a/d;

.field private static final synthetic h:[Lorg/achartengine/a/d;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "X"

    const-string v2, "x"

    invoke-direct {v0, v1, v4, v2}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->a:Lorg/achartengine/a/d;

    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "CIRCLE"

    const-string v2, "circle"

    invoke-direct {v0, v1, v5, v2}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->b:Lorg/achartengine/a/d;

    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "TRIANGLE"

    const-string v2, "triangle"

    invoke-direct {v0, v1, v6, v2}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->c:Lorg/achartengine/a/d;

    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "SQUARE"

    const-string v2, "square"

    invoke-direct {v0, v1, v7, v2}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->d:Lorg/achartengine/a/d;

    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "DIAMOND"

    const-string v2, "diamond"

    invoke-direct {v0, v1, v8, v2}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->e:Lorg/achartengine/a/d;

    new-instance v0, Lorg/achartengine/a/d;

    const-string v1, "POINT"

    const/4 v2, 0x5

    const-string v3, "point"

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/a/d;->f:Lorg/achartengine/a/d;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/achartengine/a/d;

    sget-object v1, Lorg/achartengine/a/d;->a:Lorg/achartengine/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lorg/achartengine/a/d;->b:Lorg/achartengine/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lorg/achartengine/a/d;->c:Lorg/achartengine/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lorg/achartengine/a/d;->d:Lorg/achartengine/a/d;

    aput-object v1, v0, v7

    sget-object v1, Lorg/achartengine/a/d;->e:Lorg/achartengine/a/d;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/achartengine/a/d;->f:Lorg/achartengine/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lorg/achartengine/a/d;->h:[Lorg/achartengine/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lorg/achartengine/a/d;->g:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/achartengine/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/achartengine/a/d;
    .locals 6
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lorg/achartengine/a/d;->values()[Lorg/achartengine/a/d;

    move-result-object v1

    .line 65
    array-length v2, v1

    .line 66
    const/4 v3, 0x0

    move v5, v3

    move-object v3, v0

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 67
    aget-object v4, v1, v0

    iget-object v4, v4, Lorg/achartengine/a/d;->g:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    aget-object v3, v1, v0

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-object v3
.end method

.method private static b(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 80
    const/4 v0, -0x1

    .line 81
    invoke-static {}, Lorg/achartengine/a/d;->values()[Lorg/achartengine/a/d;

    move-result-object v1

    .line 82
    array-length v2, v1

    move v3, v0

    move v0, v5

    .line 83
    :goto_0
    if-ge v0, v2, :cond_1

    if-gez v3, :cond_1

    .line 84
    aget-object v4, v1, v0

    iget-object v4, v4, Lorg/achartengine/a/d;->g:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/achartengine/a/d;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lorg/achartengine/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/achartengine/a/d;

    return-object p0
.end method

.method public static values()[Lorg/achartengine/a/d;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/achartengine/a/d;->h:[Lorg/achartengine/a/d;

    invoke-virtual {v0}, [Lorg/achartengine/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/a/d;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/achartengine/a/d;->g:Ljava/lang/String;

    return-object v0
.end method
