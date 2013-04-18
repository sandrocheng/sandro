.class public final enum Lorg/achartengine/renderer/d;
.super Ljava/lang/Enum;
.source "XYMultipleSeriesRenderer.java"


# static fields
.field public static final enum a:Lorg/achartengine/renderer/d;

.field public static final enum b:Lorg/achartengine/renderer/d;

.field private static final synthetic d:[Lorg/achartengine/renderer/d;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lorg/achartengine/renderer/d;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3, v3}, Lorg/achartengine/renderer/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    new-instance v0, Lorg/achartengine/renderer/d;

    const-string v1, "VERTICAL"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lorg/achartengine/renderer/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/achartengine/renderer/d;

    sget-object v1, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    aput-object v1, v0, v3

    sget-object v1, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    aput-object v1, v0, v4

    sput-object v0, Lorg/achartengine/renderer/d;->d:[Lorg/achartengine/renderer/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/achartengine/renderer/d;->c:I

    .line 103
    iput p3, p0, Lorg/achartengine/renderer/d;->c:I

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/achartengine/renderer/d;
    .locals 1
    .parameter

    .prologue
    .line 97
    const-class v0, Lorg/achartengine/renderer/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/achartengine/renderer/d;

    return-object p0
.end method

.method public static values()[Lorg/achartengine/renderer/d;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/achartengine/renderer/d;->d:[Lorg/achartengine/renderer/d;

    invoke-virtual {v0}, [Lorg/achartengine/renderer/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/renderer/d;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/achartengine/renderer/d;->c:I

    return v0
.end method
