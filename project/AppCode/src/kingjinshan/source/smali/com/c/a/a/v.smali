.class public final enum Lcom/c/a/a/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static enum a:Lcom/c/a/a/v;

.field private static enum b:Lcom/c/a/a/v;

.field private static final synthetic c:[Lcom/c/a/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/c/a/a/v;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/v;->a:Lcom/c/a/a/v;

    .line 14
    new-instance v0, Lcom/c/a/a/v;

    const-string v1, "highflow"

    invoke-direct {v0, v1, v3}, Lcom/c/a/a/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/v;->b:Lcom/c/a/a/v;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/c/a/a/v;

    sget-object v1, Lcom/c/a/a/v;->a:Lcom/c/a/a/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/a/v;->b:Lcom/c/a/a/v;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/a/a/v;->c:[Lcom/c/a/a/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/c/a/a/v;
    .locals 5
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/c/a/a/v;->c:[Lcom/c/a/a/v;

    invoke-virtual {v0}, [Lcom/c/a/a/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/v;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    invoke-virtual {v3}, Lcom/c/a/a/v;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    move-object v0, v3

    .line 22
    :goto_1
    return-object v0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
