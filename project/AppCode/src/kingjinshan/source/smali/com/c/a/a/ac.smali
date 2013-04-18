.class public final enum Lcom/c/a/a/ac;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/c/a/a/ac;

.field public static final enum b:Lcom/c/a/a/ac;

.field public static final enum c:Lcom/c/a/a/ac;

.field private static final synthetic d:[Lcom/c/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    new-instance v0, Lcom/c/a/a/ac;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/ac;->a:Lcom/c/a/a/ac;

    .line 201
    new-instance v0, Lcom/c/a/a/ac;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/c/a/a/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/ac;->b:Lcom/c/a/a/ac;

    .line 205
    new-instance v0, Lcom/c/a/a/ac;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/c/a/a/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/a/ac;->c:Lcom/c/a/a/ac;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/a/a/ac;

    sget-object v1, Lcom/c/a/a/ac;->a:Lcom/c/a/a/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/a/ac;->b:Lcom/c/a/a/ac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/a/ac;->c:Lcom/c/a/a/ac;

    aput-object v1, v0, v4

    sput-object v0, Lcom/c/a/a/ac;->d:[Lcom/c/a/a/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/c/a/a/ac;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/c/a/a/ac;->d:[Lcom/c/a/a/ac;

    invoke-virtual {v0}, [Lcom/c/a/a/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/ac;

    return-object v0
.end method
