.class final enum Lao$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lao$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lao$a;

.field public static final enum b:Lao$a;

.field private static final synthetic c:[Lao$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lao$a;

    const-string v1, "MOTO_XT800"

    invoke-direct {v0, v1, v2}, Lao$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lao$a;->a:Lao$a;

    new-instance v0, Lao$a;

    const-string v1, "NOT_SUPPORT"

    invoke-direct {v0, v1, v3}, Lao$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lao$a;->b:Lao$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lao$a;

    sget-object v1, Lao$a;->a:Lao$a;

    aput-object v1, v0, v2

    sget-object v1, Lao$a;->b:Lao$a;

    aput-object v1, v0, v3

    sput-object v0, Lao$a;->c:[Lao$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lao$a;
    .locals 1

    const-class v0, Lao$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lao$a;

    return-object v0
.end method

.method public static values()[Lao$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lao$a;->c:[Lao$a;

    array-length v1, v0

    new-array v2, v1, [Lao$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
