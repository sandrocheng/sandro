.class public final enum Lcom/avast/android/generic/b/f;
.super Ljava/lang/Enum;
.source "CommandHandler.java"


# static fields
.field public static final enum a:Lcom/avast/android/generic/b/f;

.field public static final enum b:Lcom/avast/android/generic/b/f;

.field public static final enum c:Lcom/avast/android/generic/b/f;

.field public static final enum d:Lcom/avast/android/generic/b/f;

.field private static final synthetic e:[Lcom/avast/android/generic/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/avast/android/generic/b/f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/f;->a:Lcom/avast/android/generic/b/f;

    new-instance v0, Lcom/avast/android/generic/b/f;

    const-string v1, "SIMPLE_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/f;->b:Lcom/avast/android/generic/b/f;

    new-instance v0, Lcom/avast/android/generic/b/f;

    const-string v1, "QUEUE"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/generic/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/f;->c:Lcom/avast/android/generic/b/f;

    new-instance v0, Lcom/avast/android/generic/b/f;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/generic/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/f;->d:Lcom/avast/android/generic/b/f;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/generic/b/f;

    sget-object v1, Lcom/avast/android/generic/b/f;->a:Lcom/avast/android/generic/b/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/b/f;->b:Lcom/avast/android/generic/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/generic/b/f;->c:Lcom/avast/android/generic/b/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/b/f;->d:Lcom/avast/android/generic/b/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/generic/b/f;->e:[Lcom/avast/android/generic/b/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/b/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/avast/android/generic/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/f;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/b/f;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/avast/android/generic/b/f;->e:[Lcom/avast/android/generic/b/f;

    invoke-virtual {v0}, [Lcom/avast/android/generic/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/b/f;

    return-object v0
.end method
