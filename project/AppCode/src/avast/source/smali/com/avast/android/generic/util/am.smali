.class public final enum Lcom/avast/android/generic/util/am;
.super Ljava/lang/Enum;
.source "UpdateZipFormat.java"


# static fields
.field public static final enum a:Lcom/avast/android/generic/util/am;

.field public static final enum b:Lcom/avast/android/generic/util/am;

.field private static final synthetic c:[Lcom/avast/android/generic/util/am;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/avast/android/generic/util/am;

    const-string v1, "EDIFY"

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/util/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/util/am;->a:Lcom/avast/android/generic/util/am;

    .line 6
    new-instance v0, Lcom/avast/android/generic/util/am;

    const-string v1, "AMEND"

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/util/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/generic/util/am;->b:Lcom/avast/android/generic/util/am;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/android/generic/util/am;

    sget-object v1, Lcom/avast/android/generic/util/am;->a:Lcom/avast/android/generic/util/am;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/util/am;->b:Lcom/avast/android/generic/util/am;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/generic/util/am;->c:[Lcom/avast/android/generic/util/am;

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

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/util/am;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/avast/android/generic/util/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/am;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/util/am;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/avast/android/generic/util/am;->c:[Lcom/avast/android/generic/util/am;

    invoke-virtual {v0}, [Lcom/avast/android/generic/util/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/util/am;

    return-object v0
.end method
