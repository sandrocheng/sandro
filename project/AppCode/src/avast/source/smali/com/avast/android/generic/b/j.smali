.class public final enum Lcom/avast/android/generic/b/j;
.super Ljava/lang/Enum;
.source "CommandParser.java"


# static fields
.field public static final enum a:Lcom/avast/android/generic/b/j;

.field public static final enum b:Lcom/avast/android/generic/b/j;

.field public static final enum c:Lcom/avast/android/generic/b/j;

.field public static final enum d:Lcom/avast/android/generic/b/j;

.field private static final synthetic e:[Lcom/avast/android/generic/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/avast/android/generic/b/j;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/j;->a:Lcom/avast/android/generic/b/j;

    new-instance v0, Lcom/avast/android/generic/b/j;

    const-string v1, "SPACED_STRING"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    new-instance v0, Lcom/avast/android/generic/b/j;

    const-string v1, "NONSPACED_STRING"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/generic/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/j;->c:Lcom/avast/android/generic/b/j;

    new-instance v0, Lcom/avast/android/generic/b/j;

    const-string v1, "CHARACTER"

    invoke-direct {v0, v1, v5}, Lcom/avast/android/generic/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/b/j;->d:Lcom/avast/android/generic/b/j;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/generic/b/j;

    sget-object v1, Lcom/avast/android/generic/b/j;->a:Lcom/avast/android/generic/b/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/generic/b/j;->c:Lcom/avast/android/generic/b/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/b/j;->d:Lcom/avast/android/generic/b/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/generic/b/j;->e:[Lcom/avast/android/generic/b/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/b/j;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/avast/android/generic/b/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/j;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/b/j;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/avast/android/generic/b/j;->e:[Lcom/avast/android/generic/b/j;

    invoke-virtual {v0}, [Lcom/avast/android/generic/b/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/b/j;

    return-object v0
.end method
