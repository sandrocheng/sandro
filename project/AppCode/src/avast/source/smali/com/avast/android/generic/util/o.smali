.class public final enum Lcom/avast/android/generic/util/o;
.super Ljava/lang/Enum;
.source "EdifyBinaryFormat.java"


# static fields
.field public static final enum a:Lcom/avast/android/generic/util/o;

.field public static final enum b:Lcom/avast/android/generic/util/o;

.field public static final enum c:Lcom/avast/android/generic/util/o;

.field private static final synthetic d:[Lcom/avast/android/generic/util/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/avast/android/generic/util/o;

    const-string v1, "OLD"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/util/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/util/o;->a:Lcom/avast/android/generic/util/o;

    .line 6
    new-instance v0, Lcom/avast/android/generic/util/o;

    const-string v1, "ICS"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/util/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/util/o;->b:Lcom/avast/android/generic/util/o;

    .line 7
    new-instance v0, Lcom/avast/android/generic/util/o;

    const-string v1, "JB"

    invoke-direct {v0, v1, v4}, Lcom/avast/android/generic/util/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/util/o;->c:Lcom/avast/android/generic/util/o;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/android/generic/util/o;

    sget-object v1, Lcom/avast/android/generic/util/o;->a:Lcom/avast/android/generic/util/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/util/o;->b:Lcom/avast/android/generic/util/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/generic/util/o;->c:Lcom/avast/android/generic/util/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/generic/util/o;->d:[Lcom/avast/android/generic/util/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/util/o;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/avast/android/generic/util/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/o;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/util/o;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/avast/android/generic/util/o;->d:[Lcom/avast/android/generic/util/o;

    invoke-virtual {v0}, [Lcom/avast/android/generic/util/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/util/o;

    return-object v0
.end method
