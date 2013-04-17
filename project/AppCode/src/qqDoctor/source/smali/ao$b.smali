.class public final enum Lao$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lao$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lao$b;

.field public static final enum b:Lao$b;

.field public static final enum c:Lao$b;

.field private static final synthetic d:[Lao$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lao$b;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v2}, Lao$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lao$b;->a:Lao$b;

    new-instance v0, Lao$b;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v3}, Lao$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lao$b;->b:Lao$b;

    new-instance v0, Lao$b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lao$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lao$b;->c:Lao$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lao$b;

    sget-object v1, Lao$b;->a:Lao$b;

    aput-object v1, v0, v2

    sget-object v1, Lao$b;->b:Lao$b;

    aput-object v1, v0, v3

    sget-object v1, Lao$b;->c:Lao$b;

    aput-object v1, v0, v4

    sput-object v0, Lao$b;->d:[Lao$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lao$b;
    .locals 1

    const-class v0, Lao$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lao$b;

    return-object v0
.end method

.method public static values()[Lao$b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lao$b;->d:[Lao$b;

    array-length v1, v0

    new-array v2, v1, [Lao$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
